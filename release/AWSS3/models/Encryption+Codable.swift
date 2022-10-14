// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension S3ClientTypes.Encryption: Swift.Codable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case encryptionType = "EncryptionType"
        case kMSContext = "KMSContext"
        case kMSKeyId = "KMSKeyId"
    }

    public func encode(to encoder: Swift.Encoder) throws {
        var container = encoder.container(keyedBy: ClientRuntime.Key.self)
        if encoder.codingPath.isEmpty {
            try container.encode("http://s3.amazonaws.com/doc/2006-03-01/", forKey: ClientRuntime.Key("xmlns"))
        }
        if let encryptionType = encryptionType {
            try container.encode(encryptionType, forKey: ClientRuntime.Key("EncryptionType"))
        }
        if let kMSContext = kMSContext {
            try container.encode(kMSContext, forKey: ClientRuntime.Key("KMSContext"))
        }
        if let kMSKeyId = kMSKeyId {
            try container.encode(kMSKeyId, forKey: ClientRuntime.Key("KMSKeyId"))
        }
    }

    public init (from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let encryptionTypeDecoded = try containerValues.decodeIfPresent(S3ClientTypes.ServerSideEncryption.self, forKey: .encryptionType)
        encryptionType = encryptionTypeDecoded
        let kMSKeyIdDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .kMSKeyId)
        kMSKeyId = kMSKeyIdDecoded
        let kMSContextDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .kMSContext)
        kMSContext = kMSContextDecoded
    }
}
