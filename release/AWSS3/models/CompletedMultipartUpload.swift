// Code generated by smithy-swift-codegen. DO NOT EDIT!



extension S3ClientTypes {
    /// The container for the completed multipart upload details.
    public struct CompletedMultipartUpload: Swift.Equatable {
        /// Array of CompletedPart data types. If you do not supply a valid Part with your request, the service sends back an HTTP 400 response.
        public var parts: [S3ClientTypes.CompletedPart]?

        public init (
            parts: [S3ClientTypes.CompletedPart]? = nil
        )
        {
            self.parts = parts
        }
    }

}