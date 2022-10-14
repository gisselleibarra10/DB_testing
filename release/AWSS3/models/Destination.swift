// Code generated by smithy-swift-codegen. DO NOT EDIT!



extension S3ClientTypes {
    /// Specifies information about where to publish analysis or configuration results for an Amazon S3 bucket and S3 Replication Time Control (S3 RTC).
    public struct Destination: Swift.Equatable {
        /// Specify this only in a cross-account scenario (where source and destination bucket owners are not the same), and you want to change replica ownership to the Amazon Web Services account that owns the destination bucket. If this is not specified in the replication configuration, the replicas are owned by same Amazon Web Services account that owns the source object.
        public var accessControlTranslation: S3ClientTypes.AccessControlTranslation?
        /// Destination bucket owner account ID. In a cross-account scenario, if you direct Amazon S3 to change replica ownership to the Amazon Web Services account that owns the destination bucket by specifying the AccessControlTranslation property, this is the account ID of the destination bucket owner. For more information, see [Replication Additional Configuration: Changing the Replica Owner](https://docs.aws.amazon.com/AmazonS3/latest/dev/replication-change-owner.html) in the Amazon S3 User Guide.
        public var account: Swift.String?
        /// The Amazon Resource Name (ARN) of the bucket where you want Amazon S3 to store the results.
        /// This member is required.
        public var bucket: Swift.String?
        /// A container that provides information about encryption. If SourceSelectionCriteria is specified, you must specify this element.
        public var encryptionConfiguration: S3ClientTypes.EncryptionConfiguration?
        /// A container specifying replication metrics-related settings enabling replication metrics and events.
        public var metrics: S3ClientTypes.Metrics?
        /// A container specifying S3 Replication Time Control (S3 RTC), including whether S3 RTC is enabled and the time when all objects and operations on objects must be replicated. Must be specified together with a Metrics block.
        public var replicationTime: S3ClientTypes.ReplicationTime?
        /// The storage class to use when replicating objects, such as S3 Standard or reduced redundancy. By default, Amazon S3 uses the storage class of the source object to create the object replica. For valid values, see the StorageClass element of the [PUT Bucket replication](https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTreplication.html) action in the Amazon S3 API Reference.
        public var storageClass: S3ClientTypes.StorageClass?

        public init (
            accessControlTranslation: S3ClientTypes.AccessControlTranslation? = nil,
            account: Swift.String? = nil,
            bucket: Swift.String? = nil,
            encryptionConfiguration: S3ClientTypes.EncryptionConfiguration? = nil,
            metrics: S3ClientTypes.Metrics? = nil,
            replicationTime: S3ClientTypes.ReplicationTime? = nil,
            storageClass: S3ClientTypes.StorageClass? = nil
        )
        {
            self.accessControlTranslation = accessControlTranslation
            self.account = account
            self.bucket = bucket
            self.encryptionConfiguration = encryptionConfiguration
            self.metrics = metrics
            self.replicationTime = replicationTime
            self.storageClass = storageClass
        }
    }

}
