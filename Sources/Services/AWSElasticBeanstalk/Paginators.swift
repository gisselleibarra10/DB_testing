// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ElasticBeanstalkClient {
    /// Paginate over `[DescribeEnvironmentManagedActionHistoryOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeEnvironmentManagedActionHistoryInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeEnvironmentManagedActionHistoryOutputResponse`
    public func describeEnvironmentManagedActionHistoryPaginated(input: DescribeEnvironmentManagedActionHistoryInput) -> ClientRuntime.PaginatorSequence<DescribeEnvironmentManagedActionHistoryInput, DescribeEnvironmentManagedActionHistoryOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeEnvironmentManagedActionHistoryInput, DescribeEnvironmentManagedActionHistoryOutputResponse>(input: input, inputKey: \DescribeEnvironmentManagedActionHistoryInput.nextToken, outputKey: \DescribeEnvironmentManagedActionHistoryOutputResponse.nextToken, paginationFunction: self.describeEnvironmentManagedActionHistory(input:))
    }
}

extension DescribeEnvironmentManagedActionHistoryInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeEnvironmentManagedActionHistoryInput {
        return DescribeEnvironmentManagedActionHistoryInput(
            environmentId: self.environmentId,
            environmentName: self.environmentName,
            maxItems: self.maxItems,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == DescribeEnvironmentManagedActionHistoryInput, Output == DescribeEnvironmentManagedActionHistoryOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `describeEnvironmentManagedActionHistoryPaginated`
    /// to access the nested member `[ElasticBeanstalkClientTypes.ManagedActionHistoryItem]`
    /// - Returns: `[ElasticBeanstalkClientTypes.ManagedActionHistoryItem]`
    public func managedActionHistoryItems() async throws -> [ElasticBeanstalkClientTypes.ManagedActionHistoryItem] {
        return try await self.asyncCompactMap { item in item.managedActionHistoryItems }
    }
}
extension ElasticBeanstalkClient {
    /// Paginate over `[DescribeEventsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeEventsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeEventsOutputResponse`
    public func describeEventsPaginated(input: DescribeEventsInput) -> ClientRuntime.PaginatorSequence<DescribeEventsInput, DescribeEventsOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeEventsInput, DescribeEventsOutputResponse>(input: input, inputKey: \DescribeEventsInput.nextToken, outputKey: \DescribeEventsOutputResponse.nextToken, paginationFunction: self.describeEvents(input:))
    }
}

extension DescribeEventsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeEventsInput {
        return DescribeEventsInput(
            applicationName: self.applicationName,
            endTime: self.endTime,
            environmentId: self.environmentId,
            environmentName: self.environmentName,
            maxRecords: self.maxRecords,
            nextToken: token,
            platformArn: self.platformArn,
            requestId: self.requestId,
            severity: self.severity,
            startTime: self.startTime,
            templateName: self.templateName,
            versionLabel: self.versionLabel
        )}
}

extension PaginatorSequence where Input == DescribeEventsInput, Output == DescribeEventsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `describeEventsPaginated`
    /// to access the nested member `[ElasticBeanstalkClientTypes.EventDescription]`
    /// - Returns: `[ElasticBeanstalkClientTypes.EventDescription]`
    public func events() async throws -> [ElasticBeanstalkClientTypes.EventDescription] {
        return try await self.asyncCompactMap { item in item.events }
    }
}
extension ElasticBeanstalkClient {
    /// Paginate over `[ListPlatformBranchesOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListPlatformBranchesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListPlatformBranchesOutputResponse`
    public func listPlatformBranchesPaginated(input: ListPlatformBranchesInput) -> ClientRuntime.PaginatorSequence<ListPlatformBranchesInput, ListPlatformBranchesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListPlatformBranchesInput, ListPlatformBranchesOutputResponse>(input: input, inputKey: \ListPlatformBranchesInput.nextToken, outputKey: \ListPlatformBranchesOutputResponse.nextToken, paginationFunction: self.listPlatformBranches(input:))
    }
}

extension ListPlatformBranchesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListPlatformBranchesInput {
        return ListPlatformBranchesInput(
            filters: self.filters,
            maxRecords: self.maxRecords,
            nextToken: token
        )}
}
extension ElasticBeanstalkClient {
    /// Paginate over `[ListPlatformVersionsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListPlatformVersionsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListPlatformVersionsOutputResponse`
    public func listPlatformVersionsPaginated(input: ListPlatformVersionsInput) -> ClientRuntime.PaginatorSequence<ListPlatformVersionsInput, ListPlatformVersionsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListPlatformVersionsInput, ListPlatformVersionsOutputResponse>(input: input, inputKey: \ListPlatformVersionsInput.nextToken, outputKey: \ListPlatformVersionsOutputResponse.nextToken, paginationFunction: self.listPlatformVersions(input:))
    }
}

extension ListPlatformVersionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListPlatformVersionsInput {
        return ListPlatformVersionsInput(
            filters: self.filters,
            maxRecords: self.maxRecords,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListPlatformVersionsInput, Output == ListPlatformVersionsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listPlatformVersionsPaginated`
    /// to access the nested member `[ElasticBeanstalkClientTypes.PlatformSummary]`
    /// - Returns: `[ElasticBeanstalkClientTypes.PlatformSummary]`
    public func platformSummaryList() async throws -> [ElasticBeanstalkClientTypes.PlatformSummary] {
        return try await self.asyncCompactMap { item in item.platformSummaryList }
    }
}
