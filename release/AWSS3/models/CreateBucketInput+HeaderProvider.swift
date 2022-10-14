// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension CreateBucketInput: ClientRuntime.HeaderProvider {
    public var headers: ClientRuntime.Headers {
        var items = ClientRuntime.Headers()
        if let aCL = aCL {
            items.add(Header(name: "x-amz-acl", value: Swift.String(aCL.rawValue)))
        }
        if let grantFullControl = grantFullControl {
            items.add(Header(name: "x-amz-grant-full-control", value: Swift.String(grantFullControl)))
        }
        if let grantRead = grantRead {
            items.add(Header(name: "x-amz-grant-read", value: Swift.String(grantRead)))
        }
        if let grantReadACP = grantReadACP {
            items.add(Header(name: "x-amz-grant-read-acp", value: Swift.String(grantReadACP)))
        }
        if let grantWrite = grantWrite {
            items.add(Header(name: "x-amz-grant-write", value: Swift.String(grantWrite)))
        }
        if let grantWriteACP = grantWriteACP {
            items.add(Header(name: "x-amz-grant-write-acp", value: Swift.String(grantWriteACP)))
        }
        if objectLockEnabledForBucket != false {
            items.add(Header(name: "x-amz-bucket-object-lock-enabled", value: Swift.String(objectLockEnabledForBucket)))
        }
        if let objectOwnership = objectOwnership {
            items.add(Header(name: "x-amz-object-ownership", value: Swift.String(objectOwnership.rawValue)))
        }
        return items
    }
}
