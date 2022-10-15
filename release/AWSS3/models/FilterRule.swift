// Code generated by smithy-swift-codegen. DO NOT EDIT!



extension S3ClientTypes {
    /// Specifies the Amazon S3 object key name to filter on and whether to filter on the suffix or prefix of the key name.
    public struct FilterRule: Swift.Equatable {
        /// The object key name prefix or suffix identifying one or more objects to which the filtering rule applies. The maximum length is 1,024 characters. Overlapping prefixes and suffixes are not supported. For more information, see [Configuring Event Notifications](https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html) in the Amazon S3 User Guide.
        public var name: S3ClientTypes.FilterRuleName?
        /// The value that the filter searches for in object key names.
        public var value: Swift.String?

        public init (
            name: S3ClientTypes.FilterRuleName? = nil,
            value: Swift.String? = nil
        )
        {
            self.name = name
            self.value = value
        }
    }

}