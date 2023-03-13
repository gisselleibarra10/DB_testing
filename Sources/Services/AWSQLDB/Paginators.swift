// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension QLDBClient {
    /// Paginate over `[ListJournalKinesisStreamsForLedgerOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListJournalKinesisStreamsForLedgerInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListJournalKinesisStreamsForLedgerOutputResponse`
    public func listJournalKinesisStreamsForLedgerPaginated(input: ListJournalKinesisStreamsForLedgerInput) -> ClientRuntime.PaginatorSequence<ListJournalKinesisStreamsForLedgerInput, ListJournalKinesisStreamsForLedgerOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListJournalKinesisStreamsForLedgerInput, ListJournalKinesisStreamsForLedgerOutputResponse>(input: input, inputKey: \ListJournalKinesisStreamsForLedgerInput.nextToken, outputKey: \ListJournalKinesisStreamsForLedgerOutputResponse.nextToken, paginationFunction: self.listJournalKinesisStreamsForLedger(input:))
    }
}

extension ListJournalKinesisStreamsForLedgerInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListJournalKinesisStreamsForLedgerInput {
        return ListJournalKinesisStreamsForLedgerInput(
            ledgerName: self.ledgerName,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension QLDBClient {
    /// Paginate over `[ListJournalS3ExportsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListJournalS3ExportsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListJournalS3ExportsOutputResponse`
    public func listJournalS3ExportsPaginated(input: ListJournalS3ExportsInput) -> ClientRuntime.PaginatorSequence<ListJournalS3ExportsInput, ListJournalS3ExportsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListJournalS3ExportsInput, ListJournalS3ExportsOutputResponse>(input: input, inputKey: \ListJournalS3ExportsInput.nextToken, outputKey: \ListJournalS3ExportsOutputResponse.nextToken, paginationFunction: self.listJournalS3Exports(input:))
    }
}

extension ListJournalS3ExportsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListJournalS3ExportsInput {
        return ListJournalS3ExportsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension QLDBClient {
    /// Paginate over `[ListJournalS3ExportsForLedgerOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListJournalS3ExportsForLedgerInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListJournalS3ExportsForLedgerOutputResponse`
    public func listJournalS3ExportsForLedgerPaginated(input: ListJournalS3ExportsForLedgerInput) -> ClientRuntime.PaginatorSequence<ListJournalS3ExportsForLedgerInput, ListJournalS3ExportsForLedgerOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListJournalS3ExportsForLedgerInput, ListJournalS3ExportsForLedgerOutputResponse>(input: input, inputKey: \ListJournalS3ExportsForLedgerInput.nextToken, outputKey: \ListJournalS3ExportsForLedgerOutputResponse.nextToken, paginationFunction: self.listJournalS3ExportsForLedger(input:))
    }
}

extension ListJournalS3ExportsForLedgerInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListJournalS3ExportsForLedgerInput {
        return ListJournalS3ExportsForLedgerInput(
            maxResults: self.maxResults,
            name: self.name,
            nextToken: token
        )}
}
extension QLDBClient {
    /// Paginate over `[ListLedgersOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListLedgersInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListLedgersOutputResponse`
    public func listLedgersPaginated(input: ListLedgersInput) -> ClientRuntime.PaginatorSequence<ListLedgersInput, ListLedgersOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListLedgersInput, ListLedgersOutputResponse>(input: input, inputKey: \ListLedgersInput.nextToken, outputKey: \ListLedgersOutputResponse.nextToken, paginationFunction: self.listLedgers(input:))
    }
}

extension ListLedgersInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListLedgersInput {
        return ListLedgersInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}
