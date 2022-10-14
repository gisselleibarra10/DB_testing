// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension NotFound {
    public init (httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil, message: Swift.String? = nil, requestID: Swift.String? = nil, requestID2: Swift.String? = nil) throws {
        self._headers = httpResponse.headers
        self._statusCode = httpResponse.statusCode
        self._requestID = requestID
        self._message = message
        self._requestID2 = requestID2
    }
}
