// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension PutBucketAclInput: Swift.Encodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case accessControlPolicy = "AccessControlPolicy"
    }

    public func encode(to encoder: Swift.Encoder) throws {
        var container = encoder.container(keyedBy: ClientRuntime.Key.self)
        if encoder.codingPath.isEmpty {
            try container.encode("http://s3.amazonaws.com/doc/2006-03-01/", forKey: ClientRuntime.Key("xmlns"))
        }
        if let accessControlPolicy = accessControlPolicy {
            try container.encode(accessControlPolicy, forKey: ClientRuntime.Key("AccessControlPolicy"))
        }
    }
}
