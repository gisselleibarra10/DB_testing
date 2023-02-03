// Code generated by smithy-swift-codegen. DO NOT EDIT!



extension TranscribeStreamingClientTypes {
    /// The MedicalTranscriptEvent associated with a MedicalTranscriptResultStream. Contains a set of transcription results from one or more audio segments, along with additional information per your request parameters.
    public struct MedicalTranscriptEvent: Swift.Equatable {
        /// Contains Results, which contains a set of transcription results from one or more audio segments, along with additional information per your request parameters. This can include information relating to alternative transcriptions, channel identification, partial result stabilization, language identification, and other transcription-related data.
        public var transcript: TranscribeStreamingClientTypes.MedicalTranscript?

        public init (
            transcript: TranscribeStreamingClientTypes.MedicalTranscript? = nil
        )
        {
            self.transcript = transcript
        }
    }

}