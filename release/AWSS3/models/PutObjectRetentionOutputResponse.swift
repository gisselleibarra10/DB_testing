// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct PutObjectRetentionOutputResponse: Swift.Equatable {
    /// If present, indicates that the requester was successfully charged for the request.
    public var requestCharged: S3ClientTypes.RequestCharged?

    public init (
        requestCharged: S3ClientTypes.RequestCharged? = nil
    )
    {
        self.requestCharged = requestCharged
    }
}
