// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetObjectTorrentInput: Swift.Equatable {
    /// The name of the bucket containing the object for which to get the torrent files.
    /// This member is required.
    public var bucket: Swift.String?
    /// The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code 403 Forbidden (access denied).
    public var expectedBucketOwner: Swift.String?
    /// The object key for which to get the information.
    /// This member is required.
    public var key: Swift.String?
    /// Confirms that the requester knows that they will be charged for the request. Bucket owners need not specify this parameter in their requests. For information about downloading objects from Requester Pays buckets, see [Downloading Objects in Requester Pays Buckets](https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html) in the Amazon S3 User Guide.
    public var requestPayer: S3ClientTypes.RequestPayer?

    public init (
        bucket: Swift.String? = nil,
        expectedBucketOwner: Swift.String? = nil,
        key: Swift.String? = nil,
        requestPayer: S3ClientTypes.RequestPayer? = nil
    )
    {
        self.bucket = bucket
        self.expectedBucketOwner = expectedBucketOwner
        self.key = key
        self.requestPayer = requestPayer
    }
}
