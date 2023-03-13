// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension OpsWorksCMClient {
    /// Paginate over `[DescribeBackupsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeBackupsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeBackupsOutputResponse`
    public func describeBackupsPaginated(input: DescribeBackupsInput) -> ClientRuntime.PaginatorSequence<DescribeBackupsInput, DescribeBackupsOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeBackupsInput, DescribeBackupsOutputResponse>(input: input, inputKey: \DescribeBackupsInput.nextToken, outputKey: \DescribeBackupsOutputResponse.nextToken, paginationFunction: self.describeBackups(input:))
    }
}

extension DescribeBackupsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeBackupsInput {
        return DescribeBackupsInput(
            backupId: self.backupId,
            maxResults: self.maxResults,
            nextToken: token,
            serverName: self.serverName
        )}
}

extension PaginatorSequence where Input == DescribeBackupsInput, Output == DescribeBackupsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `describeBackupsPaginated`
    /// to access the nested member `[OpsWorksCMClientTypes.Backup]`
    /// - Returns: `[OpsWorksCMClientTypes.Backup]`
    public func backups() async throws -> [OpsWorksCMClientTypes.Backup] {
        return try await self.asyncCompactMap { item in item.backups }
    }
}
extension OpsWorksCMClient {
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
            maxResults: self.maxResults,
            nextToken: token,
            serverName: self.serverName
        )}
}

extension PaginatorSequence where Input == DescribeEventsInput, Output == DescribeEventsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `describeEventsPaginated`
    /// to access the nested member `[OpsWorksCMClientTypes.ServerEvent]`
    /// - Returns: `[OpsWorksCMClientTypes.ServerEvent]`
    public func serverEvents() async throws -> [OpsWorksCMClientTypes.ServerEvent] {
        return try await self.asyncCompactMap { item in item.serverEvents }
    }
}
extension OpsWorksCMClient {
    /// Paginate over `[DescribeServersOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeServersInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeServersOutputResponse`
    public func describeServersPaginated(input: DescribeServersInput) -> ClientRuntime.PaginatorSequence<DescribeServersInput, DescribeServersOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeServersInput, DescribeServersOutputResponse>(input: input, inputKey: \DescribeServersInput.nextToken, outputKey: \DescribeServersOutputResponse.nextToken, paginationFunction: self.describeServers(input:))
    }
}

extension DescribeServersInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeServersInput {
        return DescribeServersInput(
            maxResults: self.maxResults,
            nextToken: token,
            serverName: self.serverName
        )}
}

extension PaginatorSequence where Input == DescribeServersInput, Output == DescribeServersOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `describeServersPaginated`
    /// to access the nested member `[OpsWorksCMClientTypes.Server]`
    /// - Returns: `[OpsWorksCMClientTypes.Server]`
    public func servers() async throws -> [OpsWorksCMClientTypes.Server] {
        return try await self.asyncCompactMap { item in item.servers }
    }
}
extension OpsWorksCMClient {
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
            maxResults: self.maxResults,
            nextToken: token,
            resourceArn: self.resourceArn
        )}
}

extension PaginatorSequence where Input == ListTagsForResourceInput, Output == ListTagsForResourceOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listTagsForResourcePaginated`
    /// to access the nested member `[OpsWorksCMClientTypes.Tag]`
    /// - Returns: `[OpsWorksCMClientTypes.Tag]`
    public func tags() async throws -> [OpsWorksCMClientTypes.Tag] {
        return try await self.asyncCompactMap { item in item.tags }
    }
}
