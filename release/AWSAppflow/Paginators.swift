// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime


/// Paginate over `[DescribeConnectorProfilesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[DescribeConnectorProfilesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `DescribeConnectorProfilesOutputResponse`
extension AppflowClient {
    public func describeConnectorProfilesPaginated(input: DescribeConnectorProfilesInput) -> ClientRuntime.PaginatorSequence<DescribeConnectorProfilesInput, DescribeConnectorProfilesOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeConnectorProfilesInput, DescribeConnectorProfilesOutputResponse>(input: input, inputKey: \DescribeConnectorProfilesInput.nextToken, outputKey: \DescribeConnectorProfilesOutputResponse.nextToken, paginationFunction: self.describeConnectorProfiles(input:))
    }
}

extension DescribeConnectorProfilesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeConnectorProfilesInput {
        return DescribeConnectorProfilesInput(
            connectorLabel: self.connectorLabel,
            connectorProfileNames: self.connectorProfileNames,
            connectorType: self.connectorType,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[DescribeConnectorsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[DescribeConnectorsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `DescribeConnectorsOutputResponse`
extension AppflowClient {
    public func describeConnectorsPaginated(input: DescribeConnectorsInput) -> ClientRuntime.PaginatorSequence<DescribeConnectorsInput, DescribeConnectorsOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeConnectorsInput, DescribeConnectorsOutputResponse>(input: input, inputKey: \DescribeConnectorsInput.nextToken, outputKey: \DescribeConnectorsOutputResponse.nextToken, paginationFunction: self.describeConnectors(input:))
    }
}

extension DescribeConnectorsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeConnectorsInput {
        return DescribeConnectorsInput(
            connectorTypes: self.connectorTypes,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[DescribeFlowExecutionRecordsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[DescribeFlowExecutionRecordsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `DescribeFlowExecutionRecordsOutputResponse`
extension AppflowClient {
    public func describeFlowExecutionRecordsPaginated(input: DescribeFlowExecutionRecordsInput) -> ClientRuntime.PaginatorSequence<DescribeFlowExecutionRecordsInput, DescribeFlowExecutionRecordsOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeFlowExecutionRecordsInput, DescribeFlowExecutionRecordsOutputResponse>(input: input, inputKey: \DescribeFlowExecutionRecordsInput.nextToken, outputKey: \DescribeFlowExecutionRecordsOutputResponse.nextToken, paginationFunction: self.describeFlowExecutionRecords(input:))
    }
}

extension DescribeFlowExecutionRecordsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeFlowExecutionRecordsInput {
        return DescribeFlowExecutionRecordsInput(
            flowName: self.flowName,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[ListConnectorsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListConnectorsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListConnectorsOutputResponse`
extension AppflowClient {
    public func listConnectorsPaginated(input: ListConnectorsInput) -> ClientRuntime.PaginatorSequence<ListConnectorsInput, ListConnectorsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListConnectorsInput, ListConnectorsOutputResponse>(input: input, inputKey: \ListConnectorsInput.nextToken, outputKey: \ListConnectorsOutputResponse.nextToken, paginationFunction: self.listConnectors(input:))
    }
}

extension ListConnectorsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListConnectorsInput {
        return ListConnectorsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[ListFlowsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListFlowsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListFlowsOutputResponse`
extension AppflowClient {
    public func listFlowsPaginated(input: ListFlowsInput) -> ClientRuntime.PaginatorSequence<ListFlowsInput, ListFlowsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListFlowsInput, ListFlowsOutputResponse>(input: input, inputKey: \ListFlowsInput.nextToken, outputKey: \ListFlowsOutputResponse.nextToken, paginationFunction: self.listFlows(input:))
    }
}

extension ListFlowsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListFlowsInput {
        return ListFlowsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}
