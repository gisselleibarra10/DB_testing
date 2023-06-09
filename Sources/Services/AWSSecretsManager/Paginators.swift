// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension SecretsManagerClient {
    /// Paginate over `[ListSecretsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListSecretsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListSecretsOutputResponse`
    public func listSecretsPaginated(input: ListSecretsInput) -> ClientRuntime.PaginatorSequence<ListSecretsInput, ListSecretsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListSecretsInput, ListSecretsOutputResponse>(input: input, inputKey: \ListSecretsInput.nextToken, outputKey: \ListSecretsOutputResponse.nextToken, paginationFunction: self.listSecrets(input:))
    }
}

extension ListSecretsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListSecretsInput {
        return ListSecretsInput(
            filters: self.filters,
            includePlannedDeletion: self.includePlannedDeletion,
            maxResults: self.maxResults,
            nextToken: token,
            sortOrder: self.sortOrder
        )}
}
extension SecretsManagerClient {
    /// Paginate over `[ListSecretVersionIdsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListSecretVersionIdsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListSecretVersionIdsOutputResponse`
    public func listSecretVersionIdsPaginated(input: ListSecretVersionIdsInput) -> ClientRuntime.PaginatorSequence<ListSecretVersionIdsInput, ListSecretVersionIdsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListSecretVersionIdsInput, ListSecretVersionIdsOutputResponse>(input: input, inputKey: \ListSecretVersionIdsInput.nextToken, outputKey: \ListSecretVersionIdsOutputResponse.nextToken, paginationFunction: self.listSecretVersionIds(input:))
    }
}

extension ListSecretVersionIdsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListSecretVersionIdsInput {
        return ListSecretVersionIdsInput(
            includeDeprecated: self.includeDeprecated,
            maxResults: self.maxResults,
            nextToken: token,
            secretId: self.secretId
        )}
}
