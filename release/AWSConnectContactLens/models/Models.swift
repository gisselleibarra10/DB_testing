// Code generated by smithy-swift-codegen. DO NOT EDIT!
import AWSClientRuntime
import ClientRuntime

extension AccessDeniedException {
    public init (httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil, message: Swift.String? = nil, requestID: Swift.String? = nil) throws {
        if case .stream(let reader) = httpResponse.body,
            let responseDecoder = decoder {
            let data = reader.toBytes().toData()
            let output: AccessDeniedExceptionBody = try responseDecoder.decode(responseBody: data)
            self.message = output.message
        } else {
            self.message = nil
        }
        self._headers = httpResponse.headers
        self._statusCode = httpResponse.statusCode
        self._requestID = requestID
        self._message = message
    }
}

/// You do not have sufficient access to perform this action.
public struct AccessDeniedException: AWSClientRuntime.AWSHttpServiceError, Swift.Equatable {
    public var _headers: ClientRuntime.Headers?
    public var _statusCode: ClientRuntime.HttpStatusCode?
    public var _message: Swift.String?
    public var _requestID: Swift.String?
    public var _retryable: Swift.Bool = false
    public var _isThrottling: Swift.Bool = false
    public var _type: ClientRuntime.ErrorType = .client
    /// This member is required.
    public var message: Swift.String?

    public init (
        message: Swift.String? = nil
    )
    {
        self.message = message
    }
}

struct AccessDeniedExceptionBody: Swift.Equatable {
    let message: Swift.String?
}

extension AccessDeniedExceptionBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case message = "Message"
    }

    public init (from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let messageDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .message)
        message = messageDecoded
    }
}

extension ConnectContactLensClientTypes.Categories: Swift.Codable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case matchedCategories = "MatchedCategories"
        case matchedDetails = "MatchedDetails"
    }

    public func encode(to encoder: Swift.Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let matchedCategories = matchedCategories {
            var matchedCategoriesContainer = encodeContainer.nestedUnkeyedContainer(forKey: .matchedCategories)
            for matchedcategories0 in matchedCategories {
                try matchedCategoriesContainer.encode(matchedcategories0)
            }
        }
        if let matchedDetails = matchedDetails {
            var matchedDetailsContainer = encodeContainer.nestedContainer(keyedBy: ClientRuntime.Key.self, forKey: .matchedDetails)
            for (dictKey0, matcheddetails0) in matchedDetails {
                try matchedDetailsContainer.encode(matcheddetails0, forKey: ClientRuntime.Key(stringValue: dictKey0))
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
        let matchedDetailsContainer = try containerValues.decodeIfPresent([Swift.String: ConnectContactLensClientTypes.CategoryDetails?].self, forKey: .matchedDetails)
        var matchedDetailsDecoded0: [Swift.String:ConnectContactLensClientTypes.CategoryDetails]? = nil
        if let matchedDetailsContainer = matchedDetailsContainer {
            matchedDetailsDecoded0 = [Swift.String:ConnectContactLensClientTypes.CategoryDetails]()
            for (key0, categorydetails0) in matchedDetailsContainer {
                if let categorydetails0 = categorydetails0 {
                    matchedDetailsDecoded0?[key0] = categorydetails0
                }
            }
        }
        matchedDetails = matchedDetailsDecoded0
    }
}

extension ConnectContactLensClientTypes {
    /// Provides the category rules that are used to automatically categorize contacts based on uttered keywords and phrases.
    public struct Categories: Swift.Equatable {
        /// The category rules that have been matched in the analyzed segment.
        /// This member is required.
        public var matchedCategories: [Swift.String]?
        /// The category rule that was matched and when it occurred in the transcript.
        /// This member is required.
        public var matchedDetails: [Swift.String:ConnectContactLensClientTypes.CategoryDetails]?

        public init (
            matchedCategories: [Swift.String]? = nil,
            matchedDetails: [Swift.String:ConnectContactLensClientTypes.CategoryDetails]? = nil
        )
        {
            self.matchedCategories = matchedCategories
            self.matchedDetails = matchedDetails
        }
    }

}

extension ConnectContactLensClientTypes.CategoryDetails: Swift.Codable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case pointsOfInterest = "PointsOfInterest"
    }

    public func encode(to encoder: Swift.Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let pointsOfInterest = pointsOfInterest {
            var pointsOfInterestContainer = encodeContainer.nestedUnkeyedContainer(forKey: .pointsOfInterest)
            for pointsofinterest0 in pointsOfInterest {
                try pointsOfInterestContainer.encode(pointsofinterest0)
            }
        }
    }

    public init (from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let pointsOfInterestContainer = try containerValues.decodeIfPresent([ConnectContactLensClientTypes.PointOfInterest?].self, forKey: .pointsOfInterest)
        var pointsOfInterestDecoded0:[ConnectContactLensClientTypes.PointOfInterest]? = nil
        if let pointsOfInterestContainer = pointsOfInterestContainer {
            pointsOfInterestDecoded0 = [ConnectContactLensClientTypes.PointOfInterest]()
            for structure0 in pointsOfInterestContainer {
                if let structure0 = structure0 {
                    pointsOfInterestDecoded0?.append(structure0)
                }
            }
        }
        pointsOfInterest = pointsOfInterestDecoded0
    }
}

