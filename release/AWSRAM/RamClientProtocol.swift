// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// This is the Resource Access Manager API Reference. This documentation provides descriptions and syntax for each of the actions and data types in RAM. RAM is a service that helps you securely share your Amazon Web Services resources across Amazon Web Services accounts. If you have multiple Amazon Web Services accounts, you can use RAM to share those resources with other accounts. If you use Organizations to manage your accounts, then you share your resources with your organization or organizational units (OUs). For supported resource types, you can also share resources with individual Identity and Access Management (IAM) roles an users. To learn more about RAM, see the following resources:
///
/// * [Resource Access Manager product page](http://aws.amazon.com/ram)
///
/// * [Resource Access Manager User Guide](https://docs.aws.amazon.com/ram/latest/userguide/)
public protocol RamClientProtocol {
    /// Accepts an invitation to a resource share from another Amazon Web Services account. After you accept the invitation, the resources included in the resource share are available to interact with in the relevant Amazon Web Services Management Consoles and tools.
    func acceptResourceShareInvitation(input: AcceptResourceShareInvitationInput) async throws -> AcceptResourceShareInvitationOutputResponse
    /// Adds the specified list of principals and list of resources to a resource share. Principals that already have access to this resource share immediately receive access to the added resources. Newly added principals immediately receive access to the resources shared in this resource share.
    func associateResourceShare(input: AssociateResourceShareInput) async throws -> AssociateResourceShareOutputResponse
    /// Adds or replaces the RAM permission for a resource type included in a resource share. You can have exactly one permission associated with each resource type in the resource share. You can add a new RAM permission only if there are currently no resources of that resource type currently in the resource share.
    func associateResourceSharePermission(input: AssociateResourceSharePermissionInput) async throws -> AssociateResourceSharePermissionOutputResponse
    /// Creates a resource share. You can provide a list of the [Amazon Resource Names (ARNs)](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) for the resources that you want to share, a list of principals you want to share the resources with, and the permissions to grant those principals. Sharing a resource makes it available for use by principals outside of the Amazon Web Services account that created the resource. Sharing doesn't change any permissions or quotas that apply to the resource in the account that created it.
    func createResourceShare(input: CreateResourceShareInput) async throws -> CreateResourceShareOutputResponse
    /// Deletes the specified resource share. This doesn't delete any of the resources that were associated with the resource share; it only stops the sharing of those resources outside of the Amazon Web Services account that created them.
    func deleteResourceShare(input: DeleteResourceShareInput) async throws -> DeleteResourceShareOutputResponse
    /// Disassociates the specified principals or resources from the specified resource share.
    func disassociateResourceShare(input: DisassociateResourceShareInput) async throws -> DisassociateResourceShareOutputResponse
    /// Disassociates an RAM permission from a resource share. Permission changes take effect immediately. You can remove a RAM permission from a resource share only if there are currently no resources of the relevant resource type currently attached to the resource share.
    func disassociateResourceSharePermission(input: DisassociateResourceSharePermissionInput) async throws -> DisassociateResourceSharePermissionOutputResponse
    /// Enables resource sharing within your organization in Organizations. Calling this operation enables RAM to retrieve information about the organization and its structure. This lets you share resources with all of the accounts in an organization by specifying the organization's ID, or all of the accounts in an organizational unit (OU) by specifying the OU's ID. Until you enable sharing within the organization, you can specify only individual Amazon Web Services accounts, or for supported resource types, IAM users and roles. You must call this operation from an IAM user or role in the organization's management account.
    func enableSharingWithAwsOrganization(input: EnableSharingWithAwsOrganizationInput) async throws -> EnableSharingWithAwsOrganizationOutputResponse
    /// Gets the contents of an RAM permission in JSON format.
    func getPermission(input: GetPermissionInput) async throws -> GetPermissionOutputResponse
    /// Retrieves the resource policies for the specified resources that you own and have shared.
    func getResourcePolicies(input: GetResourcePoliciesInput) async throws -> GetResourcePoliciesOutputResponse
    /// Retrieves the resource and principal associations for resource shares that you own.
    func getResourceShareAssociations(input: GetResourceShareAssociationsInput) async throws -> GetResourceShareAssociationsOutputResponse
    /// Retrieves details about invitations that you have received for resource shares.
    func getResourceShareInvitations(input: GetResourceShareInvitationsInput) async throws -> GetResourceShareInvitationsOutputResponse
    /// Retrieves details about the resource shares that you own or that are shared with you.
    func getResourceShares(input: GetResourceSharesInput) async throws -> GetResourceSharesOutputResponse
    /// Lists the resources in a resource share that is shared with you but for which the invitation is still PENDING. That means that you haven't accepted or rejected the invitation and the invitation hasn't expired.
    func listPendingInvitationResources(input: ListPendingInvitationResourcesInput) async throws -> ListPendingInvitationResourcesOutputResponse
    /// Retrieves a list of available RAM permissions that you can use for the supported resource types.
    func listPermissions(input: ListPermissionsInput) async throws -> ListPermissionsOutputResponse
    /// Lists the available versions of the specified RAM permission.
    func listPermissionVersions(input: ListPermissionVersionsInput) async throws -> ListPermissionVersionsOutputResponse
    /// Lists the principals that you are sharing resources with or that are sharing resources with you.
    func listPrincipals(input: ListPrincipalsInput) async throws -> ListPrincipalsOutputResponse
    /// Lists the resources that you added to a resource share or the resources that are shared with you.
    func listResources(input: ListResourcesInput) async throws -> ListResourcesOutputResponse
    /// Lists the RAM permissions that are associated with a resource share.
    func listResourceSharePermissions(input: ListResourceSharePermissionsInput) async throws -> ListResourceSharePermissionsOutputResponse
    /// Lists the resource types that can be shared by RAM.
    func listResourceTypes(input: ListResourceTypesInput) async throws -> ListResourceTypesOutputResponse
    /// When you attach a resource-based permission policy to a resource, it automatically creates a resource share. However, resource shares created this way are visible only to the resource share owner, and the resource share can't be modified in RAM. You can use this operation to promote the resource share to a full RAM resource share. When you promote a resource share, you can then manage the resource share in RAM and it becomes visible to all of the principals you shared it with.
    func promoteResourceShareCreatedFromPolicy(input: PromoteResourceShareCreatedFromPolicyInput) async throws -> PromoteResourceShareCreatedFromPolicyOutputResponse
    /// Rejects an invitation to a resource share from another Amazon Web Services account.
    func rejectResourceShareInvitation(input: RejectResourceShareInvitationInput) async throws -> RejectResourceShareInvitationOutputResponse
    /// Adds the specified tag keys and values to the specified resource share. The tags are attached only to the resource share, not to the resources that are in the resource share.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Removes the specified tag key and value pairs from the specified resource share.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// Modifies some of the properties of the specified resource share.
    func updateResourceShare(input: UpdateResourceShareInput) async throws -> UpdateResourceShareOutputResponse
}

public enum RamClientTypes {}