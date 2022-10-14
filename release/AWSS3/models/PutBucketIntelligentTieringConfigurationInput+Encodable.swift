// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension PutBucketIntelligentTieringConfigurationInput: Swift.Encodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case intelligentTieringConfiguration = "IntelligentTieringConfiguration"
    }

    public func encode(to encoder: Swift.Encoder) throws {
        var container = encoder.container(keyedBy: ClientRuntime.Key.self)
        if encoder.codingPath.isEmpty {
            try container.encode("http://s3.amazonaws.com/doc/2006-03-01/", forKey: ClientRuntime.Key("xmlns"))
        }
        if let intelligentTieringConfiguration = intelligentTieringConfiguration {
            try container.encode(intelligentTieringConfiguration, forKey: ClientRuntime.Key("IntelligentTieringConfiguration"))
        }
    }
}
