// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension PutBucketAccelerateConfigurationInput: ClientRuntime.QueryItemProvider {
    public var queryItems: [ClientRuntime.URLQueryItem] {
        var items = [ClientRuntime.URLQueryItem]()
        items.append(ClientRuntime.URLQueryItem(name: "accelerate", value: nil))
        return items
    }
}