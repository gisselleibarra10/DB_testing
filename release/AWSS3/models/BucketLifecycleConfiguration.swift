// Code generated by smithy-swift-codegen. DO NOT EDIT!



extension S3ClientTypes {
    /// Specifies the lifecycle configuration for objects in an Amazon S3 bucket. For more information, see [Object Lifecycle Management](https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html) in the Amazon S3 User Guide.
    public struct BucketLifecycleConfiguration: Swift.Equatable {
        /// A lifecycle rule for individual objects in an Amazon S3 bucket.
        /// This member is required.
        public var rules: [S3ClientTypes.LifecycleRule]?

        public init (
            rules: [S3ClientTypes.LifecycleRule]? = nil
        )
        {
            self.rules = rules
        }
    }

}
