// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime


/// Paginate over `[ListWorkersOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListWorkersInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListWorkersOutputResponse`
extension IoTRoboRunnerClient {
    public func listWorkersPaginated(input: ListWorkersInput) -> ClientRuntime.PaginatorSequence<ListWorkersInput, ListWorkersOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListWorkersInput, ListWorkersOutputResponse>(input: input, inputKey: \ListWorkersInput.nextToken, outputKey: \ListWorkersOutputResponse.nextToken, paginationFunction: self.listWorkers(input:))
    }
}

extension ListWorkersInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListWorkersInput {
        return ListWorkersInput(
            fleet: self.fleet,
            maxResults: self.maxResults,
            nextToken: token,
            site: self.site
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listWorkersPaginated`
/// to access the nested member `[IoTRoboRunnerClientTypes.Worker]`
/// - Returns: `[IoTRoboRunnerClientTypes.Worker]`
extension PaginatorSequence where Input == ListWorkersInput, Output == ListWorkersOutputResponse {
    public func workers() async throws -> [IoTRoboRunnerClientTypes.Worker] {
        return try await self.asyncCompactMap { item in item.workers }
    }
}
