// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension S3ClientTypes.MetricsConfiguration: Swift.Codable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case filter = "Filter"
        case id = "Id"
    }

    public func encode(to encoder: Swift.Encoder) throws {
        var container = encoder.container(keyedBy: ClientRuntime.Key.self)
        if encoder.codingPath.isEmpty {
            try container.encode("http://s3.amazonaws.com/doc/2006-03-01/", forKey: ClientRuntime.Key("xmlns"))
        }
        if let filter = filter {
            try container.encode(filter, forKey: ClientRuntime.Key("Filter"))
        }
        if let id = id {
            try container.encode(id, forKey: ClientRuntime.Key("Id"))
        }
    }

    public init (from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let idDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .id)
        id = idDecoded
        let filterDecoded = try containerValues.decodeIfPresent(S3ClientTypes.MetricsFilter.self, forKey: .filter)
        filter = filterDecoded
    }
}
