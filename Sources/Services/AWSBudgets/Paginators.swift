// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime


/// Paginate over `[DescribeBudgetActionHistoriesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[DescribeBudgetActionHistoriesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `DescribeBudgetActionHistoriesOutputResponse`
extension BudgetsClient {
    public func describeBudgetActionHistoriesPaginated(input: DescribeBudgetActionHistoriesInput) -> ClientRuntime.PaginatorSequence<DescribeBudgetActionHistoriesInput, DescribeBudgetActionHistoriesOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeBudgetActionHistoriesInput, DescribeBudgetActionHistoriesOutputResponse>(input: input, inputKey: \DescribeBudgetActionHistoriesInput.nextToken, outputKey: \DescribeBudgetActionHistoriesOutputResponse.nextToken, paginationFunction: self.describeBudgetActionHistories(input:))
    }
}

extension DescribeBudgetActionHistoriesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeBudgetActionHistoriesInput {
        return DescribeBudgetActionHistoriesInput(
            accountId: self.accountId,
            actionId: self.actionId,
            budgetName: self.budgetName,
            maxResults: self.maxResults,
            nextToken: token,
            timePeriod: self.timePeriod
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `describeBudgetActionHistoriesPaginated`
/// to access the nested member `[BudgetsClientTypes.ActionHistory]`
/// - Returns: `[BudgetsClientTypes.ActionHistory]`
extension PaginatorSequence where Input == DescribeBudgetActionHistoriesInput, Output == DescribeBudgetActionHistoriesOutputResponse {
    public func actionHistories() async throws -> [BudgetsClientTypes.ActionHistory] {
        return try await self.asyncCompactMap { item in item.actionHistories }
    }
}

/// Paginate over `[DescribeBudgetActionsForAccountOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[DescribeBudgetActionsForAccountInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `DescribeBudgetActionsForAccountOutputResponse`
extension BudgetsClient {
    public func describeBudgetActionsForAccountPaginated(input: DescribeBudgetActionsForAccountInput) -> ClientRuntime.PaginatorSequence<DescribeBudgetActionsForAccountInput, DescribeBudgetActionsForAccountOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeBudgetActionsForAccountInput, DescribeBudgetActionsForAccountOutputResponse>(input: input, inputKey: \DescribeBudgetActionsForAccountInput.nextToken, outputKey: \DescribeBudgetActionsForAccountOutputResponse.nextToken, paginationFunction: self.describeBudgetActionsForAccount(input:))
    }
}

extension DescribeBudgetActionsForAccountInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeBudgetActionsForAccountInput {
        return DescribeBudgetActionsForAccountInput(
            accountId: self.accountId,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `describeBudgetActionsForAccountPaginated`
/// to access the nested member `[BudgetsClientTypes.Action]`
/// - Returns: `[BudgetsClientTypes.Action]`
extension PaginatorSequence where Input == DescribeBudgetActionsForAccountInput, Output == DescribeBudgetActionsForAccountOutputResponse {
    public func actions() async throws -> [BudgetsClientTypes.Action] {
        return try await self.asyncCompactMap { item in item.actions }
    }
}

/// Paginate over `[DescribeBudgetActionsForBudgetOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[DescribeBudgetActionsForBudgetInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `DescribeBudgetActionsForBudgetOutputResponse`
extension BudgetsClient {
    public func describeBudgetActionsForBudgetPaginated(input: DescribeBudgetActionsForBudgetInput) -> ClientRuntime.PaginatorSequence<DescribeBudgetActionsForBudgetInput, DescribeBudgetActionsForBudgetOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeBudgetActionsForBudgetInput, DescribeBudgetActionsForBudgetOutputResponse>(input: input, inputKey: \DescribeBudgetActionsForBudgetInput.nextToken, outputKey: \DescribeBudgetActionsForBudgetOutputResponse.nextToken, paginationFunction: self.describeBudgetActionsForBudget(input:))
    }
}

extension DescribeBudgetActionsForBudgetInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeBudgetActionsForBudgetInput {
        return DescribeBudgetActionsForBudgetInput(
            accountId: self.accountId,
            budgetName: self.budgetName,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `describeBudgetActionsForBudgetPaginated`
/// to access the nested member `[BudgetsClientTypes.Action]`
/// - Returns: `[BudgetsClientTypes.Action]`
extension PaginatorSequence where Input == DescribeBudgetActionsForBudgetInput, Output == DescribeBudgetActionsForBudgetOutputResponse {
    public func actions() async throws -> [BudgetsClientTypes.Action] {
        return try await self.asyncCompactMap { item in item.actions }
    }
}

/// Paginate over `[DescribeBudgetNotificationsForAccountOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[DescribeBudgetNotificationsForAccountInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `DescribeBudgetNotificationsForAccountOutputResponse`
extension BudgetsClient {
    public func describeBudgetNotificationsForAccountPaginated(input: DescribeBudgetNotificationsForAccountInput) -> ClientRuntime.PaginatorSequence<DescribeBudgetNotificationsForAccountInput, DescribeBudgetNotificationsForAccountOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeBudgetNotificationsForAccountInput, DescribeBudgetNotificationsForAccountOutputResponse>(input: input, inputKey: \DescribeBudgetNotificationsForAccountInput.nextToken, outputKey: \DescribeBudgetNotificationsForAccountOutputResponse.nextToken, paginationFunction: self.describeBudgetNotificationsForAccount(input:))
    }
}

extension DescribeBudgetNotificationsForAccountInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeBudgetNotificationsForAccountInput {
        return DescribeBudgetNotificationsForAccountInput(
            accountId: self.accountId,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `describeBudgetNotificationsForAccountPaginated`
/// to access the nested member `[BudgetsClientTypes.BudgetNotificationsForAccount]`
/// - Returns: `[BudgetsClientTypes.BudgetNotificationsForAccount]`
extension PaginatorSequence where Input == DescribeBudgetNotificationsForAccountInput, Output == DescribeBudgetNotificationsForAccountOutputResponse {
    public func budgetNotificationsForAccount() async throws -> [BudgetsClientTypes.BudgetNotificationsForAccount] {
        return try await self.asyncCompactMap { item in item.budgetNotificationsForAccount }
    }
}

/// Paginate over `[DescribeBudgetPerformanceHistoryOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[DescribeBudgetPerformanceHistoryInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `DescribeBudgetPerformanceHistoryOutputResponse`
extension BudgetsClient {
    public func describeBudgetPerformanceHistoryPaginated(input: DescribeBudgetPerformanceHistoryInput) -> ClientRuntime.PaginatorSequence<DescribeBudgetPerformanceHistoryInput, DescribeBudgetPerformanceHistoryOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeBudgetPerformanceHistoryInput, DescribeBudgetPerformanceHistoryOutputResponse>(input: input, inputKey: \DescribeBudgetPerformanceHistoryInput.nextToken, outputKey: \DescribeBudgetPerformanceHistoryOutputResponse.nextToken, paginationFunction: self.describeBudgetPerformanceHistory(input:))
    }
}

extension DescribeBudgetPerformanceHistoryInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeBudgetPerformanceHistoryInput {
        return DescribeBudgetPerformanceHistoryInput(
            accountId: self.accountId,
            budgetName: self.budgetName,
            maxResults: self.maxResults,
            nextToken: token,
            timePeriod: self.timePeriod
        )}
}

/// Paginate over `[DescribeBudgetsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[DescribeBudgetsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `DescribeBudgetsOutputResponse`
extension BudgetsClient {
    public func describeBudgetsPaginated(input: DescribeBudgetsInput) -> ClientRuntime.PaginatorSequence<DescribeBudgetsInput, DescribeBudgetsOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeBudgetsInput, DescribeBudgetsOutputResponse>(input: input, inputKey: \DescribeBudgetsInput.nextToken, outputKey: \DescribeBudgetsOutputResponse.nextToken, paginationFunction: self.describeBudgets(input:))
    }
}

extension DescribeBudgetsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeBudgetsInput {
        return DescribeBudgetsInput(
            accountId: self.accountId,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `describeBudgetsPaginated`
/// to access the nested member `[BudgetsClientTypes.Budget]`
/// - Returns: `[BudgetsClientTypes.Budget]`
extension PaginatorSequence where Input == DescribeBudgetsInput, Output == DescribeBudgetsOutputResponse {
    public func budgets() async throws -> [BudgetsClientTypes.Budget] {
        return try await self.asyncCompactMap { item in item.budgets }
    }
}

/// Paginate over `[DescribeNotificationsForBudgetOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[DescribeNotificationsForBudgetInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `DescribeNotificationsForBudgetOutputResponse`
extension BudgetsClient {
    public func describeNotificationsForBudgetPaginated(input: DescribeNotificationsForBudgetInput) -> ClientRuntime.PaginatorSequence<DescribeNotificationsForBudgetInput, DescribeNotificationsForBudgetOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeNotificationsForBudgetInput, DescribeNotificationsForBudgetOutputResponse>(input: input, inputKey: \DescribeNotificationsForBudgetInput.nextToken, outputKey: \DescribeNotificationsForBudgetOutputResponse.nextToken, paginationFunction: self.describeNotificationsForBudget(input:))
    }
}

extension DescribeNotificationsForBudgetInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeNotificationsForBudgetInput {
        return DescribeNotificationsForBudgetInput(
            accountId: self.accountId,
            budgetName: self.budgetName,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `describeNotificationsForBudgetPaginated`
/// to access the nested member `[BudgetsClientTypes.Notification]`
/// - Returns: `[BudgetsClientTypes.Notification]`
extension PaginatorSequence where Input == DescribeNotificationsForBudgetInput, Output == DescribeNotificationsForBudgetOutputResponse {
    public func notifications() async throws -> [BudgetsClientTypes.Notification] {
        return try await self.asyncCompactMap { item in item.notifications }
    }
}

/// Paginate over `[DescribeSubscribersForNotificationOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[DescribeSubscribersForNotificationInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `DescribeSubscribersForNotificationOutputResponse`
extension BudgetsClient {
    public func describeSubscribersForNotificationPaginated(input: DescribeSubscribersForNotificationInput) -> ClientRuntime.PaginatorSequence<DescribeSubscribersForNotificationInput, DescribeSubscribersForNotificationOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeSubscribersForNotificationInput, DescribeSubscribersForNotificationOutputResponse>(input: input, inputKey: \DescribeSubscribersForNotificationInput.nextToken, outputKey: \DescribeSubscribersForNotificationOutputResponse.nextToken, paginationFunction: self.describeSubscribersForNotification(input:))
    }
}

extension DescribeSubscribersForNotificationInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeSubscribersForNotificationInput {
        return DescribeSubscribersForNotificationInput(
            accountId: self.accountId,
            budgetName: self.budgetName,
            maxResults: self.maxResults,
            nextToken: token,
            notification: self.notification
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `describeSubscribersForNotificationPaginated`
/// to access the nested member `[BudgetsClientTypes.Subscriber]`
/// - Returns: `[BudgetsClientTypes.Subscriber]`
extension PaginatorSequence where Input == DescribeSubscribersForNotificationInput, Output == DescribeSubscribersForNotificationOutputResponse {
    public func subscribers() async throws -> [BudgetsClientTypes.Subscriber] {
        return try await self.asyncCompactMap { item in item.subscribers }
    }
}