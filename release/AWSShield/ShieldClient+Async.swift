// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5) && canImport(_Concurrency)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension ShieldClient {
    /// Authorizes the Shield Response Team (SRT) to access the specified Amazon S3 bucket containing log data such as Application Load Balancer access logs, CloudFront logs, or logs from third party sources. You can associate up to 10 Amazon S3 buckets with your subscription. To use the services of the SRT and make an AssociateDRTLogBucket request, you must be subscribed to the [Business Support plan](https://docs.aws.amazon.com/premiumsupport/business-support/) or the [Enterprise Support plan](https://docs.aws.amazon.com/premiumsupport/enterprise-support/).
    func associateDRTLogBucket(input: AssociateDRTLogBucketInput) async throws -> AssociateDRTLogBucketOutputResponse
    {
        typealias associateDRTLogBucketContinuation = CheckedContinuation<AssociateDRTLogBucketOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: associateDRTLogBucketContinuation) in
            associateDRTLogBucket(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Authorizes the Shield Response Team (SRT) using the specified role, to access your Amazon Web Services account to assist with DDoS attack mitigation during potential attacks. This enables the SRT to inspect your WAF configuration and create or update WAF rules and web ACLs. You can associate only one RoleArn with your subscription. If you submit an AssociateDRTRole request for an account that already has an associated role, the new RoleArn will replace the existing RoleArn. Prior to making the AssociateDRTRole request, you must attach the AWSShieldDRTAccessPolicy managed policy to the role that you'll specify in the request. You can access this policy in the IAM console at [AWSShieldDRTAccessPolicy](https://console.aws.amazon.com/iam/home?#/policies/arn:aws:iam::aws:policy/service-role/AWSShieldDRTAccessPolicy). For more information see [Adding and removing IAM identity permissions](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_manage-attach-detach.html). The role must also trust the service principal drt.shield.amazonaws.com. For more information, see [IAM JSON policy elements: Principal](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html). The SRT will have access only to your WAF and Shield resources. By submitting this request, you authorize the SRT to inspect your WAF and Shield configuration and create and update WAF rules and web ACLs on your behalf. The SRT takes these actions only if explicitly authorized by you. You must have the iam:PassRole permission to make an AssociateDRTRole request. For more information, see [Granting a user permissions to pass a role to an Amazon Web Services service](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_passrole.html). To use the services of the SRT and make an AssociateDRTRole request, you must be subscribed to the [Business Support plan](https://docs.aws.amazon.com/premiumsupport/business-support/) or the [Enterprise Support plan](https://docs.aws.amazon.com/premiumsupport/enterprise-support/).
    func associateDRTRole(input: AssociateDRTRoleInput) async throws -> AssociateDRTRoleOutputResponse
    {
        typealias associateDRTRoleContinuation = CheckedContinuation<AssociateDRTRoleOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: associateDRTRoleContinuation) in
            associateDRTRole(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Adds health-based detection to the Shield Advanced protection for a resource. Shield Advanced health-based detection uses the health of your Amazon Web Services resource to improve responsiveness and accuracy in attack detection and response. You define the health check in Route 53 and then associate it with your Shield Advanced protection. For more information, see [Shield Advanced Health-Based Detection](https://docs.aws.amazon.com/waf/latest/developerguide/ddos-overview.html#ddos-advanced-health-check-option) in the WAF Developer Guide.
    func associateHealthCheck(input: AssociateHealthCheckInput) async throws -> AssociateHealthCheckOutputResponse
    {
        typealias associateHealthCheckContinuation = CheckedContinuation<AssociateHealthCheckOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: associateHealthCheckContinuation) in
            associateHealthCheck(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Initializes proactive engagement and sets the list of contacts for the Shield Response Team (SRT) to use. You must provide at least one phone number in the emergency contact list. After you have initialized proactive engagement using this call, to disable or enable proactive engagement, use the calls DisableProactiveEngagement and EnableProactiveEngagement. This call defines the list of email addresses and phone numbers that the SRT can use to contact you for escalations to the SRT and to initiate proactive customer support. The contacts that you provide in the request replace any contacts that were already defined. If you already have contacts defined and want to use them, retrieve the list using DescribeEmergencyContactSettings and then provide it to this call.
    func associateProactiveEngagementDetails(input: AssociateProactiveEngagementDetailsInput) async throws -> AssociateProactiveEngagementDetailsOutputResponse
    {
        typealias associateProactiveEngagementDetailsContinuation = CheckedContinuation<AssociateProactiveEngagementDetailsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: associateProactiveEngagementDetailsContinuation) in
            associateProactiveEngagementDetails(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Enables Shield Advanced for a specific Amazon Web Services resource. The resource can be an Amazon CloudFront distribution, Elastic Load Balancing load balancer, Global Accelerator accelerator, Elastic IP Address, or an Amazon Route 53 hosted zone. You can add protection to only a single resource with each CreateProtection request. You can add protection to multiple resources at once through the Shield Advanced console at [https://console.aws.amazon.com/wafv2/shieldv2#/](https://console.aws.amazon.com/wafv2/shieldv2#/). For more information see [Getting Started with Shield Advanced](https://docs.aws.amazon.com/waf/latest/developerguide/getting-started-ddos.html) and [Adding Shield Advanced protection to Amazon Web Services resources](https://docs.aws.amazon.com/waf/latest/developerguide/configure-new-protection.html).
    func createProtection(input: CreateProtectionInput) async throws -> CreateProtectionOutputResponse
    {
        typealias createProtectionContinuation = CheckedContinuation<CreateProtectionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createProtectionContinuation) in
            createProtection(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a grouping of protected resources so they can be handled as a collective. This resource grouping improves the accuracy of detection and reduces false positives.
    func createProtectionGroup(input: CreateProtectionGroupInput) async throws -> CreateProtectionGroupOutputResponse
    {
        typealias createProtectionGroupContinuation = CheckedContinuation<CreateProtectionGroupOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createProtectionGroupContinuation) in
            createProtectionGroup(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Activates Shield Advanced for an account. When you initally create a subscription, your subscription is set to be automatically renewed at the end of the existing subscription period. You can change this by submitting an UpdateSubscription request.
    func createSubscription(input: CreateSubscriptionInput) async throws -> CreateSubscriptionOutputResponse
    {
        typealias createSubscriptionContinuation = CheckedContinuation<CreateSubscriptionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createSubscriptionContinuation) in
            createSubscription(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes an Shield Advanced [Protection].
    func deleteProtection(input: DeleteProtectionInput) async throws -> DeleteProtectionOutputResponse
    {
        typealias deleteProtectionContinuation = CheckedContinuation<DeleteProtectionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteProtectionContinuation) in
            deleteProtection(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Removes the specified protection group.
    func deleteProtectionGroup(input: DeleteProtectionGroupInput) async throws -> DeleteProtectionGroupOutputResponse
    {
        typealias deleteProtectionGroupContinuation = CheckedContinuation<DeleteProtectionGroupOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteProtectionGroupContinuation) in
            deleteProtectionGroup(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Removes Shield Advanced from an account. Shield Advanced requires a 1-year subscription commitment. You cannot delete a subscription prior to the completion of that commitment.
    @available(*, deprecated)
    func deleteSubscription(input: DeleteSubscriptionInput) async throws -> DeleteSubscriptionOutputResponse
    {
        typealias deleteSubscriptionContinuation = CheckedContinuation<DeleteSubscriptionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteSubscriptionContinuation) in
            deleteSubscription(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Describes the details of a DDoS attack.
    func describeAttack(input: DescribeAttackInput) async throws -> DescribeAttackOutputResponse
    {
        typealias describeAttackContinuation = CheckedContinuation<DescribeAttackOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeAttackContinuation) in
            describeAttack(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Provides information about the number and type of attacks Shield has detected in the last year for all resources that belong to your account, regardless of whether you've defined Shield protections for them. This operation is available to Shield customers as well as to Shield Advanced customers. The operation returns data for the time range of midnight UTC, one year ago, to midnight UTC, today. For example, if the current time is 2020-10-26 15:39:32 PDT, equal to 2020-10-26 22:39:32 UTC, then the time range for the attack data returned is from 2019-10-26 00:00:00 UTC to 2020-10-26 00:00:00 UTC. The time range indicates the period covered by the attack statistics data items.
    func describeAttackStatistics(input: DescribeAttackStatisticsInput) async throws -> DescribeAttackStatisticsOutputResponse
    {
        typealias describeAttackStatisticsContinuation = CheckedContinuation<DescribeAttackStatisticsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeAttackStatisticsContinuation) in
            describeAttackStatistics(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns the current role and list of Amazon S3 log buckets used by the Shield Response Team (SRT) to access your Amazon Web Services account while assisting with attack mitigation.
    func describeDRTAccess(input: DescribeDRTAccessInput) async throws -> DescribeDRTAccessOutputResponse
    {
        typealias describeDRTAccessContinuation = CheckedContinuation<DescribeDRTAccessOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeDRTAccessContinuation) in
            describeDRTAccess(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// A list of email addresses and phone numbers that the Shield Response Team (SRT) can use to contact you if you have proactive engagement enabled, for escalations to the SRT and to initiate proactive customer support.
    func describeEmergencyContactSettings(input: DescribeEmergencyContactSettingsInput) async throws -> DescribeEmergencyContactSettingsOutputResponse
    {
        typealias describeEmergencyContactSettingsContinuation = CheckedContinuation<DescribeEmergencyContactSettingsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeEmergencyContactSettingsContinuation) in
            describeEmergencyContactSettings(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists the details of a [Protection] object.
    func describeProtection(input: DescribeProtectionInput) async throws -> DescribeProtectionOutputResponse
    {
        typealias describeProtectionContinuation = CheckedContinuation<DescribeProtectionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeProtectionContinuation) in
            describeProtection(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns the specification for the specified protection group.
    func describeProtectionGroup(input: DescribeProtectionGroupInput) async throws -> DescribeProtectionGroupOutputResponse
    {
        typealias describeProtectionGroupContinuation = CheckedContinuation<DescribeProtectionGroupOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeProtectionGroupContinuation) in
            describeProtectionGroup(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Provides details about the Shield Advanced subscription for an account.
    func describeSubscription(input: DescribeSubscriptionInput) async throws -> DescribeSubscriptionOutputResponse
    {
        typealias describeSubscriptionContinuation = CheckedContinuation<DescribeSubscriptionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeSubscriptionContinuation) in
            describeSubscription(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Disable the Shield Advanced automatic application layer DDoS mitigation feature for the resource. This stops Shield Advanced from creating, verifying, and applying WAF rules for attacks that it detects for the resource.
    func disableApplicationLayerAutomaticResponse(input: DisableApplicationLayerAutomaticResponseInput) async throws -> DisableApplicationLayerAutomaticResponseOutputResponse
    {
        typealias disableApplicationLayerAutomaticResponseContinuation = CheckedContinuation<DisableApplicationLayerAutomaticResponseOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: disableApplicationLayerAutomaticResponseContinuation) in
            disableApplicationLayerAutomaticResponse(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Removes authorization from the Shield Response Team (SRT) to notify contacts about escalations to the SRT and to initiate proactive customer support.
    func disableProactiveEngagement(input: DisableProactiveEngagementInput) async throws -> DisableProactiveEngagementOutputResponse
    {
        typealias disableProactiveEngagementContinuation = CheckedContinuation<DisableProactiveEngagementOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: disableProactiveEngagementContinuation) in
            disableProactiveEngagement(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Removes the Shield Response Team's (SRT) access to the specified Amazon S3 bucket containing the logs that you shared previously.
    func disassociateDRTLogBucket(input: DisassociateDRTLogBucketInput) async throws -> DisassociateDRTLogBucketOutputResponse
    {
        typealias disassociateDRTLogBucketContinuation = CheckedContinuation<DisassociateDRTLogBucketOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: disassociateDRTLogBucketContinuation) in
            disassociateDRTLogBucket(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Removes the Shield Response Team's (SRT) access to your Amazon Web Services account.
    func disassociateDRTRole(input: DisassociateDRTRoleInput) async throws -> DisassociateDRTRoleOutputResponse
    {
        typealias disassociateDRTRoleContinuation = CheckedContinuation<DisassociateDRTRoleOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: disassociateDRTRoleContinuation) in
            disassociateDRTRole(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Removes health-based detection from the Shield Advanced protection for a resource. Shield Advanced health-based detection uses the health of your Amazon Web Services resource to improve responsiveness and accuracy in attack detection and response. You define the health check in Route 53 and then associate or disassociate it with your Shield Advanced protection. For more information, see [Shield Advanced Health-Based Detection](https://docs.aws.amazon.com/waf/latest/developerguide/ddos-overview.html#ddos-advanced-health-check-option) in the WAF Developer Guide.
    func disassociateHealthCheck(input: DisassociateHealthCheckInput) async throws -> DisassociateHealthCheckOutputResponse
    {
        typealias disassociateHealthCheckContinuation = CheckedContinuation<DisassociateHealthCheckOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: disassociateHealthCheckContinuation) in
            disassociateHealthCheck(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Enable the Shield Advanced automatic application layer DDoS mitigation for the resource. This feature is available for Amazon CloudFront distributions only. This causes Shield Advanced to create, verify, and apply WAF rules for DDoS attacks that it detects for the resource. Shield Advanced applies the rules in a Shield rule group inside the web ACL that you've associated with the resource. For information about how automatic mitigation works and the requirements for using it, see [Shield Advanced automatic application layer DDoS mitigation](https://docs.aws.amazon.com/waf/latest/developerguide/ddos-advanced-automatic-app-layer-response.html). Don't use this action to make changes to automatic mitigation settings when it's already enabled for a resource. Instead, use [UpdateApplicationLayerAutomaticResponse]. To use this feature, you must associate a web ACL with the protected resource. The web ACL must be created using the latest version of WAF (v2). You can associate the web ACL through the Shield Advanced console at [https://console.aws.amazon.com/wafv2/shieldv2#/](https://console.aws.amazon.com/wafv2/shieldv2#/). For more information, see [Getting Started with Shield Advanced](https://docs.aws.amazon.com/waf/latest/developerguide/getting-started-ddos.html). You can also do this through the WAF console or the WAF API, but you must manage Shield Advanced automatic mitigation through Shield Advanced. For information about WAF, see [WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/).
    func enableApplicationLayerAutomaticResponse(input: EnableApplicationLayerAutomaticResponseInput) async throws -> EnableApplicationLayerAutomaticResponseOutputResponse
    {
        typealias enableApplicationLayerAutomaticResponseContinuation = CheckedContinuation<EnableApplicationLayerAutomaticResponseOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: enableApplicationLayerAutomaticResponseContinuation) in
            enableApplicationLayerAutomaticResponse(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Authorizes the Shield Response Team (SRT) to use email and phone to notify contacts about escalations to the SRT and to initiate proactive customer support.
    func enableProactiveEngagement(input: EnableProactiveEngagementInput) async throws -> EnableProactiveEngagementOutputResponse
    {
        typealias enableProactiveEngagementContinuation = CheckedContinuation<EnableProactiveEngagementOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: enableProactiveEngagementContinuation) in
            enableProactiveEngagement(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns the SubscriptionState, either Active or Inactive.
    func getSubscriptionState(input: GetSubscriptionStateInput) async throws -> GetSubscriptionStateOutputResponse
    {
        typealias getSubscriptionStateContinuation = CheckedContinuation<GetSubscriptionStateOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getSubscriptionStateContinuation) in
            getSubscriptionState(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns all ongoing DDoS attacks or all DDoS attacks during a specified time period.
    func listAttacks(input: ListAttacksInput) async throws -> ListAttacksOutputResponse
    {
        typealias listAttacksContinuation = CheckedContinuation<ListAttacksOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listAttacksContinuation) in
            listAttacks(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves the [ProtectionGroup] objects for the account.
    func listProtectionGroups(input: ListProtectionGroupsInput) async throws -> ListProtectionGroupsOutputResponse
    {
        typealias listProtectionGroupsContinuation = CheckedContinuation<ListProtectionGroupsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listProtectionGroupsContinuation) in
            listProtectionGroups(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists all [Protection] objects for the account.
    func listProtections(input: ListProtectionsInput) async throws -> ListProtectionsOutputResponse
    {
        typealias listProtectionsContinuation = CheckedContinuation<ListProtectionsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listProtectionsContinuation) in
            listProtections(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves the resources that are included in the protection group.
    func listResourcesInProtectionGroup(input: ListResourcesInProtectionGroupInput) async throws -> ListResourcesInProtectionGroupOutputResponse
    {
        typealias listResourcesInProtectionGroupContinuation = CheckedContinuation<ListResourcesInProtectionGroupOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listResourcesInProtectionGroupContinuation) in
            listResourcesInProtectionGroup(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Gets information about Amazon Web Services tags for a specified Amazon Resource Name (ARN) in Shield.
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

    /// Adds or updates tags for a resource in Shield.
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

    /// Removes tags from a resource in Shield.
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

    /// Updates an existing Shield Advanced automatic application layer DDoS mitigation configuration for the specified resource.
    func updateApplicationLayerAutomaticResponse(input: UpdateApplicationLayerAutomaticResponseInput) async throws -> UpdateApplicationLayerAutomaticResponseOutputResponse
    {
        typealias updateApplicationLayerAutomaticResponseContinuation = CheckedContinuation<UpdateApplicationLayerAutomaticResponseOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateApplicationLayerAutomaticResponseContinuation) in
            updateApplicationLayerAutomaticResponse(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Updates the details of the list of email addresses and phone numbers that the Shield Response Team (SRT) can use to contact you if you have proactive engagement enabled, for escalations to the SRT and to initiate proactive customer support.
    func updateEmergencyContactSettings(input: UpdateEmergencyContactSettingsInput) async throws -> UpdateEmergencyContactSettingsOutputResponse
    {
        typealias updateEmergencyContactSettingsContinuation = CheckedContinuation<UpdateEmergencyContactSettingsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateEmergencyContactSettingsContinuation) in
            updateEmergencyContactSettings(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Updates an existing protection group. A protection group is a grouping of protected resources so they can be handled as a collective. This resource grouping improves the accuracy of detection and reduces false positives.
    func updateProtectionGroup(input: UpdateProtectionGroupInput) async throws -> UpdateProtectionGroupOutputResponse
    {
        typealias updateProtectionGroupContinuation = CheckedContinuation<UpdateProtectionGroupOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateProtectionGroupContinuation) in
            updateProtectionGroup(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Updates the details of an existing subscription. Only enter values for parameters you want to change. Empty parameters are not updated.
    func updateSubscription(input: UpdateSubscriptionInput) async throws -> UpdateSubscriptionOutputResponse
    {
        typealias updateSubscriptionContinuation = CheckedContinuation<UpdateSubscriptionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateSubscriptionContinuation) in
            updateSubscription(input: input) { result in
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