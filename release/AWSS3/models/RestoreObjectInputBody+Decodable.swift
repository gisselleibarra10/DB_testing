// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct RestoreObjectInputBody: Swift.Equatable {
    let restoreRequest: S3ClientTypes.RestoreRequest?
}

extension RestoreObjectInputBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case restoreRequest = "RestoreRequest"
    }

    public init (from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let restoreRequestDecoded = try containerValues.decodeIfPresent(S3ClientTypes.RestoreRequest.self, forKey: .restoreRequest)
        restoreRequest = restoreRequestDecoded
    }
}
