// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension S3ClientTypes.ReplicationRuleAndOperator: Swift.Codable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case `prefix` = "Prefix"
        case tags = "Tag"
    }

    public func encode(to encoder: Swift.Encoder) throws {
        var container = encoder.container(keyedBy: ClientRuntime.Key.self)
        if encoder.codingPath.isEmpty {
            try container.encode("http://s3.amazonaws.com/doc/2006-03-01/", forKey: ClientRuntime.Key("xmlns"))
        }
        if let `prefix` = `prefix` {
            try container.encode(`prefix`, forKey: ClientRuntime.Key("Prefix"))
        }
        if let tags = tags {
            if tags.isEmpty {
                var tagsContainer = container.nestedUnkeyedContainer(forKey: ClientRuntime.Key("Tag"))
                try tagsContainer.encodeNil()
            } else {
                for tag0 in tags {
                    var tagsContainer0 = container.nestedContainer(keyedBy: ClientRuntime.Key.self, forKey: ClientRuntime.Key("Tag"))
                    try tagsContainer0.encode(tag0, forKey: ClientRuntime.Key(""))
                }
            }
        }
    }

    public init (from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let prefixDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .prefix)
        `prefix` = prefixDecoded
        if containerValues.contains(.tags) {
            let tagsWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CodingKeys.self, forKey: .tags)
            if tagsWrappedContainer != nil {
                let tagsContainer = try containerValues.decodeIfPresent([S3ClientTypes.Tag].self, forKey: .tags)
                var tagsBuffer:[S3ClientTypes.Tag]? = nil
                if let tagsContainer = tagsContainer {
                    tagsBuffer = [S3ClientTypes.Tag]()
                    for structureContainer0 in tagsContainer {
                        tagsBuffer?.append(structureContainer0)
                    }
                }
                tags = tagsBuffer
            } else {
                tags = []
            }
        } else {
            tags = nil
        }
    }
}
