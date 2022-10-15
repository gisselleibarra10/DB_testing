// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ListBucketMetricsConfigurationsInput: ClientRuntime.QueryItemProvider {
    public var queryItems: [ClientRuntime.URLQueryItem] {
        var items = [ClientRuntime.URLQueryItem]()
        items.append(ClientRuntime.URLQueryItem(name: "metrics", value: nil))
        items.append(ClientRuntime.URLQueryItem(name: "x-id", value: "ListBucketMetricsConfigurations"))
        if let continuationToken = continuationToken {
            let continuationTokenQueryItem = ClientRuntime.URLQueryItem(name: "continuation-token".urlPercentEncoding(), value: Swift.String(continuationToken).urlPercentEncoding())
            items.append(continuationTokenQueryItem)
        }
        return items
    }
}