// Code generated by smithy-swift-codegen. DO NOT EDIT!



extension S3ClientTypes {
    /// A container for specifying the configuration for publication of messages to an Amazon Simple Notification Service (Amazon SNS) topic when Amazon S3 detects specified events.
    public struct TopicConfiguration: Swift.Equatable {
        /// The Amazon S3 bucket event about which to send notifications. For more information, see [Supported Event Types](https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html) in the Amazon S3 User Guide.
        /// This member is required.
        public var events: [S3ClientTypes.Event]?
        /// Specifies object key name filtering rules. For information about key name filtering, see [Configuring Event Notifications](https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html) in the Amazon S3 User Guide.
        public var filter: S3ClientTypes.NotificationConfigurationFilter?
        /// An optional unique identifier for configurations in a notification configuration. If you don't provide one, Amazon S3 will assign an ID.
        public var id: Swift.String?
        /// The Amazon Resource Name (ARN) of the Amazon SNS topic to which Amazon S3 publishes a message when it detects events of the specified type.
        /// This member is required.
        public var topicArn: Swift.String?

        public init (
            events: [S3ClientTypes.Event]? = nil,
            filter: S3ClientTypes.NotificationConfigurationFilter? = nil,
            id: Swift.String? = nil,
            topicArn: Swift.String? = nil
        )
        {
            self.events = events
            self.filter = filter
            self.id = id
            self.topicArn = topicArn
        }
    }

}
