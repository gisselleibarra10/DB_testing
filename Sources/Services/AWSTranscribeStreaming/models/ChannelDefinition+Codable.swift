// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension TranscribeStreamingClientTypes.ChannelDefinition: Swift.Codable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case channelId = "ChannelId"
        case participantRole = "ParticipantRole"
    }

    public func encode(to encoder: Swift.Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if channelId != 0 {
            try encodeContainer.encode(channelId, forKey: .channelId)
        }
        if let participantRole = self.participantRole {
            try encodeContainer.encode(participantRole.rawValue, forKey: .participantRole)
        }
    }

    public init (from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let channelIdDecoded = try containerValues.decodeIfPresent(Swift.Int.self, forKey: .channelId) ?? 0
        channelId = channelIdDecoded
        let participantRoleDecoded = try containerValues.decodeIfPresent(TranscribeStreamingClientTypes.ParticipantRole.self, forKey: .participantRole)
        participantRole = participantRoleDecoded
    }
}