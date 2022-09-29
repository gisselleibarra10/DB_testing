// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime


/// Paginate over `[DescribeEcsClustersOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[DescribeEcsClustersInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `DescribeEcsClustersOutputResponse`
extension OpsWorksClient {
    public func describeEcsClustersPaginated(input: DescribeEcsClustersInput) -> ClientRuntime.PaginatorSequence<DescribeEcsClustersInput, DescribeEcsClustersOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeEcsClustersInput, DescribeEcsClustersOutputResponse>(input: input, inputKey: \DescribeEcsClustersInput.nextToken, outputKey: \DescribeEcsClustersOutputResponse.nextToken, paginationFunction: self.describeEcsClusters(input:))
    }
}

extension DescribeEcsClustersInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeEcsClustersInput {
        return DescribeEcsClustersInput(
            ecsClusterArns: self.ecsClusterArns,
            maxResults: self.maxResults,
            nextToken: token,
            stackId: self.stackId
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `describeEcsClustersPaginated`
/// to access the nested member `[OpsWorksClientTypes.EcsCluster]`
/// - Returns: `[OpsWorksClientTypes.EcsCluster]`
extension PaginatorSequence where Input == DescribeEcsClustersInput, Output == DescribeEcsClustersOutputResponse {
    public func ecsClusters() async throws -> [OpsWorksClientTypes.EcsCluster] {
        return try await self.asyncCompactMap { item in item.ecsClusters }
    }
}
