// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension S3ClientTypes.VersioningConfiguration: Swift.Codable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case mFADelete = "MfaDelete"
        case status = "Status"
    }

    public func encode(to encoder: Swift.Encoder) throws {
        var container = encoder.container(keyedBy: ClientRuntime.Key.self)
        if encoder.codingPath.isEmpty {
            try container.encode("http://s3.amazonaws.com/doc/2006-03-01/", forKey: ClientRuntime.Key("xmlns"))
        }
        if let mFADelete = mFADelete {
            try container.encode(mFADelete, forKey: ClientRuntime.Key("MfaDelete"))
        }
        if let status = status {
            try container.encode(status, forKey: ClientRuntime.Key("Status"))
        }
    }

    public init (from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let mFADeleteDecoded = try containerValues.decodeIfPresent(S3ClientTypes.MFADelete.self, forKey: .mFADelete)
        mFADelete = mFADeleteDecoded
        let statusDecoded = try containerValues.decodeIfPresent(S3ClientTypes.BucketVersioningStatus.self, forKey: .status)
        status = statusDecoded
    }
}