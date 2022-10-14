// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetObjectLegalHoldInput: Swift.Equatable {
    /// The bucket name containing the object whose legal hold status you want to retrieve. When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form AccessPointName-AccountId.s3-accesspoint.Region.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see [Using access points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html) in the Amazon S3 User Guide.
    /// This member is required.
    public var bucket: Swift.String?
    /// The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code 403 Forbidden (access denied).
    public var expectedBucketOwner: Swift.String?
    /// The key name for the object whose legal hold status you want to retrieve.
    /// This member is required.
    public var key: Swift.String?
    /// Confirms that the requester knows that they will be charged for the request. Bucket owners need not specify this parameter in their requests. For information about downloading objects from Requester Pays buckets, see [Downloading Objects in Requester Pays Buckets](https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html) in the Amazon S3 User Guide.
    public var requestPayer: S3ClientTypes.RequestPayer?
    /// The version ID of the object whose legal hold status you want to retrieve.
    public var versionId: Swift.String?

    public init (
        bucket: Swift.String? = nil,
        expectedBucketOwner: Swift.String? = nil,
        key: Swift.String? = nil,
        requestPayer: S3ClientTypes.RequestPayer? = nil,
        versionId: Swift.String? = nil
    )
    {
        self.bucket = bucket
        self.expectedBucketOwner = expectedBucketOwner
        self.key = key
        self.requestPayer = requestPayer
        self.versionId = versionId
    }
}
