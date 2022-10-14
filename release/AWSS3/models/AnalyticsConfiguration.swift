// Code generated by smithy-swift-codegen. DO NOT EDIT!



extension S3ClientTypes {
    /// Specifies the configuration and any analyses for the analytics filter of an Amazon S3 bucket.
    public struct AnalyticsConfiguration: Swift.Equatable {
        /// The filter used to describe a set of objects for analyses. A filter must have exactly one prefix, one tag, or one conjunction (AnalyticsAndOperator). If no filter is provided, all objects will be considered in any analysis.
        public var filter: S3ClientTypes.AnalyticsFilter?
        /// The ID that identifies the analytics configuration.
        /// This member is required.
        public var id: Swift.String?
        /// Contains data related to access patterns to be collected and made available to analyze the tradeoffs between different storage classes.
        /// This member is required.
        public var storageClassAnalysis: S3ClientTypes.StorageClassAnalysis?

        public init (
            filter: S3ClientTypes.AnalyticsFilter? = nil,
            id: Swift.String? = nil,
            storageClassAnalysis: S3ClientTypes.StorageClassAnalysis? = nil
        )
        {
            self.filter = filter
            self.id = id
            self.storageClassAnalysis = storageClassAnalysis
        }
    }

}
