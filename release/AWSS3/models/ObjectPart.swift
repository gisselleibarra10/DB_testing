// Code generated by smithy-swift-codegen. DO NOT EDIT!



extension S3ClientTypes {
    /// A container for elements related to an individual part.
    public struct ObjectPart: Swift.Equatable {
        /// This header can be used as a data integrity check to verify that the data received is the same data that was originally sent. This header specifies the base64-encoded, 32-bit CRC32 checksum of the object. For more information, see [Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html) in the Amazon S3 User Guide.
        public var checksumCRC32: Swift.String?
        /// The base64-encoded, 32-bit CRC32C checksum of the object. This will only be present if it was uploaded with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated with multipart uploads, see [ Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums) in the Amazon S3 User Guide.
        public var checksumCRC32C: Swift.String?
        /// The base64-encoded, 160-bit SHA-1 digest of the object. This will only be present if it was uploaded with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated with multipart uploads, see [ Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums) in the Amazon S3 User Guide.
        public var checksumSHA1: Swift.String?
        /// The base64-encoded, 256-bit SHA-256 digest of the object. This will only be present if it was uploaded with the object. With multipart uploads, this may not be a checksum value of the object. For more information about how checksums are calculated with multipart uploads, see [ Checking object integrity](https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums) in the Amazon S3 User Guide.
        public var checksumSHA256: Swift.String?
        /// The part number identifying the part. This value is a positive integer between 1 and 10,000.
        public var partNumber: Swift.Int
        /// The size of the uploaded part in bytes.
        public var size: Swift.Int

        public init (
            checksumCRC32: Swift.String? = nil,
            checksumCRC32C: Swift.String? = nil,
            checksumSHA1: Swift.String? = nil,
            checksumSHA256: Swift.String? = nil,
            partNumber: Swift.Int = 0,
            size: Swift.Int = 0
        )
        {
            self.checksumCRC32 = checksumCRC32
            self.checksumCRC32C = checksumCRC32C
            self.checksumSHA1 = checksumSHA1
            self.checksumSHA256 = checksumSHA256
            self.partNumber = partNumber
            self.size = size
        }
    }

}