// Code generated by smithy-swift-codegen. DO NOT EDIT!



extension S3ClientTypes {
    /// Describes where logs are stored and the prefix that Amazon S3 assigns to all log object keys for a bucket. For more information, see [PUT Bucket logging](https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTlogging.html) in the Amazon S3 API Reference.
    public struct LoggingEnabled: Swift.Equatable {
        /// Specifies the bucket where you want Amazon S3 to store server access logs. You can have your logs delivered to any bucket that you own, including the same bucket that is being logged. You can also configure multiple buckets to deliver their logs to the same target bucket. In this case, you should choose a different TargetPrefix for each source bucket so that the delivered log files can be distinguished by key.
        /// This member is required.
        public var targetBucket: Swift.String?
        /// Container for granting information. Buckets that use the bucket owner enforced setting for Object Ownership don't support target grants. For more information, see [Permissions for server access log delivery](https://docs.aws.amazon.com/AmazonS3/latest/userguide/enable-server-access-logging.html#grant-log-delivery-permissions-general) in the Amazon S3 User Guide.
        public var targetGrants: [S3ClientTypes.TargetGrant]?
        /// A prefix for all log object keys. If you store log files from multiple Amazon S3 buckets in a single bucket, you can use a prefix to distinguish which log files came from which bucket.
        /// This member is required.
        public var targetPrefix: Swift.String?

        public init (
            targetBucket: Swift.String? = nil,
            targetGrants: [S3ClientTypes.TargetGrant]? = nil,
            targetPrefix: Swift.String? = nil
        )
        {
            self.targetBucket = targetBucket
            self.targetGrants = targetGrants
            self.targetPrefix = targetPrefix
        }
    }

}