// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension LookoutMetricsClient {
    /// Paginate over `[DescribeAnomalyDetectionExecutionsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeAnomalyDetectionExecutionsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeAnomalyDetectionExecutionsOutputResponse`
    public func describeAnomalyDetectionExecutionsPaginated(input: DescribeAnomalyDetectionExecutionsInput) -> ClientRuntime.PaginatorSequence<DescribeAnomalyDetectionExecutionsInput, DescribeAnomalyDetectionExecutionsOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeAnomalyDetectionExecutionsInput, DescribeAnomalyDetectionExecutionsOutputResponse>(input: input, inputKey: \DescribeAnomalyDetectionExecutionsInput.nextToken, outputKey: \DescribeAnomalyDetectionExecutionsOutputResponse.nextToken, paginationFunction: self.describeAnomalyDetectionExecutions(input:))
    }
}

extension DescribeAnomalyDetectionExecutionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeAnomalyDetectionExecutionsInput {
        return DescribeAnomalyDetectionExecutionsInput(
            anomalyDetectorArn: self.anomalyDetectorArn,
            maxResults: self.maxResults,
            nextToken: token,
            timestamp: self.timestamp
        )}
}
extension LookoutMetricsClient {
    /// Paginate over `[GetFeedbackOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[GetFeedbackInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `GetFeedbackOutputResponse`
    public func getFeedbackPaginated(input: GetFeedbackInput) -> ClientRuntime.PaginatorSequence<GetFeedbackInput, GetFeedbackOutputResponse> {
        return ClientRuntime.PaginatorSequence<GetFeedbackInput, GetFeedbackOutputResponse>(input: input, inputKey: \GetFeedbackInput.nextToken, outputKey: \GetFeedbackOutputResponse.nextToken, paginationFunction: self.getFeedback(input:))
    }
}

extension GetFeedbackInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetFeedbackInput {
        return GetFeedbackInput(
            anomalyDetectorArn: self.anomalyDetectorArn,
            anomalyGroupTimeSeriesFeedback: self.anomalyGroupTimeSeriesFeedback,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension LookoutMetricsClient {
    /// Paginate over `[ListAlertsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListAlertsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListAlertsOutputResponse`
    public func listAlertsPaginated(input: ListAlertsInput) -> ClientRuntime.PaginatorSequence<ListAlertsInput, ListAlertsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListAlertsInput, ListAlertsOutputResponse>(input: input, inputKey: \ListAlertsInput.nextToken, outputKey: \ListAlertsOutputResponse.nextToken, paginationFunction: self.listAlerts(input:))
    }
}

extension ListAlertsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListAlertsInput {
        return ListAlertsInput(
            anomalyDetectorArn: self.anomalyDetectorArn,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension LookoutMetricsClient {
    /// Paginate over `[ListAnomalyDetectorsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListAnomalyDetectorsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListAnomalyDetectorsOutputResponse`
    public func listAnomalyDetectorsPaginated(input: ListAnomalyDetectorsInput) -> ClientRuntime.PaginatorSequence<ListAnomalyDetectorsInput, ListAnomalyDetectorsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListAnomalyDetectorsInput, ListAnomalyDetectorsOutputResponse>(input: input, inputKey: \ListAnomalyDetectorsInput.nextToken, outputKey: \ListAnomalyDetectorsOutputResponse.nextToken, paginationFunction: self.listAnomalyDetectors(input:))
    }
}

extension ListAnomalyDetectorsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListAnomalyDetectorsInput {
        return ListAnomalyDetectorsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension LookoutMetricsClient {
    /// Paginate over `[ListAnomalyGroupRelatedMetricsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListAnomalyGroupRelatedMetricsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListAnomalyGroupRelatedMetricsOutputResponse`
    public func listAnomalyGroupRelatedMetricsPaginated(input: ListAnomalyGroupRelatedMetricsInput) -> ClientRuntime.PaginatorSequence<ListAnomalyGroupRelatedMetricsInput, ListAnomalyGroupRelatedMetricsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListAnomalyGroupRelatedMetricsInput, ListAnomalyGroupRelatedMetricsOutputResponse>(input: input, inputKey: \ListAnomalyGroupRelatedMetricsInput.nextToken, outputKey: \ListAnomalyGroupRelatedMetricsOutputResponse.nextToken, paginationFunction: self.listAnomalyGroupRelatedMetrics(input:))
    }
}

extension ListAnomalyGroupRelatedMetricsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListAnomalyGroupRelatedMetricsInput {
        return ListAnomalyGroupRelatedMetricsInput(
            anomalyDetectorArn: self.anomalyDetectorArn,
            anomalyGroupId: self.anomalyGroupId,
            maxResults: self.maxResults,
            nextToken: token,
            relationshipTypeFilter: self.relationshipTypeFilter
        )}
}
extension LookoutMetricsClient {
    /// Paginate over `[ListAnomalyGroupSummariesOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListAnomalyGroupSummariesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListAnomalyGroupSummariesOutputResponse`
    public func listAnomalyGroupSummariesPaginated(input: ListAnomalyGroupSummariesInput) -> ClientRuntime.PaginatorSequence<ListAnomalyGroupSummariesInput, ListAnomalyGroupSummariesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListAnomalyGroupSummariesInput, ListAnomalyGroupSummariesOutputResponse>(input: input, inputKey: \ListAnomalyGroupSummariesInput.nextToken, outputKey: \ListAnomalyGroupSummariesOutputResponse.nextToken, paginationFunction: self.listAnomalyGroupSummaries(input:))
    }
}

extension ListAnomalyGroupSummariesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListAnomalyGroupSummariesInput {
        return ListAnomalyGroupSummariesInput(
            anomalyDetectorArn: self.anomalyDetectorArn,
            maxResults: self.maxResults,
            nextToken: token,
            sensitivityThreshold: self.sensitivityThreshold
        )}
}
extension LookoutMetricsClient {
    /// Paginate over `[ListAnomalyGroupTimeSeriesOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListAnomalyGroupTimeSeriesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListAnomalyGroupTimeSeriesOutputResponse`
    public func listAnomalyGroupTimeSeriesPaginated(input: ListAnomalyGroupTimeSeriesInput) -> ClientRuntime.PaginatorSequence<ListAnomalyGroupTimeSeriesInput, ListAnomalyGroupTimeSeriesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListAnomalyGroupTimeSeriesInput, ListAnomalyGroupTimeSeriesOutputResponse>(input: input, inputKey: \ListAnomalyGroupTimeSeriesInput.nextToken, outputKey: \ListAnomalyGroupTimeSeriesOutputResponse.nextToken, paginationFunction: self.listAnomalyGroupTimeSeries(input:))
    }
}

extension ListAnomalyGroupTimeSeriesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListAnomalyGroupTimeSeriesInput {
        return ListAnomalyGroupTimeSeriesInput(
            anomalyDetectorArn: self.anomalyDetectorArn,
            anomalyGroupId: self.anomalyGroupId,
            maxResults: self.maxResults,
            metricName: self.metricName,
            nextToken: token
        )}
}
extension LookoutMetricsClient {
    /// Paginate over `[ListMetricSetsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListMetricSetsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListMetricSetsOutputResponse`
    public func listMetricSetsPaginated(input: ListMetricSetsInput) -> ClientRuntime.PaginatorSequence<ListMetricSetsInput, ListMetricSetsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListMetricSetsInput, ListMetricSetsOutputResponse>(input: input, inputKey: \ListMetricSetsInput.nextToken, outputKey: \ListMetricSetsOutputResponse.nextToken, paginationFunction: self.listMetricSets(input:))
    }
}

extension ListMetricSetsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListMetricSetsInput {
        return ListMetricSetsInput(
            anomalyDetectorArn: self.anomalyDetectorArn,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
