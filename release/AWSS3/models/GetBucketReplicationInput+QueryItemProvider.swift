// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension GetBucketReplicationInput: ClientRuntime.QueryItemProvider {
    public var queryItems: [ClientRuntime.URLQueryItem] {
        var items = [ClientRuntime.URLQueryItem]()
        items.append(ClientRuntime.URLQueryItem(name: "replication", value: nil))
        return items
    }
}
