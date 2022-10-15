// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct UploadPartCopyInput: Swift.Equatable {
    /// The bucket name. When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form AccessPointName-AccountId.s3-accesspoint.Region.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see [Using access points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html) in the Amazon S3 User Guide. When using this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form  AccessPointName-AccountId.outpostID.s3-outposts.Region.amazonaws.com. When using this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts bucket ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see [Using Amazon S3 on Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html) in the Amazon S3 User Guide.
    /// This member is required.
    public var bucket: Swift.String?
    /// Specifies the source object for the copy operation. You specify the value in one of two formats, depending on whether you want to access the source object through an [access point](https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points.html):
    ///
    /// * For objects not accessed through an access point, specify the name of the source bucket and key of the source object, separated by a slash (/). For example, to copy the object reports/january.pdf from the bucket awsexamplebucket, use awsexamplebucket/reports/january.pdf. The value must be URL-encoded.
    ///
    /// * For objects accessed through access points, specify the Amazon Resource Name (ARN) of the object as accessed through the access point, in the format arn:aws:s3:::accesspoint//object/. For example, to copy the object reports/january.pdf through access point my-access-point owned by account 123456789012 in Region us-west-2, use the URL encoding of arn:aws:s3:us-west-2:123456789012:accesspoint/my-access-point/object/reports/january.pdf. The value must be URL encoded. Amazon S3 supports copy operations using access points only when the source and destination buckets are in the same Amazon Web Services Region. Alternatively, for objects accessed through Amazon S3 on Outposts, specify the ARN of the object as accessed in the format arn:aws:s3-outposts:::outpost//object/. For example, to copy the object reports/january.pdf through outpost my-outpost owned by account 123456789012 in Region us-west-2, use the URL encoding of arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/object/reports/january.pdf. The value must be URL-encoded.
    ///
    ///
    /// To copy a specific version of an object, append ?versionId= to the value (for example, awsexamplebucket/reports/january.pdf?versionId=QUpfdndhfd8438MNFDN93jdnJFkdmqnh893). If you don't specify a version ID, Amazon S3 copies the latest version of the source object.
    /// This member is required.
    public var copySource: Swift.String?
    /// Copies the object if its entity tag (ETag) matches the specified tag.
    public var copySourceIfMatch: Swift.String?
    /// Copies the object if it has been modified since the specified time.
    public var copySourceIfModifiedSince: ClientRuntime.Date?
    /// Copies the object if its entity tag (ETag) is different than the specified ETag.
    public var copySourceIfNoneMatch: Swift.String?
    /// Copies the object if it hasn't been modified since the specified time.
    public var copySourceIfUnmodifiedSince: ClientRuntime.Date?
    /// The range of bytes to copy from the source object. The range value must use the form bytes=first-last, where the first and last are the zero-based byte offsets to copy. For example, bytes=0-9 indicates that you want to copy the first 10 bytes of the source. You can copy a range only if the source object is greater than 5 MB.
    public var copySourceRange: Swift.String?
    /// Specifies the algorithm to use when decrypting the source object (for example, AES256).
    public var copySourceSSECustomerAlgorithm: Swift.String?
    /// Specifies the customer-provided encryption key for Amazon S3 to use to decrypt the source object. The encryption key provided in this header must be one that was used when the source object was created.
    public var copySourceSSECustomerKey: Swift.String?
    /// Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure that the encryption key was transmitted without error.
    public var copySourceSSECustomerKeyMD5: Swift.String?
    /// The account ID of the expected destination bucket owner. If the destination bucket is owned by a different account, the request fails with the HTTP status code 403 Forbidden (access denied).
    public var expectedBucketOwner: Swift.String?
    /// The account ID of the expected source bucket owner. If the source bucket is owned by a different account, the request fails with the HTTP status code 403 Forbidden (access denied).
    public var expectedSourceBucketOwner: Swift.String?
    /// Object key for which the multipart upload was initiated.
    /// This member is required.
    public var key: Swift.String?
    /// Part number of part being copied. This is a positive integer between 1 and 10,000.
    /// This member is required.
    public var partNumber: Swift.Int
    /// Confirms that the requester knows that they will be charged for the request. Bucket owners need not specify this parameter in their requests. For information about downloading objects from Requester Pays buckets, see [Downloading Objects in Requester Pays Buckets](https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html) in the Amazon S3 User Guide.
    public var requestPayer: S3ClientTypes.RequestPayer?
    /// Specifies the algorithm to use to when encrypting the object (for example, AES256).
    public var sSECustomerAlgorithm: Swift.String?
    /// Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This value is used to store the object and then it is discarded; Amazon S3 does not store the encryption key. The key must be appropriate for use with the algorithm specified in the x-amz-server-side-encryption-customer-algorithm header. This must be the same encryption key specified in the initiate multipart upload request.
    public var sSECustomerKey: Swift.String?
    /// Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure that the encryption key was transmitted without error.
    public var sSECustomerKeyMD5: Swift.String?
    /// Upload ID identifying the multipart upload whose part is being copied.
    /// This member is required.
    public var uploadId: Swift.String?

    public init (
        bucket: Swift.String? = nil,
        copySource: Swift.String? = nil,
        copySourceIfMatch: Swift.String? = nil,
        copySourceIfModifiedSince: ClientRuntime.Date? = nil,
        copySourceIfNoneMatch: Swift.String? = nil,
        copySourceIfUnmodifiedSince: ClientRuntime.Date? = nil,
        copySourceRange: Swift.String? = nil,
        copySourceSSECustomerAlgorithm: Swift.String? = nil,
        copySourceSSECustomerKey: Swift.String? = nil,
        copySourceSSECustomerKeyMD5: Swift.String? = nil,
        expectedBucketOwner: Swift.String? = nil,
        expectedSourceBucketOwner: Swift.String? = nil,
        key: Swift.String? = nil,
        partNumber: Swift.Int = 0,
        requestPayer: S3ClientTypes.RequestPayer? = nil,
        sSECustomerAlgorithm: Swift.String? = nil,
        sSECustomerKey: Swift.String? = nil,
        sSECustomerKeyMD5: Swift.String? = nil,
        uploadId: Swift.String? = nil
    )
    {
        self.bucket = bucket
        self.copySource = copySource
        self.copySourceIfMatch = copySourceIfMatch
        self.copySourceIfModifiedSince = copySourceIfModifiedSince
        self.copySourceIfNoneMatch = copySourceIfNoneMatch
        self.copySourceIfUnmodifiedSince = copySourceIfUnmodifiedSince
        self.copySourceRange = copySourceRange
        self.copySourceSSECustomerAlgorithm = copySourceSSECustomerAlgorithm
        self.copySourceSSECustomerKey = copySourceSSECustomerKey
        self.copySourceSSECustomerKeyMD5 = copySourceSSECustomerKeyMD5
        self.expectedBucketOwner = expectedBucketOwner
        self.expectedSourceBucketOwner = expectedSourceBucketOwner
        self.key = key
        self.partNumber = partNumber
        self.requestPayer = requestPayer
        self.sSECustomerAlgorithm = sSECustomerAlgorithm
        self.sSECustomerKey = sSECustomerKey
        self.sSECustomerKeyMD5 = sSECustomerKeyMD5
        self.uploadId = uploadId
    }
}