// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct PutBucketMetricsConfigurationInput: Swift.Equatable {
    /// The name of the bucket for which the metrics configuration is set.
    /// This member is required.
    public var bucket: Swift.String?
    /// The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code 403 Forbidden (access denied).
    public var expectedBucketOwner: Swift.String?
    /// The ID used to identify the metrics configuration.
    /// This member is required.
    public var id: Swift.String?
    /// Specifies the metrics configuration.
    /// This member is required.
    public var metricsConfiguration: S3ClientTypes.MetricsConfiguration?

    public init (
        bucket: Swift.String? = nil,
        expectedBucketOwner: Swift.String? = nil,
        id: Swift.String? = nil,
        metricsConfiguration: S3ClientTypes.MetricsConfiguration? = nil
    )
    {
        self.bucket = bucket
        self.expectedBucketOwner = expectedBucketOwner
        self.id = id
        self.metricsConfiguration = metricsConfiguration
    }
}
