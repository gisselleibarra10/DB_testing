// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension GetObjectTorrentInput: ClientRuntime.QueryItemProvider {
    public var queryItems: [ClientRuntime.URLQueryItem] {
        var items = [ClientRuntime.URLQueryItem]()
        items.append(ClientRuntime.URLQueryItem(name: "torrent", value: nil))
        return items
    }
}
