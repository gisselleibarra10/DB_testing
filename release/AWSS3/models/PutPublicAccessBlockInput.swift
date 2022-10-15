// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct PutPublicAccessBlockInput: Swift.Equatable {
    /// The name of the Amazon S3 bucket whose PublicAccessBlock configuration you want to set.
    /// This member is required.
    public var bucket: Swift.String?
    /// Indicates the algorithm used to create the checksum for the object when using the SDK. This header will not provide any additional functionality if not using the SDK. When sending this header, there must be a corresponding x-amz-checksum or x-amz-trailer header sent. Otherwise, Amazon S3 fails the request with the HTTP status code 400 Bad Request. For more information, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html) in the Amazon S3 User Guide. If you provide an individual checksum, Amazon S3 ignores any provided ChecksumAlgorithm parameter.
    public var checksumAlgorithm: S3ClientTypes.ChecksumAlgorithm?
    /// The MD5 hash of the PutPublicAccessBlock request body. For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.
    public var contentMD5: Swift.String?
    /// The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code 403 Forbidden (access denied).
    public var expectedBucketOwner: Swift.String?
    /// The PublicAccessBlock configuration that you want to apply to this Amazon S3 bucket. You can enable the configuration options in any combination. For more information about when Amazon S3 considers a bucket or object public, see [The Meaning of "Public"](https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html#access-control-block-public-access-policy-status) in the Amazon S3 User Guide.
    /// This member is required.
    public var publicAccessBlockConfiguration: S3ClientTypes.PublicAccessBlockConfiguration?

    public init (
        bucket: Swift.String? = nil,
        checksumAlgorithm: S3ClientTypes.ChecksumAlgorithm? = nil,
        contentMD5: Swift.String? = nil,
        expectedBucketOwner: Swift.String? = nil,
        publicAccessBlockConfiguration: S3ClientTypes.PublicAccessBlockConfiguration? = nil
    )
    {
        self.bucket = bucket
        self.checksumAlgorithm = checksumAlgorithm
        self.contentMD5 = contentMD5
        self.expectedBucketOwner = expectedBucketOwner
        self.publicAccessBlockConfiguration = publicAccessBlockConfiguration
    }
}