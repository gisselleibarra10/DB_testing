// Code generated by smithy-swift-codegen. DO NOT EDIT!



extension S3ClientTypes {
    /// The container element for Object Lock configuration parameters.
    public struct ObjectLockConfiguration: Swift.Equatable {
        /// Indicates whether this bucket has an Object Lock configuration enabled. Enable ObjectLockEnabled when you apply ObjectLockConfiguration to a bucket.
        public var objectLockEnabled: S3ClientTypes.ObjectLockEnabled?
        /// Specifies the Object Lock rule for the specified object. Enable the this rule when you apply ObjectLockConfiguration to a bucket. Bucket settings require both a mode and a period. The period can be either Days or Years but you must select one. You cannot specify Days and Years at the same time.
        public var rule: S3ClientTypes.ObjectLockRule?

        public init (
            objectLockEnabled: S3ClientTypes.ObjectLockEnabled? = nil,
            rule: S3ClientTypes.ObjectLockRule? = nil
        )
        {
            self.objectLockEnabled = objectLockEnabled
            self.rule = rule
        }
    }

}
