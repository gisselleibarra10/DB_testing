// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension S3ClientTypes.RestoreRequest: Swift.Codable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case days = "Days"
        case description = "Description"
        case glacierJobParameters = "GlacierJobParameters"
        case outputLocation = "OutputLocation"
        case selectParameters = "SelectParameters"
        case tier = "Tier"
        case type = "Type"
    }

    public func encode(to encoder: Swift.Encoder) throws {
        var container = encoder.container(keyedBy: ClientRuntime.Key.self)
        if encoder.codingPath.isEmpty {
            try container.encode("http://s3.amazonaws.com/doc/2006-03-01/", forKey: ClientRuntime.Key("xmlns"))
        }
        if days != 0 {
            try container.encode(days, forKey: ClientRuntime.Key("Days"))
        }
        if let description = description {
            try container.encode(description, forKey: ClientRuntime.Key("Description"))
        }
        if let glacierJobParameters = glacierJobParameters {
            try container.encode(glacierJobParameters, forKey: ClientRuntime.Key("GlacierJobParameters"))
        }
        if let outputLocation = outputLocation {
            try container.encode(outputLocation, forKey: ClientRuntime.Key("OutputLocation"))
        }
        if let selectParameters = selectParameters {
            try container.encode(selectParameters, forKey: ClientRuntime.Key("SelectParameters"))
        }
        if let tier = tier {
            try container.encode(tier, forKey: ClientRuntime.Key("Tier"))
        }
        if let type = type {
            try container.encode(type, forKey: ClientRuntime.Key("Type"))
        }
    }

    public init (from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let daysDecoded = try containerValues.decode(Swift.Int.self, forKey: .days)
        days = daysDecoded
        let glacierJobParametersDecoded = try containerValues.decodeIfPresent(S3ClientTypes.GlacierJobParameters.self, forKey: .glacierJobParameters)
        glacierJobParameters = glacierJobParametersDecoded
        let typeDecoded = try containerValues.decodeIfPresent(S3ClientTypes.RestoreRequestType.self, forKey: .type)
        type = typeDecoded
        let tierDecoded = try containerValues.decodeIfPresent(S3ClientTypes.Tier.self, forKey: .tier)
        tier = tierDecoded
        let descriptionDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .description)
        description = descriptionDecoded
        let selectParametersDecoded = try containerValues.decodeIfPresent(S3ClientTypes.SelectParameters.self, forKey: .selectParameters)
        selectParameters = selectParametersDecoded
        let outputLocationDecoded = try containerValues.decodeIfPresent(S3ClientTypes.OutputLocation.self, forKey: .outputLocation)
        outputLocation = outputLocationDecoded
    }
}
