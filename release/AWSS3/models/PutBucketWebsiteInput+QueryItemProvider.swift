// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension PutBucketWebsiteInput: ClientRuntime.QueryItemProvider {
    public var queryItems: [ClientRuntime.URLQueryItem] {
        var items = [ClientRuntime.URLQueryItem]()
        items.append(ClientRuntime.URLQueryItem(name: "website", value: nil))
        return items
    }
}
