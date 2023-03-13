// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime

/// AWS Clean Rooms is in preview release and is subject to change. Welcome to the AWS Clean Rooms API Reference. AWS Clean Rooms is an AWS service that helps multiple parties to join their data together in a secure collaboration workspace. In the collaboration, members who can query and receive results can get insights into the combined data without either party getting access to the other party's raw data. To learn more about AWS Clean Rooms concepts, procedures, and best practices, see the [AWS Clean Rooms User Guide](https://docs.aws.amazon.com/clean-rooms/latest/userguide/what-is.html).
public protocol CleanRoomsClientProtocol {
    /// Retrieves multiple schemas by their identifiers.
    func batchGetSchema(input: BatchGetSchemaInput) async throws -> BatchGetSchemaOutputResponse
    /// Creates a new collaboration.
    func createCollaboration(input: CreateCollaborationInput) async throws -> CreateCollaborationOutputResponse
    /// Creates a new configured table resource.
    func createConfiguredTable(input: CreateConfiguredTableInput) async throws -> CreateConfiguredTableOutputResponse
    /// Creates a new analysis rule for a configured table. Currently, only one analysis rule can be created for a given configured table.
    func createConfiguredTableAnalysisRule(input: CreateConfiguredTableAnalysisRuleInput) async throws -> CreateConfiguredTableAnalysisRuleOutputResponse
    /// Creates a configured table association. A configured table association links a configured table with a collaboration.
    func createConfiguredTableAssociation(input: CreateConfiguredTableAssociationInput) async throws -> CreateConfiguredTableAssociationOutputResponse
    /// Creates a membership for a specific collaboration identifier and joins the collaboration.
    func createMembership(input: CreateMembershipInput) async throws -> CreateMembershipOutputResponse
    /// Deletes a collaboration. It can only be called by the collaboration owner.
    func deleteCollaboration(input: DeleteCollaborationInput) async throws -> DeleteCollaborationOutputResponse
    /// Deletes a configured table.
    func deleteConfiguredTable(input: DeleteConfiguredTableInput) async throws -> DeleteConfiguredTableOutputResponse
    /// Deletes a configured table analysis rule.
    func deleteConfiguredTableAnalysisRule(input: DeleteConfiguredTableAnalysisRuleInput) async throws -> DeleteConfiguredTableAnalysisRuleOutputResponse
    /// Deletes a configured table association.
    func deleteConfiguredTableAssociation(input: DeleteConfiguredTableAssociationInput) async throws -> DeleteConfiguredTableAssociationOutputResponse
    /// Removes the specified member from a collaboration. The removed member is placed in the Removed status and can't interact with the collaboration. The removed member's data is inaccessible to active members of the collaboration.
    func deleteMember(input: DeleteMemberInput) async throws -> DeleteMemberOutputResponse
    /// Deletes a specified membership. All resources under a membership must be deleted.
    func deleteMembership(input: DeleteMembershipInput) async throws -> DeleteMembershipOutputResponse
    /// Returns metadata about a collaboration.
    func getCollaboration(input: GetCollaborationInput) async throws -> GetCollaborationOutputResponse
    /// Retrieves a configured table.
    func getConfiguredTable(input: GetConfiguredTableInput) async throws -> GetConfiguredTableOutputResponse
    /// Retrieves a configured table analysis rule.
    func getConfiguredTableAnalysisRule(input: GetConfiguredTableAnalysisRuleInput) async throws -> GetConfiguredTableAnalysisRuleOutputResponse
    /// Retrieves a configured table association.
    func getConfiguredTableAssociation(input: GetConfiguredTableAssociationInput) async throws -> GetConfiguredTableAssociationOutputResponse
    /// Retrieves a specified membership for an identifier.
    func getMembership(input: GetMembershipInput) async throws -> GetMembershipOutputResponse
    /// Returns query processing metadata.
    func getProtectedQuery(input: GetProtectedQueryInput) async throws -> GetProtectedQueryOutputResponse
    /// Retrieves the schema for a relation within a collaboration.
    func getSchema(input: GetSchemaInput) async throws -> GetSchemaOutputResponse
    /// Retrieves a schema analysis rule.
    func getSchemaAnalysisRule(input: GetSchemaAnalysisRuleInput) async throws -> GetSchemaAnalysisRuleOutputResponse
    /// Lists collaborations the caller owns, is active in, or has been invited to.
    func listCollaborations(input: ListCollaborationsInput) async throws -> ListCollaborationsOutputResponse
    /// Lists configured table associations for a membership.
    func listConfiguredTableAssociations(input: ListConfiguredTableAssociationsInput) async throws -> ListConfiguredTableAssociationsOutputResponse
    /// Lists configured tables.
    func listConfiguredTables(input: ListConfiguredTablesInput) async throws -> ListConfiguredTablesOutputResponse
    /// Lists all members within a collaboration.
    func listMembers(input: ListMembersInput) async throws -> ListMembersOutputResponse
    /// Lists all memberships resources within the caller's account.
    func listMemberships(input: ListMembershipsInput) async throws -> ListMembershipsOutputResponse
    /// Lists protected queries, sorted by the most recent query.
    func listProtectedQueries(input: ListProtectedQueriesInput) async throws -> ListProtectedQueriesOutputResponse
    /// Lists the schemas for relations within a collaboration.
    func listSchemas(input: ListSchemasInput) async throws -> ListSchemasOutputResponse
    /// Creates a protected query that is started by AWS Clean Rooms.
    func startProtectedQuery(input: StartProtectedQueryInput) async throws -> StartProtectedQueryOutputResponse
    /// Updates collaboration metadata and can only be called by the collaboration owner.
    func updateCollaboration(input: UpdateCollaborationInput) async throws -> UpdateCollaborationOutputResponse
    /// Updates a configured table.
    func updateConfiguredTable(input: UpdateConfiguredTableInput) async throws -> UpdateConfiguredTableOutputResponse
    /// Updates a configured table analysis rule.
    func updateConfiguredTableAnalysisRule(input: UpdateConfiguredTableAnalysisRuleInput) async throws -> UpdateConfiguredTableAnalysisRuleOutputResponse
    /// Updates a configured table association.
    func updateConfiguredTableAssociation(input: UpdateConfiguredTableAssociationInput) async throws -> UpdateConfiguredTableAssociationOutputResponse
    /// Updates a membership.
    func updateMembership(input: UpdateMembershipInput) async throws -> UpdateMembershipOutputResponse
    /// Updates the processing of a currently running query.
    func updateProtectedQuery(input: UpdateProtectedQueryInput) async throws -> UpdateProtectedQueryOutputResponse
}

public protocol CleanRoomsClientConfigurationProtocol : AWSClientRuntime.AWSClientConfiguration {
    var endpointResolver: EndpointResolver { get }
}

public enum CleanRoomsClientTypes {}
