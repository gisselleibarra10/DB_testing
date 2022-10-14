// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ListObjectsInput: ClientRuntime.QueryItemProvider {
    public var queryItems: [ClientRuntime.URLQueryItem] {
        var items = [ClientRuntime.URLQueryItem]()
        if let delimiter = delimiter {
            let delimiterQueryItem = ClientRuntime.URLQueryItem(name: "delimiter".urlPercentEncoding(), value: Swift.String(delimiter).urlPercentEncoding())
            items.append(delimiterQueryItem)
        }
        if let encodingType = encodingType {
            let encodingTypeQueryItem = ClientRuntime.URLQueryItem(name: "encoding-type".urlPercentEncoding(), value: Swift.String(encodingType.rawValue).urlPercentEncoding())
            items.append(encodingTypeQueryItem)
        }
        if let marker = marker {
            let markerQueryItem = ClientRuntime.URLQueryItem(name: "marker".urlPercentEncoding(), value: Swift.String(marker).urlPercentEncoding())
            items.append(markerQueryItem)
        }
        if let `prefix` = `prefix` {
            let prefixQueryItem = ClientRuntime.URLQueryItem(name: "prefix".urlPercentEncoding(), value: Swift.String(`prefix`).urlPercentEncoding())
            items.append(prefixQueryItem)
        }
        if maxKeys != 0 {
            let maxKeysQueryItem = ClientRuntime.URLQueryItem(name: "max-keys".urlPercentEncoding(), value: Swift.String(maxKeys).urlPercentEncoding())
            items.append(maxKeysQueryItem)
        }
        return items
    }
}
