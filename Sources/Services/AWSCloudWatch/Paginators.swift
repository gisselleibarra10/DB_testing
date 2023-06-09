// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension CloudWatchClient {
    /// Paginate over `[DescribeAlarmHistoryOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeAlarmHistoryInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeAlarmHistoryOutputResponse`
    public func describeAlarmHistoryPaginated(input: DescribeAlarmHistoryInput) -> ClientRuntime.PaginatorSequence<DescribeAlarmHistoryInput, DescribeAlarmHistoryOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeAlarmHistoryInput, DescribeAlarmHistoryOutputResponse>(input: input, inputKey: \DescribeAlarmHistoryInput.nextToken, outputKey: \DescribeAlarmHistoryOutputResponse.nextToken, paginationFunction: self.describeAlarmHistory(input:))
    }
}

extension DescribeAlarmHistoryInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeAlarmHistoryInput {
        return DescribeAlarmHistoryInput(
            alarmName: self.alarmName,
            alarmTypes: self.alarmTypes,
            endDate: self.endDate,
            historyItemType: self.historyItemType,
            maxRecords: self.maxRecords,
            nextToken: token,
            scanBy: self.scanBy,
            startDate: self.startDate
        )}
}

extension PaginatorSequence where Input == DescribeAlarmHistoryInput, Output == DescribeAlarmHistoryOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `describeAlarmHistoryPaginated`
    /// to access the nested member `[CloudWatchClientTypes.AlarmHistoryItem]`
    /// - Returns: `[CloudWatchClientTypes.AlarmHistoryItem]`
    public func alarmHistoryItems() async throws -> [CloudWatchClientTypes.AlarmHistoryItem] {
        return try await self.asyncCompactMap { item in item.alarmHistoryItems }
    }
}
extension CloudWatchClient {
    /// Paginate over `[DescribeAlarmsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeAlarmsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeAlarmsOutputResponse`
    public func describeAlarmsPaginated(input: DescribeAlarmsInput) -> ClientRuntime.PaginatorSequence<DescribeAlarmsInput, DescribeAlarmsOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeAlarmsInput, DescribeAlarmsOutputResponse>(input: input, inputKey: \DescribeAlarmsInput.nextToken, outputKey: \DescribeAlarmsOutputResponse.nextToken, paginationFunction: self.describeAlarms(input:))
    }
}

extension DescribeAlarmsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeAlarmsInput {
        return DescribeAlarmsInput(
            actionPrefix: self.actionPrefix,
            alarmNamePrefix: self.alarmNamePrefix,
            alarmNames: self.alarmNames,
            alarmTypes: self.alarmTypes,
            childrenOfAlarmName: self.childrenOfAlarmName,
            maxRecords: self.maxRecords,
            nextToken: token,
            parentsOfAlarmName: self.parentsOfAlarmName,
            stateValue: self.stateValue
        )}
}
extension CloudWatchClient {
    /// Paginate over `[DescribeAnomalyDetectorsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeAnomalyDetectorsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeAnomalyDetectorsOutputResponse`
    public func describeAnomalyDetectorsPaginated(input: DescribeAnomalyDetectorsInput) -> ClientRuntime.PaginatorSequence<DescribeAnomalyDetectorsInput, DescribeAnomalyDetectorsOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeAnomalyDetectorsInput, DescribeAnomalyDetectorsOutputResponse>(input: input, inputKey: \DescribeAnomalyDetectorsInput.nextToken, outputKey: \DescribeAnomalyDetectorsOutputResponse.nextToken, paginationFunction: self.describeAnomalyDetectors(input:))
    }
}

extension DescribeAnomalyDetectorsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeAnomalyDetectorsInput {
        return DescribeAnomalyDetectorsInput(
            anomalyDetectorTypes: self.anomalyDetectorTypes,
            dimensions: self.dimensions,
            maxResults: self.maxResults,
            metricName: self.metricName,
            namespace: self.namespace,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == DescribeAnomalyDetectorsInput, Output == DescribeAnomalyDetectorsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `describeAnomalyDetectorsPaginated`
    /// to access the nested member `[CloudWatchClientTypes.AnomalyDetector]`
    /// - Returns: `[CloudWatchClientTypes.AnomalyDetector]`
    public func anomalyDetectors() async throws -> [CloudWatchClientTypes.AnomalyDetector] {
        return try await self.asyncCompactMap { item in item.anomalyDetectors }
    }
}
extension CloudWatchClient {
    /// Paginate over `[DescribeInsightRulesOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeInsightRulesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeInsightRulesOutputResponse`
    public func describeInsightRulesPaginated(input: DescribeInsightRulesInput) -> ClientRuntime.PaginatorSequence<DescribeInsightRulesInput, DescribeInsightRulesOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeInsightRulesInput, DescribeInsightRulesOutputResponse>(input: input, inputKey: \DescribeInsightRulesInput.nextToken, outputKey: \DescribeInsightRulesOutputResponse.nextToken, paginationFunction: self.describeInsightRules(input:))
    }
}

