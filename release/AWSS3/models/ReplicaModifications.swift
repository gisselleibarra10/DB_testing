// Code generated by smithy-swift-codegen. DO NOT EDIT!



extension S3ClientTypes {
    /// A filter that you can specify for selection for modifications on replicas. Amazon S3 doesn't replicate replica modifications by default. In the latest version of replication configuration (when Filter is specified), you can specify this element and set the status to Enabled to replicate modifications on replicas. If you don't specify the Filter element, Amazon S3 assumes that the replication configuration is the earlier version, V1. In the earlier version, this element is not allowed.
    public struct ReplicaModifications: Swift.Equatable {
        /// Specifies whether Amazon S3 replicates modifications on replicas.
        /// This member is required.
        public var status: S3ClientTypes.ReplicaModificationsStatus?

        public init (
            status: S3ClientTypes.ReplicaModificationsStatus? = nil
        )
        {
            self.status = status
        }
    }

}
