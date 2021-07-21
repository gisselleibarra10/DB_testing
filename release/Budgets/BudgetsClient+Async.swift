// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension BudgetsClient {
    /// <p>Creates a budget and, if included, notifications and subscribers. </p>
    /// 		       <important>
    /// 			         <p>Only one of <code>BudgetLimit</code> or <code>PlannedBudgetLimits</code> can be present in the syntax at one time. Use the syntax that matches your case. The Request Syntax section shows the <code>BudgetLimit</code> syntax. For <code>PlannedBudgetLimits</code>, see the <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_budgets_CreateBudget.html#API_CreateBudget_Examples">Examples</a> section. </p>
    /// 		       </important>
    func createBudget(input: CreateBudgetInput) async throws -> CreateBudgetOutputResponse
    {
        typealias createBudgetContinuation = CheckedContinuation<CreateBudgetOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createBudgetContinuation) in
            createBudget(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>
    ///          Creates a budget action.
    ///       </p>
    func createBudgetAction(input: CreateBudgetActionInput) async throws -> CreateBudgetActionOutputResponse
    {
        typealias createBudgetActionContinuation = CheckedContinuation<CreateBudgetActionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createBudgetActionContinuation) in
            createBudgetAction(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Creates a notification. You must create the budget before you create the associated notification.</p>
    func createNotification(input: CreateNotificationInput) async throws -> CreateNotificationOutputResponse
    {
        typealias createNotificationContinuation = CheckedContinuation<CreateNotificationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createNotificationContinuation) in
            createNotification(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Creates a subscriber. You must create the associated budget and notification before you create the subscriber.</p>
    func createSubscriber(input: CreateSubscriberInput) async throws -> CreateSubscriberOutputResponse
    {
        typealias createSubscriberContinuation = CheckedContinuation<CreateSubscriberOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createSubscriberContinuation) in
            createSubscriber(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Deletes a budget. You can delete your budget at any time.</p>
    /// 		       <important>
    /// 			         <p>Deleting a budget also deletes the notifications and subscribers that are associated with that budget.</p>
    /// 		       </important>
    func deleteBudget(input: DeleteBudgetInput) async throws -> DeleteBudgetOutputResponse
    {
        typealias deleteBudgetContinuation = CheckedContinuation<DeleteBudgetOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteBudgetContinuation) in
            deleteBudget(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>
    ///          Deletes a budget action.
    ///       </p>
    func deleteBudgetAction(input: DeleteBudgetActionInput) async throws -> DeleteBudgetActionOutputResponse
    {
        typealias deleteBudgetActionContinuation = CheckedContinuation<DeleteBudgetActionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteBudgetActionContinuation) in
            deleteBudgetAction(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Deletes a notification.</p>
    /// 		       <important>
    /// 			         <p>Deleting a notification also deletes the subscribers that are associated with the notification.</p>
    /// 		       </important>
    func deleteNotification(input: DeleteNotificationInput) async throws -> DeleteNotificationOutputResponse
    {
        typealias deleteNotificationContinuation = CheckedContinuation<DeleteNotificationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteNotificationContinuation) in
            deleteNotification(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Deletes a subscriber.</p>
    /// 		       <important>
    /// 			         <p>Deleting the last subscriber to a notification also deletes the notification.</p>
    /// 		       </important>
    func deleteSubscriber(input: DeleteSubscriberInput) async throws -> DeleteSubscriberOutputResponse
    {
        typealias deleteSubscriberContinuation = CheckedContinuation<DeleteSubscriberOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteSubscriberContinuation) in
            deleteSubscriber(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Describes a budget.</p>
    /// 		       <important>
    /// 			         <p>The Request Syntax section shows the <code>BudgetLimit</code> syntax. For <code>PlannedBudgetLimits</code>, see the <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_budgets_DescribeBudget.html#API_DescribeBudget_Examples">Examples</a> section. </p>
    /// 		       </important>
    func describeBudget(input: DescribeBudgetInput) async throws -> DescribeBudgetOutputResponse
    {
        typealias describeBudgetContinuation = CheckedContinuation<DescribeBudgetOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeBudgetContinuation) in
            describeBudget(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>
    ///          Describes a budget action detail.
    ///       </p>
    func describeBudgetAction(input: DescribeBudgetActionInput) async throws -> DescribeBudgetActionOutputResponse
    {
        typealias describeBudgetActionContinuation = CheckedContinuation<DescribeBudgetActionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeBudgetActionContinuation) in
            describeBudgetAction(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>
    ///          Describes a budget action history detail.
    ///       </p>
    func describeBudgetActionHistories(input: DescribeBudgetActionHistoriesInput) async throws -> DescribeBudgetActionHistoriesOutputResponse
    {
        typealias describeBudgetActionHistoriesContinuation = CheckedContinuation<DescribeBudgetActionHistoriesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeBudgetActionHistoriesContinuation) in
            describeBudgetActionHistories(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>
    ///          Describes all of the budget actions for an account.
    ///       </p>
    func describeBudgetActionsForAccount(input: DescribeBudgetActionsForAccountInput) async throws -> DescribeBudgetActionsForAccountOutputResponse
    {
        typealias describeBudgetActionsForAccountContinuation = CheckedContinuation<DescribeBudgetActionsForAccountOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeBudgetActionsForAccountContinuation) in
            describeBudgetActionsForAccount(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>
    ///          Describes all of the budget actions for a budget.
    ///       </p>
    func describeBudgetActionsForBudget(input: DescribeBudgetActionsForBudgetInput) async throws -> DescribeBudgetActionsForBudgetOutputResponse
    {
        typealias describeBudgetActionsForBudgetContinuation = CheckedContinuation<DescribeBudgetActionsForBudgetOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeBudgetActionsForBudgetContinuation) in
            describeBudgetActionsForBudget(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Describes the history for <code>DAILY</code>, <code>MONTHLY</code>, and <code>QUARTERLY</code> budgets. Budget history isn't available for <code>ANNUAL</code> budgets.</p>
    func describeBudgetPerformanceHistory(input: DescribeBudgetPerformanceHistoryInput) async throws -> DescribeBudgetPerformanceHistoryOutputResponse
    {
        typealias describeBudgetPerformanceHistoryContinuation = CheckedContinuation<DescribeBudgetPerformanceHistoryOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeBudgetPerformanceHistoryContinuation) in
            describeBudgetPerformanceHistory(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Lists the budgets that are associated with an account.</p>
    /// 		       <important>
    /// 			         <p>The Request Syntax section shows the <code>BudgetLimit</code> syntax. For <code>PlannedBudgetLimits</code>, see the <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_budgets_DescribeBudgets.html#API_DescribeBudgets_Examples">Examples</a> section. </p>
    /// 		       </important>
    func describeBudgets(input: DescribeBudgetsInput) async throws -> DescribeBudgetsOutputResponse
    {
        typealias describeBudgetsContinuation = CheckedContinuation<DescribeBudgetsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeBudgetsContinuation) in
            describeBudgets(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Lists the notifications that are associated with a budget.</p>
    func describeNotificationsForBudget(input: DescribeNotificationsForBudgetInput) async throws -> DescribeNotificationsForBudgetOutputResponse
    {
        typealias describeNotificationsForBudgetContinuation = CheckedContinuation<DescribeNotificationsForBudgetOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeNotificationsForBudgetContinuation) in
            describeNotificationsForBudget(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Lists the subscribers that are associated with a notification.</p>
    func describeSubscribersForNotification(input: DescribeSubscribersForNotificationInput) async throws -> DescribeSubscribersForNotificationOutputResponse
    {
        typealias describeSubscribersForNotificationContinuation = CheckedContinuation<DescribeSubscribersForNotificationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeSubscribersForNotificationContinuation) in
            describeSubscribersForNotification(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>
    ///          Executes a budget action.
    ///       </p>
    func executeBudgetAction(input: ExecuteBudgetActionInput) async throws -> ExecuteBudgetActionOutputResponse
    {
        typealias executeBudgetActionContinuation = CheckedContinuation<ExecuteBudgetActionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: executeBudgetActionContinuation) in
            executeBudgetAction(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Updates a budget. You can change every part of a budget except for the <code>budgetName</code> and the <code>calculatedSpend</code>. When you modify a budget, the <code>calculatedSpend</code> drops to zero until AWS has new usage data to use for forecasting.</p>
    /// 		       <important>
    /// 			         <p>Only one of <code>BudgetLimit</code> or <code>PlannedBudgetLimits</code> can be present in the syntax at one time. Use the syntax that matches your case. The Request Syntax section shows the <code>BudgetLimit</code> syntax. For <code>PlannedBudgetLimits</code>, see the <a href="https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_budgets_UpdateBudget.html#API_UpdateBudget_Examples">Examples</a> section. </p>
    /// 		       </important>
    func updateBudget(input: UpdateBudgetInput) async throws -> UpdateBudgetOutputResponse
    {
        typealias updateBudgetContinuation = CheckedContinuation<UpdateBudgetOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateBudgetContinuation) in
            updateBudget(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>
    ///          Updates a budget action.
    ///       </p>
    func updateBudgetAction(input: UpdateBudgetActionInput) async throws -> UpdateBudgetActionOutputResponse
    {
        typealias updateBudgetActionContinuation = CheckedContinuation<UpdateBudgetActionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateBudgetActionContinuation) in
            updateBudgetAction(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Updates a notification.</p>
    func updateNotification(input: UpdateNotificationInput) async throws -> UpdateNotificationOutputResponse
    {
        typealias updateNotificationContinuation = CheckedContinuation<UpdateNotificationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateNotificationContinuation) in
            updateNotification(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Updates a subscriber.</p>
    func updateSubscriber(input: UpdateSubscriberInput) async throws -> UpdateSubscriberOutputResponse
    {
        typealias updateSubscriberContinuation = CheckedContinuation<UpdateSubscriberOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateSubscriberContinuation) in
            updateSubscriber(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

}
#endif
