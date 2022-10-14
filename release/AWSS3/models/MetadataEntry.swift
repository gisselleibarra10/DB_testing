// Code generated by smithy-swift-codegen. DO NOT EDIT!



extension S3ClientTypes {
    /// A metadata key-value pair to store with an object.
    public struct MetadataEntry: Swift.Equatable {
        /// Name of the Object.
        public var name: Swift.String?
        /// Value of the Object.
        public var value: Swift.String?

        public init (
            name: Swift.String? = nil,
            value: Swift.String? = nil
        )
        {
            self.name = name
            self.value = value
        }
    }

}
