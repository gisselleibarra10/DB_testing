// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension SSOAdminClient {
    /// Paginate over `[ListAccountAssignmentCreationStatusOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListAccountAssignmentCreationStatusInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListAccountAssignmentCreationStatusOutputResponse`
    public func listAccountAssignmentCreationStatusPaginated(input: ListAccountAssignmentCreationStatusInput) -> ClientRuntime.PaginatorSequence<ListAccountAssignmentCreationStatusInput, ListAccountAssignmentCreationStatusOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListAccountAssignmentCreationStatusInput, ListAccountAssignmentCreationStatusOutputResponse>(input: input, inputKey: \ListAccountAssignmentCreationStatusInput.nextToken, outputKey: \ListAccountAssignmentCreationStatusOutputResponse.nextToken, paginationFunction: self.listAccountAssignmentCreationStatus(input:))
    }
}

extension ListAccountAssignmentCreationStatusInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListAccountAssignmentCreationStatusInput {
        return ListAccountAssignmentCreationStatusInput(
            filter: self.filter,
            instanceArn: self.instanceArn,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListAccountAssignmentCreationStatusInput, Output == ListAccountAssignmentCreationStatusOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listAccountAssignmentCreationStatusPaginated`
    /// to access the nested member `[SSOAdminClientTypes.AccountAssignmentOperationStatusMetadata]`
    /// - Returns: `[SSOAdminClientTypes.AccountAssignmentOperationStatusMetadata]`
    public func accountAssignmentsCreationStatus() async throws -> [SSOAdminClientTypes.AccountAssignmentOperationStatusMetadata] {
        return try await self.asyncCompactMap { item in item.accountAssignmentsCreationStatus }
    }
}
extension SSOAdminClient {
    /// Paginate over `[ListAccountAssignmentDeletionStatusOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListAccountAssignmentDeletionStatusInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListAccountAssignmentDeletionStatusOutputResponse`
    public func listAccountAssignmentDeletionStatusPaginated(input: ListAccountAssignmentDeletionStatusInput) -> ClientRuntime.PaginatorSequence<ListAccountAssignmentDeletionStatusInput, ListAccountAssignmentDeletionStatusOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListAccountAssignmentDeletionStatusInput, ListAccountAssignmentDeletionStatusOutputResponse>(input: input, inputKey: \ListAccountAssignmentDeletionStatusInput.nextToken, outputKey: \ListAccountAssignmentDeletionStatusOutputResponse.nextToken, paginationFunction: self.listAccountAssignmentDeletionStatus(input:))
    }
}

extension ListAccountAssignmentDeletionStatusInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListAccountAssignmentDeletionStatusInput {
        return ListAccountAssignmentDeletionStatusInput(
            filter: self.filter,
            instanceArn: self.instanceArn,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListAccountAssignmentDeletionStatusInput, Output == ListAccountAssignmentDeletionStatusOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listAccountAssignmentDeletionStatusPaginated`
    /// to access the nested member `[SSOAdminClientTypes.AccountAssignmentOperationStatusMetadata]`
    /// - Returns: `[SSOAdminClientTypes.AccountAssignmentOperationStatusMetadata]`
    public func accountAssignmentsDeletionStatus() async throws -> [SSOAdminClientTypes.AccountAssignmentOperationStatusMetadata] {
        return try await self.asyncCompactMap { item in item.accountAssignmentsDeletionStatus }
    }
}
extension SSOAdminClient {
    /// Paginate over `[ListAccountAssignmentsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListAccountAssignmentsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListAccountAssignmentsOutputResponse`
    public func listAccountAssignmentsPaginated(input: ListAccountAssignmentsInput) -> ClientRuntime.PaginatorSequence<ListAccountAssignmentsInput, ListAccountAssignmentsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListAccountAssignmentsInput, ListAccountAssignmentsOutputResponse>(input: input, inputKey: \ListAccountAssignmentsInput.nextToken, outputKey: \ListAccountAssignmentsOutputResponse.nextToken, paginationFunction: self.listAccountAssignments(input:))
    }
}

extension ListAccountAssignmentsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListAccountAssignmentsInput {
        return ListAccountAssignmentsInput(
            accountId: self.accountId,
            instanceArn: self.instanceArn,
            maxResults: self.maxResults,
            nextToken: token,
            permissionSetArn: self.permissionSetArn
        )}
}

