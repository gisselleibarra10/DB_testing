// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension RestoreObjectInput: ClientRuntime.URLPathProvider {
    public var urlPath: Swift.String? {
        guard let bucket = bucket else {
            return nil
        }
        guard let key = key else {
            return nil
        }
        return "/\(bucket.urlPercentEncoding())/\(key)"
    }
}
