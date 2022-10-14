// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ListBucketMetricsConfigurationsInput: ClientRuntime.HeaderProvider {
    public var headers: ClientRuntime.Headers {
        var items = ClientRuntime.Headers()
        if let expectedBucketOwner = expectedBucketOwner {
            items.add(Header(name: "x-amz-expected-bucket-owner", value: Swift.String(expectedBucketOwner)))
        }
        return items
    }
}