extension DescribeInsightRulesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeInsightRulesInput {
        return DescribeInsightRulesInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension CloudWatchClient {
    /// Paginate over `[GetMetricDataOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[GetMetricDataInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `GetMetricDataOutputResponse`
    public func getMetricDataPaginated(input: GetMetricDataInput) -> ClientRuntime.PaginatorSequence<GetMetricDataInput, GetMetricDataOutputResponse> {
        return ClientRuntime.PaginatorSequence<GetMetricDataInput, GetMetricDataOutputResponse>(input: input, inputKey: \GetMetricDataInput.nextToken, outputKey: \GetMetricDataOutputResponse.nextToken, paginationFunction: self.getMetricData(input:))
    }
}

extension GetMetricDataInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetMetricDataInput {
        return GetMetricDataInput(
            endTime: self.endTime,
            labelOptions: self.labelOptions,
            maxDatapoints: self.maxDatapoints,
            metricDataQueries: self.metricDataQueries,
            nextToken: token,
            scanBy: self.scanBy,
            startTime: self.startTime
        )}
}
extension CloudWatchClient {
    /// Paginate over `[ListDashboardsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListDashboardsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListDashboardsOutputResponse`
    public func listDashboardsPaginated(input: ListDashboardsInput) -> ClientRuntime.PaginatorSequence<ListDashboardsInput, ListDashboardsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListDashboardsInput, ListDashboardsOutputResponse>(input: input, inputKey: \ListDashboardsInput.nextToken, outputKey: \ListDashboardsOutputResponse.nextToken, paginationFunction: self.listDashboards(input:))
    }
}

extension ListDashboardsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListDashboardsInput {
        return ListDashboardsInput(
            dashboardNamePrefix: self.dashboardNamePrefix,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListDashboardsInput, Output == ListDashboardsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listDashboardsPaginated`
    /// to access the nested member `[CloudWatchClientTypes.DashboardEntry]`
    /// - Returns: `[CloudWatchClientTypes.DashboardEntry]`
    public func dashboardEntries() async throws -> [CloudWatchClientTypes.DashboardEntry] {
        return try await self.asyncCompactMap { item in item.dashboardEntries }
    }
}
extension CloudWatchClient {
    /// Paginate over `[ListManagedInsightRulesOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListManagedInsightRulesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListManagedInsightRulesOutputResponse`
    public func listManagedInsightRulesPaginated(input: ListManagedInsightRulesInput) -> ClientRuntime.PaginatorSequence<ListManagedInsightRulesInput, ListManagedInsightRulesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListManagedInsightRulesInput, ListManagedInsightRulesOutputResponse>(input: input, inputKey: \ListManagedInsightRulesInput.nextToken, outputKey: \ListManagedInsightRulesOutputResponse.nextToken, paginationFunction: self.listManagedInsightRules(input:))
    }
}

extension ListManagedInsightRulesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListManagedInsightRulesInput {
        return ListManagedInsightRulesInput(
            maxResults: self.maxResults,
            nextToken: token,
            resourceARN: self.resourceARN
        )}
}
extension CloudWatchClient {
    /// Paginate over `[ListMetricsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListMetricsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListMetricsOutputResponse`
    public func listMetricsPaginated(input: ListMetricsInput) -> ClientRuntime.PaginatorSequence<ListMetricsInput, ListMetricsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListMetricsInput, ListMetricsOutputResponse>(input: input, inputKey: \ListMetricsInput.nextToken, outputKey: \ListMetricsOutputResponse.nextToken, paginationFunction: self.listMetrics(input:))
    }
}

extension ListMetricsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListMetricsInput {
        return ListMetricsInput(
            dimensions: self.dimensions,
            includeLinkedAccounts: self.includeLinkedAccounts,
            metricName: self.metricName,
            namespace: self.namespace,
            nextToken: token,
            owningAccount: self.owningAccount,
            recentlyActive: self.recentlyActive
        )}
}
extension CloudWatchClient {
    /// Paginate over `[ListMetricStreamsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListMetricStreamsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListMetricStreamsOutputResponse`
    public func listMetricStreamsPaginated(input: ListMetricStreamsInput) -> ClientRuntime.PaginatorSequence<ListMetricStreamsInput, ListMetricStreamsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListMetricStreamsInput, ListMetricStreamsOutputResponse>(input: input, inputKey: \ListMetricStreamsInput.nextToken, outputKey: \ListMetricStreamsOutputResponse.nextToken, paginationFunction: self.listMetricStreams(input:))
    }
}

extension ListMetricStreamsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListMetricStreamsInput {
        return ListMetricStreamsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}
