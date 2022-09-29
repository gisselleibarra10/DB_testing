// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime


/// Paginate over `[DescribeActionTargetsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[DescribeActionTargetsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `DescribeActionTargetsOutputResponse`
extension SecurityHubClient {
    public func describeActionTargetsPaginated(input: DescribeActionTargetsInput) -> ClientRuntime.PaginatorSequence<DescribeActionTargetsInput, DescribeActionTargetsOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeActionTargetsInput, DescribeActionTargetsOutputResponse>(input: input, inputKey: \DescribeActionTargetsInput.nextToken, outputKey: \DescribeActionTargetsOutputResponse.nextToken, paginationFunction: self.describeActionTargets(input:))
    }
}

extension DescribeActionTargetsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeActionTargetsInput {
        return DescribeActionTargetsInput(
            actionTargetArns: self.actionTargetArns,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `describeActionTargetsPaginated`
/// to access the nested member `[SecurityHubClientTypes.ActionTarget]`
/// - Returns: `[SecurityHubClientTypes.ActionTarget]`
extension PaginatorSequence where Input == DescribeActionTargetsInput, Output == DescribeActionTargetsOutputResponse {
    public func actionTargets() async throws -> [SecurityHubClientTypes.ActionTarget] {
        return try await self.asyncCompactMap { item in item.actionTargets }
    }
}

/// Paginate over `[DescribeProductsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[DescribeProductsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `DescribeProductsOutputResponse`
extension SecurityHubClient {
    public func describeProductsPaginated(input: DescribeProductsInput) -> ClientRuntime.PaginatorSequence<DescribeProductsInput, DescribeProductsOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeProductsInput, DescribeProductsOutputResponse>(input: input, inputKey: \DescribeProductsInput.nextToken, outputKey: \DescribeProductsOutputResponse.nextToken, paginationFunction: self.describeProducts(input:))
    }
}

extension DescribeProductsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeProductsInput {
        return DescribeProductsInput(
            maxResults: self.maxResults,
            nextToken: token,
            productArn: self.productArn
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `describeProductsPaginated`
/// to access the nested member `[SecurityHubClientTypes.Product]`
/// - Returns: `[SecurityHubClientTypes.Product]`
extension PaginatorSequence where Input == DescribeProductsInput, Output == DescribeProductsOutputResponse {
    public func products() async throws -> [SecurityHubClientTypes.Product] {
        return try await self.asyncCompactMap { item in item.products }
    }
}

/// Paginate over `[DescribeStandardsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[DescribeStandardsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `DescribeStandardsOutputResponse`
extension SecurityHubClient {
    public func describeStandardsPaginated(input: DescribeStandardsInput) -> ClientRuntime.PaginatorSequence<DescribeStandardsInput, DescribeStandardsOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeStandardsInput, DescribeStandardsOutputResponse>(input: input, inputKey: \DescribeStandardsInput.nextToken, outputKey: \DescribeStandardsOutputResponse.nextToken, paginationFunction: self.describeStandards(input:))
    }
}

extension DescribeStandardsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeStandardsInput {
        return DescribeStandardsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `describeStandardsPaginated`
/// to access the nested member `[SecurityHubClientTypes.Standard]`
/// - Returns: `[SecurityHubClientTypes.Standard]`
extension PaginatorSequence where Input == DescribeStandardsInput, Output == DescribeStandardsOutputResponse {
    public func standards() async throws -> [SecurityHubClientTypes.Standard] {
        return try await self.asyncCompactMap { item in item.standards }
    }
}

/// Paginate over `[DescribeStandardsControlsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[DescribeStandardsControlsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `DescribeStandardsControlsOutputResponse`
extension SecurityHubClient {
    public func describeStandardsControlsPaginated(input: DescribeStandardsControlsInput) -> ClientRuntime.PaginatorSequence<DescribeStandardsControlsInput, DescribeStandardsControlsOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeStandardsControlsInput, DescribeStandardsControlsOutputResponse>(input: input, inputKey: \DescribeStandardsControlsInput.nextToken, outputKey: \DescribeStandardsControlsOutputResponse.nextToken, paginationFunction: self.describeStandardsControls(input:))
    }
}

extension DescribeStandardsControlsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeStandardsControlsInput {
        return DescribeStandardsControlsInput(
            maxResults: self.maxResults,
            nextToken: token,
            standardsSubscriptionArn: self.standardsSubscriptionArn
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `describeStandardsControlsPaginated`
/// to access the nested member `[SecurityHubClientTypes.StandardsControl]`
/// - Returns: `[SecurityHubClientTypes.StandardsControl]`
extension PaginatorSequence where Input == DescribeStandardsControlsInput, Output == DescribeStandardsControlsOutputResponse {
    public func controls() async throws -> [SecurityHubClientTypes.StandardsControl] {
        return try await self.asyncCompactMap { item in item.controls }
    }
}

/// Paginate over `[GetEnabledStandardsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[GetEnabledStandardsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `GetEnabledStandardsOutputResponse`
extension SecurityHubClient {
    public func getEnabledStandardsPaginated(input: GetEnabledStandardsInput) -> ClientRuntime.PaginatorSequence<GetEnabledStandardsInput, GetEnabledStandardsOutputResponse> {
        return ClientRuntime.PaginatorSequence<GetEnabledStandardsInput, GetEnabledStandardsOutputResponse>(input: input, inputKey: \GetEnabledStandardsInput.nextToken, outputKey: \GetEnabledStandardsOutputResponse.nextToken, paginationFunction: self.getEnabledStandards(input:))
    }
}

extension GetEnabledStandardsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetEnabledStandardsInput {
        return GetEnabledStandardsInput(
            maxResults: self.maxResults,
            nextToken: token,
            standardsSubscriptionArns: self.standardsSubscriptionArns
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `getEnabledStandardsPaginated`
/// to access the nested member `[SecurityHubClientTypes.StandardsSubscription]`
/// - Returns: `[SecurityHubClientTypes.StandardsSubscription]`
extension PaginatorSequence where Input == GetEnabledStandardsInput, Output == GetEnabledStandardsOutputResponse {
    public func standardsSubscriptions() async throws -> [SecurityHubClientTypes.StandardsSubscription] {
        return try await self.asyncCompactMap { item in item.standardsSubscriptions }
    }
}

/// Paginate over `[GetFindingsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[GetFindingsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `GetFindingsOutputResponse`
extension SecurityHubClient {
    public func getFindingsPaginated(input: GetFindingsInput) -> ClientRuntime.PaginatorSequence<GetFindingsInput, GetFindingsOutputResponse> {
        return ClientRuntime.PaginatorSequence<GetFindingsInput, GetFindingsOutputResponse>(input: input, inputKey: \GetFindingsInput.nextToken, outputKey: \GetFindingsOutputResponse.nextToken, paginationFunction: self.getFindings(input:))
    }
}

extension GetFindingsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetFindingsInput {
        return GetFindingsInput(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            sortCriteria: self.sortCriteria
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `getFindingsPaginated`
/// to access the nested member `[SecurityHubClientTypes.AwsSecurityFinding]`
/// - Returns: `[SecurityHubClientTypes.AwsSecurityFinding]`
extension PaginatorSequence where Input == GetFindingsInput, Output == GetFindingsOutputResponse {
    public func findings() async throws -> [SecurityHubClientTypes.AwsSecurityFinding] {
        return try await self.asyncCompactMap { item in item.findings }
    }
}

/// Paginate over `[GetInsightsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[GetInsightsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `GetInsightsOutputResponse`
extension SecurityHubClient {
    public func getInsightsPaginated(input: GetInsightsInput) -> ClientRuntime.PaginatorSequence<GetInsightsInput, GetInsightsOutputResponse> {
        return ClientRuntime.PaginatorSequence<GetInsightsInput, GetInsightsOutputResponse>(input: input, inputKey: \GetInsightsInput.nextToken, outputKey: \GetInsightsOutputResponse.nextToken, paginationFunction: self.getInsights(input:))
    }
}

extension GetInsightsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetInsightsInput {
        return GetInsightsInput(
            insightArns: self.insightArns,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `getInsightsPaginated`
/// to access the nested member `[SecurityHubClientTypes.Insight]`
/// - Returns: `[SecurityHubClientTypes.Insight]`
extension PaginatorSequence where Input == GetInsightsInput, Output == GetInsightsOutputResponse {
    public func insights() async throws -> [SecurityHubClientTypes.Insight] {
        return try await self.asyncCompactMap { item in item.insights }
    }
}

/// Paginate over `[ListEnabledProductsForImportOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListEnabledProductsForImportInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListEnabledProductsForImportOutputResponse`
extension SecurityHubClient {
    public func listEnabledProductsForImportPaginated(input: ListEnabledProductsForImportInput) -> ClientRuntime.PaginatorSequence<ListEnabledProductsForImportInput, ListEnabledProductsForImportOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListEnabledProductsForImportInput, ListEnabledProductsForImportOutputResponse>(input: input, inputKey: \ListEnabledProductsForImportInput.nextToken, outputKey: \ListEnabledProductsForImportOutputResponse.nextToken, paginationFunction: self.listEnabledProductsForImport(input:))
    }
}

extension ListEnabledProductsForImportInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListEnabledProductsForImportInput {
        return ListEnabledProductsForImportInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listEnabledProductsForImportPaginated`
/// to access the nested member `[Swift.String]`
/// - Returns: `[Swift.String]`
extension PaginatorSequence where Input == ListEnabledProductsForImportInput, Output == ListEnabledProductsForImportOutputResponse {
    public func productSubscriptions() async throws -> [Swift.String] {
        return try await self.asyncCompactMap { item in item.productSubscriptions }
    }
}

/// Paginate over `[ListFindingAggregatorsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListFindingAggregatorsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListFindingAggregatorsOutputResponse`
extension SecurityHubClient {
    public func listFindingAggregatorsPaginated(input: ListFindingAggregatorsInput) -> ClientRuntime.PaginatorSequence<ListFindingAggregatorsInput, ListFindingAggregatorsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListFindingAggregatorsInput, ListFindingAggregatorsOutputResponse>(input: input, inputKey: \ListFindingAggregatorsInput.nextToken, outputKey: \ListFindingAggregatorsOutputResponse.nextToken, paginationFunction: self.listFindingAggregators(input:))
    }
}

extension ListFindingAggregatorsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListFindingAggregatorsInput {
        return ListFindingAggregatorsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listFindingAggregatorsPaginated`
/// to access the nested member `[SecurityHubClientTypes.FindingAggregator]`
/// - Returns: `[SecurityHubClientTypes.FindingAggregator]`
extension PaginatorSequence where Input == ListFindingAggregatorsInput, Output == ListFindingAggregatorsOutputResponse {
    public func findingAggregators() async throws -> [SecurityHubClientTypes.FindingAggregator] {
        return try await self.asyncCompactMap { item in item.findingAggregators }
    }
}

/// Paginate over `[ListInvitationsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListInvitationsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListInvitationsOutputResponse`
extension SecurityHubClient {
    public func listInvitationsPaginated(input: ListInvitationsInput) -> ClientRuntime.PaginatorSequence<ListInvitationsInput, ListInvitationsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListInvitationsInput, ListInvitationsOutputResponse>(input: input, inputKey: \ListInvitationsInput.nextToken, outputKey: \ListInvitationsOutputResponse.nextToken, paginationFunction: self.listInvitations(input:))
    }
}

extension ListInvitationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListInvitationsInput {
        return ListInvitationsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listInvitationsPaginated`
/// to access the nested member `[SecurityHubClientTypes.Invitation]`
/// - Returns: `[SecurityHubClientTypes.Invitation]`
extension PaginatorSequence where Input == ListInvitationsInput, Output == ListInvitationsOutputResponse {
    public func invitations() async throws -> [SecurityHubClientTypes.Invitation] {
        return try await self.asyncCompactMap { item in item.invitations }
    }
}

/// Paginate over `[ListMembersOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListMembersInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListMembersOutputResponse`
extension SecurityHubClient {
    public func listMembersPaginated(input: ListMembersInput) -> ClientRuntime.PaginatorSequence<ListMembersInput, ListMembersOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListMembersInput, ListMembersOutputResponse>(input: input, inputKey: \ListMembersInput.nextToken, outputKey: \ListMembersOutputResponse.nextToken, paginationFunction: self.listMembers(input:))
    }
}

extension ListMembersInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListMembersInput {
        return ListMembersInput(
            maxResults: self.maxResults,
            nextToken: token,
            onlyAssociated: self.onlyAssociated
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listMembersPaginated`
/// to access the nested member `[SecurityHubClientTypes.Member]`
/// - Returns: `[SecurityHubClientTypes.Member]`
extension PaginatorSequence where Input == ListMembersInput, Output == ListMembersOutputResponse {
    public func members() async throws -> [SecurityHubClientTypes.Member] {
        return try await self.asyncCompactMap { item in item.members }
    }
}

/// Paginate over `[ListOrganizationAdminAccountsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListOrganizationAdminAccountsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListOrganizationAdminAccountsOutputResponse`
extension SecurityHubClient {
    public func listOrganizationAdminAccountsPaginated(input: ListOrganizationAdminAccountsInput) -> ClientRuntime.PaginatorSequence<ListOrganizationAdminAccountsInput, ListOrganizationAdminAccountsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListOrganizationAdminAccountsInput, ListOrganizationAdminAccountsOutputResponse>(input: input, inputKey: \ListOrganizationAdminAccountsInput.nextToken, outputKey: \ListOrganizationAdminAccountsOutputResponse.nextToken, paginationFunction: self.listOrganizationAdminAccounts(input:))
    }
}

extension ListOrganizationAdminAccountsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListOrganizationAdminAccountsInput {
        return ListOrganizationAdminAccountsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listOrganizationAdminAccountsPaginated`
/// to access the nested member `[SecurityHubClientTypes.AdminAccount]`
/// - Returns: `[SecurityHubClientTypes.AdminAccount]`
extension PaginatorSequence where Input == ListOrganizationAdminAccountsInput, Output == ListOrganizationAdminAccountsOutputResponse {
    public func adminAccounts() async throws -> [SecurityHubClientTypes.AdminAccount] {
        return try await self.asyncCompactMap { item in item.adminAccounts }
    }
}
