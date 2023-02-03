// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct StartCallAnalyticsStreamTranscriptionOutputResponse: Swift.Equatable {
    /// Provides detailed information about your Call Analytics streaming session.
    public var callAnalyticsTranscriptResultStream: TranscribeStreamingClientTypes.CallAnalyticsTranscriptResultStream?
    /// Shows whether content identification was enabled for your Call Analytics transcription.
    public var contentIdentificationType: TranscribeStreamingClientTypes.ContentIdentificationType?
    /// Shows whether content redaction was enabled for your Call Analytics transcription.
    public var contentRedactionType: TranscribeStreamingClientTypes.ContentRedactionType?
    /// Shows whether partial results stabilization was enabled for your Call Analytics transcription.
    public var enablePartialResultsStabilization: Swift.Bool
    /// Provides the language code that you specified in your Call Analytics request.
    public var languageCode: TranscribeStreamingClientTypes.CallAnalyticsLanguageCode?
    /// Provides the name of the custom language model that you specified in your Call Analytics request.
    public var languageModelName: Swift.String?
    /// Provides the media encoding you specified in your Call Analytics request.
    public var mediaEncoding: TranscribeStreamingClientTypes.MediaEncoding?
    /// Provides the sample rate that you specified in your Call Analytics request.
    public var mediaSampleRateHertz: Swift.Int?
    /// Provides the stabilization level used for your transcription.
    public var partialResultsStability: TranscribeStreamingClientTypes.PartialResultsStability?
    /// Lists the PII entity types you specified in your Call Analytics request.
    public var piiEntityTypes: Swift.String?
    /// Provides the identifier for your Call Analytics streaming request.
    public var requestId: Swift.String?
    /// Provides the identifier for your Call Analytics transcription session.
    public var sessionId: Swift.String?
    /// Provides the vocabulary filtering method used in your Call Analytics transcription.
    public var vocabularyFilterMethod: TranscribeStreamingClientTypes.VocabularyFilterMethod?
    /// Provides the name of the custom vocabulary filter that you specified in your Call Analytics request.
    public var vocabularyFilterName: Swift.String?
    /// Provides the name of the custom vocabulary that you specified in your Call Analytics request.
    public var vocabularyName: Swift.String?

    public init (
        callAnalyticsTranscriptResultStream: TranscribeStreamingClientTypes.CallAnalyticsTranscriptResultStream? = nil,
        contentIdentificationType: TranscribeStreamingClientTypes.ContentIdentificationType? = nil,
        contentRedactionType: TranscribeStreamingClientTypes.ContentRedactionType? = nil,
        enablePartialResultsStabilization: Swift.Bool = false,
        languageCode: TranscribeStreamingClientTypes.CallAnalyticsLanguageCode? = nil,
        languageModelName: Swift.String? = nil,
        mediaEncoding: TranscribeStreamingClientTypes.MediaEncoding? = nil,
        mediaSampleRateHertz: Swift.Int? = nil,
        partialResultsStability: TranscribeStreamingClientTypes.PartialResultsStability? = nil,
        piiEntityTypes: Swift.String? = nil,
        requestId: Swift.String? = nil,
        sessionId: Swift.String? = nil,
        vocabularyFilterMethod: TranscribeStreamingClientTypes.VocabularyFilterMethod? = nil,
        vocabularyFilterName: Swift.String? = nil,
        vocabularyName: Swift.String? = nil
    )
    {
        self.callAnalyticsTranscriptResultStream = callAnalyticsTranscriptResultStream
        self.contentIdentificationType = contentIdentificationType
        self.contentRedactionType = contentRedactionType
        self.enablePartialResultsStabilization = enablePartialResultsStabilization
        self.languageCode = languageCode
        self.languageModelName = languageModelName
        self.mediaEncoding = mediaEncoding
        self.mediaSampleRateHertz = mediaSampleRateHertz
        self.partialResultsStability = partialResultsStability
        self.piiEntityTypes = piiEntityTypes
        self.requestId = requestId
        self.sessionId = sessionId
        self.vocabularyFilterMethod = vocabularyFilterMethod
        self.vocabularyFilterName = vocabularyFilterName
        self.vocabularyName = vocabularyName
    }
}