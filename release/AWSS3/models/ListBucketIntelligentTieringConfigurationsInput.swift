// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListBucketIntelligentTieringConfigurationsInput: Swift.Equatable {
    /// The name of the Amazon S3 bucket whose configuration you want to modify or retrieve.
    /// This member is required.
    public var bucket: Swift.String?
    /// The ContinuationToken that represents a placeholder from where this request should begin.
    public var continuationToken: Swift.String?

    public init (
        bucket: Swift.String? = nil,
        continuationToken: Swift.String? = nil
    )
    {
        self.bucket = bucket
        self.continuationToken = continuationToken
    }
}