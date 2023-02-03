// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime



public struct StartStreamTranscriptionOutputResponse: Swift.Equatable {
    /// Shows whether content identification was enabled for your transcription.
    public var contentIdentificationType: TranscribeStreamingClientTypes.ContentIdentificationType?
    /// Shows whether content redaction was enabled for your transcription.
    public var contentRedactionType: TranscribeStreamingClientTypes.ContentRedactionType?
    /// Shows whether channel identification was enabled for your transcription.
    public var enableChannelIdentification: Swift.Bool
    /// Shows whether partial results stabilization was enabled for your transcription.
    public var enablePartialResultsStabilization: Swift.Bool
    /// Shows whether automatic language identification was enabled for your transcription.
    public var identifyLanguage: Swift.Bool
    /// Provides the language code that you specified in your request.
    public var languageCode: TranscribeStreamingClientTypes.LanguageCode?
    /// Provides the name of the custom language model that you specified in your request.
    public var languageModelName: Swift.String?
    /// Provides the language codes that you specified in your request.
    public var languageOptions: Swift.String?
    /// Provides the media encoding you specified in your request.
    public var mediaEncoding: TranscribeStreamingClientTypes.MediaEncoding?
    /// Provides the sample rate that you specified in your request.
    public var mediaSampleRateHertz: Swift.Int?
    /// Provides the number of channels that you specified in your request.
    public var numberOfChannels: Swift.Int?
    /// Provides the stabilization level used for your transcription.
    public var partialResultsStability: TranscribeStreamingClientTypes.PartialResultsStability?
    /// Lists the PII entity types you specified in your request.
    public var piiEntityTypes: Swift.String?
    /// Provides the preferred language that you specified in your request.
    public var preferredLanguage: TranscribeStreamingClientTypes.LanguageCode?
    /// Provides the identifier for your streaming request.
    public var requestId: Swift.String?
    /// Provides the identifier for your transcription session.
    public var sessionId: Swift.String?
    /// Shows whether speaker partitioning was enabled for your transcription.
    public var showSpeakerLabel: Swift.Bool
    /// Provides detailed information about your streaming session.
    public var transcriptResultStream: AsyncResponseStream<TranscribeStreamingClientTypes.TranscriptResultStream>?
    /// Provides the vocabulary filtering method used in your transcription.
    public var vocabularyFilterMethod: TranscribeStreamingClientTypes.VocabularyFilterMethod?
    /// Provides the name of the custom vocabulary filter that you specified in your request.
    public var vocabularyFilterName: Swift.String?
    /// Provides the names of the custom vocabulary filters that you specified in your request.
    public var vocabularyFilterNames: Swift.String?
    /// Provides the name of the custom vocabulary that you specified in your request.
    public var vocabularyName: Swift.String?
    /// Provides the names of the custom vocabularies that you specified in your request.
    public var vocabularyNames: Swift.String?

    public init (
        contentIdentificationType: TranscribeStreamingClientTypes.ContentIdentificationType? = nil,
        contentRedactionType: TranscribeStreamingClientTypes.ContentRedactionType? = nil,
        enableChannelIdentification: Swift.Bool = false,
        enablePartialResultsStabilization: Swift.Bool = false,
        identifyLanguage: Swift.Bool = false,
        languageCode: TranscribeStreamingClientTypes.LanguageCode? = nil,
        languageModelName: Swift.String? = nil,
        languageOptions: Swift.String? = nil,
        mediaEncoding: TranscribeStreamingClientTypes.MediaEncoding? = nil,
        mediaSampleRateHertz: Swift.Int? = nil,
        numberOfChannels: Swift.Int? = nil,
        partialResultsStability: TranscribeStreamingClientTypes.PartialResultsStability? = nil,
        piiEntityTypes: Swift.String? = nil,
        preferredLanguage: TranscribeStreamingClientTypes.LanguageCode? = nil,
        requestId: Swift.String? = nil,
        sessionId: Swift.String? = nil,
        showSpeakerLabel: Swift.Bool = false,
        transcriptResultStream: AsyncResponseStream<TranscribeStreamingClientTypes.TranscriptResultStream>? = nil,
        vocabularyFilterMethod: TranscribeStreamingClientTypes.VocabularyFilterMethod? = nil,
        vocabularyFilterName: Swift.String? = nil,
        vocabularyFilterNames: Swift.String? = nil,
        vocabularyName: Swift.String? = nil,
        vocabularyNames: Swift.String? = nil
    )
    {
        self.contentIdentificationType = contentIdentificationType
        self.contentRedactionType = contentRedactionType
        self.enableChannelIdentification = enableChannelIdentification
        self.enablePartialResultsStabilization = enablePartialResultsStabilization
        self.identifyLanguage = identifyLanguage
        self.languageCode = languageCode
        self.languageModelName = languageModelName
        self.languageOptions = languageOptions
        self.mediaEncoding = mediaEncoding
        self.mediaSampleRateHertz = mediaSampleRateHertz
        self.numberOfChannels = numberOfChannels
        self.partialResultsStability = partialResultsStability
        self.piiEntityTypes = piiEntityTypes
        self.preferredLanguage = preferredLanguage
        self.requestId = requestId
        self.sessionId = sessionId
        self.showSpeakerLabel = showSpeakerLabel
        self.transcriptResultStream = transcriptResultStream
        self.vocabularyFilterMethod = vocabularyFilterMethod
        self.vocabularyFilterName = vocabularyFilterName
        self.vocabularyFilterNames = vocabularyFilterNames
        self.vocabularyName = vocabularyName
        self.vocabularyNames = vocabularyNames
    }
}