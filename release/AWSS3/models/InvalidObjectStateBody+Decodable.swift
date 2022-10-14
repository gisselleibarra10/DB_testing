// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct InvalidObjectStateBody: Swift.Equatable {
    let storageClass: S3ClientTypes.StorageClass?
    let accessTier: S3ClientTypes.IntelligentTieringAccessTier?
}

extension InvalidObjectStateBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case accessTier = "AccessTier"
        case storageClass = "StorageClass"
    }

    public init (from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let storageClassDecoded = try containerValues.decodeIfPresent(S3ClientTypes.StorageClass.self, forKey: .storageClass)
        storageClass = storageClassDecoded
        let accessTierDecoded = try containerValues.decodeIfPresent(S3ClientTypes.IntelligentTieringAccessTier.self, forKey: .accessTier)
        accessTier = accessTierDecoded
    }
}
