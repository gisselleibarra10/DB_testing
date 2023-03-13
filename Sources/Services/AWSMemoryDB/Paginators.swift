// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension MemoryDBClient {
    /// Paginate over `[DescribeACLsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeACLsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeACLsOutputResponse`
    public func describeACLsPaginated(input: DescribeACLsInput) -> ClientRuntime.PaginatorSequence<DescribeACLsInput, DescribeACLsOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeACLsInput, DescribeACLsOutputResponse>(input: input, inputKey: \DescribeACLsInput.nextToken, outputKey: \DescribeACLsOutputResponse.nextToken, paginationFunction: self.describeACLs(input:))
    }
}

extension DescribeACLsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeACLsInput {
        return DescribeACLsInput(
            aclName: self.aclName,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == DescribeACLsInput, Output == DescribeACLsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `describeACLsPaginated`
    /// to access the nested member `[MemoryDBClientTypes.ACL]`
    /// - Returns: `[MemoryDBClientTypes.ACL]`
    public func acLs() async throws -> [MemoryDBClientTypes.ACL] {
        return try await self.asyncCompactMap { item in item.acLs }
    }
}
extension MemoryDBClient {
    /// Paginate over `[DescribeClustersOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeClustersInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeClustersOutputResponse`
    public func describeClustersPaginated(input: DescribeClustersInput) -> ClientRuntime.PaginatorSequence<DescribeClustersInput, DescribeClustersOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeClustersInput, DescribeClustersOutputResponse>(input: input, inputKey: \DescribeClustersInput.nextToken, outputKey: \DescribeClustersOutputResponse.nextToken, paginationFunction: self.describeClusters(input:))
    }
}

extension DescribeClustersInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeClustersInput {
        return DescribeClustersInput(
            clusterName: self.clusterName,
            maxResults: self.maxResults,
            nextToken: token,
            showShardDetails: self.showShardDetails
        )}
}

extension PaginatorSequence where Input == DescribeClustersInput, Output == DescribeClustersOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `describeClustersPaginated`
    /// to access the nested member `[MemoryDBClientTypes.Cluster]`
    /// - Returns: `[MemoryDBClientTypes.Cluster]`
    public func clusters() async throws -> [MemoryDBClientTypes.Cluster] {
        return try await self.asyncCompactMap { item in item.clusters }
    }
}
extension MemoryDBClient {
    /// Paginate over `[DescribeEngineVersionsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeEngineVersionsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeEngineVersionsOutputResponse`
    public func describeEngineVersionsPaginated(input: DescribeEngineVersionsInput) -> ClientRuntime.PaginatorSequence<DescribeEngineVersionsInput, DescribeEngineVersionsOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeEngineVersionsInput, DescribeEngineVersionsOutputResponse>(input: input, inputKey: \DescribeEngineVersionsInput.nextToken, outputKey: \DescribeEngineVersionsOutputResponse.nextToken, paginationFunction: self.describeEngineVersions(input:))
    }
}

extension DescribeEngineVersionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeEngineVersionsInput {
        return DescribeEngineVersionsInput(
            defaultOnly: self.defaultOnly,
            engineVersion: self.engineVersion,
            maxResults: self.maxResults,
            nextToken: token,
            parameterGroupFamily: self.parameterGroupFamily
        )}
}

extension PaginatorSequence where Input == DescribeEngineVersionsInput, Output == DescribeEngineVersionsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `describeEngineVersionsPaginated`
    /// to access the nested member `[MemoryDBClientTypes.EngineVersionInfo]`
    /// - Returns: `[MemoryDBClientTypes.EngineVersionInfo]`
    public func engineVersions() async throws -> [MemoryDBClientTypes.EngineVersionInfo] {
        return try await self.asyncCompactMap { item in item.engineVersions }
    }
}
extension MemoryDBClient {
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
            duration: self.duration,
            endTime: self.endTime,
            maxResults: self.maxResults,
            nextToken: token,
            sourceName: self.sourceName,
            sourceType: self.sourceType,
            startTime: self.startTime
        )}
}

extension PaginatorSequence where Input == DescribeEventsInput, Output == DescribeEventsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `describeEventsPaginated`
    /// to access the nested member `[MemoryDBClientTypes.Event]`
    /// - Returns: `[MemoryDBClientTypes.Event]`
    public func events() async throws -> [MemoryDBClientTypes.Event] {
        return try await self.asyncCompactMap { item in item.events }
    }
}
extension MemoryDBClient {
    /// Paginate over `[DescribeParameterGroupsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeParameterGroupsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeParameterGroupsOutputResponse`
    public func describeParameterGroupsPaginated(input: DescribeParameterGroupsInput) -> ClientRuntime.PaginatorSequence<DescribeParameterGroupsInput, DescribeParameterGroupsOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeParameterGroupsInput, DescribeParameterGroupsOutputResponse>(input: input, inputKey: \DescribeParameterGroupsInput.nextToken, outputKey: \DescribeParameterGroupsOutputResponse.nextToken, paginationFunction: self.describeParameterGroups(input:))
    }
}

