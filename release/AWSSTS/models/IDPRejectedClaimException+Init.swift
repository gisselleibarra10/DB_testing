// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime

extension IDPRejectedClaimException {
    public init (httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil, message: Swift.String? = nil, requestID: Swift.String? = nil) throws {
        if case .stream(let reader) = httpResponse.body,
            let responseDecoder = decoder {
            let data = reader.toBytes().toData()
            let output: AWSClientRuntime.ErrorResponseContainer<IDPRejectedClaimExceptionBody> = try responseDecoder.decode(responseBody: data)
            self.message = output.error.message
        } else {
            self.message = nil
        }
        self._headers = httpResponse.headers
        self._statusCode = httpResponse.statusCode
        self._requestID = requestID
        self._message = message
    }
}