extension ConnectContactLensClientTypes {
    /// Provides information about the category rule that was matched.
    public struct CategoryDetails: Swift.Equatable {
        /// The section of audio where the category rule was detected.
        /// This member is required.
        public var pointsOfInterest: [ConnectContactLensClientTypes.PointOfInterest]?

        public init (
            pointsOfInterest: [ConnectContactLensClientTypes.PointOfInterest]? = nil
        )
        {
            self.pointsOfInterest = pointsOfInterest
        }
    }

}

extension ConnectContactLensClientTypes.CharacterOffsets: Swift.Codable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case beginOffsetChar = "BeginOffsetChar"
        case endOffsetChar = "EndOffsetChar"
    }

    public func encode(to encoder: Swift.Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if beginOffsetChar != 0 {
            try encodeContainer.encode(beginOffsetChar, forKey: .beginOffsetChar)
        }
        if endOffsetChar != 0 {
            try encodeContainer.encode(endOffsetChar, forKey: .endOffsetChar)
        }
    }

    public init (from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let beginOffsetCharDecoded = try containerValues.decodeIfPresent(Swift.Int.self, forKey: .beginOffsetChar) ?? 0
        beginOffsetChar = beginOffsetCharDecoded
        let endOffsetCharDecoded = try containerValues.decodeIfPresent(Swift.Int.self, forKey: .endOffsetChar) ?? 0
        endOffsetChar = endOffsetCharDecoded
    }
}

extension ConnectContactLensClientTypes {
    /// For characters that were detected as issues, where they occur in the transcript.
    public struct CharacterOffsets: Swift.Equatable {
        /// The beginning of the issue.
        /// This member is required.
        public var beginOffsetChar: Swift.Int
        /// The end of the issue.
        /// This member is required.
        public var endOffsetChar: Swift.Int

        public init (
            beginOffsetChar: Swift.Int = 0,
            endOffsetChar: Swift.Int = 0
        )
        {
            self.beginOffsetChar = beginOffsetChar
            self.endOffsetChar = endOffsetChar
        }
    }

}

extension InternalServiceException {
    public init (httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil, message: Swift.String? = nil, requestID: Swift.String? = nil) throws {
        if case .stream(let reader) = httpResponse.body,
            let responseDecoder = decoder {
            let data = reader.toBytes().toData()
            let output: InternalServiceExceptionBody = try responseDecoder.decode(responseBody: data)
            self.message = output.message
        } else {
            self.message = nil
        }
        self._headers = httpResponse.headers
        self._statusCode = httpResponse.statusCode
        self._requestID = requestID
        self._message = message
    }
}

/// Request processing failed due to an error or failure with the service.
public struct InternalServiceException: AWSClientRuntime.AWSHttpServiceError, Swift.Equatable {
    public var _headers: ClientRuntime.Headers?
    public var _statusCode: ClientRuntime.HttpStatusCode?
    public var _message: Swift.String?
    public var _requestID: Swift.String?
    public var _retryable: Swift.Bool = false
    public var _isThrottling: Swift.Bool = false
    public var _type: ClientRuntime.ErrorType = .server
    public var message: Swift.String?

    public init (
        message: Swift.String? = nil
    )
    {
        self.message = message
    }
}