extension DescribeParameterGroupsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeParameterGroupsInput {
        return DescribeParameterGroupsInput(
            maxResults: self.maxResults,
            nextToken: token,
            parameterGroupName: self.parameterGroupName
        )}
}

extension PaginatorSequence where Input == DescribeParameterGroupsInput, Output == DescribeParameterGroupsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `describeParameterGroupsPaginated`
    /// to access the nested member `[MemoryDBClientTypes.ParameterGroup]`
    /// - Returns: `[MemoryDBClientTypes.ParameterGroup]`
    public func parameterGroups() async throws -> [MemoryDBClientTypes.ParameterGroup] {
        return try await self.asyncCompactMap { item in item.parameterGroups }
    }
}
extension MemoryDBClient {
    /// Paginate over `[DescribeParametersOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeParametersInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeParametersOutputResponse`
    public func describeParametersPaginated(input: DescribeParametersInput) -> ClientRuntime.PaginatorSequence<DescribeParametersInput, DescribeParametersOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeParametersInput, DescribeParametersOutputResponse>(input: input, inputKey: \DescribeParametersInput.nextToken, outputKey: \DescribeParametersOutputResponse.nextToken, paginationFunction: self.describeParameters(input:))
    }
}

extension DescribeParametersInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeParametersInput {
        return DescribeParametersInput(
            maxResults: self.maxResults,
            nextToken: token,
            parameterGroupName: self.parameterGroupName
        )}
}

extension PaginatorSequence where Input == DescribeParametersInput, Output == DescribeParametersOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `describeParametersPaginated`
    /// to access the nested member `[MemoryDBClientTypes.Parameter]`
    /// - Returns: `[MemoryDBClientTypes.Parameter]`
    public func parameters() async throws -> [MemoryDBClientTypes.Parameter] {
        return try await self.asyncCompactMap { item in item.parameters }
    }
}
extension MemoryDBClient {
    /// Paginate over `[DescribeReservedNodesOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeReservedNodesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeReservedNodesOutputResponse`
    public func describeReservedNodesPaginated(input: DescribeReservedNodesInput) -> ClientRuntime.PaginatorSequence<DescribeReservedNodesInput, DescribeReservedNodesOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeReservedNodesInput, DescribeReservedNodesOutputResponse>(input: input, inputKey: \DescribeReservedNodesInput.nextToken, outputKey: \DescribeReservedNodesOutputResponse.nextToken, paginationFunction: self.describeReservedNodes(input:))
    }
}

extension DescribeReservedNodesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeReservedNodesInput {
        return DescribeReservedNodesInput(
            duration: self.duration,
            maxResults: self.maxResults,
            nextToken: token,
            nodeType: self.nodeType,
            offeringType: self.offeringType,
            reservationId: self.reservationId,
            reservedNodesOfferingId: self.reservedNodesOfferingId
        )}
}

extension PaginatorSequence where Input == DescribeReservedNodesInput, Output == DescribeReservedNodesOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `describeReservedNodesPaginated`
    /// to access the nested member `[MemoryDBClientTypes.ReservedNode]`
    /// - Returns: `[MemoryDBClientTypes.ReservedNode]`
    public func reservedNodes() async throws -> [MemoryDBClientTypes.ReservedNode] {
        return try await self.asyncCompactMap { item in item.reservedNodes }
    }
}
extension MemoryDBClient {
    /// Paginate over `[DescribeReservedNodesOfferingsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeReservedNodesOfferingsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeReservedNodesOfferingsOutputResponse`
    public func describeReservedNodesOfferingsPaginated(input: DescribeReservedNodesOfferingsInput) -> ClientRuntime.PaginatorSequence<DescribeReservedNodesOfferingsInput, DescribeReservedNodesOfferingsOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeReservedNodesOfferingsInput, DescribeReservedNodesOfferingsOutputResponse>(input: input, inputKey: \DescribeReservedNodesOfferingsInput.nextToken, outputKey: \DescribeReservedNodesOfferingsOutputResponse.nextToken, paginationFunction: self.describeReservedNodesOfferings(input:))
    }
}

extension DescribeReservedNodesOfferingsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeReservedNodesOfferingsInput {
        return DescribeReservedNodesOfferingsInput(
            duration: self.duration,
            maxResults: self.maxResults,
            nextToken: token,
            nodeType: self.nodeType,
            offeringType: self.offeringType,
            reservedNodesOfferingId: self.reservedNodesOfferingId
        )}
}

extension PaginatorSequence where Input == DescribeReservedNodesOfferingsInput, Output == DescribeReservedNodesOfferingsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `describeReservedNodesOfferingsPaginated`
    /// to access the nested member `[MemoryDBClientTypes.ReservedNodesOffering]`
    /// - Returns: `[MemoryDBClientTypes.ReservedNodesOffering]`
    public func reservedNodesOfferings() async throws -> [MemoryDBClientTypes.ReservedNodesOffering] {
        return try await self.asyncCompactMap { item in item.reservedNodesOfferings }
    }
}
extension MemoryDBClient {
    /// Paginate over `[DescribeServiceUpdatesOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeServiceUpdatesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeServiceUpdatesOutputResponse`
    public func describeServiceUpdatesPaginated(input: DescribeServiceUpdatesInput) -> ClientRuntime.PaginatorSequence<DescribeServiceUpdatesInput, DescribeServiceUpdatesOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeServiceUpdatesInput, DescribeServiceUpdatesOutputResponse>(input: input, inputKey: \DescribeServiceUpdatesInput.nextToken, outputKey: \DescribeServiceUpdatesOutputResponse.nextToken, paginationFunction: self.describeServiceUpdates(input:))
    }
}

