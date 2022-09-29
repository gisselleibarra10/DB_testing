// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime


/// Paginate over `[ListSlackChannelConfigurationsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListSlackChannelConfigurationsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListSlackChannelConfigurationsOutputResponse`
extension SupportAppClient {
    public func listSlackChannelConfigurationsPaginated(input: ListSlackChannelConfigurationsInput) -> ClientRuntime.PaginatorSequence<ListSlackChannelConfigurationsInput, ListSlackChannelConfigurationsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListSlackChannelConfigurationsInput, ListSlackChannelConfigurationsOutputResponse>(input: input, inputKey: \ListSlackChannelConfigurationsInput.nextToken, outputKey: \ListSlackChannelConfigurationsOutputResponse.nextToken, paginationFunction: self.listSlackChannelConfigurations(input:))
    }
}

extension ListSlackChannelConfigurationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListSlackChannelConfigurationsInput {
        return ListSlackChannelConfigurationsInput(
            nextToken: token
        )}
}

/// Paginate over `[ListSlackWorkspaceConfigurationsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListSlackWorkspaceConfigurationsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListSlackWorkspaceConfigurationsOutputResponse`
extension SupportAppClient {
    public func listSlackWorkspaceConfigurationsPaginated(input: ListSlackWorkspaceConfigurationsInput) -> ClientRuntime.PaginatorSequence<ListSlackWorkspaceConfigurationsInput, ListSlackWorkspaceConfigurationsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListSlackWorkspaceConfigurationsInput, ListSlackWorkspaceConfigurationsOutputResponse>(input: input, inputKey: \ListSlackWorkspaceConfigurationsInput.nextToken, outputKey: \ListSlackWorkspaceConfigurationsOutputResponse.nextToken, paginationFunction: self.listSlackWorkspaceConfigurations(input:))
    }
}

extension ListSlackWorkspaceConfigurationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListSlackWorkspaceConfigurationsInput {
        return ListSlackWorkspaceConfigurationsInput(
            nextToken: token
        )}
}
