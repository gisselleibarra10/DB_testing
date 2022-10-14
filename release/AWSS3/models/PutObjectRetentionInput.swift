// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct PutObjectRetentionInput: Swift.Equatable {
    /// The bucket name that contains the object you want to apply this Object Retention configuration to. When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form AccessPointName-AccountId.s3-accesspoint.Region.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see [Using access points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html) in the Amazon S3 User Guide.
    /// This member is required.
    public var bucket: Swift.String?
    /// Indicates whether this action should bypass Governance-mode restrictions.
    public var bypassGovernanceRetention: Swift.Bool
    /// Indicates the algorithm used to create the checksum for the object when using the SDK. This header will not provide any additional functionality if not using the SDK. When sending this header, there must be a corresponding x-amz-checksum or x-amz-trailer header sent. Otherwise, Amazon S3 fails the request with the HTTP status code 400 Bad Request. For more information, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html) in the Amazon S3 User Guide. If you provide an individual checksum, Amazon S3 ignores any provided ChecksumAlgorithm parameter.
    public var checksumAlgorithm: S3ClientTypes.ChecksumAlgorithm?
    /// The MD5 hash for the request body. For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.
    public var contentMD5: Swift.String?
    /// The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code 403 Forbidden (access denied).
    public var expectedBucketOwner: Swift.String?
    /// The key name for the object that you want to apply this Object Retention configuration to.
    /// This member is required.
    public var key: Swift.String?
    /// Confirms that the requester knows that they will be charged for the request. Bucket owners need not specify this parameter in their requests. For information about downloading objects from Requester Pays buckets, see [Downloading Objects in Requester Pays Buckets](https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html) in the Amazon S3 User Guide.
    public var requestPayer: S3ClientTypes.RequestPayer?
    /// The container element for the Object Retention configuration.
    public var retention: S3ClientTypes.ObjectLockRetention?
    /// The version ID for the object that you want to apply this Object Retention configuration to.
    public var versionId: Swift.String?

    public init (
        bucket: Swift.String? = nil,
        bypassGovernanceRetention: Swift.Bool = false,
        checksumAlgorithm: S3ClientTypes.ChecksumAlgorithm? = nil,
        contentMD5: Swift.String? = nil,
        expectedBucketOwner: Swift.String? = nil,
        key: Swift.String? = nil,
        requestPayer: S3ClientTypes.RequestPayer? = nil,
        retention: S3ClientTypes.ObjectLockRetention? = nil,
        versionId: Swift.String? = nil
    )
    {
        self.bucket = bucket
        self.bypassGovernanceRetention = bypassGovernanceRetention
        self.checksumAlgorithm = checksumAlgorithm
        self.contentMD5 = contentMD5
        self.expectedBucketOwner = expectedBucketOwner
        self.key = key
        self.requestPayer = requestPayer
        self.retention = retention
        self.versionId = versionId
    }
}
