// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension GetObjectLockConfigurationInput: ClientRuntime.QueryItemProvider {
    public var queryItems: [ClientRuntime.URLQueryItem] {
        var items = [ClientRuntime.URLQueryItem]()
        items.append(ClientRuntime.URLQueryItem(name: "object-lock", value: nil))
        return items
    }
}
