// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension IoT1ClickProjectsClient {
    /// Paginate over `[ListPlacementsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListPlacementsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListPlacementsOutputResponse`
    public func listPlacementsPaginated(input: ListPlacementsInput) -> ClientRuntime.PaginatorSequence<ListPlacementsInput, ListPlacementsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListPlacementsInput, ListPlacementsOutputResponse>(input: input, inputKey: \ListPlacementsInput.nextToken, outputKey: \ListPlacementsOutputResponse.nextToken, paginationFunction: self.listPlacements(input:))
    }
}

extension ListPlacementsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListPlacementsInput {
        return ListPlacementsInput(
            maxResults: self.maxResults,
            nextToken: token,
            projectName: self.projectName
        )}
}

extension PaginatorSequence where Input == ListPlacementsInput, Output == ListPlacementsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listPlacementsPaginated`
    /// to access the nested member `[IoT1ClickProjectsClientTypes.PlacementSummary]`
    /// - Returns: `[IoT1ClickProjectsClientTypes.PlacementSummary]`
    public func placements() async throws -> [IoT1ClickProjectsClientTypes.PlacementSummary] {
        return try await self.asyncCompactMap { item in item.placements }
    }
}
extension IoT1ClickProjectsClient {
    /// Paginate over `[ListProjectsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListProjectsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListProjectsOutputResponse`
    public func listProjectsPaginated(input: ListProjectsInput) -> ClientRuntime.PaginatorSequence<ListProjectsInput, ListProjectsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListProjectsInput, ListProjectsOutputResponse>(input: input, inputKey: \ListProjectsInput.nextToken, outputKey: \ListProjectsOutputResponse.nextToken, paginationFunction: self.listProjects(input:))
    }
}

extension ListProjectsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListProjectsInput {
        return ListProjectsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListProjectsInput, Output == ListProjectsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listProjectsPaginated`
    /// to access the nested member `[IoT1ClickProjectsClientTypes.ProjectSummary]`
    /// - Returns: `[IoT1ClickProjectsClientTypes.ProjectSummary]`
    public func projects() async throws -> [IoT1ClickProjectsClientTypes.ProjectSummary] {
        return try await self.asyncCompactMap { item in item.projects }
    }
}
