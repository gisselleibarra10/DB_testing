// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension CompleteMultipartUploadOutputResponse: ClientRuntime.HttpResponseBinding {
    public init (httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil) throws {
        if let bucketKeyEnabledHeaderValue = httpResponse.headers.value(for: "x-amz-server-side-encryption-bucket-key-enabled") {
            self.bucketKeyEnabled = Swift.Bool(bucketKeyEnabledHeaderValue) ?? false
        } else {
            self.bucketKeyEnabled = false
        }
        if let expirationHeaderValue = httpResponse.headers.value(for: "x-amz-expiration") {
            self.expiration = expirationHeaderValue
        } else {
            self.expiration = nil
        }
        if let requestChargedHeaderValue = httpResponse.headers.value(for: "x-amz-request-charged") {
            self.requestCharged = S3ClientTypes.RequestCharged(rawValue: requestChargedHeaderValue)
        } else {
            self.requestCharged = nil
        }
        if let sSEKMSKeyIdHeaderValue = httpResponse.headers.value(for: "x-amz-server-side-encryption-aws-kms-key-id") {
            self.sSEKMSKeyId = sSEKMSKeyIdHeaderValue
        } else {
            self.sSEKMSKeyId = nil
        }
        if let serverSideEncryptionHeaderValue = httpResponse.headers.value(for: "x-amz-server-side-encryption") {
            self.serverSideEncryption = S3ClientTypes.ServerSideEncryption(rawValue: serverSideEncryptionHeaderValue)
        } else {
            self.serverSideEncryption = nil
        }
        if let versionIdHeaderValue = httpResponse.headers.value(for: "x-amz-version-id") {
            self.versionId = versionIdHeaderValue
        } else {
            self.versionId = nil
        }
        if case .stream(let reader) = httpResponse.body,
            let responseDecoder = decoder {
            let data = reader.toBytes().toData()
            let output: CompleteMultipartUploadOutputResponseBody = try responseDecoder.decode(responseBody: data)
            self.bucket = output.bucket
            self.checksumCRC32 = output.checksumCRC32
            self.checksumCRC32C = output.checksumCRC32C
            self.checksumSHA1 = output.checksumSHA1
            self.checksumSHA256 = output.checksumSHA256
            self.eTag = output.eTag
            self.key = output.key
            self.location = output.location
        } else {
            self.bucket = nil
            self.checksumCRC32 = nil
            self.checksumCRC32C = nil
            self.checksumSHA1 = nil
            self.checksumSHA256 = nil
            self.eTag = nil
            self.key = nil
            self.location = nil
        }
    }
}