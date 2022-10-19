// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime


/// Paginate over `[DescribeCustomDomainsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[DescribeCustomDomainsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `DescribeCustomDomainsOutputResponse`
extension AppRunnerClient {
    public func describeCustomDomainsPaginated(input: DescribeCustomDomainsInput) -> ClientRuntime.PaginatorSequence<DescribeCustomDomainsInput, DescribeCustomDomainsOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeCustomDomainsInput, DescribeCustomDomainsOutputResponse>(input: input, inputKey: \DescribeCustomDomainsInput.nextToken, outputKey: \DescribeCustomDomainsOutputResponse.nextToken, paginationFunction: self.describeCustomDomains(input:))
    }
}

extension DescribeCustomDomainsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeCustomDomainsInput {
        return DescribeCustomDomainsInput(
            maxResults: self.maxResults,
            nextToken: token,
            serviceArn: self.serviceArn
        )}
}

/// Paginate over `[ListAutoScalingConfigurationsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListAutoScalingConfigurationsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListAutoScalingConfigurationsOutputResponse`
extension AppRunnerClient {
    public func listAutoScalingConfigurationsPaginated(input: ListAutoScalingConfigurationsInput) -> ClientRuntime.PaginatorSequence<ListAutoScalingConfigurationsInput, ListAutoScalingConfigurationsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListAutoScalingConfigurationsInput, ListAutoScalingConfigurationsOutputResponse>(input: input, inputKey: \ListAutoScalingConfigurationsInput.nextToken, outputKey: \ListAutoScalingConfigurationsOutputResponse.nextToken, paginationFunction: self.listAutoScalingConfigurations(input:))
    }
}

extension ListAutoScalingConfigurationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListAutoScalingConfigurationsInput {
        return ListAutoScalingConfigurationsInput(
            autoScalingConfigurationName: self.autoScalingConfigurationName,
            latestOnly: self.latestOnly,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[ListConnectionsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListConnectionsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListConnectionsOutputResponse`
extension AppRunnerClient {
    public func listConnectionsPaginated(input: ListConnectionsInput) -> ClientRuntime.PaginatorSequence<ListConnectionsInput, ListConnectionsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListConnectionsInput, ListConnectionsOutputResponse>(input: input, inputKey: \ListConnectionsInput.nextToken, outputKey: \ListConnectionsOutputResponse.nextToken, paginationFunction: self.listConnections(input:))
    }
}

extension ListConnectionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListConnectionsInput {
        return ListConnectionsInput(
            connectionName: self.connectionName,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[ListObservabilityConfigurationsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListObservabilityConfigurationsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListObservabilityConfigurationsOutputResponse`
extension AppRunnerClient {
    public func listObservabilityConfigurationsPaginated(input: ListObservabilityConfigurationsInput) -> ClientRuntime.PaginatorSequence<ListObservabilityConfigurationsInput, ListObservabilityConfigurationsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListObservabilityConfigurationsInput, ListObservabilityConfigurationsOutputResponse>(input: input, inputKey: \ListObservabilityConfigurationsInput.nextToken, outputKey: \ListObservabilityConfigurationsOutputResponse.nextToken, paginationFunction: self.listObservabilityConfigurations(input:))
    }
}

extension ListObservabilityConfigurationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListObservabilityConfigurationsInput {
        return ListObservabilityConfigurationsInput(
            latestOnly: self.latestOnly,
            maxResults: self.maxResults,
            nextToken: token,
            observabilityConfigurationName: self.observabilityConfigurationName
        )}
}

/// Paginate over `[ListOperationsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListOperationsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListOperationsOutputResponse`
extension AppRunnerClient {
    public func listOperationsPaginated(input: ListOperationsInput) -> ClientRuntime.PaginatorSequence<ListOperationsInput, ListOperationsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListOperationsInput, ListOperationsOutputResponse>(input: input, inputKey: \ListOperationsInput.nextToken, outputKey: \ListOperationsOutputResponse.nextToken, paginationFunction: self.listOperations(input:))
    }
}

extension ListOperationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListOperationsInput {
        return ListOperationsInput(
            maxResults: self.maxResults,
            nextToken: token,
            serviceArn: self.serviceArn
        )}
}

/// Paginate over `[ListServicesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListServicesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListServicesOutputResponse`
extension AppRunnerClient {
    public func listServicesPaginated(input: ListServicesInput) -> ClientRuntime.PaginatorSequence<ListServicesInput, ListServicesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListServicesInput, ListServicesOutputResponse>(input: input, inputKey: \ListServicesInput.nextToken, outputKey: \ListServicesOutputResponse.nextToken, paginationFunction: self.listServices(input:))
    }
}

extension ListServicesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListServicesInput {
        return ListServicesInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[ListVpcConnectorsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListVpcConnectorsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListVpcConnectorsOutputResponse`
extension AppRunnerClient {
    public func listVpcConnectorsPaginated(input: ListVpcConnectorsInput) -> ClientRuntime.PaginatorSequence<ListVpcConnectorsInput, ListVpcConnectorsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListVpcConnectorsInput, ListVpcConnectorsOutputResponse>(input: input, inputKey: \ListVpcConnectorsInput.nextToken, outputKey: \ListVpcConnectorsOutputResponse.nextToken, paginationFunction: self.listVpcConnectors(input:))
    }
}

extension ListVpcConnectorsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListVpcConnectorsInput {
        return ListVpcConnectorsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}