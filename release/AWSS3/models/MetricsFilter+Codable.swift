// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension S3ClientTypes.MetricsFilter: Swift.Codable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case accesspointarn = "AccessPointArn"
        case and = "And"
        case prefix = "Prefix"
        case tag = "Tag"
        case sdkUnknown
    }

    public func encode(to encoder: Swift.Encoder) throws {
        var container = encoder.container(keyedBy: ClientRuntime.Key.self)
        switch self {
            case let .accesspointarn(accesspointarn):
                try container.encode(accesspointarn, forKey: ClientRuntime.Key("AccessPointArn"))
            case let .and(and):
                try container.encode(and, forKey: ClientRuntime.Key("And"))
            case let .prefix(prefix):
                try container.encode(prefix, forKey: ClientRuntime.Key("Prefix"))
            case let .tag(tag):
                try container.encode(tag, forKey: ClientRuntime.Key("Tag"))
            case let .sdkUnknown(sdkUnknown):
                try container.encode(sdkUnknown, forKey: ClientRuntime.Key("sdkUnknown"))
        }
    }

    public init (from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let key = containerValues.allKeys.first
        switch key {
            case .prefix:
                let prefixDecoded = try containerValues.decode(Swift.String.self, forKey: .prefix)
                self = .prefix(prefixDecoded)
            case .tag:
                let tagDecoded = try containerValues.decode(S3ClientTypes.Tag.self, forKey: .tag)
                self = .tag(tagDecoded)
            case .accesspointarn:
                let accesspointarnDecoded = try containerValues.decode(Swift.String.self, forKey: .accesspointarn)
                self = .accesspointarn(accesspointarnDecoded)
            case .and:
                let andDecoded = try containerValues.decode(S3ClientTypes.MetricsAndOperator.self, forKey: .and)
                self = .and(andDecoded)
            default:
                self = .sdkUnknown("")
        }
    }
}
