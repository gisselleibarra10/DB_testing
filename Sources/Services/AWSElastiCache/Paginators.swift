// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ElastiCacheClient {
    /// Paginate over `[DescribeCacheClustersOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeCacheClustersInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeCacheClustersOutputResponse`
    public func describeCacheClustersPaginated(input: DescribeCacheClustersInput) -> ClientRuntime.PaginatorSequence<DescribeCacheClustersInput, DescribeCacheClustersOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeCacheClustersInput, DescribeCacheClustersOutputResponse>(input: input, inputKey: \DescribeCacheClustersInput.marker, outputKey: \DescribeCacheClustersOutputResponse.marker, paginationFunction: self.describeCacheClusters(input:))
    }
}

extension DescribeCacheClustersInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeCacheClustersInput {
        return DescribeCacheClustersInput(
            cacheClusterId: self.cacheClusterId,
            marker: token,
            maxRecords: self.maxRecords,
            showCacheClustersNotInReplicationGroups: self.showCacheClustersNotInReplicationGroups,
            showCacheNodeInfo: self.showCacheNodeInfo
        )}
}

extension PaginatorSequence where Input == DescribeCacheClustersInput, Output == DescribeCacheClustersOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `describeCacheClustersPaginated`
    /// to access the nested member `[ElastiCacheClientTypes.CacheCluster]`
    /// - Returns: `[ElastiCacheClientTypes.CacheCluster]`
    public func cacheClusters() async throws -> [ElastiCacheClientTypes.CacheCluster] {
        return try await self.asyncCompactMap { item in item.cacheClusters }
    }
}
extension ElastiCacheClient {
    /// Paginate over `[DescribeCacheEngineVersionsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeCacheEngineVersionsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeCacheEngineVersionsOutputResponse`
    public func describeCacheEngineVersionsPaginated(input: DescribeCacheEngineVersionsInput) -> ClientRuntime.PaginatorSequence<DescribeCacheEngineVersionsInput, DescribeCacheEngineVersionsOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeCacheEngineVersionsInput, DescribeCacheEngineVersionsOutputResponse>(input: input, inputKey: \DescribeCacheEngineVersionsInput.marker, outputKey: \DescribeCacheEngineVersionsOutputResponse.marker, paginationFunction: self.describeCacheEngineVersions(input:))
    }
}

extension DescribeCacheEngineVersionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeCacheEngineVersionsInput {
        return DescribeCacheEngineVersionsInput(
            cacheParameterGroupFamily: self.cacheParameterGroupFamily,
            defaultOnly: self.defaultOnly,
            engine: self.engine,
            engineVersion: self.engineVersion,
            marker: token,
            maxRecords: self.maxRecords
        )}
}

extension PaginatorSequence where Input == DescribeCacheEngineVersionsInput, Output == DescribeCacheEngineVersionsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `describeCacheEngineVersionsPaginated`
    /// to access the nested member `[ElastiCacheClientTypes.CacheEngineVersion]`
    /// - Returns: `[ElastiCacheClientTypes.CacheEngineVersion]`
    public func cacheEngineVersions() async throws -> [ElastiCacheClientTypes.CacheEngineVersion] {
        return try await self.asyncCompactMap { item in item.cacheEngineVersions }
    }
}
extension ElastiCacheClient {
    /// Paginate over `[DescribeCacheParameterGroupsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeCacheParameterGroupsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeCacheParameterGroupsOutputResponse`
    public func describeCacheParameterGroupsPaginated(input: DescribeCacheParameterGroupsInput) -> ClientRuntime.PaginatorSequence<DescribeCacheParameterGroupsInput, DescribeCacheParameterGroupsOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeCacheParameterGroupsInput, DescribeCacheParameterGroupsOutputResponse>(input: input, inputKey: \DescribeCacheParameterGroupsInput.marker, outputKey: \DescribeCacheParameterGroupsOutputResponse.marker, paginationFunction: self.describeCacheParameterGroups(input:))
    }
}

extension DescribeCacheParameterGroupsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeCacheParameterGroupsInput {
        return DescribeCacheParameterGroupsInput(
            cacheParameterGroupName: self.cacheParameterGroupName,
            marker: token,
            maxRecords: self.maxRecords
        )}
}

