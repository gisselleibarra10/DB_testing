// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension GlobalAcceleratorClient {
    /// Paginate over `[ListAcceleratorsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListAcceleratorsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListAcceleratorsOutputResponse`
    public func listAcceleratorsPaginated(input: ListAcceleratorsInput) -> ClientRuntime.PaginatorSequence<ListAcceleratorsInput, ListAcceleratorsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListAcceleratorsInput, ListAcceleratorsOutputResponse>(input: input, inputKey: \ListAcceleratorsInput.nextToken, outputKey: \ListAcceleratorsOutputResponse.nextToken, paginationFunction: self.listAccelerators(input:))
    }
}

extension ListAcceleratorsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListAcceleratorsInput {
        return ListAcceleratorsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListAcceleratorsInput, Output == ListAcceleratorsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listAcceleratorsPaginated`
    /// to access the nested member `[GlobalAcceleratorClientTypes.Accelerator]`
    /// - Returns: `[GlobalAcceleratorClientTypes.Accelerator]`
    public func accelerators() async throws -> [GlobalAcceleratorClientTypes.Accelerator] {
        return try await self.asyncCompactMap { item in item.accelerators }
    }
}
extension GlobalAcceleratorClient {
    /// Paginate over `[ListByoipCidrsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListByoipCidrsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListByoipCidrsOutputResponse`
    public func listByoipCidrsPaginated(input: ListByoipCidrsInput) -> ClientRuntime.PaginatorSequence<ListByoipCidrsInput, ListByoipCidrsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListByoipCidrsInput, ListByoipCidrsOutputResponse>(input: input, inputKey: \ListByoipCidrsInput.nextToken, outputKey: \ListByoipCidrsOutputResponse.nextToken, paginationFunction: self.listByoipCidrs(input:))
    }
}

extension ListByoipCidrsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListByoipCidrsInput {
        return ListByoipCidrsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListByoipCidrsInput, Output == ListByoipCidrsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listByoipCidrsPaginated`
    /// to access the nested member `[GlobalAcceleratorClientTypes.ByoipCidr]`
    /// - Returns: `[GlobalAcceleratorClientTypes.ByoipCidr]`
    public func byoipCidrs() async throws -> [GlobalAcceleratorClientTypes.ByoipCidr] {
        return try await self.asyncCompactMap { item in item.byoipCidrs }
    }
}
extension GlobalAcceleratorClient {
    /// Paginate over `[ListCustomRoutingAcceleratorsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListCustomRoutingAcceleratorsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListCustomRoutingAcceleratorsOutputResponse`
    public func listCustomRoutingAcceleratorsPaginated(input: ListCustomRoutingAcceleratorsInput) -> ClientRuntime.PaginatorSequence<ListCustomRoutingAcceleratorsInput, ListCustomRoutingAcceleratorsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListCustomRoutingAcceleratorsInput, ListCustomRoutingAcceleratorsOutputResponse>(input: input, inputKey: \ListCustomRoutingAcceleratorsInput.nextToken, outputKey: \ListCustomRoutingAcceleratorsOutputResponse.nextToken, paginationFunction: self.listCustomRoutingAccelerators(input:))
    }
}

extension ListCustomRoutingAcceleratorsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListCustomRoutingAcceleratorsInput {
        return ListCustomRoutingAcceleratorsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListCustomRoutingAcceleratorsInput, Output == ListCustomRoutingAcceleratorsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listCustomRoutingAcceleratorsPaginated`
    /// to access the nested member `[GlobalAcceleratorClientTypes.CustomRoutingAccelerator]`
    /// - Returns: `[GlobalAcceleratorClientTypes.CustomRoutingAccelerator]`
    public func accelerators() async throws -> [GlobalAcceleratorClientTypes.CustomRoutingAccelerator] {
        return try await self.asyncCompactMap { item in item.accelerators }
    }
}
extension GlobalAcceleratorClient {
    /// Paginate over `[ListCustomRoutingEndpointGroupsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListCustomRoutingEndpointGroupsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListCustomRoutingEndpointGroupsOutputResponse`
    public func listCustomRoutingEndpointGroupsPaginated(input: ListCustomRoutingEndpointGroupsInput) -> ClientRuntime.PaginatorSequence<ListCustomRoutingEndpointGroupsInput, ListCustomRoutingEndpointGroupsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListCustomRoutingEndpointGroupsInput, ListCustomRoutingEndpointGroupsOutputResponse>(input: input, inputKey: \ListCustomRoutingEndpointGroupsInput.nextToken, outputKey: \ListCustomRoutingEndpointGroupsOutputResponse.nextToken, paginationFunction: self.listCustomRoutingEndpointGroups(input:))
    }
}

extension ListCustomRoutingEndpointGroupsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListCustomRoutingEndpointGroupsInput {
        return ListCustomRoutingEndpointGroupsInput(
            listenerArn: self.listenerArn,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension GlobalAcceleratorClient {
    /// Paginate over `[ListCustomRoutingListenersOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListCustomRoutingListenersInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListCustomRoutingListenersOutputResponse`
    public func listCustomRoutingListenersPaginated(input: ListCustomRoutingListenersInput) -> ClientRuntime.PaginatorSequence<ListCustomRoutingListenersInput, ListCustomRoutingListenersOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListCustomRoutingListenersInput, ListCustomRoutingListenersOutputResponse>(input: input, inputKey: \ListCustomRoutingListenersInput.nextToken, outputKey: \ListCustomRoutingListenersOutputResponse.nextToken, paginationFunction: self.listCustomRoutingListeners(input:))
    }
}

extension ListCustomRoutingListenersInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListCustomRoutingListenersInput {
        return ListCustomRoutingListenersInput(
            acceleratorArn: self.acceleratorArn,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListCustomRoutingListenersInput, Output == ListCustomRoutingListenersOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listCustomRoutingListenersPaginated`
    /// to access the nested member `[GlobalAcceleratorClientTypes.CustomRoutingListener]`
    /// - Returns: `[GlobalAcceleratorClientTypes.CustomRoutingListener]`
    public func listeners() async throws -> [GlobalAcceleratorClientTypes.CustomRoutingListener] {
        return try await self.asyncCompactMap { item in item.listeners }
    }
}
extension GlobalAcceleratorClient {
    /// Paginate over `[ListCustomRoutingPortMappingsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListCustomRoutingPortMappingsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListCustomRoutingPortMappingsOutputResponse`
    public func listCustomRoutingPortMappingsPaginated(input: ListCustomRoutingPortMappingsInput) -> ClientRuntime.PaginatorSequence<ListCustomRoutingPortMappingsInput, ListCustomRoutingPortMappingsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListCustomRoutingPortMappingsInput, ListCustomRoutingPortMappingsOutputResponse>(input: input, inputKey: \ListCustomRoutingPortMappingsInput.nextToken, outputKey: \ListCustomRoutingPortMappingsOutputResponse.nextToken, paginationFunction: self.listCustomRoutingPortMappings(input:))
    }
}

extension ListCustomRoutingPortMappingsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListCustomRoutingPortMappingsInput {
        return ListCustomRoutingPortMappingsInput(
            acceleratorArn: self.acceleratorArn,
            endpointGroupArn: self.endpointGroupArn,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListCustomRoutingPortMappingsInput, Output == ListCustomRoutingPortMappingsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listCustomRoutingPortMappingsPaginated`
    /// to access the nested member `[GlobalAcceleratorClientTypes.PortMapping]`
    /// - Returns: `[GlobalAcceleratorClientTypes.PortMapping]`
    public func portMappings() async throws -> [GlobalAcceleratorClientTypes.PortMapping] {
        return try await self.asyncCompactMap { item in item.portMappings }
    }
}
extension GlobalAcceleratorClient {
    /// Paginate over `[ListCustomRoutingPortMappingsByDestinationOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListCustomRoutingPortMappingsByDestinationInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListCustomRoutingPortMappingsByDestinationOutputResponse`
    public func listCustomRoutingPortMappingsByDestinationPaginated(input: ListCustomRoutingPortMappingsByDestinationInput) -> ClientRuntime.PaginatorSequence<ListCustomRoutingPortMappingsByDestinationInput, ListCustomRoutingPortMappingsByDestinationOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListCustomRoutingPortMappingsByDestinationInput, ListCustomRoutingPortMappingsByDestinationOutputResponse>(input: input, inputKey: \ListCustomRoutingPortMappingsByDestinationInput.nextToken, outputKey: \ListCustomRoutingPortMappingsByDestinationOutputResponse.nextToken, paginationFunction: self.listCustomRoutingPortMappingsByDestination(input:))
    }
}

extension ListCustomRoutingPortMappingsByDestinationInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListCustomRoutingPortMappingsByDestinationInput {
        return ListCustomRoutingPortMappingsByDestinationInput(
            destinationAddress: self.destinationAddress,
            endpointId: self.endpointId,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListCustomRoutingPortMappingsByDestinationInput, Output == ListCustomRoutingPortMappingsByDestinationOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listCustomRoutingPortMappingsByDestinationPaginated`
    /// to access the nested member `[GlobalAcceleratorClientTypes.DestinationPortMapping]`
    /// - Returns: `[GlobalAcceleratorClientTypes.DestinationPortMapping]`
    public func destinationPortMappings() async throws -> [GlobalAcceleratorClientTypes.DestinationPortMapping] {
        return try await self.asyncCompactMap { item in item.destinationPortMappings }
    }
}
extension GlobalAcceleratorClient {
    /// Paginate over `[ListEndpointGroupsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListEndpointGroupsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListEndpointGroupsOutputResponse`
    public func listEndpointGroupsPaginated(input: ListEndpointGroupsInput) -> ClientRuntime.PaginatorSequence<ListEndpointGroupsInput, ListEndpointGroupsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListEndpointGroupsInput, ListEndpointGroupsOutputResponse>(input: input, inputKey: \ListEndpointGroupsInput.nextToken, outputKey: \ListEndpointGroupsOutputResponse.nextToken, paginationFunction: self.listEndpointGroups(input:))
    }
}

extension ListEndpointGroupsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListEndpointGroupsInput {
        return ListEndpointGroupsInput(
            listenerArn: self.listenerArn,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListEndpointGroupsInput, Output == ListEndpointGroupsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listEndpointGroupsPaginated`
    /// to access the nested member `[GlobalAcceleratorClientTypes.EndpointGroup]`
    /// - Returns: `[GlobalAcceleratorClientTypes.EndpointGroup]`
    public func endpointGroups() async throws -> [GlobalAcceleratorClientTypes.EndpointGroup] {
        return try await self.asyncCompactMap { item in item.endpointGroups }
    }
}
extension GlobalAcceleratorClient {
    /// Paginate over `[ListListenersOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListListenersInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListListenersOutputResponse`
    public func listListenersPaginated(input: ListListenersInput) -> ClientRuntime.PaginatorSequence<ListListenersInput, ListListenersOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListListenersInput, ListListenersOutputResponse>(input: input, inputKey: \ListListenersInput.nextToken, outputKey: \ListListenersOutputResponse.nextToken, paginationFunction: self.listListeners(input:))
    }
}

extension ListListenersInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListListenersInput {
        return ListListenersInput(
            acceleratorArn: self.acceleratorArn,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListListenersInput, Output == ListListenersOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listListenersPaginated`
    /// to access the nested member `[GlobalAcceleratorClientTypes.Listener]`
    /// - Returns: `[GlobalAcceleratorClientTypes.Listener]`
    public func listeners() async throws -> [GlobalAcceleratorClientTypes.Listener] {
        return try await self.asyncCompactMap { item in item.listeners }
    }
}
