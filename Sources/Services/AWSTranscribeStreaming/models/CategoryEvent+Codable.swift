// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension TranscribeStreamingClientTypes.CategoryEvent: Swift.Codable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case matchedCategories = "MatchedCategories"
        case matchedDetails = "MatchedDetails"
    }

    public func encode(to encoder: Swift.Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let matchedCategories = matchedCategories {
            var matchedCategoriesContainer = encodeContainer.nestedUnkeyedContainer(forKey: .matchedCategories)
            for string0 in matchedCategories {
                try matchedCategoriesContainer.encode(string0)
            }
        }
        if let matchedDetails = matchedDetails {
            var matchedDetailsContainer = encodeContainer.nestedContainer(keyedBy: ClientRuntime.Key.self, forKey: .matchedDetails)
            for (dictKey0, matchedCategoryDetails0) in matchedDetails {
                try matchedDetailsContainer.encode(matchedCategoryDetails0, forKey: ClientRuntime.Key(stringValue: dictKey0))
            }
        }
    }

    public init (from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let matchedCategoriesContainer = try containerValues.decodeIfPresent([Swift.String?].self, forKey: .matchedCategories)
        var matchedCategoriesDecoded0:[Swift.String]? = nil
        if let matchedCategoriesContainer = matchedCategoriesContainer {
            matchedCategoriesDecoded0 = [Swift.String]()
            for string0 in matchedCategoriesContainer {
                if let string0 = string0 {
                    matchedCategoriesDecoded0?.append(string0)
                }
            }
        }
        matchedCategories = matchedCategoriesDecoded0
        let matchedDetailsContainer = try containerValues.decodeIfPresent([Swift.String: TranscribeStreamingClientTypes.PointsOfInterest?].self, forKey: .matchedDetails)
        var matchedDetailsDecoded0: [Swift.String:TranscribeStreamingClientTypes.PointsOfInterest]? = nil
        if let matchedDetailsContainer = matchedDetailsContainer {
            matchedDetailsDecoded0 = [Swift.String:TranscribeStreamingClientTypes.PointsOfInterest]()
            for (key0, pointsofinterest0) in matchedDetailsContainer {
                if let pointsofinterest0 = pointsofinterest0 {
                    matchedDetailsDecoded0?[key0] = pointsofinterest0
                }
            }
        }
        matchedDetails = matchedDetailsDecoded0
    }
}