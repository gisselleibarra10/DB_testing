// Code generated by smithy-swift-codegen. DO NOT EDIT!



extension S3ClientTypes {
    /// Container for the stats details.
    public struct Stats: Swift.Equatable {
        /// The total number of uncompressed object bytes processed.
        public var bytesProcessed: Swift.Int
        /// The total number of bytes of records payload data returned.
        public var bytesReturned: Swift.Int
        /// The total number of object bytes scanned.
        public var bytesScanned: Swift.Int

        public init (
            bytesProcessed: Swift.Int = 0,
            bytesReturned: Swift.Int = 0,
            bytesScanned: Swift.Int = 0
        )
        {
            self.bytesProcessed = bytesProcessed
            self.bytesReturned = bytesReturned
            self.bytesScanned = bytesScanned
        }
    }

}