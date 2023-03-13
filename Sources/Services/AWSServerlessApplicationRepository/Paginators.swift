// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ServerlessApplicationRepositoryClient {
    /// Paginate over `[ListApplicationDependenciesOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListApplicationDependenciesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListApplicationDependenciesOutputResponse`
    public func listApplicationDependenciesPaginated(input: ListApplicationDependenciesInput) -> ClientRuntime.PaginatorSequence<ListApplicationDependenciesInput, ListApplicationDependenciesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListApplicationDependenciesInput, ListApplicationDependenciesOutputResponse>(input: input, inputKey: \ListApplicationDependenciesInput.nextToken, outputKey: \ListApplicationDependenciesOutputResponse.nextToken, paginationFunction: self.listApplicationDependencies(input:))
    }
}

extension ListApplicationDependenciesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListApplicationDependenciesInput {
        return ListApplicationDependenciesInput(
            applicationId: self.applicationId,
            maxItems: self.maxItems,
            nextToken: token,
            semanticVersion: self.semanticVersion
        )}
}
extension ServerlessApplicationRepositoryClient {
    /// Paginate over `[ListApplicationsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListApplicationsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListApplicationsOutputResponse`
    public func listApplicationsPaginated(input: ListApplicationsInput) -> ClientRuntime.PaginatorSequence<ListApplicationsInput, ListApplicationsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListApplicationsInput, ListApplicationsOutputResponse>(input: input, inputKey: \ListApplicationsInput.nextToken, outputKey: \ListApplicationsOutputResponse.nextToken, paginationFunction: self.listApplications(input:))
    }
}

extension ListApplicationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListApplicationsInput {
        return ListApplicationsInput(
            maxItems: self.maxItems,
            nextToken: token
        )}
}
extension ServerlessApplicationRepositoryClient {
    /// Paginate over `[ListApplicationVersionsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListApplicationVersionsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListApplicationVersionsOutputResponse`
    public func listApplicationVersionsPaginated(input: ListApplicationVersionsInput) -> ClientRuntime.PaginatorSequence<ListApplicationVersionsInput, ListApplicationVersionsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListApplicationVersionsInput, ListApplicationVersionsOutputResponse>(input: input, inputKey: \ListApplicationVersionsInput.nextToken, outputKey: \ListApplicationVersionsOutputResponse.nextToken, paginationFunction: self.listApplicationVersions(input:))
    }
}

extension ListApplicationVersionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListApplicationVersionsInput {
        return ListApplicationVersionsInput(
            applicationId: self.applicationId,
            maxItems: self.maxItems,
            nextToken: token
        )}
}
