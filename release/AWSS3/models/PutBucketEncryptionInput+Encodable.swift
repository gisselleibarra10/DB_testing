// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension PutBucketEncryptionInput: Swift.Encodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case serverSideEncryptionConfiguration = "ServerSideEncryptionConfiguration"
    }

    public func encode(to encoder: Swift.Encoder) throws {
        var container = encoder.container(keyedBy: ClientRuntime.Key.self)
        if encoder.codingPath.isEmpty {
            try container.encode("http://s3.amazonaws.com/doc/2006-03-01/", forKey: ClientRuntime.Key("xmlns"))
        }
        if let serverSideEncryptionConfiguration = serverSideEncryptionConfiguration {
            try container.encode(serverSideEncryptionConfiguration, forKey: ClientRuntime.Key("ServerSideEncryptionConfiguration"))
        }
    }
}