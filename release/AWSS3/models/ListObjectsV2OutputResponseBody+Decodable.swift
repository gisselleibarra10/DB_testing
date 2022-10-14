// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListObjectsV2OutputResponseBody: Swift.Equatable {
    let isTruncated: Swift.Bool
    let contents: [S3ClientTypes.Object]?
    let name: Swift.String?
    let `prefix`: Swift.String?
    let delimiter: Swift.String?
    let maxKeys: Swift.Int
    let commonPrefixes: [S3ClientTypes.CommonPrefix]?
    let encodingType: S3ClientTypes.EncodingType?
    let keyCount: Swift.Int
    let continuationToken: Swift.String?
    let nextContinuationToken: Swift.String?
    let startAfter: Swift.String?
}

extension ListObjectsV2OutputResponseBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case commonPrefixes = "CommonPrefixes"
        case contents = "Contents"
        case continuationToken = "ContinuationToken"
        case delimiter = "Delimiter"
        case encodingType = "EncodingType"
        case isTruncated = "IsTruncated"
        case keyCount = "KeyCount"
        case maxKeys = "MaxKeys"
        case name = "Name"
        case nextContinuationToken = "NextContinuationToken"
        case `prefix` = "Prefix"
        case startAfter = "StartAfter"
    }

    public init (from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let isTruncatedDecoded = try containerValues.decode(Swift.Bool.self, forKey: .isTruncated)
        isTruncated = isTruncatedDecoded
        if containerValues.contains(.contents) {
            let contentsWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CodingKeys.self, forKey: .contents)
            if contentsWrappedContainer != nil {
                let contentsContainer = try containerValues.decodeIfPresent([S3ClientTypes.Object].self, forKey: .contents)
                var contentsBuffer:[S3ClientTypes.Object]? = nil
                if let contentsContainer = contentsContainer {
                    contentsBuffer = [S3ClientTypes.Object]()
                    for structureContainer0 in contentsContainer {
                        contentsBuffer?.append(structureContainer0)
                    }
                }
                contents = contentsBuffer
            } else {
                contents = []
            }
        } else {
            contents = nil
        }
        let nameDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .name)
        name = nameDecoded
        let prefixDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .prefix)
        `prefix` = prefixDecoded
        let delimiterDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .delimiter)
        delimiter = delimiterDecoded
        let maxKeysDecoded = try containerValues.decode(Swift.Int.self, forKey: .maxKeys)
        maxKeys = maxKeysDecoded
        if containerValues.contains(.commonPrefixes) {
            let commonPrefixesWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CodingKeys.self, forKey: .commonPrefixes)
            if commonPrefixesWrappedContainer != nil {
                let commonPrefixesContainer = try containerValues.decodeIfPresent([S3ClientTypes.CommonPrefix].self, forKey: .commonPrefixes)
                var commonPrefixesBuffer:[S3ClientTypes.CommonPrefix]? = nil
                if let commonPrefixesContainer = commonPrefixesContainer {
                    commonPrefixesBuffer = [S3ClientTypes.CommonPrefix]()
                    for structureContainer0 in commonPrefixesContainer {
                        commonPrefixesBuffer?.append(structureContainer0)
                    }
                }
                commonPrefixes = commonPrefixesBuffer
            } else {
                commonPrefixes = []
            }
        } else {
            commonPrefixes = nil
        }
        let encodingTypeDecoded = try containerValues.decodeIfPresent(S3ClientTypes.EncodingType.self, forKey: .encodingType)
        encodingType = encodingTypeDecoded
        let keyCountDecoded = try containerValues.decode(Swift.Int.self, forKey: .keyCount)
        keyCount = keyCountDecoded
        let continuationTokenDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .continuationToken)
        continuationToken = continuationTokenDecoded
        let nextContinuationTokenDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .nextContinuationToken)
        nextContinuationToken = nextContinuationTokenDecoded
        let startAfterDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .startAfter)
        startAfter = startAfterDecoded
    }
}
