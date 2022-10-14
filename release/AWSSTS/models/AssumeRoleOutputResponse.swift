// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// Contains the response to a successful [AssumeRole] request, including temporary Amazon Web Services credentials that can be used to make Amazon Web Services requests.
public struct AssumeRoleOutputResponse: Swift.Equatable {
    /// The Amazon Resource Name (ARN) and the assumed role ID, which are identifiers that you can use to refer to the resulting temporary security credentials. For example, you can reference these credentials as a principal in a resource-based policy by using the ARN or assumed role ID. The ARN and ID include the RoleSessionName that you specified when you called AssumeRole.
    public var assumedRoleUser: StsClientTypes.AssumedRoleUser?
    /// The temporary security credentials, which include an access key ID, a secret access key, and a security (or session) token. The size of the security token that STS API operations return is not fixed. We strongly recommend that you make no assumptions about the maximum size.
    public var credentials: StsClientTypes.Credentials?
    /// A percentage value that indicates the packed size of the session policies and session tags combined passed in the request. The request fails if the packed size is greater than 100 percent, which means the policies and tags exceeded the allowed space.
    public var packedPolicySize: Swift.Int?
    /// The source identity specified by the principal that is calling the AssumeRole operation. You can require users to specify a source identity when they assume a role. You do this by using the sts:SourceIdentity condition key in a role trust policy. You can use source identity information in CloudTrail logs to determine who took actions with a role. You can use the aws:SourceIdentity condition key to further control access to Amazon Web Services resources based on the value of source identity. For more information about using source identity, see [Monitor and control actions taken with assumed roles](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_control-access_monitor.html) in the IAM User Guide. The regex used to validate this parameter is a string of characters consisting of upper- and lower-case alphanumeric characters with no spaces. You can also include underscores or any of the following characters: =,.@-
    public var sourceIdentity: Swift.String?

    public init (
        assumedRoleUser: StsClientTypes.AssumedRoleUser? = nil,
        credentials: StsClientTypes.Credentials? = nil,
        packedPolicySize: Swift.Int? = nil,
        sourceIdentity: Swift.String? = nil
    )
    {
        self.assumedRoleUser = assumedRoleUser
        self.credentials = credentials
        self.packedPolicySize = packedPolicySize
        self.sourceIdentity = sourceIdentity
    }
}
