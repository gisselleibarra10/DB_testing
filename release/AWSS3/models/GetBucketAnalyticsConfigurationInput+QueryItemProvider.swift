// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension GetBucketAnalyticsConfigurationInput: ClientRuntime.QueryItemProvider {
    public var queryItems: [ClientRuntime.URLQueryItem] {
        var items = [ClientRuntime.URLQueryItem]()
        items.append(ClientRuntime.URLQueryItem(name: "analytics", value: nil))
        items.append(ClientRuntime.URLQueryItem(name: "x-id", value: "GetBucketAnalyticsConfiguration"))
        if let id = id {
            let idQueryItem = ClientRuntime.URLQueryItem(name: "id".urlPercentEncoding(), value: Swift.String(id).urlPercentEncoding())
            items.append(idQueryItem)
        }
        return items
    }
}
