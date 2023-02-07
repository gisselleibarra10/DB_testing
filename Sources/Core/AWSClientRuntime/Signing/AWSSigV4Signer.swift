//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import AwsCommonRuntimeKit
import ClientRuntime
import Foundation

public class AWSSigV4Signer {
    static let logger: SwiftLogger = SwiftLogger(label: "AWSSigV4Signer")

    public static func sigV4SignedURL(
        requestBuilder: SdkHttpRequestBuilder,
        credentialsProvider: CredentialsProvider,
        signingName: Swift.String,
        signingRegion: Swift.String,
        date: ClientRuntime.Date,
        expiration: TimeInterval,
        signingAlgorithm: AWSSigningAlgorithm
    ) async -> ClientRuntime.URL? {
        do {
            let credentials = try await credentialsProvider.getCredentials()
            let flags = SigningFlags(useDoubleURIEncode: true,
                                     shouldNormalizeURIPath: true,
                                     omitSessionToken: false)
            let signedBodyHeader: AWSSignedBodyHeader = .none
            let signedBodyValue: AWSSignedBodyValue = .empty
            let signingConfig = AWSSigningConfig(
                credentials: credentials,
                expiration: expiration,
                signedBodyHeader: signedBodyHeader,
                signedBodyValue: signedBodyValue,
                flags: flags,
                date: date,
                service: signingName,
                region: signingRegion,
                signatureType: .requestQueryParams,
                signingAlgorithm: signingAlgorithm
            )
            let builtRequest = await sigV4SignedRequest(requestBuilder: requestBuilder, signingConfig: signingConfig)
            guard let presignedURL = builtRequest?.endpoint.url else {
                logger.error("Failed to generate presigend url")
                return nil
            }
            return presignedURL
        } catch let err {
            logger.error("Failed to generate presigned url: \(err)")
            return nil
        }
    }

    public static func sigV4SignedRequest(
        requestBuilder: SdkHttpRequestBuilder,
        signingConfig: AWSSigningConfig
    ) async -> SdkHttpRequest? {
        let originalRequest = requestBuilder.build()
        do {
            let crtUnsignedRequest = try originalRequest.toHttpRequest()

            let crtSignedRequest = try await Signer.signRequest(
                request: crtUnsignedRequest,
                config: signingConfig.toCRTType()
            )
            let sdkSignedRequest = requestBuilder.update(from: crtSignedRequest, originalRequest: originalRequest)
            return sdkSignedRequest.build()
        } catch CommonRunTimeError.crtError(let crtError) {
            logger.error("Failed to sign request (CRT): \(crtError)")
            return nil
        } catch let err {
            logger.error("Failed to sign request: \(err)")
            return nil
        }
    }
    
    public static func signChunk(chunkBody: Data, previousSignature: Data, config: AWSSigningConfig) async throws -> Data {
        let signatureCalculator = DefaultSignatureCalculator(sha256Provider: Sha256HashFunction())
        
        let stringToSign = try signatureCalculator.chunkStringToSign(chunkBody: chunkBody, prevSignature: previousSignature, config: config)
        
        let credentials = try await config.credentialsProvider?.getCredentials()
        let signingKey = signatureCalculator.signingKey(config: config, credentials: credentials!)
        
        let signagure = signatureCalculator.calculate(signingKey: signingKey, stringToSign: stringToSign)
        
        return signagure.data(using: .utf8)!
    }
    
    public static func signPayload(payload: Data, prevSignture: Data, config: AWSSigningConfig) async throws -> SigningResult<EventStreams.Message> {
        let epoch = Int64(Date().timeIntervalSince1970)
        let dt = Date(timeIntervalSince1970: TimeInterval(epoch))
        var config = config
        config.date = dt
        
        let signature = try await signChunk(chunkBody: payload, previousSignature: prevSignture, config: config)
        let binarySignature = String(data: signature, encoding: .utf8)?.hexaData
        
        let message = EventStreams.Message(headers: [ .init(name: ":date", value: .timestamp(dt)),
                                                      .init(name: ":chunk-signature", value: .byteBuffer(binarySignature!))],
                                           payload: payload)
        
        return SigningResult(output: message, signature: signature)
    }

}

public struct SigningResult<T> {
    let output: T
    let signature: Data
}
