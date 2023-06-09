// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ApplicationDiscoveryClient {
    /// Paginate over `[DescribeContinuousExportsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeContinuousExportsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeContinuousExportsOutputResponse`
    public func describeContinuousExportsPaginated(input: DescribeContinuousExportsInput) -> ClientRuntime.PaginatorSequence<DescribeContinuousExportsInput, DescribeContinuousExportsOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeContinuousExportsInput, DescribeContinuousExportsOutputResponse>(input: input, inputKey: \DescribeContinuousExportsInput.nextToken, outputKey: \DescribeContinuousExportsOutputResponse.nextToken, paginationFunction: self.describeContinuousExports(input:))
    }
}

extension DescribeContinuousExportsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeContinuousExportsInput {
        return DescribeContinuousExportsInput(
            exportIds: self.exportIds,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension ApplicationDiscoveryClient {
    /// Paginate over `[DescribeImportTasksOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeImportTasksInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeImportTasksOutputResponse`
    public func describeImportTasksPaginated(input: DescribeImportTasksInput) -> ClientRuntime.PaginatorSequence<DescribeImportTasksInput, DescribeImportTasksOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeImportTasksInput, DescribeImportTasksOutputResponse>(input: input, inputKey: \DescribeImportTasksInput.nextToken, outputKey: \DescribeImportTasksOutputResponse.nextToken, paginationFunction: self.describeImportTasks(input:))
    }
}

extension DescribeImportTasksInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeImportTasksInput {
        return DescribeImportTasksInput(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
