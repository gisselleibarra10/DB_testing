// Code generated by smithy-swift-codegen. DO NOT EDIT!



extension TranscribeStreamingClientTypes {
    /// A word, phrase, or punctuation mark in your transcription output, along with various associated attributes, such as confidence score, type, and start and end times.
    public struct MedicalItem: Swift.Equatable {
        /// The confidence score associated with a word or phrase in your transcript. Confidence scores are values between 0 and 1. A larger value indicates a higher probability that the identified item correctly matches the item spoken in your media.
        public var confidence: Swift.Double?
        /// The word or punctuation that was transcribed.
        public var content: Swift.String?
        /// The end time, in milliseconds, of the transcribed item.
        public var endTime: Swift.Double
        /// If speaker partitioning is enabled, Speaker labels the speaker of the specified item.
        public var speaker: Swift.String?
        /// The start time, in milliseconds, of the transcribed item.
        public var startTime: Swift.Double
        /// The type of item identified. Options are: PRONUNCIATION (spoken words) and PUNCTUATION.
        public var type: TranscribeStreamingClientTypes.ItemType?

        public init (
            confidence: Swift.Double? = nil,
            content: Swift.String? = nil,
            endTime: Swift.Double = 0.0,
            speaker: Swift.String? = nil,
            startTime: Swift.Double = 0.0,
            type: TranscribeStreamingClientTypes.ItemType? = nil
        )
        {
            self.confidence = confidence
            self.content = content
            self.endTime = endTime
            self.speaker = speaker
            self.startTime = startTime
            self.type = type
        }
    }

}