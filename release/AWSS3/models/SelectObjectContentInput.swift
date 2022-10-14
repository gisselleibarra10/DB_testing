// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// Request to filter the contents of an Amazon S3 object based on a simple Structured Query Language (SQL) statement. In the request, along with the SQL expression, you must specify a data serialization format (JSON or CSV) of the object. Amazon S3 uses this to parse object data into records. It returns only records that match the specified SQL expression. You must also specify the data serialization format for the response. For more information, see [S3Select API Documentation](https://docs.aws.amazon.com/AmazonS3/latest/API/RESTObjectSELECTContent.html).
public struct SelectObjectContentInput: Swift.Equatable {
    /// The S3 bucket.
    /// This member is required.
    public var bucket: Swift.String?
    /// The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code 403 Forbidden (access denied).
    public var expectedBucketOwner: Swift.String?
    /// The expression that is used to query the object.
    /// This member is required.
    public var expression: Swift.String?
    /// The type of the provided expression (for example, SQL).
    /// This member is required.
    public var expressionType: S3ClientTypes.ExpressionType?
    /// Describes the format of the data in the object that is being queried.
    /// This member is required.
    public var inputSerialization: S3ClientTypes.InputSerialization?
    /// The object key.
    /// This member is required.
    public var key: Swift.String?
    /// Describes the format of the data that you want Amazon S3 to return in response.
    /// This member is required.
    public var outputSerialization: S3ClientTypes.OutputSerialization?
    /// Specifies if periodic request progress information should be enabled.
    public var requestProgress: S3ClientTypes.RequestProgress?
    /// The server-side encryption (SSE) algorithm used to encrypt the object. This parameter is needed only when the object was created using a checksum algorithm. For more information, see [Protecting data using SSE-C keys](https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html) in the Amazon S3 User Guide.
    public var sSECustomerAlgorithm: Swift.String?
    /// The server-side encryption (SSE) customer managed key. This parameter is needed only when the object was created using a checksum algorithm. For more information, see [Protecting data using SSE-C keys](https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html) in the Amazon S3 User Guide.
    public var sSECustomerKey: Swift.String?
    /// The MD5 server-side encryption (SSE) customer managed key. This parameter is needed only when the object was created using a checksum algorithm. For more information, see [Protecting data using SSE-C keys](https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html) in the Amazon S3 User Guide.
    public var sSECustomerKeyMD5: Swift.String?
    /// Specifies the byte range of the object to get the records from. A record is processed when its first byte is contained by the range. This parameter is optional, but when specified, it must not be empty. See RFC 2616, Section 14.35.1 about how to specify the start and end of the range. ScanRangemay be used in the following ways:
    ///
    /// * 50100 - process only the records starting between the bytes 50 and 100 (inclusive, counting from zero)
    ///
    /// * 50 - process only the records starting after the byte 50
    ///
    /// * 50 - process only the records within the last 50 bytes of the file.
    public var scanRange: S3ClientTypes.ScanRange?

    public init (
        bucket: Swift.String? = nil,
        expectedBucketOwner: Swift.String? = nil,
        expression: Swift.String? = nil,
        expressionType: S3ClientTypes.ExpressionType? = nil,
        inputSerialization: S3ClientTypes.InputSerialization? = nil,
        key: Swift.String? = nil,
        outputSerialization: S3ClientTypes.OutputSerialization? = nil,
        requestProgress: S3ClientTypes.RequestProgress? = nil,
        sSECustomerAlgorithm: Swift.String? = nil,
        sSECustomerKey: Swift.String? = nil,
        sSECustomerKeyMD5: Swift.String? = nil,
        scanRange: S3ClientTypes.ScanRange? = nil
    )
    {
        self.bucket = bucket
        self.expectedBucketOwner = expectedBucketOwner
        self.expression = expression
        self.expressionType = expressionType
        self.inputSerialization = inputSerialization
        self.key = key
        self.outputSerialization = outputSerialization
        self.requestProgress = requestProgress
        self.sSECustomerAlgorithm = sSECustomerAlgorithm
        self.sSECustomerKey = sSECustomerKey
        self.sSECustomerKeyMD5 = sSECustomerKeyMD5
        self.scanRange = scanRange
    }
}
