// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension GetObjectAttributesOutputResponse: ClientRuntime.HttpResponseBinding {
    public init (httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil) throws {
        if let deleteMarkerHeaderValue = httpResponse.headers.value(for: "x-amz-delete-marker") {
            self.deleteMarker = Swift.Bool(deleteMarkerHeaderValue) ?? false
        } else {
            self.deleteMarker = false
        }
        if let lastModifiedHeaderValue = httpResponse.headers.value(for: "Last-Modified") {
            self.lastModified = DateFormatter.rfc5322DateFormatter.date(from: lastModifiedHeaderValue)
        } else {
            self.lastModified = nil
        }
        if let requestChargedHeaderValue = httpResponse.headers.value(for: "x-amz-request-charged") {
            self.requestCharged = S3ClientTypes.RequestCharged(rawValue: requestChargedHeaderValue)
        } else {
            self.requestCharged = nil
        }
        if let versionIdHeaderValue = httpResponse.headers.value(for: "x-amz-version-id") {
            self.versionId = versionIdHeaderValue
        } else {
            self.versionId = nil
        }
        if case .stream(let reader) = httpResponse.body,
            let responseDecoder = decoder {
            let data = reader.toBytes().toData()
            let output: GetObjectAttributesOutputResponseBody = try responseDecoder.decode(responseBody: data)
            self.checksum = output.checksum
            self.eTag = output.eTag
            self.objectParts = output.objectParts
            self.objectSize = output.objectSize
            self.storageClass = output.storageClass
        } else {
            self.checksum = nil
            self.eTag = nil
            self.objectParts = nil
            self.objectSize = 0
            self.storageClass = nil
        }
    }
}
