// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DeleteObjectInput: ClientRuntime.HeaderProvider {
    public var headers: ClientRuntime.Headers {
        var items = ClientRuntime.Headers()
        if bypassGovernanceRetention != false {
            items.add(Header(name: "x-amz-bypass-governance-retention", value: Swift.String(bypassGovernanceRetention)))
        }
        if let expectedBucketOwner = expectedBucketOwner {
            items.add(Header(name: "x-amz-expected-bucket-owner", value: Swift.String(expectedBucketOwner)))
        }
        if let mFA = mFA {
            items.add(Header(name: "x-amz-mfa", value: Swift.String(mFA)))
        }
        if let requestPayer = requestPayer {
            items.add(Header(name: "x-amz-request-payer", value: Swift.String(requestPayer.rawValue)))
        }
        return items
    }
}
