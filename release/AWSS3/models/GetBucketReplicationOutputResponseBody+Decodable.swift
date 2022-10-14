// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct GetBucketReplicationOutputResponseBody: Swift.Equatable {
    let replicationConfiguration: S3ClientTypes.ReplicationConfiguration?
}

extension GetBucketReplicationOutputResponseBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case replicationConfiguration = "ReplicationConfiguration"
    }

    public init (from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let replicationConfigurationDecoded = try containerValues.decodeIfPresent(S3ClientTypes.ReplicationConfiguration.self, forKey: .replicationConfiguration)
        replicationConfiguration = replicationConfigurationDecoded
    }
}
