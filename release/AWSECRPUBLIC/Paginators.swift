// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime


/// Paginate over `[DescribeImagesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[DescribeImagesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `DescribeImagesOutputResponse`
extension EcrPublicClient {
    public func describeImagesPaginated(input: DescribeImagesInput) -> ClientRuntime.PaginatorSequence<DescribeImagesInput, DescribeImagesOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeImagesInput, DescribeImagesOutputResponse>(input: input, inputKey: \DescribeImagesInput.nextToken, outputKey: \DescribeImagesOutputResponse.nextToken, paginationFunction: self.describeImages(input:))
    }
}

extension DescribeImagesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeImagesInput {
        return DescribeImagesInput(
            imageIds: self.imageIds,
            maxResults: self.maxResults,
            nextToken: token,
            registryId: self.registryId,
            repositoryName: self.repositoryName
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `describeImagesPaginated`
/// to access the nested member `[EcrPublicClientTypes.ImageDetail]`
/// - Returns: `[EcrPublicClientTypes.ImageDetail]`
extension PaginatorSequence where Input == DescribeImagesInput, Output == DescribeImagesOutputResponse {
    public func imageDetails() async throws -> [EcrPublicClientTypes.ImageDetail] {
        return try await self.asyncCompactMap { item in item.imageDetails }
    }
}

/// Paginate over `[DescribeImageTagsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[DescribeImageTagsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `DescribeImageTagsOutputResponse`
extension EcrPublicClient {
    public func describeImageTagsPaginated(input: DescribeImageTagsInput) -> ClientRuntime.PaginatorSequence<DescribeImageTagsInput, DescribeImageTagsOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeImageTagsInput, DescribeImageTagsOutputResponse>(input: input, inputKey: \DescribeImageTagsInput.nextToken, outputKey: \DescribeImageTagsOutputResponse.nextToken, paginationFunction: self.describeImageTags(input:))
    }
}

extension DescribeImageTagsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeImageTagsInput {
        return DescribeImageTagsInput(
            maxResults: self.maxResults,
            nextToken: token,
            registryId: self.registryId,
            repositoryName: self.repositoryName
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `describeImageTagsPaginated`
/// to access the nested member `[EcrPublicClientTypes.ImageTagDetail]`
/// - Returns: `[EcrPublicClientTypes.ImageTagDetail]`
extension PaginatorSequence where Input == DescribeImageTagsInput, Output == DescribeImageTagsOutputResponse {
    public func imageTagDetails() async throws -> [EcrPublicClientTypes.ImageTagDetail] {
        return try await self.asyncCompactMap { item in item.imageTagDetails }
    }
}

/// Paginate over `[DescribeRegistriesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[DescribeRegistriesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `DescribeRegistriesOutputResponse`
extension EcrPublicClient {
    public func describeRegistriesPaginated(input: DescribeRegistriesInput) -> ClientRuntime.PaginatorSequence<DescribeRegistriesInput, DescribeRegistriesOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeRegistriesInput, DescribeRegistriesOutputResponse>(input: input, inputKey: \DescribeRegistriesInput.nextToken, outputKey: \DescribeRegistriesOutputResponse.nextToken, paginationFunction: self.describeRegistries(input:))
    }
}

extension DescribeRegistriesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeRegistriesInput {
        return DescribeRegistriesInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `describeRegistriesPaginated`
/// to access the nested member `[EcrPublicClientTypes.Registry]`
/// - Returns: `[EcrPublicClientTypes.Registry]`
extension PaginatorSequence where Input == DescribeRegistriesInput, Output == DescribeRegistriesOutputResponse {
    public func registries() async throws -> [EcrPublicClientTypes.Registry] {
        return try await self.asyncCompactMap { item in item.registries }
    }
}

/// Paginate over `[DescribeRepositoriesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[DescribeRepositoriesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `DescribeRepositoriesOutputResponse`
extension EcrPublicClient {
    public func describeRepositoriesPaginated(input: DescribeRepositoriesInput) -> ClientRuntime.PaginatorSequence<DescribeRepositoriesInput, DescribeRepositoriesOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeRepositoriesInput, DescribeRepositoriesOutputResponse>(input: input, inputKey: \DescribeRepositoriesInput.nextToken, outputKey: \DescribeRepositoriesOutputResponse.nextToken, paginationFunction: self.describeRepositories(input:))
    }
}

extension DescribeRepositoriesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeRepositoriesInput {
        return DescribeRepositoriesInput(
            maxResults: self.maxResults,
            nextToken: token,
            registryId: self.registryId,
            repositoryNames: self.repositoryNames
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `describeRepositoriesPaginated`
/// to access the nested member `[EcrPublicClientTypes.Repository]`
/// - Returns: `[EcrPublicClientTypes.Repository]`
extension PaginatorSequence where Input == DescribeRepositoriesInput, Output == DescribeRepositoriesOutputResponse {
    public func repositories() async throws -> [EcrPublicClientTypes.Repository] {
        return try await self.asyncCompactMap { item in item.repositories }
    }
}