extension PaginatorSequence where Input == ListAccountAssignmentsInput, Output == ListAccountAssignmentsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listAccountAssignmentsPaginated`
    /// to access the nested member `[SSOAdminClientTypes.AccountAssignment]`
    /// - Returns: `[SSOAdminClientTypes.AccountAssignment]`
    public func accountAssignments() async throws -> [SSOAdminClientTypes.AccountAssignment] {
        return try await self.asyncCompactMap { item in item.accountAssignments }
    }
}
extension SSOAdminClient {
    /// Paginate over `[ListAccountsForProvisionedPermissionSetOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListAccountsForProvisionedPermissionSetInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListAccountsForProvisionedPermissionSetOutputResponse`
    public func listAccountsForProvisionedPermissionSetPaginated(input: ListAccountsForProvisionedPermissionSetInput) -> ClientRuntime.PaginatorSequence<ListAccountsForProvisionedPermissionSetInput, ListAccountsForProvisionedPermissionSetOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListAccountsForProvisionedPermissionSetInput, ListAccountsForProvisionedPermissionSetOutputResponse>(input: input, inputKey: \ListAccountsForProvisionedPermissionSetInput.nextToken, outputKey: \ListAccountsForProvisionedPermissionSetOutputResponse.nextToken, paginationFunction: self.listAccountsForProvisionedPermissionSet(input:))
    }
}

extension ListAccountsForProvisionedPermissionSetInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListAccountsForProvisionedPermissionSetInput {
        return ListAccountsForProvisionedPermissionSetInput(
            instanceArn: self.instanceArn,
            maxResults: self.maxResults,
            nextToken: token,
            permissionSetArn: self.permissionSetArn,
            provisioningStatus: self.provisioningStatus
        )}
}

extension PaginatorSequence where Input == ListAccountsForProvisionedPermissionSetInput, Output == ListAccountsForProvisionedPermissionSetOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listAccountsForProvisionedPermissionSetPaginated`
    /// to access the nested member `[Swift.String]`
    /// - Returns: `[Swift.String]`
    public func accountIds() async throws -> [Swift.String] {
        return try await self.asyncCompactMap { item in item.accountIds }
    }
}
extension SSOAdminClient {
    /// Paginate over `[ListCustomerManagedPolicyReferencesInPermissionSetOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListCustomerManagedPolicyReferencesInPermissionSetInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListCustomerManagedPolicyReferencesInPermissionSetOutputResponse`
    public func listCustomerManagedPolicyReferencesInPermissionSetPaginated(input: ListCustomerManagedPolicyReferencesInPermissionSetInput) -> ClientRuntime.PaginatorSequence<ListCustomerManagedPolicyReferencesInPermissionSetInput, ListCustomerManagedPolicyReferencesInPermissionSetOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListCustomerManagedPolicyReferencesInPermissionSetInput, ListCustomerManagedPolicyReferencesInPermissionSetOutputResponse>(input: input, inputKey: \ListCustomerManagedPolicyReferencesInPermissionSetInput.nextToken, outputKey: \ListCustomerManagedPolicyReferencesInPermissionSetOutputResponse.nextToken, paginationFunction: self.listCustomerManagedPolicyReferencesInPermissionSet(input:))
    }
}

extension ListCustomerManagedPolicyReferencesInPermissionSetInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListCustomerManagedPolicyReferencesInPermissionSetInput {
        return ListCustomerManagedPolicyReferencesInPermissionSetInput(
            instanceArn: self.instanceArn,
            maxResults: self.maxResults,
            nextToken: token,
            permissionSetArn: self.permissionSetArn
        )}
}