extension PaginatorSequence where Input == DescribeCacheParameterGroupsInput, Output == DescribeCacheParameterGroupsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `describeCacheParameterGroupsPaginated`
    /// to access the nested member `[ElastiCacheClientTypes.CacheParameterGroup]`
    /// - Returns: `[ElastiCacheClientTypes.CacheParameterGroup]`
    public func cacheParameterGroups() async throws -> [ElastiCacheClientTypes.CacheParameterGroup] {
        return try await self.asyncCompactMap { item in item.cacheParameterGroups }
    }
}
extension ElastiCacheClient {
    /// Paginate over `[DescribeCacheParametersOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeCacheParametersInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeCacheParametersOutputResponse`
    public func describeCacheParametersPaginated(input: DescribeCacheParametersInput) -> ClientRuntime.PaginatorSequence<DescribeCacheParametersInput, DescribeCacheParametersOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeCacheParametersInput, DescribeCacheParametersOutputResponse>(input: input, inputKey: \DescribeCacheParametersInput.marker, outputKey: \DescribeCacheParametersOutputResponse.marker, paginationFunction: self.describeCacheParameters(input:))
    }
}

extension DescribeCacheParametersInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeCacheParametersInput {
        return DescribeCacheParametersInput(
            cacheParameterGroupName: self.cacheParameterGroupName,
            marker: token,
            maxRecords: self.maxRecords,
            source: self.source
        )}
}

extension PaginatorSequence where Input == DescribeCacheParametersInput, Output == DescribeCacheParametersOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `describeCacheParametersPaginated`
    /// to access the nested member `[ElastiCacheClientTypes.Parameter]`
    /// - Returns: `[ElastiCacheClientTypes.Parameter]`
    public func parameters() async throws -> [ElastiCacheClientTypes.Parameter] {
        return try await self.asyncCompactMap { item in item.parameters }
    }
}
extension ElastiCacheClient {
    /// Paginate over `[DescribeCacheSecurityGroupsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeCacheSecurityGroupsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeCacheSecurityGroupsOutputResponse`
    public func describeCacheSecurityGroupsPaginated(input: DescribeCacheSecurityGroupsInput) -> ClientRuntime.PaginatorSequence<DescribeCacheSecurityGroupsInput, DescribeCacheSecurityGroupsOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeCacheSecurityGroupsInput, DescribeCacheSecurityGroupsOutputResponse>(input: input, inputKey: \DescribeCacheSecurityGroupsInput.marker, outputKey: \DescribeCacheSecurityGroupsOutputResponse.marker, paginationFunction: self.describeCacheSecurityGroups(input:))
    }
}

extension DescribeCacheSecurityGroupsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeCacheSecurityGroupsInput {
        return DescribeCacheSecurityGroupsInput(
            cacheSecurityGroupName: self.cacheSecurityGroupName,
            marker: token,
            maxRecords: self.maxRecords
        )}
}

extension PaginatorSequence where Input == DescribeCacheSecurityGroupsInput, Output == DescribeCacheSecurityGroupsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `describeCacheSecurityGroupsPaginated`
    /// to access the nested member `[ElastiCacheClientTypes.CacheSecurityGroup]`
    /// - Returns: `[ElastiCacheClientTypes.CacheSecurityGroup]`
    public func cacheSecurityGroups() async throws -> [ElastiCacheClientTypes.CacheSecurityGroup] {
        return try await self.asyncCompactMap { item in item.cacheSecurityGroups }
    }
}
extension ElastiCacheClient {
    /// Paginate over `[DescribeCacheSubnetGroupsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeCacheSubnetGroupsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeCacheSubnetGroupsOutputResponse`
    public func describeCacheSubnetGroupsPaginated(input: DescribeCacheSubnetGroupsInput) -> ClientRuntime.PaginatorSequence<DescribeCacheSubnetGroupsInput, DescribeCacheSubnetGroupsOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeCacheSubnetGroupsInput, DescribeCacheSubnetGroupsOutputResponse>(input: input, inputKey: \DescribeCacheSubnetGroupsInput.marker, outputKey: \DescribeCacheSubnetGroupsOutputResponse.marker, paginationFunction: self.describeCacheSubnetGroups(input:))
    }
}

extension DescribeCacheSubnetGroupsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeCacheSubnetGroupsInput {
        return DescribeCacheSubnetGroupsInput(
            cacheSubnetGroupName: self.cacheSubnetGroupName,
            marker: token,
            maxRecords: self.maxRecords
        )}
}

