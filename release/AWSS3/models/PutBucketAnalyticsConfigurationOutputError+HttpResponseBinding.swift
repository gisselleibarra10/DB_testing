// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime

extension PutBucketAnalyticsConfigurationOutputError: ClientRuntime.HttpResponseBinding {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil) throws {
        let errorDetails = PutBucketAnalyticsConfigurationOutputError.isNotFoundAndEmptyBody(httpResponse: httpResponse)
            ? PutBucketAnalyticsConfigurationOutputError.constructRestXMLError(httpResponse: httpResponse)
            : try AWSClientRuntime.RestXMLError(httpResponse: httpResponse)
        let requestID2 = PutBucketAnalyticsConfigurationOutputError.getRequestId2(httpResponse: httpResponse)
        try self.init(errorType: errorDetails.errorCode, httpResponse: httpResponse, decoder: decoder, message: errorDetails.message, requestID: errorDetails.requestId, requestID2: requestID2)
    }
}

extension PutBucketAnalyticsConfigurationOutputError {
    public init(errorType: Swift.String?, httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil, message: Swift.String? = nil, requestID: Swift.String? = nil, requestID2: Swift.String? = nil) throws {
        switch errorType {
        default : self = .unknown(UnknownAWSHttpServiceError(httpResponse: httpResponse, message: message, requestID: requestID))
        }
    }
}
extension PutBucketAnalyticsConfigurationOutputError {
    static func isNotFoundAndEmptyBody(httpResponse: HttpResponse) -> Bool {
        if case .none = httpResponse.body {
            return httpResponse.statusCode == .notFound
        } else if case .empty = httpResponse.body {
            return httpResponse.statusCode == .notFound
        }
        return false
    }
    static func constructRestXMLError(httpResponse: HttpResponse) -> AWSClientRuntime.RestXMLError {
        return RestXMLError(errorCode: "NotFound", requestId: httpResponse.headers.value(for: "x-amz-request-id"))
    }
    static func getRequestId2(httpResponse: HttpResponse) -> String? {
        return httpResponse.headers.value(for: "x-amz-id-2")
    }
}
