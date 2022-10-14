// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension S3ClientTypes.CopyPartResult: Swift.Codable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case checksumCRC32 = "ChecksumCRC32"
        case checksumCRC32C = "ChecksumCRC32C"
        case checksumSHA1 = "ChecksumSHA1"
        case checksumSHA256 = "ChecksumSHA256"
        case eTag = "ETag"
        case lastModified = "LastModified"
    }

    public func encode(to encoder: Swift.Encoder) throws {
        var container = encoder.container(keyedBy: ClientRuntime.Key.self)
        if encoder.codingPath.isEmpty {
            try container.encode("http://s3.amazonaws.com/doc/2006-03-01/", forKey: ClientRuntime.Key("xmlns"))
        }
        if let checksumCRC32 = checksumCRC32 {
            try container.encode(checksumCRC32, forKey: ClientRuntime.Key("ChecksumCRC32"))
        }
        if let checksumCRC32C = checksumCRC32C {
            try container.encode(checksumCRC32C, forKey: ClientRuntime.Key("ChecksumCRC32C"))
        }
        if let checksumSHA1 = checksumSHA1 {
            try container.encode(checksumSHA1, forKey: ClientRuntime.Key("ChecksumSHA1"))
        }
        if let checksumSHA256 = checksumSHA256 {
            try container.encode(checksumSHA256, forKey: ClientRuntime.Key("ChecksumSHA256"))
        }
        if let eTag = eTag {
            try container.encode(eTag, forKey: ClientRuntime.Key("ETag"))
        }
        if let lastModified = lastModified {
            try container.encode(ClientRuntime.TimestampWrapper(lastModified, format: .dateTime), forKey: ClientRuntime.Key("LastModified"))
        }
    }

    public init (from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let eTagDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .eTag)
        eTag = eTagDecoded
        let lastModifiedDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .lastModified)
        var lastModifiedBuffer:ClientRuntime.Date? = nil
        if let lastModifiedDecoded = lastModifiedDecoded {
            lastModifiedBuffer = try ClientRuntime.TimestampWrapperDecoder.parseDateStringValue(lastModifiedDecoded, format: .dateTime)
        }
        lastModified = lastModifiedBuffer
        let checksumCRC32Decoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .checksumCRC32)
        checksumCRC32 = checksumCRC32Decoded
        let checksumCRC32CDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .checksumCRC32C)
        checksumCRC32C = checksumCRC32CDecoded
        let checksumSHA1Decoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .checksumSHA1)
        checksumSHA1 = checksumSHA1Decoded
        let checksumSHA256Decoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .checksumSHA256)
        checksumSHA256 = checksumSHA256Decoded
    }
}