extension PaginatorSequence where Input == DescribeCacheSubnetGroupsInput, Output == DescribeCacheSubnetGroupsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `describeCacheSubnetGroupsPaginated`
    /// to access the nested member `[ElastiCacheClientTypes.CacheSubnetGroup]`
    /// - Returns: `[ElastiCacheClientTypes.CacheSubnetGroup]`
    public func cacheSubnetGroups() async throws -> [ElastiCacheClientTypes.CacheSubnetGroup] {
        return try await self.asyncCompactMap { item in item.cacheSubnetGroups }
    }
}
extension ElastiCacheClient {
    /// Paginate over `[DescribeEngineDefaultParametersOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeEngineDefaultParametersInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeEngineDefaultParametersOutputResponse`
    public func describeEngineDefaultParametersPaginated(input: DescribeEngineDefaultParametersInput) -> ClientRuntime.PaginatorSequence<DescribeEngineDefaultParametersInput, DescribeEngineDefaultParametersOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeEngineDefaultParametersInput, DescribeEngineDefaultParametersOutputResponse>(input: input, inputKey: \DescribeEngineDefaultParametersInput.marker, outputKey: \DescribeEngineDefaultParametersOutputResponse.engineDefaults?.marker, paginationFunction: self.describeEngineDefaultParameters(input:))
    }
}

extension DescribeEngineDefaultParametersInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeEngineDefaultParametersInput {
        return DescribeEngineDefaultParametersInput(
            cacheParameterGroupFamily: self.cacheParameterGroupFamily,
            marker: token,
            maxRecords: self.maxRecords
        )}
}

extension PaginatorSequence where Input == DescribeEngineDefaultParametersInput, Output == DescribeEngineDefaultParametersOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `describeEngineDefaultParametersPaginated`
    /// to access the nested member `[ElastiCacheClientTypes.Parameter]`
    /// - Returns: `[ElastiCacheClientTypes.Parameter]`
    public func parameters() async throws -> [ElastiCacheClientTypes.Parameter] {
        return try await self.asyncCompactMap { item in item.engineDefaults?.parameters }
    }
}
extension ElastiCacheClient {
    /// Paginate over `[DescribeEventsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeEventsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeEventsOutputResponse`
    public func describeEventsPaginated(input: DescribeEventsInput) -> ClientRuntime.PaginatorSequence<DescribeEventsInput, DescribeEventsOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeEventsInput, DescribeEventsOutputResponse>(input: input, inputKey: \DescribeEventsInput.marker, outputKey: \DescribeEventsOutputResponse.marker, paginationFunction: self.describeEvents(input:))
    }
}

extension DescribeEventsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeEventsInput {
        return DescribeEventsInput(
            duration: self.duration,
            endTime: self.endTime,
            marker: token,
            maxRecords: self.maxRecords,
            sourceIdentifier: self.sourceIdentifier,
            sourceType: self.sourceType,
            startTime: self.startTime
        )}
}

extension PaginatorSequence where Input == DescribeEventsInput, Output == DescribeEventsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `describeEventsPaginated`
    /// to access the nested member `[ElastiCacheClientTypes.Event]`
    /// - Returns: `[ElastiCacheClientTypes.Event]`
    public func events() async throws -> [ElastiCacheClientTypes.Event] {
        return try await self.asyncCompactMap { item in item.events }
    }
}
extension ElastiCacheClient {
    /// Paginate over `[DescribeGlobalReplicationGroupsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeGlobalReplicationGroupsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeGlobalReplicationGroupsOutputResponse`
    public func describeGlobalReplicationGroupsPaginated(input: DescribeGlobalReplicationGroupsInput) -> ClientRuntime.PaginatorSequence<DescribeGlobalReplicationGroupsInput, DescribeGlobalReplicationGroupsOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeGlobalReplicationGroupsInput, DescribeGlobalReplicationGroupsOutputResponse>(input: input, inputKey: \DescribeGlobalReplicationGroupsInput.marker, outputKey: \DescribeGlobalReplicationGroupsOutputResponse.marker, paginationFunction: self.describeGlobalReplicationGroups(input:))
    }
}

extension DescribeGlobalReplicationGroupsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeGlobalReplicationGroupsInput {
        return DescribeGlobalReplicationGroupsInput(
            globalReplicationGroupId: self.globalReplicationGroupId,
            marker: token,
            maxRecords: self.maxRecords,
            showMemberInfo: self.showMemberInfo
        )}
}

extension PaginatorSequence where Input == DescribeGlobalReplicationGroupsInput, Output == DescribeGlobalReplicationGroupsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `describeGlobalReplicationGroupsPaginated`
    /// to access the nested member `[ElastiCacheClientTypes.GlobalReplicationGroup]`
    /// - Returns: `[ElastiCacheClientTypes.GlobalReplicationGroup]`
    public func globalReplicationGroups() async throws -> [ElastiCacheClientTypes.GlobalReplicationGroup] {
        return try await self.asyncCompactMap { item in item.globalReplicationGroups }
    }
}
extension ElastiCacheClient {
    /// Paginate over `[DescribeReplicationGroupsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeReplicationGroupsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeReplicationGroupsOutputResponse`
    public func describeReplicationGroupsPaginated(input: DescribeReplicationGroupsInput) -> ClientRuntime.PaginatorSequence<DescribeReplicationGroupsInput, DescribeReplicationGroupsOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeReplicationGroupsInput, DescribeReplicationGroupsOutputResponse>(input: input, inputKey: \DescribeReplicationGroupsInput.marker, outputKey: \DescribeReplicationGroupsOutputResponse.marker, paginationFunction: self.describeReplicationGroups(input:))
    }
}

extension DescribeReplicationGroupsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeReplicationGroupsInput {
        return DescribeReplicationGroupsInput(
            marker: token,
            maxRecords: self.maxRecords,
            replicationGroupId: self.replicationGroupId
        )}
}

extension PaginatorSequence where Input == DescribeReplicationGroupsInput, Output == DescribeReplicationGroupsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `describeReplicationGroupsPaginated`
    /// to access the nested member `[ElastiCacheClientTypes.ReplicationGroup]`
    /// - Returns: `[ElastiCacheClientTypes.ReplicationGroup]`
    public func replicationGroups() async throws -> [ElastiCacheClientTypes.ReplicationGroup] {
        return try await self.asyncCompactMap { item in item.replicationGroups }
    }
}
extension ElastiCacheClient {
    /// Paginate over `[DescribeReservedCacheNodesOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeReservedCacheNodesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeReservedCacheNodesOutputResponse`
    public func describeReservedCacheNodesPaginated(input: DescribeReservedCacheNodesInput) -> ClientRuntime.PaginatorSequence<DescribeReservedCacheNodesInput, DescribeReservedCacheNodesOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeReservedCacheNodesInput, DescribeReservedCacheNodesOutputResponse>(input: input, inputKey: \DescribeReservedCacheNodesInput.marker, outputKey: \DescribeReservedCacheNodesOutputResponse.marker, paginationFunction: self.describeReservedCacheNodes(input:))
    }
}

extension DescribeReservedCacheNodesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeReservedCacheNodesInput {
        return DescribeReservedCacheNodesInput(
            cacheNodeType: self.cacheNodeType,
            duration: self.duration,
            marker: token,
            maxRecords: self.maxRecords,
            offeringType: self.offeringType,
            productDescription: self.productDescription,
            reservedCacheNodeId: self.reservedCacheNodeId,
            reservedCacheNodesOfferingId: self.reservedCacheNodesOfferingId
        )}
}

extension PaginatorSequence where Input == DescribeReservedCacheNodesInput, Output == DescribeReservedCacheNodesOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `describeReservedCacheNodesPaginated`
    /// to access the nested member `[ElastiCacheClientTypes.ReservedCacheNode]`
    /// - Returns: `[ElastiCacheClientTypes.ReservedCacheNode]`
    public func reservedCacheNodes() async throws -> [ElastiCacheClientTypes.ReservedCacheNode] {
        return try await self.asyncCompactMap { item in item.reservedCacheNodes }
    }
}
extension ElastiCacheClient {
    /// Paginate over `[DescribeReservedCacheNodesOfferingsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeReservedCacheNodesOfferingsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeReservedCacheNodesOfferingsOutputResponse`
    public func describeReservedCacheNodesOfferingsPaginated(input: DescribeReservedCacheNodesOfferingsInput) -> ClientRuntime.PaginatorSequence<DescribeReservedCacheNodesOfferingsInput, DescribeReservedCacheNodesOfferingsOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeReservedCacheNodesOfferingsInput, DescribeReservedCacheNodesOfferingsOutputResponse>(input: input, inputKey: \DescribeReservedCacheNodesOfferingsInput.marker, outputKey: \DescribeReservedCacheNodesOfferingsOutputResponse.marker, paginationFunction: self.describeReservedCacheNodesOfferings(input:))
    }
}

extension DescribeReservedCacheNodesOfferingsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeReservedCacheNodesOfferingsInput {
        return DescribeReservedCacheNodesOfferingsInput(
            cacheNodeType: self.cacheNodeType,
            duration: self.duration,
            marker: token,
            maxRecords: self.maxRecords,
            offeringType: self.offeringType,
            productDescription: self.productDescription,
            reservedCacheNodesOfferingId: self.reservedCacheNodesOfferingId
        )}
}

extension PaginatorSequence where Input == DescribeReservedCacheNodesOfferingsInput, Output == DescribeReservedCacheNodesOfferingsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `describeReservedCacheNodesOfferingsPaginated`
    /// to access the nested member `[ElastiCacheClientTypes.ReservedCacheNodesOffering]`
    /// - Returns: `[ElastiCacheClientTypes.ReservedCacheNodesOffering]`
    public func reservedCacheNodesOfferings() async throws -> [ElastiCacheClientTypes.ReservedCacheNodesOffering] {
        return try await self.asyncCompactMap { item in item.reservedCacheNodesOfferings }
    }
}
extension ElastiCacheClient {
    /// Paginate over `[DescribeServiceUpdatesOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeServiceUpdatesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeServiceUpdatesOutputResponse`
    public func describeServiceUpdatesPaginated(input: DescribeServiceUpdatesInput) -> ClientRuntime.PaginatorSequence<DescribeServiceUpdatesInput, DescribeServiceUpdatesOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeServiceUpdatesInput, DescribeServiceUpdatesOutputResponse>(input: input, inputKey: \DescribeServiceUpdatesInput.marker, outputKey: \DescribeServiceUpdatesOutputResponse.marker, paginationFunction: self.describeServiceUpdates(input:))
    }
}

extension DescribeServiceUpdatesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeServiceUpdatesInput {
        return DescribeServiceUpdatesInput(
            marker: token,
            maxRecords: self.maxRecords,
            serviceUpdateName: self.serviceUpdateName,
            serviceUpdateStatus: self.serviceUpdateStatus
        )}
}

extension PaginatorSequence where Input == DescribeServiceUpdatesInput, Output == DescribeServiceUpdatesOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `describeServiceUpdatesPaginated`
    /// to access the nested member `[ElastiCacheClientTypes.ServiceUpdate]`
    /// - Returns: `[ElastiCacheClientTypes.ServiceUpdate]`
    public func serviceUpdates() async throws -> [ElastiCacheClientTypes.ServiceUpdate] {
        return try await self.asyncCompactMap { item in item.serviceUpdates }
    }
}
extension ElastiCacheClient {
    /// Paginate over `[DescribeSnapshotsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeSnapshotsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeSnapshotsOutputResponse`
    public func describeSnapshotsPaginated(input: DescribeSnapshotsInput) -> ClientRuntime.PaginatorSequence<DescribeSnapshotsInput, DescribeSnapshotsOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeSnapshotsInput, DescribeSnapshotsOutputResponse>(input: input, inputKey: \DescribeSnapshotsInput.marker, outputKey: \DescribeSnapshotsOutputResponse.marker, paginationFunction: self.describeSnapshots(input:))
    }
}

extension DescribeSnapshotsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeSnapshotsInput {
        return DescribeSnapshotsInput(
            cacheClusterId: self.cacheClusterId,
            marker: token,
            maxRecords: self.maxRecords,
            replicationGroupId: self.replicationGroupId,
            showNodeGroupConfig: self.showNodeGroupConfig,
            snapshotName: self.snapshotName,
            snapshotSource: self.snapshotSource
        )}
}

