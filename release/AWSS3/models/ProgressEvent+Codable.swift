// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension S3ClientTypes.ProgressEvent: Swift.Codable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case details = "Details"
    }

    public func encode(to encoder: Swift.Encoder) throws {
        var container = encoder.container(keyedBy: ClientRuntime.Key.self)
        if encoder.codingPath.isEmpty {
            try container.encode("http://s3.amazonaws.com/doc/2006-03-01/", forKey: ClientRuntime.Key("xmlns"))
        }
        if let details = details {
            try container.encode(details, forKey: ClientRuntime.Key("Details"))
        }
    }

    public init (from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let detailsDecoded = try containerValues.decodeIfPresent(S3ClientTypes.Progress.self, forKey: .details)
        details = detailsDecoded
    }
}
