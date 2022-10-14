// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ListBucketIntelligentTieringConfigurationsInput: ClientRuntime.QueryItemProvider {
    public var queryItems: [ClientRuntime.URLQueryItem] {
        var items = [ClientRuntime.URLQueryItem]()
        items.append(ClientRuntime.URLQueryItem(name: "intelligent-tiering", value: nil))
        items.append(ClientRuntime.URLQueryItem(name: "x-id", value: "ListBucketIntelligentTieringConfigurations"))
        if let continuationToken = continuationToken {
            let continuationTokenQueryItem = ClientRuntime.URLQueryItem(name: "continuation-token".urlPercentEncoding(), value: Swift.String(continuationToken).urlPercentEncoding())
            items.append(continuationTokenQueryItem)
        }
        return items
    }
}
