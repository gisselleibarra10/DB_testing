// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DeleteBucketTaggingInput: Swift.Equatable {
    /// The bucket that has the tag set to be removed.
    /// This member is required.
    public var bucket: Swift.String?
    /// The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code 403 Forbidden (access denied).
    public var expectedBucketOwner: Swift.String?

    public init (
        bucket: Swift.String? = nil,
        expectedBucketOwner: Swift.String? = nil
    )
    {
        self.bucket = bucket
        self.expectedBucketOwner = expectedBucketOwner
    }
}