struct InternalServiceExceptionBody: Swift.Equatable {
    let message: Swift.String?
}

extension InternalServiceExceptionBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case message = "Message"
    }

    public init (from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let messageDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .message)
        message = messageDecoded
    }
}

extension InvalidRequestException {
    public init (httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil, message: Swift.String? = nil, requestID: Swift.String? = nil) throws {
        if case .stream(let reader) = httpResponse.body,
            let responseDecoder = decoder {
            let data = reader.toBytes().toData()
            let output: InvalidRequestExceptionBody = try responseDecoder.decode(responseBody: data)
            self.message = output.message
        } else {
            self.message = nil
        }
        self._headers = httpResponse.headers
        self._statusCode = httpResponse.statusCode
        self._requestID = requestID
        self._message = message
    }
}

/// The request is not valid.
public struct InvalidRequestException: AWSClientRuntime.AWSHttpServiceError, Swift.Equatable {
    public var _headers: ClientRuntime.Headers?
    public var _statusCode: ClientRuntime.HttpStatusCode?
    public var _message: Swift.String?
    public var _requestID: Swift.String?
    public var _retryable: Swift.Bool = false
    public var _isThrottling: Swift.Bool = false
    public var _type: ClientRuntime.ErrorType = .client
    public var message: Swift.String?

    public init (
        message: Swift.String? = nil
    )
    {
        self.message = message
    }
}

struct InvalidRequestExceptionBody: Swift.Equatable {
    let message: Swift.String?
}

extension InvalidRequestExceptionBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case message = "Message"
    }

    public init (from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let messageDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .message)
        message = messageDecoded
    }
}

extension ConnectContactLensClientTypes.IssueDetected: Swift.Codable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case characterOffsets = "CharacterOffsets"
    }

    public func encode(to encoder: Swift.Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let characterOffsets = self.characterOffsets {
            try encodeContainer.encode(characterOffsets, forKey: .characterOffsets)
        }
    }

    public init (from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let characterOffsetsDecoded = try containerValues.decodeIfPresent(ConnectContactLensClientTypes.CharacterOffsets.self, forKey: .characterOffsets)
        characterOffsets = characterOffsetsDecoded
    }
}

extension ConnectContactLensClientTypes {
    /// Potential issues that are detected based on an artificial intelligence analysis of each turn in the conversation.
    public struct IssueDetected: Swift.Equatable {
        /// The offset for when the issue was detected in the segment.
        /// This member is required.
        public var characterOffsets: ConnectContactLensClientTypes.CharacterOffsets?

        public init (
            characterOffsets: ConnectContactLensClientTypes.CharacterOffsets? = nil
        )
        {
            self.characterOffsets = characterOffsets
        }
    }

}

extension ListRealtimeContactAnalysisSegmentsInput: Swift.Encodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case contactId = "ContactId"
        case instanceId = "InstanceId"
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
    }

    public func encode(to encoder: Swift.Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let contactId = self.contactId {
            try encodeContainer.encode(contactId, forKey: .contactId)
        }
        if let instanceId = self.instanceId {
            try encodeContainer.encode(instanceId, forKey: .instanceId)
        }
        if maxResults != 0 {
            try encodeContainer.encode(maxResults, forKey: .maxResults)
        }
        if let nextToken = self.nextToken {
            try encodeContainer.encode(nextToken, forKey: .nextToken)
        }
    }
}

extension ListRealtimeContactAnalysisSegmentsInput: ClientRuntime.URLPathProvider {
    public var urlPath: Swift.String? {
        return "/realtime-contact-analysis/analysis-segments"
    }
}

public struct ListRealtimeContactAnalysisSegmentsInput: Swift.Equatable {
    /// The identifier of the contact.
    /// This member is required.
    public var contactId: Swift.String?
    /// The identifier of the Amazon Connect instance.
    /// This member is required.
    public var instanceId: Swift.String?
    /// The maximimum number of results to return per page.
    public var maxResults: Swift.Int
    /// The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
    public var nextToken: Swift.String?

    public init (
        contactId: Swift.String? = nil,
        instanceId: Swift.String? = nil,
        maxResults: Swift.Int = 0,
        nextToken: Swift.String? = nil
    )
    {
        self.contactId = contactId
        self.instanceId = instanceId
        self.maxResults = maxResults
        self.nextToken = nextToken
    }
}

