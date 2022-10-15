// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DeleteObjectsInput: Swift.Equatable {
    /// The bucket name containing the objects to delete. When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form AccessPointName-AccountId.s3-accesspoint.Region.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see [Using access points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html) in the Amazon S3 User Guide. When using this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form  AccessPointName-AccountId.outpostID.s3-outposts.Region.amazonaws.com. When using this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts bucket ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see [Using Amazon S3 on Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html) in the Amazon S3 User Guide.
    /// This member is required.
    public var bucket: Swift.String?
    /// Specifies whether you want to delete this object even if it has a Governance-type Object Lock in place. To use this header, you must have the s3:BypassGovernanceRetention permission.
    public var bypassGovernanceRetention: Swift.Bool
    /// Indicates the algorithm used to create the checksum for the object when using the SDK. This header will not provide any additional functionality if not using the SDK. When sending this header, there must be a corresponding x-amz-checksum or x-amz-trailer header sent. Otherwise, Amazon S3 fails the request with the HTTP status code 400 Bad Request. For more information, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html) in the Amazon S3 User Guide. If you provide an individual checksum, Amazon S3 ignores any provided ChecksumAlgorithm parameter. This checksum algorithm must be the same for all parts and it match the checksum value supplied in the CreateMultipartUpload request.
    public var checksumAlgorithm: S3ClientTypes.ChecksumAlgorithm?
    /// Container for the request.
    /// This member is required.
    public var delete: S3ClientTypes.Delete?
    /// The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code 403 Forbidden (access denied).
    public var expectedBucketOwner: Swift.String?
    /// The concatenation of the authentication device's serial number, a space, and the value that is displayed on your authentication device. Required to permanently delete a versioned object if versioning is configured with MFA delete enabled.
    public var mFA: Swift.String?
    /// Confirms that the requester knows that they will be charged for the request. Bucket owners need not specify this parameter in their requests. For information about downloading objects from Requester Pays buckets, see [Downloading Objects in Requester Pays Buckets](https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html) in the Amazon S3 User Guide.
    public var requestPayer: S3ClientTypes.RequestPayer?

    public init (
        bucket: Swift.String? = nil,
        bypassGovernanceRetention: Swift.Bool = false,
        checksumAlgorithm: S3ClientTypes.ChecksumAlgorithm? = nil,
        delete: S3ClientTypes.Delete? = nil,
        expectedBucketOwner: Swift.String? = nil,
        mFA: Swift.String? = nil,
        requestPayer: S3ClientTypes.RequestPayer? = nil
    )
    {
        self.bucket = bucket
        self.bypassGovernanceRetention = bypassGovernanceRetention
        self.checksumAlgorithm = checksumAlgorithm
        self.delete = delete
        self.expectedBucketOwner = expectedBucketOwner
        self.mFA = mFA
        self.requestPayer = requestPayer
    }
}