extension PaginatorSequence where Input == DescribeSnapshotsInput, Output == DescribeSnapshotsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `describeSnapshotsPaginated`
    /// to access the nested member `[ElastiCacheClientTypes.Snapshot]`
    /// - Returns: `[ElastiCacheClientTypes.Snapshot]`
    public func snapshots() async throws -> [ElastiCacheClientTypes.Snapshot] {
        return try await self.asyncCompactMap { item in item.snapshots }
    }
}
extension ElastiCacheClient {
    /// Paginate over `[DescribeUpdateActionsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeUpdateActionsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeUpdateActionsOutputResponse`
    public func describeUpdateActionsPaginated(input: DescribeUpdateActionsInput) -> ClientRuntime.PaginatorSequence<DescribeUpdateActionsInput, DescribeUpdateActionsOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeUpdateActionsInput, DescribeUpdateActionsOutputResponse>(input: input, inputKey: \DescribeUpdateActionsInput.marker, outputKey: \DescribeUpdateActionsOutputResponse.marker, paginationFunction: self.describeUpdateActions(input:))
    }
}

extension DescribeUpdateActionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeUpdateActionsInput {
        return DescribeUpdateActionsInput(
            cacheClusterIds: self.cacheClusterIds,
            engine: self.engine,
            marker: token,
            maxRecords: self.maxRecords,
            replicationGroupIds: self.replicationGroupIds,
            serviceUpdateName: self.serviceUpdateName,
            serviceUpdateStatus: self.serviceUpdateStatus,
            serviceUpdateTimeRange: self.serviceUpdateTimeRange,
            showNodeLevelUpdateStatus: self.showNodeLevelUpdateStatus,
            updateActionStatus: self.updateActionStatus
        )}
}

extension PaginatorSequence where Input == DescribeUpdateActionsInput, Output == DescribeUpdateActionsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `describeUpdateActionsPaginated`
    /// to access the nested member `[ElastiCacheClientTypes.UpdateAction]`
    /// - Returns: `[ElastiCacheClientTypes.UpdateAction]`
    public func updateActions() async throws -> [ElastiCacheClientTypes.UpdateAction] {
        return try await self.asyncCompactMap { item in item.updateActions }
    }
}
extension ElastiCacheClient {
    /// Paginate over `[DescribeUserGroupsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeUserGroupsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeUserGroupsOutputResponse`
    public func describeUserGroupsPaginated(input: DescribeUserGroupsInput) -> ClientRuntime.PaginatorSequence<DescribeUserGroupsInput, DescribeUserGroupsOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeUserGroupsInput, DescribeUserGroupsOutputResponse>(input: input, inputKey: \DescribeUserGroupsInput.marker, outputKey: \DescribeUserGroupsOutputResponse.marker, paginationFunction: self.describeUserGroups(input:))
    }
}

extension DescribeUserGroupsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeUserGroupsInput {
        return DescribeUserGroupsInput(
            marker: token,
            maxRecords: self.maxRecords,
            userGroupId: self.userGroupId
        )}
}

extension PaginatorSequence where Input == DescribeUserGroupsInput, Output == DescribeUserGroupsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `describeUserGroupsPaginated`
    /// to access the nested member `[ElastiCacheClientTypes.UserGroup]`
    /// - Returns: `[ElastiCacheClientTypes.UserGroup]`
    public func userGroups() async throws -> [ElastiCacheClientTypes.UserGroup] {
        return try await self.asyncCompactMap { item in item.userGroups }
    }
}
extension ElastiCacheClient {
    /// Paginate over `[DescribeUsersOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeUsersInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeUsersOutputResponse`
    public func describeUsersPaginated(input: DescribeUsersInput) -> ClientRuntime.PaginatorSequence<DescribeUsersInput, DescribeUsersOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeUsersInput, DescribeUsersOutputResponse>(input: input, inputKey: \DescribeUsersInput.marker, outputKey: \DescribeUsersOutputResponse.marker, paginationFunction: self.describeUsers(input:))
    }
}

extension DescribeUsersInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeUsersInput {
        return DescribeUsersInput(
            engine: self.engine,
            filters: self.filters,
            marker: token,
            maxRecords: self.maxRecords,
            userId: self.userId
        )}
}

extension PaginatorSequence where Input == DescribeUsersInput, Output == DescribeUsersOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `describeUsersPaginated`
    /// to access the nested member `[ElastiCacheClientTypes.User]`
    /// - Returns: `[ElastiCacheClientTypes.User]`
    public func users() async throws -> [ElastiCacheClientTypes.User] {
        return try await self.asyncCompactMap { item in item.users }
    }
}