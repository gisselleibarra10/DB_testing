// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetBucketPolicyStatusOutputResponse: Swift.Equatable {
    /// The policy status for the specified bucket.
    public var policyStatus: S3ClientTypes.PolicyStatus?

    public init (
        policyStatus: S3ClientTypes.PolicyStatus? = nil
    )
    {
        self.policyStatus = policyStatus
    }
}
