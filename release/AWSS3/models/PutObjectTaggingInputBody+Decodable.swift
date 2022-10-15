// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct PutObjectTaggingInputBody: Swift.Equatable {
    let tagging: S3ClientTypes.Tagging?
}

extension PutObjectTaggingInputBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case tagging = "Tagging"
    }

    public init (from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let taggingDecoded = try containerValues.decodeIfPresent(S3ClientTypes.Tagging.self, forKey: .tagging)
        tagging = taggingDecoded
    }
}