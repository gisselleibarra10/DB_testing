// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension GetBucketRequestPaymentInput: ClientRuntime.QueryItemProvider {
    public var queryItems: [ClientRuntime.URLQueryItem] {
        var items = [ClientRuntime.URLQueryItem]()
        items.append(ClientRuntime.URLQueryItem(name: "requestPayment", value: nil))
        return items
    }
}