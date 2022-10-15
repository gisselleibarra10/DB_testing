// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct GetObjectOutputResponse: Swift.Equatable {
    /// Indicates that a range of bytes was specified.
    public var acceptRanges: Swift.String?
    /// Object data.
    public var body: ClientRuntime.ByteStream?
    /// Indicates whether the object uses an S3 Bucket Key for server-side encryption with Amazon Web Services KMS (SSE-KMS).
    public var bucketKeyEnabled: Swift.Bool
    /// Specifies caching behavior along the request/reply chain.
    public var cacheControl: Swift.String?
    /// The base64-encoded, 32-bit CRC32 checksum of the object. This will only be present if it was uploaded with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated with multipart uploads, see [ Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums) in the Amazon S3 User Guide.
    public var checksumCRC32: Swift.String?
    /// The base64-encoded, 32-bit CRC32C checksum of the object. This will only be present if it was uploaded with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated with multipart uploads, see [ Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums) in the Amazon S3 User Guide.
    public var checksumCRC32C: Swift.String?
    /// The base64-encoded, 160-bit SHA-1 digest of the object. This will only be present if it was uploaded with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated with multipart uploads, see [ Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums) in the Amazon S3 User Guide.
    public var checksumSHA1: Swift.String?
    /// The base64-encoded, 256-bit SHA-256 digest of the object. This will only be present if it was uploaded with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated with multipart uploads, see [ Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums) in the Amazon S3 User Guide.
    public var checksumSHA256: Swift.String?
    /// Specifies presentational information for the object.
    public var contentDisposition: Swift.String?
    /// Specifies what content encodings have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field.
    public var contentEncoding: Swift.String?
    /// The language the content is in.
    public var contentLanguage: Swift.String?
    /// Size of the body in bytes.
    public var contentLength: Swift.Int
    /// The portion of the object returned in the response.
    public var contentRange: Swift.String?
    /// A standard MIME type describing the format of the object data.
    public var contentType: Swift.String?
    /// Specifies whether the object retrieved was (true) or was not (false) a Delete Marker. If false, this response header does not appear in the response.
    public var deleteMarker: Swift.Bool
    /// An entity tag (ETag) is an opaque identifier assigned by a web server to a specific version of a resource found at a URL.
    public var eTag: Swift.String?
    /// If the object expiration is configured (see PUT Bucket lifecycle), the response includes this header. It includes the expiry-date and rule-id key-value pairs providing object expiration information. The value of the rule-id is URL-encoded.
    public var expiration: Swift.String?
    /// The date and time at which the object is no longer cacheable.
    public var expires: ClientRuntime.Date?
    /// Creation date of the object.
    public var lastModified: ClientRuntime.Date?
    /// A map of metadata to store with the object in S3.
    public var metadata: [Swift.String:Swift.String]?
    /// This is set to the number of metadata entries not returned in x-amz-meta headers. This can happen if you create metadata using an API like SOAP that supports more flexible metadata than the REST API. For example, using SOAP, you can create metadata whose values are not legal HTTP headers.
    public var missingMeta: Swift.Int
    /// Indicates whether this object has an active legal hold. This field is only returned if you have permission to view an object's legal hold status.
    public var objectLockLegalHoldStatus: S3ClientTypes.ObjectLockLegalHoldStatus?
    /// The Object Lock mode currently in place for this object.
    public var objectLockMode: S3ClientTypes.ObjectLockMode?
    /// The date and time when this object's Object Lock will expire.
    public var objectLockRetainUntilDate: ClientRuntime.Date?
    /// The count of parts this object has. This value is only returned if you specify partNumber in your request and the object was uploaded as a multipart upload.
    public var partsCount: Swift.Int
    /// Amazon S3 can return this if your request involves a bucket that is either a source or destination in a replication rule.
    public var replicationStatus: S3ClientTypes.ReplicationStatus?
    /// If present, indicates that the requester was successfully charged for the request.
    public var requestCharged: S3ClientTypes.RequestCharged?
    /// Provides information about object restoration action and expiration time of the restored object copy.
    public var restore: Swift.String?
    /// If server-side encryption with a customer-provided encryption key was requested, the response will include this header confirming the encryption algorithm used.
    public var sSECustomerAlgorithm: Swift.String?
    /// If server-side encryption with a customer-provided encryption key was requested, the response will include this header to provide round-trip message integrity verification of the customer-provided encryption key.
    public var sSECustomerKeyMD5: Swift.String?
    /// If present, specifies the ID of the Amazon Web Services Key Management Service (Amazon Web Services KMS) symmetric customer managed key that was used for the object.
    public var sSEKMSKeyId: Swift.String?
    /// The server-side encryption algorithm used when storing this object in Amazon S3 (for example, AES256, aws:kms).
    public var serverSideEncryption: S3ClientTypes.ServerSideEncryption?
    /// Provides storage class information of the object. Amazon S3 returns this header for all objects except for S3 Standard storage class objects.
    public var storageClass: S3ClientTypes.StorageClass?
    /// The number of tags, if any, on the object.
    public var tagCount: Swift.Int
    /// Version of the object.
    public var versionId: Swift.String?
    /// If the bucket is configured as a website, redirects requests for this object to another object in the same bucket or to an external URL. Amazon S3 stores the value of this header in the object metadata.
    public var websiteRedirectLocation: Swift.String?

    public init (
        acceptRanges: Swift.String? = nil,
        body: ClientRuntime.ByteStream? = nil,
        bucketKeyEnabled: Swift.Bool = false,
        cacheControl: Swift.String? = nil,
        checksumCRC32: Swift.String? = nil,
        checksumCRC32C: Swift.String? = nil,
        checksumSHA1: Swift.String? = nil,
        checksumSHA256: Swift.String? = nil,
        contentDisposition: Swift.String? = nil,
        contentEncoding: Swift.String? = nil,
        contentLanguage: Swift.String? = nil,
        contentLength: Swift.Int = 0,
        contentRange: Swift.String? = nil,
        contentType: Swift.String? = nil,
        deleteMarker: Swift.Bool = false,
        eTag: Swift.String? = nil,
        expiration: Swift.String? = nil,
        expires: ClientRuntime.Date? = nil,
        lastModified: ClientRuntime.Date? = nil,
        metadata: [Swift.String:Swift.String]? = nil,
        missingMeta: Swift.Int = 0,
        objectLockLegalHoldStatus: S3ClientTypes.ObjectLockLegalHoldStatus? = nil,
        objectLockMode: S3ClientTypes.ObjectLockMode? = nil,
        objectLockRetainUntilDate: ClientRuntime.Date? = nil,
        partsCount: Swift.Int = 0,
        replicationStatus: S3ClientTypes.ReplicationStatus? = nil,
        requestCharged: S3ClientTypes.RequestCharged? = nil,
        restore: Swift.String? = nil,
        sSECustomerAlgorithm: Swift.String? = nil,
        sSECustomerKeyMD5: Swift.String? = nil,
        sSEKMSKeyId: Swift.String? = nil,
        serverSideEncryption: S3ClientTypes.ServerSideEncryption? = nil,
        storageClass: S3ClientTypes.StorageClass? = nil,
        tagCount: Swift.Int = 0,
        versionId: Swift.String? = nil,
        websiteRedirectLocation: Swift.String? = nil
    )
    {
        self.acceptRanges = acceptRanges
        self.body = body
        self.bucketKeyEnabled = bucketKeyEnabled
        self.cacheControl = cacheControl
        self.checksumCRC32 = checksumCRC32
        self.checksumCRC32C = checksumCRC32C
        self.checksumSHA1 = checksumSHA1
        self.checksumSHA256 = checksumSHA256
        self.contentDisposition = contentDisposition
        self.contentEncoding = contentEncoding
        self.contentLanguage = contentLanguage
        self.contentLength = contentLength
        self.contentRange = contentRange
        self.contentType = contentType
        self.deleteMarker = deleteMarker
        self.eTag = eTag
        self.expiration = expiration
        self.expires = expires
        self.lastModified = lastModified
        self.metadata = metadata
        self.missingMeta = missingMeta
        self.objectLockLegalHoldStatus = objectLockLegalHoldStatus
        self.objectLockMode = objectLockMode
        self.objectLockRetainUntilDate = objectLockRetainUntilDate
        self.partsCount = partsCount
        self.replicationStatus = replicationStatus
        self.requestCharged = requestCharged
        self.restore = restore
        self.sSECustomerAlgorithm = sSECustomerAlgorithm
        self.sSECustomerKeyMD5 = sSECustomerKeyMD5
        self.sSEKMSKeyId = sSEKMSKeyId
        self.serverSideEncryption = serverSideEncryption
        self.storageClass = storageClass
        self.tagCount = tagCount
        self.versionId = versionId
        self.websiteRedirectLocation = websiteRedirectLocation
    }
}