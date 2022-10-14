// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension S3ClientTypes {
    /// Information about the delete marker.
    public struct DeleteMarkerEntry: Swift.Equatable {
        /// Specifies whether the object is (true) or is not (false) the latest version of an object.
        public var isLatest: Swift.Bool
        /// The object key.
        public var key: Swift.String?
        /// Date and time the object was last modified.
        public var lastModified: ClientRuntime.Date?
        /// The account that created the delete marker.>
        public var owner: S3ClientTypes.Owner?
        /// Version ID of an object.
        public var versionId: Swift.String?

        public init (
            isLatest: Swift.Bool = false,
            key: Swift.String? = nil,
            lastModified: ClientRuntime.Date? = nil,
            owner: S3ClientTypes.Owner? = nil,
            versionId: Swift.String? = nil
        )
        {
            self.isLatest = isLatest
            self.key = key
            self.lastModified = lastModified
            self.owner = owner
            self.versionId = versionId
        }
    }

}
