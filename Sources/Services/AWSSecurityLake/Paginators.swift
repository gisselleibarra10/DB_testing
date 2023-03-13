// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension SecurityLakeClient {
    /// Paginate over `[GetDatalakeStatusOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[GetDatalakeStatusInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `GetDatalakeStatusOutputResponse`
    public func getDatalakeStatusPaginated(input: GetDatalakeStatusInput) -> ClientRuntime.PaginatorSequence<GetDatalakeStatusInput, GetDatalakeStatusOutputResponse> {
        return ClientRuntime.PaginatorSequence<GetDatalakeStatusInput, GetDatalakeStatusOutputResponse>(input: input, inputKey: \GetDatalakeStatusInput.nextToken, outputKey: \GetDatalakeStatusOutputResponse.nextToken, paginationFunction: self.getDatalakeStatus(input:))
    }
}

extension GetDatalakeStatusInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetDatalakeStatusInput {
        return GetDatalakeStatusInput(
            accountSet: self.accountSet,
            maxAccountResults: self.maxAccountResults,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == GetDatalakeStatusInput, Output == GetDatalakeStatusOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `getDatalakeStatusPaginated`
    /// to access the nested member `[SecurityLakeClientTypes.AccountSources]`
    /// - Returns: `[SecurityLakeClientTypes.AccountSources]`
    public func accountSourcesList() async throws -> [SecurityLakeClientTypes.AccountSources] {
        return try await self.asyncCompactMap { item in item.accountSourcesList }
    }
}
extension SecurityLakeClient {
    /// Paginate over `[ListDatalakeExceptionsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListDatalakeExceptionsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListDatalakeExceptionsOutputResponse`
    public func listDatalakeExceptionsPaginated(input: ListDatalakeExceptionsInput) -> ClientRuntime.PaginatorSequence<ListDatalakeExceptionsInput, ListDatalakeExceptionsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListDatalakeExceptionsInput, ListDatalakeExceptionsOutputResponse>(input: input, inputKey: \ListDatalakeExceptionsInput.nextToken, outputKey: \ListDatalakeExceptionsOutputResponse.nextToken, paginationFunction: self.listDatalakeExceptions(input:))
    }
}

extension ListDatalakeExceptionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListDatalakeExceptionsInput {
        return ListDatalakeExceptionsInput(
            maxFailures: self.maxFailures,
            nextToken: token,
            regionSet: self.regionSet
        )}
}

extension PaginatorSequence where Input == ListDatalakeExceptionsInput, Output == ListDatalakeExceptionsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listDatalakeExceptionsPaginated`
    /// to access the nested member `[SecurityLakeClientTypes.FailuresResponse]`
    /// - Returns: `[SecurityLakeClientTypes.FailuresResponse]`
    public func nonRetryableFailures() async throws -> [SecurityLakeClientTypes.FailuresResponse] {
        return try await self.asyncCompactMap { item in item.nonRetryableFailures }
    }
}
extension SecurityLakeClient {
    /// Paginate over `[ListLogSourcesOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListLogSourcesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListLogSourcesOutputResponse`
    public func listLogSourcesPaginated(input: ListLogSourcesInput) -> ClientRuntime.PaginatorSequence<ListLogSourcesInput, ListLogSourcesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListLogSourcesInput, ListLogSourcesOutputResponse>(input: input, inputKey: \ListLogSourcesInput.nextToken, outputKey: \ListLogSourcesOutputResponse.nextToken, paginationFunction: self.listLogSources(input:))
    }
}

extension ListLogSourcesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListLogSourcesInput {
        return ListLogSourcesInput(
            inputOrder: self.inputOrder,
            listAllDimensions: self.listAllDimensions,
            listSingleDimension: self.listSingleDimension,
            listTwoDimensions: self.listTwoDimensions,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListLogSourcesInput, Output == ListLogSourcesOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listLogSourcesPaginated`
    /// to access the nested member `[[Swift.String:[Swift.String:[Swift.String]]]]`
    /// - Returns: `[[Swift.String:[Swift.String:[Swift.String]]]]`
    public func regionSourceTypesAccountsList() async throws -> [[Swift.String:[Swift.String:[Swift.String]]]] {
        return try await self.asyncCompactMap { item in item.regionSourceTypesAccountsList }
    }
}
extension SecurityLakeClient {
    /// Paginate over `[ListSubscribersOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListSubscribersInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListSubscribersOutputResponse`
    public func listSubscribersPaginated(input: ListSubscribersInput) -> ClientRuntime.PaginatorSequence<ListSubscribersInput, ListSubscribersOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListSubscribersInput, ListSubscribersOutputResponse>(input: input, inputKey: \ListSubscribersInput.nextToken, outputKey: \ListSubscribersOutputResponse.nextToken, paginationFunction: self.listSubscribers(input:))
    }
}

extension ListSubscribersInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListSubscribersInput {
        return ListSubscribersInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListSubscribersInput, Output == ListSubscribersOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listSubscribersPaginated`
    /// to access the nested member `[SecurityLakeClientTypes.SubscriberResource]`
    /// - Returns: `[SecurityLakeClientTypes.SubscriberResource]`
    public func subscribers() async throws -> [SecurityLakeClientTypes.SubscriberResource] {
        return try await self.asyncCompactMap { item in item.subscribers }
    }
}