struct ListRealtimeContactAnalysisSegmentsInputBody: Swift.Equatable {
    let instanceId: Swift.String?
    let contactId: Swift.String?
    let maxResults: Swift.Int
    let nextToken: Swift.String?
}

extension ListRealtimeContactAnalysisSegmentsInputBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case contactId = "ContactId"
        case instanceId = "InstanceId"
        case maxResults = "MaxResults"
        case nextToken = "NextToken"
    }

    public init (from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let instanceIdDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .instanceId)
        instanceId = instanceIdDecoded
        let contactIdDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .contactId)
        contactId = contactIdDecoded
        let maxResultsDecoded = try containerValues.decodeIfPresent(Swift.Int.self, forKey: .maxResults) ?? 0
        maxResults = maxResultsDecoded
        let nextTokenDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}

extension ListRealtimeContactAnalysisSegmentsOutputError: ClientRuntime.HttpResponseBinding {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil) throws {
        let errorDetails = try AWSClientRuntime.RestJSONError(httpResponse: httpResponse)
        let requestID = httpResponse.headers.value(for: X_AMZN_REQUEST_ID_HEADER)
        try self.init(errorType: errorDetails.errorType, httpResponse: httpResponse, decoder: decoder, message: errorDetails.errorMessage, requestID: requestID)
    }
}

