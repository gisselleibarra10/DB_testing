// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension WorkLinkClient {
    /// Paginate over `[ListDevicesOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListDevicesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListDevicesOutputResponse`
    public func listDevicesPaginated(input: ListDevicesInput) -> ClientRuntime.PaginatorSequence<ListDevicesInput, ListDevicesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListDevicesInput, ListDevicesOutputResponse>(input: input, inputKey: \ListDevicesInput.nextToken, outputKey: \ListDevicesOutputResponse.nextToken, paginationFunction: self.listDevices(input:))
    }
}

extension ListDevicesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListDevicesInput {
        return ListDevicesInput(
            fleetArn: self.fleetArn,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension WorkLinkClient {
    /// Paginate over `[ListDomainsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListDomainsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListDomainsOutputResponse`
    public func listDomainsPaginated(input: ListDomainsInput) -> ClientRuntime.PaginatorSequence<ListDomainsInput, ListDomainsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListDomainsInput, ListDomainsOutputResponse>(input: input, inputKey: \ListDomainsInput.nextToken, outputKey: \ListDomainsOutputResponse.nextToken, paginationFunction: self.listDomains(input:))
    }
}

extension ListDomainsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListDomainsInput {
        return ListDomainsInput(
            fleetArn: self.fleetArn,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension WorkLinkClient {
    /// Paginate over `[ListFleetsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListFleetsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListFleetsOutputResponse`
    public func listFleetsPaginated(input: ListFleetsInput) -> ClientRuntime.PaginatorSequence<ListFleetsInput, ListFleetsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListFleetsInput, ListFleetsOutputResponse>(input: input, inputKey: \ListFleetsInput.nextToken, outputKey: \ListFleetsOutputResponse.nextToken, paginationFunction: self.listFleets(input:))
    }
}

extension ListFleetsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListFleetsInput {
        return ListFleetsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension WorkLinkClient {
    /// Paginate over `[ListWebsiteAuthorizationProvidersOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListWebsiteAuthorizationProvidersInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListWebsiteAuthorizationProvidersOutputResponse`
    public func listWebsiteAuthorizationProvidersPaginated(input: ListWebsiteAuthorizationProvidersInput) -> ClientRuntime.PaginatorSequence<ListWebsiteAuthorizationProvidersInput, ListWebsiteAuthorizationProvidersOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListWebsiteAuthorizationProvidersInput, ListWebsiteAuthorizationProvidersOutputResponse>(input: input, inputKey: \ListWebsiteAuthorizationProvidersInput.nextToken, outputKey: \ListWebsiteAuthorizationProvidersOutputResponse.nextToken, paginationFunction: self.listWebsiteAuthorizationProviders(input:))
    }
}

extension ListWebsiteAuthorizationProvidersInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListWebsiteAuthorizationProvidersInput {
        return ListWebsiteAuthorizationProvidersInput(
            fleetArn: self.fleetArn,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension WorkLinkClient {
    /// Paginate over `[ListWebsiteCertificateAuthoritiesOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListWebsiteCertificateAuthoritiesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListWebsiteCertificateAuthoritiesOutputResponse`
    public func listWebsiteCertificateAuthoritiesPaginated(input: ListWebsiteCertificateAuthoritiesInput) -> ClientRuntime.PaginatorSequence<ListWebsiteCertificateAuthoritiesInput, ListWebsiteCertificateAuthoritiesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListWebsiteCertificateAuthoritiesInput, ListWebsiteCertificateAuthoritiesOutputResponse>(input: input, inputKey: \ListWebsiteCertificateAuthoritiesInput.nextToken, outputKey: \ListWebsiteCertificateAuthoritiesOutputResponse.nextToken, paginationFunction: self.listWebsiteCertificateAuthorities(input:))
    }
}

extension ListWebsiteCertificateAuthoritiesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListWebsiteCertificateAuthoritiesInput {
        return ListWebsiteCertificateAuthoritiesInput(
            fleetArn: self.fleetArn,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
