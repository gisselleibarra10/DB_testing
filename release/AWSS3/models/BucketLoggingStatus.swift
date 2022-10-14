// Code generated by smithy-swift-codegen. DO NOT EDIT!



extension S3ClientTypes {
    /// Container for logging status information.
    public struct BucketLoggingStatus: Swift.Equatable {
        /// Describes where logs are stored and the prefix that Amazon S3 assigns to all log object keys for a bucket. For more information, see [PUT Bucket logging](https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTlogging.html) in the Amazon S3 API Reference.
        public var loggingEnabled: S3ClientTypes.LoggingEnabled?

        public init (
            loggingEnabled: S3ClientTypes.LoggingEnabled? = nil
        )
        {
            self.loggingEnabled = loggingEnabled
        }
    }

}