extension ListRealtimeContactAnalysisSegmentsOutputError {
    public init(errorType: Swift.String?, httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil, message: Swift.String? = nil, requestID: Swift.String? = nil) throws {
        switch errorType {
        case "AccessDeniedException" : self = .accessDeniedException(try AccessDeniedException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "InternalServiceException" : self = .internalServiceException(try InternalServiceException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "InvalidRequestException" : self = .invalidRequestException(try InvalidRequestException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "ResourceNotFoundException" : self = .resourceNotFoundException(try ResourceNotFoundException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "ThrottlingException" : self = .throttlingException(try ThrottlingException(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        default : self = .unknown(UnknownAWSHttpServiceError(httpResponse: httpResponse, message: message, requestID: requestID))
        }
    }
}

public enum ListRealtimeContactAnalysisSegmentsOutputError: Swift.Error, Swift.Equatable {
    case accessDeniedException(AccessDeniedException)
    case internalServiceException(InternalServiceException)
    case invalidRequestException(InvalidRequestException)
    case resourceNotFoundException(ResourceNotFoundException)
    case throttlingException(ThrottlingException)
    case unknown(UnknownAWSHttpServiceError)
}

extension ListRealtimeContactAnalysisSegmentsOutputResponse: ClientRuntime.HttpResponseBinding {
    public init (httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil) throws {
        if case .stream(let reader) = httpResponse.body,
            let responseDecoder = decoder {
            let data = reader.toBytes().toData()
            let output: ListRealtimeContactAnalysisSegmentsOutputResponseBody = try responseDecoder.decode(responseBody: data)
            self.nextToken = output.nextToken
            self.segments = output.segments
        } else {
            self.nextToken = nil
            self.segments = nil
        }
    }
}

public struct ListRealtimeContactAnalysisSegmentsOutputResponse: Swift.Equatable {
    /// If there are additional results, this is the token for the next set of results. If response includes nextToken there are two possible scenarios:
    ///
    /// * There are more segments so another call is required to get them.
    ///
    /// * There are no more segments at this time, but more may be available later (real-time analysis is in progress) so the client should call the operation again to get new segments.
    ///
    ///
    /// If response does not include nextToken, the analysis is completed (successfully or failed) and there are no more segments to retrieve.
    public var nextToken: Swift.String?
    /// An analyzed transcript or category.
    /// This member is required.
    public var segments: [ConnectContactLensClientTypes.RealtimeContactAnalysisSegment]?

    public init (
        nextToken: Swift.String? = nil,
        segments: [ConnectContactLensClientTypes.RealtimeContactAnalysisSegment]? = nil
    )
    {
        self.nextToken = nextToken
        self.segments = segments
    }
}

struct ListRealtimeContactAnalysisSegmentsOutputResponseBody: Swift.Equatable {
    let segments: [ConnectContactLensClientTypes.RealtimeContactAnalysisSegment]?
    let nextToken: Swift.String?
}

extension ListRealtimeContactAnalysisSegmentsOutputResponseBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case nextToken = "NextToken"
        case segments = "Segments"
    }

    public init (from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let segmentsContainer = try containerValues.decodeIfPresent([ConnectContactLensClientTypes.RealtimeContactAnalysisSegment?].self, forKey: .segments)
        var segmentsDecoded0:[ConnectContactLensClientTypes.RealtimeContactAnalysisSegment]? = nil
        if let segmentsContainer = segmentsContainer {
            segmentsDecoded0 = [ConnectContactLensClientTypes.RealtimeContactAnalysisSegment]()
            for structure0 in segmentsContainer {
                if let structure0 = structure0 {
                    segmentsDecoded0?.append(structure0)
                }
            }
        }
        segments = segmentsDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}

extension ConnectContactLensClientTypes.PointOfInterest: Swift.Codable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case beginOffsetMillis = "BeginOffsetMillis"
        case endOffsetMillis = "EndOffsetMillis"
    }

    public func encode(to encoder: Swift.Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if beginOffsetMillis != 0 {
            try encodeContainer.encode(beginOffsetMillis, forKey: .beginOffsetMillis)
        }
        if endOffsetMillis != 0 {
            try encodeContainer.encode(endOffsetMillis, forKey: .endOffsetMillis)
        }
    }

    public init (from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let beginOffsetMillisDecoded = try containerValues.decodeIfPresent(Swift.Int.self, forKey: .beginOffsetMillis) ?? 0
        beginOffsetMillis = beginOffsetMillisDecoded
        let endOffsetMillisDecoded = try containerValues.decodeIfPresent(Swift.Int.self, forKey: .endOffsetMillis) ?? 0
        endOffsetMillis = endOffsetMillisDecoded
    }
}

extension ConnectContactLensClientTypes {
    /// The section of the contact audio where that category rule was detected.
    public struct PointOfInterest: Swift.Equatable {
        /// The beginning offset in milliseconds where the category rule was detected.
        /// This member is required.
        public var beginOffsetMillis: Swift.Int
        /// The ending offset in milliseconds where the category rule was detected.
        /// This member is required.
        public var endOffsetMillis: Swift.Int

        public init (
            beginOffsetMillis: Swift.Int = 0,
            endOffsetMillis: Swift.Int = 0
        )
        {
            self.beginOffsetMillis = beginOffsetMillis
            self.endOffsetMillis = endOffsetMillis
        }
    }

}

extension ConnectContactLensClientTypes.RealtimeContactAnalysisSegment: Swift.Codable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case categories = "Categories"
        case transcript = "Transcript"
    }

    public func encode(to encoder: Swift.Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let categories = self.categories {
            try encodeContainer.encode(categories, forKey: .categories)
        }
        if let transcript = self.transcript {
            try encodeContainer.encode(transcript, forKey: .transcript)
        }
    }

    public init (from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let transcriptDecoded = try containerValues.decodeIfPresent(ConnectContactLensClientTypes.Transcript.self, forKey: .transcript)
        transcript = transcriptDecoded
        let categoriesDecoded = try containerValues.decodeIfPresent(ConnectContactLensClientTypes.Categories.self, forKey: .categories)
        categories = categoriesDecoded
    }
}

extension ConnectContactLensClientTypes {
    /// An analyzed segment for a real-time analysis session.
    public struct RealtimeContactAnalysisSegment: Swift.Equatable {
        /// The matched category rules.
        public var categories: ConnectContactLensClientTypes.Categories?
        /// The analyzed transcript.
        public var transcript: ConnectContactLensClientTypes.Transcript?

