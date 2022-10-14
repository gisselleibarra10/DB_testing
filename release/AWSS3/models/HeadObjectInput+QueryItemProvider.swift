// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension HeadObjectInput: ClientRuntime.QueryItemProvider {
    public var queryItems: [ClientRuntime.URLQueryItem] {
        var items = [ClientRuntime.URLQueryItem]()
        if let versionId = versionId {
            let versionIdQueryItem = ClientRuntime.URLQueryItem(name: "versionId".urlPercentEncoding(), value: Swift.String(versionId).urlPercentEncoding())
            items.append(versionIdQueryItem)
        }
        if partNumber != 0 {
            let partNumberQueryItem = ClientRuntime.URLQueryItem(name: "partNumber".urlPercentEncoding(), value: Swift.String(partNumber).urlPercentEncoding())
            items.append(partNumberQueryItem)
        }
        return items
    }
}
