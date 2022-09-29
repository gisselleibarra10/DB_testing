// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// Amazon Managed Grafana is a fully managed and secure data visualization service that you can use to instantly query, correlate, and visualize operational metrics, logs, and traces from multiple sources. Amazon Managed Grafana makes it easy to deploy, operate, and scale Grafana, a widely deployed data visualization tool that is popular for its extensible data support. With Amazon Managed Grafana, you create logically isolated Grafana servers called workspaces. In a workspace, you can create Grafana dashboards and visualizations to analyze your metrics, logs, and traces without having to build, package, or deploy any hardware to run Grafana servers.
public protocol GrafanaClientProtocol {
    /// Assigns a Grafana Enterprise license to a workspace. Upgrading to Grafana Enterprise incurs additional fees. For more information, see [Upgrade a workspace to Grafana Enterprise](https://docs.aws.amazon.com/grafana/latest/userguide/upgrade-to-Grafana-Enterprise.html).
    func associateLicense(input: AssociateLicenseInput) async throws -> AssociateLicenseOutputResponse
    /// Creates a workspace. In a workspace, you can create Grafana dashboards and visualizations to analyze your metrics, logs, and traces. You don't have to build, package, or deploy any hardware to run the Grafana server. Don't use CreateWorkspace to modify an existing workspace. Instead, use [UpdateWorkspace](https://docs.aws.amazon.com/grafana/latest/APIReference/API_UpdateWorkspace.html).
    func createWorkspace(input: CreateWorkspaceInput) async throws -> CreateWorkspaceOutputResponse
    /// Creates an API key for the workspace. This key can be used to authenticate requests sent to the workspace's HTTP API. See [ https://docs.aws.amazon.com/grafana/latest/userguide/Using-Grafana-APIs.html](https://docs.aws.amazon.com/grafana/latest/userguide/Using-Grafana-APIs.html) for available APIs and example requests.
    func createWorkspaceApiKey(input: CreateWorkspaceApiKeyInput) async throws -> CreateWorkspaceApiKeyOutputResponse
    /// Deletes an Amazon Managed Grafana workspace.
    func deleteWorkspace(input: DeleteWorkspaceInput) async throws -> DeleteWorkspaceOutputResponse
    /// Deletes an API key for a workspace.
    func deleteWorkspaceApiKey(input: DeleteWorkspaceApiKeyInput) async throws -> DeleteWorkspaceApiKeyOutputResponse
    /// Displays information about one Amazon Managed Grafana workspace.
    func describeWorkspace(input: DescribeWorkspaceInput) async throws -> DescribeWorkspaceOutputResponse
    /// Displays information about the authentication methods used in one Amazon Managed Grafana workspace.
    func describeWorkspaceAuthentication(input: DescribeWorkspaceAuthenticationInput) async throws -> DescribeWorkspaceAuthenticationOutputResponse
    /// Removes the Grafana Enterprise license from a workspace.
    func disassociateLicense(input: DisassociateLicenseInput) async throws -> DisassociateLicenseOutputResponse
    /// Lists the users and groups who have the Grafana Admin and Editor roles in this workspace. If you use this operation without specifying userId or groupId, the operation returns the roles of all users and groups. If you specify a userId or a groupId, only the roles for that user or group are returned. If you do this, you can specify only one userId or one groupId.
    func listPermissions(input: ListPermissionsInput) async throws -> ListPermissionsOutputResponse
    /// The ListTagsForResource operation returns the tags that are associated with the Amazon Managed Service for Grafana resource specified by the resourceArn. Currently, the only resource that can be tagged is a workspace.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Returns a list of Amazon Managed Grafana workspaces in the account, with some information about each workspace. For more complete information about one workspace, use [DescribeWorkspace](https://docs.aws.amazon.com/AAMG/latest/APIReference/API_DescribeWorkspace.html).
    func listWorkspaces(input: ListWorkspacesInput) async throws -> ListWorkspacesOutputResponse
    /// The TagResource operation associates tags with an Amazon Managed Grafana resource. Currently, the only resource that can be tagged is workspaces. If you specify a new tag key for the resource, this tag is appended to the list of tags associated with the resource. If you specify a tag key that is already associated with the resource, the new tag value that you specify replaces the previous value for that tag.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// The UntagResource operation removes the association of the tag with the Amazon Managed Grafana resource.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// Updates which users in a workspace have the Grafana Admin or Editor roles.
    func updatePermissions(input: UpdatePermissionsInput) async throws -> UpdatePermissionsOutputResponse
    /// Modifies an existing Amazon Managed Grafana workspace. If you use this operation and omit any optional parameters, the existing values of those parameters are not changed. To modify the user authentication methods that the workspace uses, such as SAML or Amazon Web Services SSO, use [UpdateWorkspaceAuthentication](https://docs.aws.amazon.com/grafana/latest/APIReference/API_UpdateWorkspaceAuthentication.html). To modify which users in the workspace have the Admin and Editor Grafana roles, use [UpdatePermissions](https://docs.aws.amazon.com/grafana/latest/APIReference/API_UpdatePermissions.html).
    func updateWorkspace(input: UpdateWorkspaceInput) async throws -> UpdateWorkspaceOutputResponse
    /// Use this operation to define the identity provider (IdP) that this workspace authenticates users from, using SAML. You can also map SAML assertion attributes to workspace user information and define which groups in the assertion attribute are to have the Admin and Editor roles in the workspace.
    func updateWorkspaceAuthentication(input: UpdateWorkspaceAuthenticationInput) async throws -> UpdateWorkspaceAuthenticationOutputResponse
}

public enum GrafanaClientTypes {}