extension PaginatorSequence where Input == ListCustomerManagedPolicyReferencesInPermissionSetInput, Output == ListCustomerManagedPolicyReferencesInPermissionSetOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listCustomerManagedPolicyReferencesInPermissionSetPaginated`
    /// to access the nested member `[SSOAdminClientTypes.CustomerManagedPolicyReference]`
    /// - Returns: `[SSOAdminClientTypes.CustomerManagedPolicyReference]`
    public func customerManagedPolicyReferences() async throws -> [SSOAdminClientTypes.CustomerManagedPolicyReference] {
        return try await self.asyncCompactMap { item in item.customerManagedPolicyReferences }
    }
}
extension SSOAdminClient {
    /// Paginate over `[ListInstancesOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListInstancesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListInstancesOutputResponse`
    public func listInstancesPaginated(input: ListInstancesInput) -> ClientRuntime.PaginatorSequence<ListInstancesInput, ListInstancesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListInstancesInput, ListInstancesOutputResponse>(input: input, inputKey: \ListInstancesInput.nextToken, outputKey: \ListInstancesOutputResponse.nextToken, paginationFunction: self.listInstances(input:))
    }
}

extension ListInstancesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListInstancesInput {
        return ListInstancesInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListInstancesInput, Output == ListInstancesOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listInstancesPaginated`
    /// to access the nested member `[SSOAdminClientTypes.InstanceMetadata]`
    /// - Returns: `[SSOAdminClientTypes.InstanceMetadata]`
    public func instances() async throws -> [SSOAdminClientTypes.InstanceMetadata] {
        return try await self.asyncCompactMap { item in item.instances }
    }
}
extension SSOAdminClient {
    /// Paginate over `[ListManagedPoliciesInPermissionSetOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListManagedPoliciesInPermissionSetInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListManagedPoliciesInPermissionSetOutputResponse`
    public func listManagedPoliciesInPermissionSetPaginated(input: ListManagedPoliciesInPermissionSetInput) -> ClientRuntime.PaginatorSequence<ListManagedPoliciesInPermissionSetInput, ListManagedPoliciesInPermissionSetOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListManagedPoliciesInPermissionSetInput, ListManagedPoliciesInPermissionSetOutputResponse>(input: input, inputKey: \ListManagedPoliciesInPermissionSetInput.nextToken, outputKey: \ListManagedPoliciesInPermissionSetOutputResponse.nextToken, paginationFunction: self.listManagedPoliciesInPermissionSet(input:))
    }
}

extension ListManagedPoliciesInPermissionSetInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListManagedPoliciesInPermissionSetInput {
        return ListManagedPoliciesInPermissionSetInput(
            instanceArn: self.instanceArn,
            maxResults: self.maxResults,
            nextToken: token,
            permissionSetArn: self.permissionSetArn
        )}
}

extension PaginatorSequence where Input == ListManagedPoliciesInPermissionSetInput, Output == ListManagedPoliciesInPermissionSetOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listManagedPoliciesInPermissionSetPaginated`
    /// to access the nested member `[SSOAdminClientTypes.AttachedManagedPolicy]`
    /// - Returns: `[SSOAdminClientTypes.AttachedManagedPolicy]`
    public func attachedManagedPolicies() async throws -> [SSOAdminClientTypes.AttachedManagedPolicy] {
        return try await self.asyncCompactMap { item in item.attachedManagedPolicies }
    }
}
extension SSOAdminClient {
    /// Paginate over `[ListPermissionSetProvisioningStatusOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListPermissionSetProvisioningStatusInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListPermissionSetProvisioningStatusOutputResponse`
    public func listPermissionSetProvisioningStatusPaginated(input: ListPermissionSetProvisioningStatusInput) -> ClientRuntime.PaginatorSequence<ListPermissionSetProvisioningStatusInput, ListPermissionSetProvisioningStatusOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListPermissionSetProvisioningStatusInput, ListPermissionSetProvisioningStatusOutputResponse>(input: input, inputKey: \ListPermissionSetProvisioningStatusInput.nextToken, outputKey: \ListPermissionSetProvisioningStatusOutputResponse.nextToken, paginationFunction: self.listPermissionSetProvisioningStatus(input:))
    }
}

extension ListPermissionSetProvisioningStatusInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListPermissionSetProvisioningStatusInput {
        return ListPermissionSetProvisioningStatusInput(
            filter: self.filter,
            instanceArn: self.instanceArn,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListPermissionSetProvisioningStatusInput, Output == ListPermissionSetProvisioningStatusOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listPermissionSetProvisioningStatusPaginated`
    /// to access the nested member `[SSOAdminClientTypes.PermissionSetProvisioningStatusMetadata]`
    /// - Returns: `[SSOAdminClientTypes.PermissionSetProvisioningStatusMetadata]`
    public func permissionSetsProvisioningStatus() async throws -> [SSOAdminClientTypes.PermissionSetProvisioningStatusMetadata] {
        return try await self.asyncCompactMap { item in item.permissionSetsProvisioningStatus }
    }
}
extension SSOAdminClient {
    /// Paginate over `[ListPermissionSetsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListPermissionSetsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListPermissionSetsOutputResponse`
    public func listPermissionSetsPaginated(input: ListPermissionSetsInput) -> ClientRuntime.PaginatorSequence<ListPermissionSetsInput, ListPermissionSetsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListPermissionSetsInput, ListPermissionSetsOutputResponse>(input: input, inputKey: \ListPermissionSetsInput.nextToken, outputKey: \ListPermissionSetsOutputResponse.nextToken, paginationFunction: self.listPermissionSets(input:))
    }
}

