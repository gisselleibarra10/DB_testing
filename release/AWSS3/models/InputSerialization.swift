// Code generated by smithy-swift-codegen. DO NOT EDIT!



extension S3ClientTypes {
    /// Describes the serialization format of the object.
    public struct InputSerialization: Swift.Equatable {
        /// Describes the serialization of a CSV-encoded object.
        public var cSV: S3ClientTypes.CSVInput?
        /// Specifies object's compression format. Valid values: NONE, GZIP, BZIP2. Default Value: NONE.
        public var compressionType: S3ClientTypes.CompressionType?
        /// Specifies JSON as object's input serialization format.
        public var jSON: S3ClientTypes.JSONInput?
        /// Specifies Parquet as object's input serialization format.
        public var parquet: S3ClientTypes.ParquetInput?

        public init (
            cSV: S3ClientTypes.CSVInput? = nil,
            compressionType: S3ClientTypes.CompressionType? = nil,
            jSON: S3ClientTypes.JSONInput? = nil,
            parquet: S3ClientTypes.ParquetInput? = nil
        )
        {
            self.cSV = cSV
            self.compressionType = compressionType
            self.jSON = jSON
            self.parquet = parquet
        }
    }

}
