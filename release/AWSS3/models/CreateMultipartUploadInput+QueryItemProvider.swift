// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension CreateMultipartUploadInput: ClientRuntime.QueryItemProvider {
    public var queryItems: [ClientRuntime.URLQueryItem] {
        var items = [ClientRuntime.URLQueryItem]()
        items.append(ClientRuntime.URLQueryItem(name: "uploads", value: nil))
        items.append(ClientRuntime.URLQueryItem(name: "x-id", value: "CreateMultipartUpload"))
        return items
    }
}