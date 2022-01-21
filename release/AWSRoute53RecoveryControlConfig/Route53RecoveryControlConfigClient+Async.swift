// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5) && canImport(_Concurrency)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension Route53RecoveryControlConfigClient {
    /// Create a new cluster. A cluster is a set of redundant Regional endpoints against which you can run API calls to update or get the state of one or more routing controls. Each cluster has a name, status, Amazon Resource Name (ARN), and an array of the five cluster endpoints (one for each supported Amazon Web Services Region) that you can use with API calls to the cluster data plane.
    func createCluster(input: CreateClusterInput) async throws -> CreateClusterOutputResponse
    {
        typealias createClusterContinuation = CheckedContinuation<CreateClusterOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createClusterContinuation) in
            createCluster(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a new control panel. A control panel represents a group of routing controls that can be changed together in a single transaction. You can use a control panel to centrally view the operational status of applications across your organization, and trigger multi-app failovers in a single transaction, for example, to fail over an Availability Zone or Amazon Web Services Region.
    func createControlPanel(input: CreateControlPanelInput) async throws -> CreateControlPanelOutputResponse
    {
        typealias createControlPanelContinuation = CheckedContinuation<CreateControlPanelOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createControlPanelContinuation) in
            createControlPanel(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a new routing control. A routing control has one of two states: ON and OFF. You can map the routing control state to the state of an Amazon Route 53 health check, which can be used to control traffic routing. To get or update the routing control state, see the Recovery Cluster (data plane) API actions for Amazon Route 53 Application Recovery Controller.
    func createRoutingControl(input: CreateRoutingControlInput) async throws -> CreateRoutingControlOutputResponse
    {
        typealias createRoutingControlContinuation = CheckedContinuation<CreateRoutingControlOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createRoutingControlContinuation) in
            createRoutingControl(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a safety rule in a control panel. Safety rules let you add safeguards around changing routing control states, and for enabling and disabling routing controls, to help prevent unexpected outcomes. There are two types of safety rules: assertion rules and gating rules. Assertion rule: An assertion rule enforces that, when you change a routing control state, that a certain criteria is met. For example, the criteria might be that at least one routing control state is On after the transation so that traffic continues to flow to at least one cell for the application. This ensures that you avoid a fail-open scenario. Gating rule: A gating rule lets you configure a gating routing control as an overall "on/off" switch for a group of routing controls. Or, you can configure more complex gating scenarios, for example by configuring multiple gating routing controls. For more information, see [Safety rules](https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.safety-rules.html) in the Amazon Route 53 Application Recovery Controller Developer Guide.
    func createSafetyRule(input: CreateSafetyRuleInput) async throws -> CreateSafetyRuleOutputResponse
    {
        typealias createSafetyRuleContinuation = CheckedContinuation<CreateSafetyRuleOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createSafetyRuleContinuation) in
            createSafetyRule(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Delete a cluster.
    func deleteCluster(input: DeleteClusterInput) async throws -> DeleteClusterOutputResponse
    {
        typealias deleteClusterContinuation = CheckedContinuation<DeleteClusterOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteClusterContinuation) in
            deleteCluster(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes a control panel.
    func deleteControlPanel(input: DeleteControlPanelInput) async throws -> DeleteControlPanelOutputResponse
    {
        typealias deleteControlPanelContinuation = CheckedContinuation<DeleteControlPanelOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteControlPanelContinuation) in
            deleteControlPanel(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes a routing control.
    func deleteRoutingControl(input: DeleteRoutingControlInput) async throws -> DeleteRoutingControlOutputResponse
    {
        typealias deleteRoutingControlContinuation = CheckedContinuation<DeleteRoutingControlOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteRoutingControlContinuation) in
            deleteRoutingControl(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes a safety rule./>
    func deleteSafetyRule(input: DeleteSafetyRuleInput) async throws -> DeleteSafetyRuleOutputResponse
    {
        typealias deleteSafetyRuleContinuation = CheckedContinuation<DeleteSafetyRuleOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteSafetyRuleContinuation) in
            deleteSafetyRule(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Display the details about a cluster. The response includes the cluster name, endpoints, status, and Amazon Resource Name (ARN).
    func describeCluster(input: DescribeClusterInput) async throws -> DescribeClusterOutputResponse
    {
        typealias describeClusterContinuation = CheckedContinuation<DescribeClusterOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeClusterContinuation) in
            describeCluster(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Displays details about a control panel.
    func describeControlPanel(input: DescribeControlPanelInput) async throws -> DescribeControlPanelOutputResponse
    {
        typealias describeControlPanelContinuation = CheckedContinuation<DescribeControlPanelOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeControlPanelContinuation) in
            describeControlPanel(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Displays details about a routing control. A routing control has one of two states: ON and OFF. You can map the routing control state to the state of an Amazon Route 53 health check, which can be used to control routing. To get or update the routing control state, see the Recovery Cluster (data plane) API actions for Amazon Route 53 Application Recovery Controller.
    func describeRoutingControl(input: DescribeRoutingControlInput) async throws -> DescribeRoutingControlOutputResponse
    {
        typealias describeRoutingControlContinuation = CheckedContinuation<DescribeRoutingControlOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeRoutingControlContinuation) in
            describeRoutingControl(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns information about a safety rule.
    func describeSafetyRule(input: DescribeSafetyRuleInput) async throws -> DescribeSafetyRuleOutputResponse
    {
        typealias describeSafetyRuleContinuation = CheckedContinuation<DescribeSafetyRuleOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeSafetyRuleContinuation) in
            describeSafetyRule(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns an array of all Amazon Route 53 health checks associated with a specific routing control.
    func listAssociatedRoute53HealthChecks(input: ListAssociatedRoute53HealthChecksInput) async throws -> ListAssociatedRoute53HealthChecksOutputResponse
    {
        typealias listAssociatedRoute53HealthChecksContinuation = CheckedContinuation<ListAssociatedRoute53HealthChecksOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listAssociatedRoute53HealthChecksContinuation) in
            listAssociatedRoute53HealthChecks(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns an array of all the clusters in an account.
    func listClusters(input: ListClustersInput) async throws -> ListClustersOutputResponse
    {
        typealias listClustersContinuation = CheckedContinuation<ListClustersOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listClustersContinuation) in
            listClusters(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns an array of control panels in an account or in a cluster.
    func listControlPanels(input: ListControlPanelsInput) async throws -> ListControlPanelsOutputResponse
    {
        typealias listControlPanelsContinuation = CheckedContinuation<ListControlPanelsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listControlPanelsContinuation) in
            listControlPanels(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns an array of routing controls for a control panel. A routing control is an Amazon Route 53 Application Recovery Controller construct that has one of two states: ON and OFF. You can map the routing control state to the state of an Amazon Route 53 health check, which can be used to control routing.
    func listRoutingControls(input: ListRoutingControlsInput) async throws -> ListRoutingControlsOutputResponse
    {
        typealias listRoutingControlsContinuation = CheckedContinuation<ListRoutingControlsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listRoutingControlsContinuation) in
            listRoutingControls(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// List the safety rules (the assertion rules and gating rules) that you've defined for the routing controls in a control panel.
    func listSafetyRules(input: ListSafetyRulesInput) async throws -> ListSafetyRulesOutputResponse
    {
        typealias listSafetyRulesContinuation = CheckedContinuation<ListSafetyRulesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listSafetyRulesContinuation) in
            listSafetyRules(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists the tags for a resource.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    {
        typealias listTagsForResourceContinuation = CheckedContinuation<ListTagsForResourceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listTagsForResourceContinuation) in
            listTagsForResource(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Adds a tag to a resource.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    {
        typealias tagResourceContinuation = CheckedContinuation<TagResourceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: tagResourceContinuation) in
            tagResource(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Removes a tag from a resource.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    {
        typealias untagResourceContinuation = CheckedContinuation<UntagResourceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: untagResourceContinuation) in
            untagResource(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Updates a control panel. The only update you can make to a control panel is to change the name of the control panel.
    func updateControlPanel(input: UpdateControlPanelInput) async throws -> UpdateControlPanelOutputResponse
    {
        typealias updateControlPanelContinuation = CheckedContinuation<UpdateControlPanelOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateControlPanelContinuation) in
            updateControlPanel(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Updates a routing control. You can only update the name of the routing control. To get or update the routing control state, see the Recovery Cluster (data plane) API actions for Amazon Route 53 Application Recovery Controller.
    func updateRoutingControl(input: UpdateRoutingControlInput) async throws -> UpdateRoutingControlOutputResponse
    {
        typealias updateRoutingControlContinuation = CheckedContinuation<UpdateRoutingControlOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateRoutingControlContinuation) in
            updateRoutingControl(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Update a safety rule (an assertion rule or gating rule). You can only update the name and the waiting period for a safety rule. To make other updates, delete the safety rule and create a new one.
    func updateSafetyRule(input: UpdateSafetyRuleInput) async throws -> UpdateSafetyRuleOutputResponse
    {
        typealias updateSafetyRuleContinuation = CheckedContinuation<UpdateSafetyRuleOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateSafetyRuleContinuation) in
            updateSafetyRule(input: input) { result in
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