extension DescribeServiceUpdatesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeServiceUpdatesInput {
        return DescribeServiceUpdatesInput(
            clusterNames: self.clusterNames,
            maxResults: self.maxResults,
            nextToken: token,
            serviceUpdateName: self.serviceUpdateName,
            status: self.status
        )}
}

extension PaginatorSequence where Input == DescribeServiceUpdatesInput, Output == DescribeServiceUpdatesOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `describeServiceUpdatesPaginated`
    /// to access the nested member `[MemoryDBClientTypes.ServiceUpdate]`
    /// - Returns: `[MemoryDBClientTypes.ServiceUpdate]`
    public func serviceUpdates() async throws -> [MemoryDBClientTypes.ServiceUpdate] {
        return try await self.asyncCompactMap { item in item.serviceUpdates }
    }
}
extension MemoryDBClient {
    /// Paginate over `[DescribeSnapshotsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeSnapshotsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeSnapshotsOutputResponse`
    public func describeSnapshotsPaginated(input: DescribeSnapshotsInput) -> ClientRuntime.PaginatorSequence<DescribeSnapshotsInput, DescribeSnapshotsOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeSnapshotsInput, DescribeSnapshotsOutputResponse>(input: input, inputKey: \DescribeSnapshotsInput.nextToken, outputKey: \DescribeSnapshotsOutputResponse.nextToken, paginationFunction: self.describeSnapshots(input:))
    }
}

extension DescribeSnapshotsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeSnapshotsInput {
        return DescribeSnapshotsInput(
            clusterName: self.clusterName,
            maxResults: self.maxResults,
            nextToken: token,
            showDetail: self.showDetail,
            snapshotName: self.snapshotName,
            source: self.source
        )}
}

extension PaginatorSequence where Input == DescribeSnapshotsInput, Output == DescribeSnapshotsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `describeSnapshotsPaginated`
    /// to access the nested member `[MemoryDBClientTypes.Snapshot]`
    /// - Returns: `[MemoryDBClientTypes.Snapshot]`
    public func snapshots() async throws -> [MemoryDBClientTypes.Snapshot] {
        return try await self.asyncCompactMap { item in item.snapshots }
    }
}
extension MemoryDBClient {
    /// Paginate over `[DescribeSubnetGroupsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeSubnetGroupsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeSubnetGroupsOutputResponse`
    public func describeSubnetGroupsPaginated(input: DescribeSubnetGroupsInput) -> ClientRuntime.PaginatorSequence<DescribeSubnetGroupsInput, DescribeSubnetGroupsOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeSubnetGroupsInput, DescribeSubnetGroupsOutputResponse>(input: input, inputKey: \DescribeSubnetGroupsInput.nextToken, outputKey: \DescribeSubnetGroupsOutputResponse.nextToken, paginationFunction: self.describeSubnetGroups(input:))
    }
}

extension DescribeSubnetGroupsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeSubnetGroupsInput {
        return DescribeSubnetGroupsInput(
            maxResults: self.maxResults,
            nextToken: token,
            subnetGroupName: self.subnetGroupName
        )}
}

extension PaginatorSequence where Input == DescribeSubnetGroupsInput, Output == DescribeSubnetGroupsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `describeSubnetGroupsPaginated`
    /// to access the nested member `[MemoryDBClientTypes.SubnetGroup]`
    /// - Returns: `[MemoryDBClientTypes.SubnetGroup]`
    public func subnetGroups() async throws -> [MemoryDBClientTypes.SubnetGroup] {
        return try await self.asyncCompactMap { item in item.subnetGroups }
    }
}
extension MemoryDBClient {
    /// Paginate over `[DescribeUsersOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeUsersInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeUsersOutputResponse`
    public func describeUsersPaginated(input: DescribeUsersInput) -> ClientRuntime.PaginatorSequence<DescribeUsersInput, DescribeUsersOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeUsersInput, DescribeUsersOutputResponse>(input: input, inputKey: \DescribeUsersInput.nextToken, outputKey: \DescribeUsersOutputResponse.nextToken, paginationFunction: self.describeUsers(input:))
    }
}

extension DescribeUsersInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeUsersInput {
        return DescribeUsersInput(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            userName: self.userName
        )}
}

extension PaginatorSequence where Input == DescribeUsersInput, Output == DescribeUsersOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `describeUsersPaginated`
    /// to access the nested member `[MemoryDBClientTypes.User]`
    /// - Returns: `[MemoryDBClientTypes.User]`
    public func users() async throws -> [MemoryDBClientTypes.User] {
        return try await self.asyncCompactMap { item in item.users }
    }
}
