// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

public enum AssumeRoleWithWebIdentityOutputError: Swift.Error, Swift.Equatable {
    case expiredTokenException(ExpiredTokenException)
    case iDPCommunicationErrorException(IDPCommunicationErrorException)
    case iDPRejectedClaimException(IDPRejectedClaimException)
    case invalidIdentityTokenException(InvalidIdentityTokenException)
    case malformedPolicyDocumentException(MalformedPolicyDocumentException)
    case packedPolicyTooLargeException(PackedPolicyTooLargeException)
    case regionDisabledException(RegionDisabledException)
    case unknown(UnknownAWSHttpServiceError)
}
