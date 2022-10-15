// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DeleteObjectsOutputResponse: ClientRuntime.HttpResponseBinding {
    public init (httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil) throws {
        if let requestChargedHeaderValue = httpResponse.headers.value(for: "x-amz-request-charged") {
            self.requestCharged = S3ClientTypes.RequestCharged(rawValue: requestChargedHeaderValue)
        } else {
            self.requestCharged = nil
        }
        if case .stream(let reader) = httpResponse.body,
            let responseDecoder = decoder {
            let data = reader.toBytes().toData()
            let output: DeleteObjectsOutputResponseBody = try responseDecoder.decode(responseBody: data)
            self.deleted = output.deleted
            self.errors = output.errors
        } else {
            self.deleted = nil
            self.errors = nil
        }
    }
}