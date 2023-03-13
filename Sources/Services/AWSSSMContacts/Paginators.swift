// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension SSMContactsClient {
    /// Paginate over `[ListContactChannelsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListContactChannelsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListContactChannelsOutputResponse`
    public func listContactChannelsPaginated(input: ListContactChannelsInput) -> ClientRuntime.PaginatorSequence<ListContactChannelsInput, ListContactChannelsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListContactChannelsInput, ListContactChannelsOutputResponse>(input: input, inputKey: \ListContactChannelsInput.nextToken, outputKey: \ListContactChannelsOutputResponse.nextToken, paginationFunction: self.listContactChannels(input:))
    }
}

extension ListContactChannelsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListContactChannelsInput {
        return ListContactChannelsInput(
            contactId: self.contactId,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListContactChannelsInput, Output == ListContactChannelsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listContactChannelsPaginated`
    /// to access the nested member `[SSMContactsClientTypes.ContactChannel]`
    /// - Returns: `[SSMContactsClientTypes.ContactChannel]`
    public func contactChannels() async throws -> [SSMContactsClientTypes.ContactChannel] {
        return try await self.asyncCompactMap { item in item.contactChannels }
    }
}
extension SSMContactsClient {
    /// Paginate over `[ListContactsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListContactsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListContactsOutputResponse`
    public func listContactsPaginated(input: ListContactsInput) -> ClientRuntime.PaginatorSequence<ListContactsInput, ListContactsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListContactsInput, ListContactsOutputResponse>(input: input, inputKey: \ListContactsInput.nextToken, outputKey: \ListContactsOutputResponse.nextToken, paginationFunction: self.listContacts(input:))
    }
}

extension ListContactsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListContactsInput {
        return ListContactsInput(
            aliasPrefix: self.aliasPrefix,
            maxResults: self.maxResults,
            nextToken: token,
            type: self.type
        )}
}

extension PaginatorSequence where Input == ListContactsInput, Output == ListContactsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listContactsPaginated`
    /// to access the nested member `[SSMContactsClientTypes.Contact]`
    /// - Returns: `[SSMContactsClientTypes.Contact]`
    public func contacts() async throws -> [SSMContactsClientTypes.Contact] {
        return try await self.asyncCompactMap { item in item.contacts }
    }
}
extension SSMContactsClient {
    /// Paginate over `[ListEngagementsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListEngagementsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListEngagementsOutputResponse`
    public func listEngagementsPaginated(input: ListEngagementsInput) -> ClientRuntime.PaginatorSequence<ListEngagementsInput, ListEngagementsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListEngagementsInput, ListEngagementsOutputResponse>(input: input, inputKey: \ListEngagementsInput.nextToken, outputKey: \ListEngagementsOutputResponse.nextToken, paginationFunction: self.listEngagements(input:))
    }
}

extension ListEngagementsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListEngagementsInput {
        return ListEngagementsInput(
            incidentId: self.incidentId,
            maxResults: self.maxResults,
            nextToken: token,
            timeRangeValue: self.timeRangeValue
        )}
}

extension PaginatorSequence where Input == ListEngagementsInput, Output == ListEngagementsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listEngagementsPaginated`
    /// to access the nested member `[SSMContactsClientTypes.Engagement]`
    /// - Returns: `[SSMContactsClientTypes.Engagement]`
    public func engagements() async throws -> [SSMContactsClientTypes.Engagement] {
        return try await self.asyncCompactMap { item in item.engagements }
    }
}
extension SSMContactsClient {
    /// Paginate over `[ListPageReceiptsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListPageReceiptsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListPageReceiptsOutputResponse`
    public func listPageReceiptsPaginated(input: ListPageReceiptsInput) -> ClientRuntime.PaginatorSequence<ListPageReceiptsInput, ListPageReceiptsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListPageReceiptsInput, ListPageReceiptsOutputResponse>(input: input, inputKey: \ListPageReceiptsInput.nextToken, outputKey: \ListPageReceiptsOutputResponse.nextToken, paginationFunction: self.listPageReceipts(input:))
    }
}

extension ListPageReceiptsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListPageReceiptsInput {
        return ListPageReceiptsInput(
            maxResults: self.maxResults,
            nextToken: token,
            pageId: self.pageId
        )}
}

extension PaginatorSequence where Input == ListPageReceiptsInput, Output == ListPageReceiptsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listPageReceiptsPaginated`
    /// to access the nested member `[SSMContactsClientTypes.Receipt]`
    /// - Returns: `[SSMContactsClientTypes.Receipt]`
    public func receipts() async throws -> [SSMContactsClientTypes.Receipt] {
        return try await self.asyncCompactMap { item in item.receipts }
    }
}
extension SSMContactsClient {
    /// Paginate over `[ListPagesByContactOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListPagesByContactInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListPagesByContactOutputResponse`
    public func listPagesByContactPaginated(input: ListPagesByContactInput) -> ClientRuntime.PaginatorSequence<ListPagesByContactInput, ListPagesByContactOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListPagesByContactInput, ListPagesByContactOutputResponse>(input: input, inputKey: \ListPagesByContactInput.nextToken, outputKey: \ListPagesByContactOutputResponse.nextToken, paginationFunction: self.listPagesByContact(input:))
    }
}

extension ListPagesByContactInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListPagesByContactInput {
        return ListPagesByContactInput(
            contactId: self.contactId,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListPagesByContactInput, Output == ListPagesByContactOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listPagesByContactPaginated`
    /// to access the nested member `[SSMContactsClientTypes.Page]`
    /// - Returns: `[SSMContactsClientTypes.Page]`
    public func pages() async throws -> [SSMContactsClientTypes.Page] {
        return try await self.asyncCompactMap { item in item.pages }
    }
}
extension SSMContactsClient {
    /// Paginate over `[ListPagesByEngagementOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListPagesByEngagementInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListPagesByEngagementOutputResponse`
    public func listPagesByEngagementPaginated(input: ListPagesByEngagementInput) -> ClientRuntime.PaginatorSequence<ListPagesByEngagementInput, ListPagesByEngagementOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListPagesByEngagementInput, ListPagesByEngagementOutputResponse>(input: input, inputKey: \ListPagesByEngagementInput.nextToken, outputKey: \ListPagesByEngagementOutputResponse.nextToken, paginationFunction: self.listPagesByEngagement(input:))
    }
}

extension ListPagesByEngagementInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListPagesByEngagementInput {
        return ListPagesByEngagementInput(
            engagementId: self.engagementId,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListPagesByEngagementInput, Output == ListPagesByEngagementOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listPagesByEngagementPaginated`
    /// to access the nested member `[SSMContactsClientTypes.Page]`
    /// - Returns: `[SSMContactsClientTypes.Page]`
    public func pages() async throws -> [SSMContactsClientTypes.Page] {
        return try await self.asyncCompactMap { item in item.pages }
    }
}
