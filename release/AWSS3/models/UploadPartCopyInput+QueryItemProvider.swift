// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension UploadPartCopyInput: ClientRuntime.QueryItemProvider {
    public var queryItems: [ClientRuntime.URLQueryItem] {
        var items = [ClientRuntime.URLQueryItem]()
        items.append(ClientRuntime.URLQueryItem(name: "x-id", value: "UploadPartCopy"))
        let partNumberQueryItem = ClientRuntime.URLQueryItem(name: "partNumber".urlPercentEncoding(), value: Swift.String(partNumber).urlPercentEncoding())
        items.append(partNumberQueryItem)
        if let uploadId = uploadId {
            let uploadIdQueryItem = ClientRuntime.URLQueryItem(name: "uploadId".urlPercentEncoding(), value: Swift.String(uploadId).urlPercentEncoding())
            items.append(uploadIdQueryItem)
        }
        return items
    }
}