extension ListPermissionSetsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListPermissionSetsInput {
        return ListPermissionSetsInput(
            instanceArn: self.instanceArn,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListPermissionSetsInput, Output == ListPermissionSetsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listPermissionSetsPaginated`
    /// to access the nested member `[Swift.String]`
    /// - Returns: `[Swift.String]`
    public func permissionSets() async throws -> [Swift.String] {
        return try await self.asyncCompactMap { item in item.permissionSets }
    }
}
extension SSOAdminClient {
    /// Paginate over `[ListPermissionSetsProvisionedToAccountOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListPermissionSetsProvisionedToAccountInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListPermissionSetsProvisionedToAccountOutputResponse`
    public func listPermissionSetsProvisionedToAccountPaginated(input: ListPermissionSetsProvisionedToAccountInput) -> ClientRuntime.PaginatorSequence<ListPermissionSetsProvisionedToAccountInput, ListPermissionSetsProvisionedToAccountOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListPermissionSetsProvisionedToAccountInput, ListPermissionSetsProvisionedToAccountOutputResponse>(input: input, inputKey: \ListPermissionSetsProvisionedToAccountInput.nextToken, outputKey: \ListPermissionSetsProvisionedToAccountOutputResponse.nextToken, paginationFunction: self.listPermissionSetsProvisionedToAccount(input:))
    }
}

extension ListPermissionSetsProvisionedToAccountInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListPermissionSetsProvisionedToAccountInput {
        return ListPermissionSetsProvisionedToAccountInput(
            accountId: self.accountId,
            instanceArn: self.instanceArn,
            maxResults: self.maxResults,
            nextToken: token,
            provisioningStatus: self.provisioningStatus
        )}
}

extension PaginatorSequence where Input == ListPermissionSetsProvisionedToAccountInput, Output == ListPermissionSetsProvisionedToAccountOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listPermissionSetsProvisionedToAccountPaginated`
    /// to access the nested member `[Swift.String]`
    /// - Returns: `[Swift.String]`
    public func permissionSets() async throws -> [Swift.String] {
        return try await self.asyncCompactMap { item in item.permissionSets }
    }
}
extension SSOAdminClient {
    /// Paginate over `[ListTagsForResourceOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListTagsForResourceInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListTagsForResourceOutputResponse`
    public func listTagsForResourcePaginated(input: ListTagsForResourceInput) -> ClientRuntime.PaginatorSequence<ListTagsForResourceInput, ListTagsForResourceOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListTagsForResourceInput, ListTagsForResourceOutputResponse>(input: input, inputKey: \ListTagsForResourceInput.nextToken, outputKey: \ListTagsForResourceOutputResponse.nextToken, paginationFunction: self.listTagsForResource(input:))
    }
}

extension ListTagsForResourceInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListTagsForResourceInput {
        return ListTagsForResourceInput(
            instanceArn: self.instanceArn,
            nextToken: token,
            resourceArn: self.resourceArn
        )}
}

extension PaginatorSequence where Input == ListTagsForResourceInput, Output == ListTagsForResourceOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listTagsForResourcePaginated`
    /// to access the nested member `[SSOAdminClientTypes.Tag]`
    /// - Returns: `[SSOAdminClientTypes.Tag]`
    public func tags() async throws -> [SSOAdminClientTypes.Tag] {
        return try await self.asyncCompactMap { item in item.tags }
    }
}
