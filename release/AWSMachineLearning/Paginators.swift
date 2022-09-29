// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime


/// Paginate over `[DescribeBatchPredictionsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[DescribeBatchPredictionsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `DescribeBatchPredictionsOutputResponse`
extension MachineLearningClient {
    public func describeBatchPredictionsPaginated(input: DescribeBatchPredictionsInput) -> ClientRuntime.PaginatorSequence<DescribeBatchPredictionsInput, DescribeBatchPredictionsOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeBatchPredictionsInput, DescribeBatchPredictionsOutputResponse>(input: input, inputKey: \DescribeBatchPredictionsInput.nextToken, outputKey: \DescribeBatchPredictionsOutputResponse.nextToken, paginationFunction: self.describeBatchPredictions(input:))
    }
}

extension DescribeBatchPredictionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeBatchPredictionsInput {
        return DescribeBatchPredictionsInput(
            eQ: self.eQ,
            filterVariable: self.filterVariable,
            gE: self.gE,
            gT: self.gT,
            lE: self.lE,
            lT: self.lT,
            limit: self.limit,
            nE: self.nE,
            nextToken: token,
            prefix: self.prefix,
            sortOrder: self.sortOrder
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `describeBatchPredictionsPaginated`
/// to access the nested member `[MachineLearningClientTypes.BatchPrediction]`
/// - Returns: `[MachineLearningClientTypes.BatchPrediction]`
extension PaginatorSequence where Input == DescribeBatchPredictionsInput, Output == DescribeBatchPredictionsOutputResponse {
    public func results() async throws -> [MachineLearningClientTypes.BatchPrediction] {
        return try await self.asyncCompactMap { item in item.results }
    }
}

/// Paginate over `[DescribeDataSourcesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[DescribeDataSourcesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `DescribeDataSourcesOutputResponse`
extension MachineLearningClient {
    public func describeDataSourcesPaginated(input: DescribeDataSourcesInput) -> ClientRuntime.PaginatorSequence<DescribeDataSourcesInput, DescribeDataSourcesOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeDataSourcesInput, DescribeDataSourcesOutputResponse>(input: input, inputKey: \DescribeDataSourcesInput.nextToken, outputKey: \DescribeDataSourcesOutputResponse.nextToken, paginationFunction: self.describeDataSources(input:))
    }
}

extension DescribeDataSourcesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeDataSourcesInput {
        return DescribeDataSourcesInput(
            eQ: self.eQ,
            filterVariable: self.filterVariable,
            gE: self.gE,
            gT: self.gT,
            lE: self.lE,
            lT: self.lT,
            limit: self.limit,
            nE: self.nE,
            nextToken: token,
            prefix: self.prefix,
            sortOrder: self.sortOrder
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `describeDataSourcesPaginated`
/// to access the nested member `[MachineLearningClientTypes.DataSource]`
/// - Returns: `[MachineLearningClientTypes.DataSource]`
extension PaginatorSequence where Input == DescribeDataSourcesInput, Output == DescribeDataSourcesOutputResponse {
    public func results() async throws -> [MachineLearningClientTypes.DataSource] {
        return try await self.asyncCompactMap { item in item.results }
    }
}

/// Paginate over `[DescribeEvaluationsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[DescribeEvaluationsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `DescribeEvaluationsOutputResponse`
extension MachineLearningClient {
    public func describeEvaluationsPaginated(input: DescribeEvaluationsInput) -> ClientRuntime.PaginatorSequence<DescribeEvaluationsInput, DescribeEvaluationsOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeEvaluationsInput, DescribeEvaluationsOutputResponse>(input: input, inputKey: \DescribeEvaluationsInput.nextToken, outputKey: \DescribeEvaluationsOutputResponse.nextToken, paginationFunction: self.describeEvaluations(input:))
    }
}

extension DescribeEvaluationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeEvaluationsInput {
        return DescribeEvaluationsInput(
            eQ: self.eQ,
            filterVariable: self.filterVariable,
            gE: self.gE,
            gT: self.gT,
            lE: self.lE,
            lT: self.lT,
            limit: self.limit,
            nE: self.nE,
            nextToken: token,
            prefix: self.prefix,
            sortOrder: self.sortOrder
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `describeEvaluationsPaginated`
/// to access the nested member `[MachineLearningClientTypes.Evaluation]`
/// - Returns: `[MachineLearningClientTypes.Evaluation]`
extension PaginatorSequence where Input == DescribeEvaluationsInput, Output == DescribeEvaluationsOutputResponse {
    public func results() async throws -> [MachineLearningClientTypes.Evaluation] {
        return try await self.asyncCompactMap { item in item.results }
    }
}

/// Paginate over `[DescribeMLModelsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[DescribeMLModelsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `DescribeMLModelsOutputResponse`
extension MachineLearningClient {
    public func describeMLModelsPaginated(input: DescribeMLModelsInput) -> ClientRuntime.PaginatorSequence<DescribeMLModelsInput, DescribeMLModelsOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeMLModelsInput, DescribeMLModelsOutputResponse>(input: input, inputKey: \DescribeMLModelsInput.nextToken, outputKey: \DescribeMLModelsOutputResponse.nextToken, paginationFunction: self.describeMLModels(input:))
    }
}

extension DescribeMLModelsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeMLModelsInput {
        return DescribeMLModelsInput(
            eQ: self.eQ,
            filterVariable: self.filterVariable,
            gE: self.gE,
            gT: self.gT,
            lE: self.lE,
            lT: self.lT,
            limit: self.limit,
            nE: self.nE,
            nextToken: token,
            prefix: self.prefix,
            sortOrder: self.sortOrder
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `describeMLModelsPaginated`
/// to access the nested member `[MachineLearningClientTypes.MLModel]`
/// - Returns: `[MachineLearningClientTypes.MLModel]`
extension PaginatorSequence where Input == DescribeMLModelsInput, Output == DescribeMLModelsOutputResponse {
    public func results() async throws -> [MachineLearningClientTypes.MLModel] {
        return try await self.asyncCompactMap { item in item.results }
    }
}
