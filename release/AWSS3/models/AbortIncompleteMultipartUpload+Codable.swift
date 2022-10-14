// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension S3ClientTypes.AbortIncompleteMultipartUpload: Swift.Codable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case daysAfterInitiation = "DaysAfterInitiation"
    }

    public func encode(to encoder: Swift.Encoder) throws {
        var container = encoder.container(keyedBy: ClientRuntime.Key.self)
        if encoder.codingPath.isEmpty {
            try container.encode("http://s3.amazonaws.com/doc/2006-03-01/", forKey: ClientRuntime.Key("xmlns"))
        }
        if daysAfterInitiation != 0 {
            try container.encode(daysAfterInitiation, forKey: ClientRuntime.Key("DaysAfterInitiation"))
        }
    }

    public init (from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let daysAfterInitiationDecoded = try containerValues.decode(Swift.Int.self, forKey: .daysAfterInitiation)
        daysAfterInitiation = daysAfterInitiationDecoded
    }
}
