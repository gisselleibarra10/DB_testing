// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension PutObjectLegalHoldOutputResponse: ClientRuntime.HttpResponseBinding {
    public init (httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil) throws {
        if let requestChargedHeaderValue = httpResponse.headers.value(for: "x-amz-request-charged") {
            self.requestCharged = S3ClientTypes.RequestCharged(rawValue: requestChargedHeaderValue)
        } else {
            self.requestCharged = nil
        }
    }
}
