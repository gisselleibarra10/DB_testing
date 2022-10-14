// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CopyObjectOutputResponse: Swift.Equatable {
    /// Indicates whether the copied object uses an S3 Bucket Key for server-side encryption with Amazon Web Services KMS (SSE-KMS).
    public var bucketKeyEnabled: Swift.Bool
    /// Container for all response elements.
    public var copyObjectResult: S3ClientTypes.CopyObjectResult?
    /// Version of the copied object in the destination bucket.
    public var copySourceVersionId: Swift.String?
    /// If the object expiration is configured, the response includes this header.
    public var expiration: Swift.String?
    /// If present, indicates that the requester was successfully charged for the request.
    public var requestCharged: S3ClientTypes.RequestCharged?
    /// If server-side encryption with a customer-provided encryption key was requested, the response will include this header confirming the encryption algorithm used.
    public var sSECustomerAlgorithm: Swift.String?
    /// If server-side encryption with a customer-provided encryption key was requested, the response will include this header to provide round-trip message integrity verification of the customer-provided encryption key.
    public var sSECustomerKeyMD5: Swift.String?
    /// If present, specifies the Amazon Web Services KMS Encryption Context to use for object encryption. The value of this header is a base64-encoded UTF-8 string holding JSON with the encryption context key-value pairs.
    public var sSEKMSEncryptionContext: Swift.String?
    /// If present, specifies the ID of the Amazon Web Services Key Management Service (Amazon Web Services KMS) symmetric customer managed key that was used for the object.
    public var sSEKMSKeyId: Swift.String?
    /// The server-side encryption algorithm used when storing this object in Amazon S3 (for example, AES256, aws:kms).
    public var serverSideEncryption: S3ClientTypes.ServerSideEncryption?
    /// Version ID of the newly created copy.
    public var versionId: Swift.String?

    public init (
        bucketKeyEnabled: Swift.Bool = false,
        copyObjectResult: S3ClientTypes.CopyObjectResult? = nil,
        copySourceVersionId: Swift.String? = nil,
        expiration: Swift.String? = nil,
        requestCharged: S3ClientTypes.RequestCharged? = nil,
        sSECustomerAlgorithm: Swift.String? = nil,
        sSECustomerKeyMD5: Swift.String? = nil,
        sSEKMSEncryptionContext: Swift.String? = nil,
        sSEKMSKeyId: Swift.String? = nil,
        serverSideEncryption: S3ClientTypes.ServerSideEncryption? = nil,
        versionId: Swift.String? = nil
    )
    {
        self.bucketKeyEnabled = bucketKeyEnabled
        self.copyObjectResult = copyObjectResult
        self.copySourceVersionId = copySourceVersionId
        self.expiration = expiration
        self.requestCharged = requestCharged
        self.sSECustomerAlgorithm = sSECustomerAlgorithm
        self.sSECustomerKeyMD5 = sSECustomerKeyMD5
        self.sSEKMSEncryptionContext = sSEKMSEncryptionContext
        self.sSEKMSKeyId = sSEKMSKeyId
        self.serverSideEncryption = serverSideEncryption
        self.versionId = versionId
    }
}
