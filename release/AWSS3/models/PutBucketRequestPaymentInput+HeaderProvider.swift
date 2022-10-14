// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension PutBucketRequestPaymentInput: ClientRuntime.HeaderProvider {
    public var headers: ClientRuntime.Headers {
        var items = ClientRuntime.Headers()
        if let checksumAlgorithm = checksumAlgorithm {
            items.add(Header(name: "x-amz-sdk-checksum-algorithm", value: Swift.String(checksumAlgorithm.rawValue)))
        }
        if let contentMD5 = contentMD5 {
            items.add(Header(name: "Content-MD5", value: Swift.String(contentMD5)))
        }
        if let expectedBucketOwner = expectedBucketOwner {
            items.add(Header(name: "x-amz-expected-bucket-owner", value: Swift.String(expectedBucketOwner)))
        }
        return items
    }
}
