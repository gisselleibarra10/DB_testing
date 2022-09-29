// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime


/// Paginate over `[ListHumanLoopsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListHumanLoopsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListHumanLoopsOutputResponse`
extension SageMakerA2IRuntimeClient {
    public func listHumanLoopsPaginated(input: ListHumanLoopsInput) -> ClientRuntime.PaginatorSequence<ListHumanLoopsInput, ListHumanLoopsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListHumanLoopsInput, ListHumanLoopsOutputResponse>(input: input, inputKey: \ListHumanLoopsInput.nextToken, outputKey: \ListHumanLoopsOutputResponse.nextToken, paginationFunction: self.listHumanLoops(input:))
    }
}

extension ListHumanLoopsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListHumanLoopsInput {
        return ListHumanLoopsInput(
            creationTimeAfter: self.creationTimeAfter,
            creationTimeBefore: self.creationTimeBefore,
            flowDefinitionArn: self.flowDefinitionArn,
            maxResults: self.maxResults,
            nextToken: token,
            sortOrder: self.sortOrder
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listHumanLoopsPaginated`
/// to access the nested member `[SageMakerA2IRuntimeClientTypes.HumanLoopSummary]`
/// - Returns: `[SageMakerA2IRuntimeClientTypes.HumanLoopSummary]`
extension PaginatorSequence where Input == ListHumanLoopsInput, Output == ListHumanLoopsOutputResponse {
    public func humanLoopSummaries() async throws -> [SageMakerA2IRuntimeClientTypes.HumanLoopSummary] {
        return try await self.asyncCompactMap { item in item.humanLoopSummaries }
    }
}
