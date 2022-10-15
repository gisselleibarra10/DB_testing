// Code generated by smithy-swift-codegen. DO NOT EDIT!



extension S3ClientTypes {
    /// Specifies object key name filtering rules. For information about key name filtering, see [Configuring Event Notifications](https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html) in the Amazon S3 User Guide.
    public struct NotificationConfigurationFilter: Swift.Equatable {
        /// A container for object key name prefix and suffix filtering rules.
        public var key: S3ClientTypes.S3KeyFilter?

        public init (
            key: S3ClientTypes.S3KeyFilter? = nil
        )
        {
            self.key = key
        }
    }

}