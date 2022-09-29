// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime


/// Paginate over `[ListChangeSetsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListChangeSetsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListChangeSetsOutputResponse`
extension MarketplaceCatalogClient {
    public func listChangeSetsPaginated(input: ListChangeSetsInput) -> ClientRuntime.PaginatorSequence<ListChangeSetsInput, ListChangeSetsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListChangeSetsInput, ListChangeSetsOutputResponse>(input: input, inputKey: \ListChangeSetsInput.nextToken, outputKey: \ListChangeSetsOutputResponse.nextToken, paginationFunction: self.listChangeSets(input:))
    }
}

extension ListChangeSetsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListChangeSetsInput {
        return ListChangeSetsInput(
            catalog: self.catalog,
            filterList: self.filterList,
            maxResults: self.maxResults,
            nextToken: token,
            sort: self.sort
        )}
}

/// Paginate over `[ListEntitiesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListEntitiesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListEntitiesOutputResponse`
extension MarketplaceCatalogClient {
    public func listEntitiesPaginated(input: ListEntitiesInput) -> ClientRuntime.PaginatorSequence<ListEntitiesInput, ListEntitiesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListEntitiesInput, ListEntitiesOutputResponse>(input: input, inputKey: \ListEntitiesInput.nextToken, outputKey: \ListEntitiesOutputResponse.nextToken, paginationFunction: self.listEntities(input:))
    }
}

extension ListEntitiesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListEntitiesInput {
        return ListEntitiesInput(
            catalog: self.catalog,
            entityType: self.entityType,
            filterList: self.filterList,
            maxResults: self.maxResults,
            nextToken: token,
            sort: self.sort
        )}
}
