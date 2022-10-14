// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetObjectInput: Swift.Equatable {
    /// The bucket name containing the object. When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form AccessPointName-AccountId.s3-accesspoint.Region.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see [Using access points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html) in the Amazon S3 User Guide. When using an Object Lambda access point the hostname takes the form AccessPointName-AccountId.s3-object-lambda.Region.amazonaws.com. When using this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form  AccessPointName-AccountId.outpostID.s3-outposts.Region.amazonaws.com. When using this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts bucket ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see [Using Amazon S3 on Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html) in the Amazon S3 User Guide.
    /// This member is required.
    public var bucket: Swift.String?
    /// To retrieve the checksum, this mode must be enabled.
    public var checksumMode: S3ClientTypes.ChecksumMode?
    /// The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code 403 Forbidden (access denied).
    public var expectedBucketOwner: Swift.String?
    /// Return the object only if its entity tag (ETag) is the same as the one specified; otherwise, return a 412 (precondition failed) error.
    public var ifMatch: Swift.String?
    /// Return the object only if it has been modified since the specified time; otherwise, return a 304 (not modified) error.
    public var ifModifiedSince: ClientRuntime.Date?
    /// Return the object only if its entity tag (ETag) is different from the one specified; otherwise, return a 304 (not modified) error.
    public var ifNoneMatch: Swift.String?
    /// Return the object only if it has not been modified since the specified time; otherwise, return a 412 (precondition failed) error.
    public var ifUnmodifiedSince: ClientRuntime.Date?
    /// Key of the object to get.
    /// This member is required.
    public var key: Swift.String?
    /// Part number of the object being read. This is a positive integer between 1 and 10,000. Effectively performs a 'ranged' GET request for the part specified. Useful for downloading just a part of an object.
    public var partNumber: Swift.Int
    /// Downloads the specified range bytes of an object. For more information about the HTTP Range header, see [https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.35](https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.35). Amazon S3 doesn't support retrieving multiple ranges of data per GET request.
    public var range: Swift.String?
    /// Confirms that the requester knows that they will be charged for the request. Bucket owners need not specify this parameter in their requests. For information about downloading objects from Requester Pays buckets, see [Downloading Objects in Requester Pays Buckets](https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html) in the Amazon S3 User Guide.
    public var requestPayer: S3ClientTypes.RequestPayer?
    /// Sets the Cache-Control header of the response.
    public var responseCacheControl: Swift.String?
    /// Sets the Content-Disposition header of the response
    public var responseContentDisposition: Swift.String?
    /// Sets the Content-Encoding header of the response.
    public var responseContentEncoding: Swift.String?
    /// Sets the Content-Language header of the response.
    public var responseContentLanguage: Swift.String?
    /// Sets the Content-Type header of the response.
    public var responseContentType: Swift.String?
    /// Sets the Expires header of the response.
    public var responseExpires: ClientRuntime.Date?
    /// Specifies the algorithm to use to when decrypting the object (for example, AES256).
    public var sSECustomerAlgorithm: Swift.String?
    /// Specifies the customer-provided encryption key for Amazon S3 used to encrypt the data. This value is used to decrypt the object when recovering it and must match the one used when storing the data. The key must be appropriate for use with the algorithm specified in the x-amz-server-side-encryption-customer-algorithm header.
    public var sSECustomerKey: Swift.String?
    /// Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure that the encryption key was transmitted without error.
    public var sSECustomerKeyMD5: Swift.String?
    /// VersionId used to reference a specific version of the object.
    public var versionId: Swift.String?

    public init (
        bucket: Swift.String? = nil,
        checksumMode: S3ClientTypes.ChecksumMode? = nil,
        expectedBucketOwner: Swift.String? = nil,
        ifMatch: Swift.String? = nil,
        ifModifiedSince: ClientRuntime.Date? = nil,
        ifNoneMatch: Swift.String? = nil,
        ifUnmodifiedSince: ClientRuntime.Date? = nil,
        key: Swift.String? = nil,
        partNumber: Swift.Int = 0,
        range: Swift.String? = nil,
        requestPayer: S3ClientTypes.RequestPayer? = nil,
        responseCacheControl: Swift.String? = nil,
        responseContentDisposition: Swift.String? = nil,
        responseContentEncoding: Swift.String? = nil,
        responseContentLanguage: Swift.String? = nil,
        responseContentType: Swift.String? = nil,
        responseExpires: ClientRuntime.Date? = nil,
        sSECustomerAlgorithm: Swift.String? = nil,
        sSECustomerKey: Swift.String? = nil,
        sSECustomerKeyMD5: Swift.String? = nil,
        versionId: Swift.String? = nil
    )
    {
        self.bucket = bucket
        self.checksumMode = checksumMode
        self.expectedBucketOwner = expectedBucketOwner
        self.ifMatch = ifMatch
        self.ifModifiedSince = ifModifiedSince
        self.ifNoneMatch = ifNoneMatch
        self.ifUnmodifiedSince = ifUnmodifiedSince
        self.key = key
        self.partNumber = partNumber
        self.range = range
        self.requestPayer = requestPayer
        self.responseCacheControl = responseCacheControl
        self.responseContentDisposition = responseContentDisposition
        self.responseContentEncoding = responseContentEncoding
        self.responseContentLanguage = responseContentLanguage
        self.responseContentType = responseContentType
        self.responseExpires = responseExpires
        self.sSECustomerAlgorithm = sSECustomerAlgorithm
        self.sSECustomerKey = sSECustomerKey
        self.sSECustomerKeyMD5 = sSECustomerKeyMD5
        self.versionId = versionId
    }
}