        public init (
            categories: ConnectContactLensClientTypes.Categories? = nil,
            transcript: ConnectContactLensClientTypes.Transcript? = nil
        )
        {
            self.categories = categories
            self.transcript = transcript
        }
    }

}

extension ResourceNotFoundException {
    public init (httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil, message: Swift.String? = nil, requestID: Swift.String? = nil) throws {
        if case .stream(let reader) = httpResponse.body,
            let responseDecoder = decoder {
            let data = reader.toBytes().toData()
            let output: ResourceNotFoundExceptionBody = try responseDecoder.decode(responseBody: data)
            self.message = output.message
        } else {
            self.message = nil
        }
        self._headers = httpResponse.headers
        self._statusCode = httpResponse.statusCode
        self._requestID = requestID
        self._message = message
    }
}

/// The specified resource was not found.
public struct ResourceNotFoundException: AWSClientRuntime.AWSHttpServiceError, Swift.Equatable {
    public var _headers: ClientRuntime.Headers?
    public var _statusCode: ClientRuntime.HttpStatusCode?
    public var _message: Swift.String?
    public var _requestID: Swift.String?
    public var _retryable: Swift.Bool = false
    public var _isThrottling: Swift.Bool = false
    public var _type: ClientRuntime.ErrorType = .client
    public var message: Swift.String?

    public init (
        message: Swift.String? = nil
    )
    {
        self.message = message
    }
}

struct ResourceNotFoundExceptionBody: Swift.Equatable {
    let message: Swift.String?
}

extension ResourceNotFoundExceptionBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case message = "Message"
    }

    public init (from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let messageDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .message)
        message = messageDecoded
    }
}

extension ConnectContactLensClientTypes {
    public enum SentimentValue: Swift.Equatable, Swift.RawRepresentable, Swift.CaseIterable, Swift.Codable, Swift.Hashable {
        case negative
        case neutral
        case positive
        case sdkUnknown(Swift.String)

        public static var allCases: [SentimentValue] {
            return [
                .negative,
                .neutral,
                .positive,
                .sdkUnknown("")
            ]
        }
        public init?(rawValue: Swift.String) {
            let value = Self.allCases.first(where: { $0.rawValue == rawValue })
            self = value ?? Self.sdkUnknown(rawValue)
        }
        public var rawValue: Swift.String {
            switch self {
            case .negative: return "NEGATIVE"
            case .neutral: return "NEUTRAL"
            case .positive: return "POSITIVE"
            case let .sdkUnknown(s): return s
            }
        }
        public init(from decoder: Swift.Decoder) throws {
            let container = try decoder.singleValueContainer()
            let rawValue = try container.decode(RawValue.self)
            self = SentimentValue(rawValue: rawValue) ?? SentimentValue.sdkUnknown(rawValue)
        }
    }
}

extension ThrottlingException {
    public init (httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil, message: Swift.String? = nil, requestID: Swift.String? = nil) throws {
        if case .stream(let reader) = httpResponse.body,
            let responseDecoder = decoder {
            let data = reader.toBytes().toData()
            let output: ThrottlingExceptionBody = try responseDecoder.decode(responseBody: data)
            self.message = output.message
        } else {
            self.message = nil
        }
        self._headers = httpResponse.headers
        self._statusCode = httpResponse.statusCode
        self._requestID = requestID
        self._message = message
    }
}

/// The throttling limit has been exceeded.
public struct ThrottlingException: AWSClientRuntime.AWSHttpServiceError, Swift.Equatable {
    public var _headers: ClientRuntime.Headers?
    public var _statusCode: ClientRuntime.HttpStatusCode?
    public var _message: Swift.String?
    public var _requestID: Swift.String?
    public var _retryable: Swift.Bool = false
    public var _isThrottling: Swift.Bool = false
    public var _type: ClientRuntime.ErrorType = .client
    /// This member is required.
    public var message: Swift.String?

    public init (
        message: Swift.String? = nil
    )
    {
        self.message = message
    }
}

struct ThrottlingExceptionBody: Swift.Equatable {
    let message: Swift.String?
}

extension ThrottlingExceptionBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case message = "Message"
    }

    public init (from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let messageDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .message)
        message = messageDecoded
    }
}

