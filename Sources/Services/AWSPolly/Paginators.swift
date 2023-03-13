// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension PollyClient {
    /// Paginate over `[ListSpeechSynthesisTasksOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListSpeechSynthesisTasksInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListSpeechSynthesisTasksOutputResponse`
    public func listSpeechSynthesisTasksPaginated(input: ListSpeechSynthesisTasksInput) -> ClientRuntime.PaginatorSequence<ListSpeechSynthesisTasksInput, ListSpeechSynthesisTasksOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListSpeechSynthesisTasksInput, ListSpeechSynthesisTasksOutputResponse>(input: input, inputKey: \ListSpeechSynthesisTasksInput.nextToken, outputKey: \ListSpeechSynthesisTasksOutputResponse.nextToken, paginationFunction: self.listSpeechSynthesisTasks(input:))
    }
}

extension ListSpeechSynthesisTasksInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListSpeechSynthesisTasksInput {
        return ListSpeechSynthesisTasksInput(
            maxResults: self.maxResults,
            nextToken: token,
            status: self.status
        )}
}