extension ConnectContactLensClientTypes.Transcript: Swift.Codable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case beginOffsetMillis = "BeginOffsetMillis"
        case content = "Content"
        case endOffsetMillis = "EndOffsetMillis"
        case id = "Id"
        case issuesDetected = "IssuesDetected"
        case participantId = "ParticipantId"
        case participantRole = "ParticipantRole"
        case sentiment = "Sentiment"
    }

    public func encode(to encoder: Swift.Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if beginOffsetMillis != 0 {
            try encodeContainer.encode(beginOffsetMillis, forKey: .beginOffsetMillis)
        }
        if let content = self.content {
            try encodeContainer.encode(content, forKey: .content)
        }
        if endOffsetMillis != 0 {
            try encodeContainer.encode(endOffsetMillis, forKey: .endOffsetMillis)
        }
        if let id = self.id {
            try encodeContainer.encode(id, forKey: .id)
        }
        if let issuesDetected = issuesDetected {
            var issuesDetectedContainer = encodeContainer.nestedUnkeyedContainer(forKey: .issuesDetected)
            for issuesdetected0 in issuesDetected {
                try issuesDetectedContainer.encode(issuesdetected0)
            }
        }
        if let participantId = self.participantId {
            try encodeContainer.encode(participantId, forKey: .participantId)
        }
        if let participantRole = self.participantRole {
            try encodeContainer.encode(participantRole, forKey: .participantRole)
        }
        if let sentiment = self.sentiment {
            try encodeContainer.encode(sentiment.rawValue, forKey: .sentiment)
        }
    }

    public init (from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let idDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .id)
        id = idDecoded
        let participantIdDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .participantId)
        participantId = participantIdDecoded
        let participantRoleDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .participantRole)
        participantRole = participantRoleDecoded
        let contentDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .content)
        content = contentDecoded
        let beginOffsetMillisDecoded = try containerValues.decodeIfPresent(Swift.Int.self, forKey: .beginOffsetMillis) ?? 0
        beginOffsetMillis = beginOffsetMillisDecoded
        let endOffsetMillisDecoded = try containerValues.decodeIfPresent(Swift.Int.self, forKey: .endOffsetMillis) ?? 0
        endOffsetMillis = endOffsetMillisDecoded
        let sentimentDecoded = try containerValues.decodeIfPresent(ConnectContactLensClientTypes.SentimentValue.self, forKey: .sentiment)
        sentiment = sentimentDecoded
        let issuesDetectedContainer = try containerValues.decodeIfPresent([ConnectContactLensClientTypes.IssueDetected?].self, forKey: .issuesDetected)
        var issuesDetectedDecoded0:[ConnectContactLensClientTypes.IssueDetected]? = nil
        if let issuesDetectedContainer = issuesDetectedContainer {
            issuesDetectedDecoded0 = [ConnectContactLensClientTypes.IssueDetected]()
            for structure0 in issuesDetectedContainer {
                if let structure0 = structure0 {
                    issuesDetectedDecoded0?.append(structure0)
                }
            }
        }
        issuesDetected = issuesDetectedDecoded0
    }
}

extension ConnectContactLensClientTypes {
    /// A list of messages in the session.
    public struct Transcript: Swift.Equatable {
        /// The beginning offset in the contact for this transcript.
        /// This member is required.
        public var beginOffsetMillis: Swift.Int
        /// The content of the transcript.
        /// This member is required.
        public var content: Swift.String?
        /// The end offset in the contact for this transcript.
        /// This member is required.
        public var endOffsetMillis: Swift.Int
        /// The identifier of the transcript.
        /// This member is required.
        public var id: Swift.String?
        /// List of positions where issues were detected on the transcript.
        public var issuesDetected: [ConnectContactLensClientTypes.IssueDetected]?
        /// The identifier of the participant.
        /// This member is required.
        public var participantId: Swift.String?
        /// The role of participant. For example, is it a customer, agent, or system.
        /// This member is required.
        public var participantRole: Swift.String?
        /// The sentiment of the detected for this piece of transcript.
        /// This member is required.
        public var sentiment: ConnectContactLensClientTypes.SentimentValue?

        public init (
            beginOffsetMillis: Swift.Int = 0,
            content: Swift.String? = nil,
            endOffsetMillis: Swift.Int = 0,
            id: Swift.String? = nil,
            issuesDetected: [ConnectContactLensClientTypes.IssueDetected]? = nil,
            participantId: Swift.String? = nil,
            participantRole: Swift.String? = nil,
            sentiment: ConnectContactLensClientTypes.SentimentValue? = nil
        )
        {
            self.beginOffsetMillis = beginOffsetMillis
            self.content = content
            self.endOffsetMillis = endOffsetMillis
            self.id = id
            self.issuesDetected = issuesDetected
            self.participantId = participantId
            self.participantRole = participantRole
            self.sentiment = sentiment
        }
    }

}
