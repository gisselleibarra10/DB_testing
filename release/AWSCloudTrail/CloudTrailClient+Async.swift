// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5) && canImport(_Concurrency)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension CloudTrailClient {
    /// Adds one or more tags to a trail, up to a limit of 50. Overwrites an existing tag's value when a new value is specified for an existing tag key. Tag key names must be unique for a trail; you cannot have two keys with the same name but different values. If you specify a key without a value, the tag will be created with the specified key and a value of null. You can tag a trail that applies to all Amazon Web Services Regions only from the Region in which the trail was created (also known as its home region).
    func addTags(input: AddTagsInput) async throws -> AddTagsOutputResponse
    {
        typealias addTagsContinuation = CheckedContinuation<AddTagsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: addTagsContinuation) in
            addTags(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a trail that specifies the settings for delivery of log data to an Amazon S3 bucket.
    func createTrail(input: CreateTrailInput) async throws -> CreateTrailOutputResponse
    {
        typealias createTrailContinuation = CheckedContinuation<CreateTrailOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createTrailContinuation) in
            createTrail(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes a trail. This operation must be called from the region in which the trail was created. DeleteTrail cannot be called on the shadow trails (replicated trails in other regions) of a trail that is enabled in all regions.
    func deleteTrail(input: DeleteTrailInput) async throws -> DeleteTrailOutputResponse
    {
        typealias deleteTrailContinuation = CheckedContinuation<DeleteTrailOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteTrailContinuation) in
            deleteTrail(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves settings for one or more trails associated with the current region for your account.
    func describeTrails(input: DescribeTrailsInput) async throws -> DescribeTrailsOutputResponse
    {
        typealias describeTrailsContinuation = CheckedContinuation<DescribeTrailsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeTrailsContinuation) in
            describeTrails(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Describes the settings for the event selectors that you configured for your trail. The information returned for your event selectors includes the following:
    ///
    /// * If your event selector includes read-only events, write-only events, or all events. This applies to both management events and data events.
    ///
    /// * If your event selector includes management events.
    ///
    /// * If your event selector includes data events, the resources on which you are logging data events.
    ///
    ///
    /// For more information, see [Logging Data and Management Events for Trails ](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-management-and-data-events-with-cloudtrail.html) in the CloudTrail User Guide.
    func getEventSelectors(input: GetEventSelectorsInput) async throws -> GetEventSelectorsOutputResponse
    {
        typealias getEventSelectorsContinuation = CheckedContinuation<GetEventSelectorsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getEventSelectorsContinuation) in
            getEventSelectors(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Describes the settings for the Insights event selectors that you configured for your trail. GetInsightSelectors shows if CloudTrail Insights event logging is enabled on the trail, and if it is, which insight types are enabled. If you run GetInsightSelectors on a trail that does not have Insights events enabled, the operation throws the exception InsightNotEnabledException For more information, see [Logging CloudTrail Insights Events for Trails ](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-insights-events-with-cloudtrail.html) in the CloudTrail User Guide.
    func getInsightSelectors(input: GetInsightSelectorsInput) async throws -> GetInsightSelectorsOutputResponse
    {
        typealias getInsightSelectorsContinuation = CheckedContinuation<GetInsightSelectorsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getInsightSelectorsContinuation) in
            getInsightSelectors(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns settings information for a specified trail.
    func getTrail(input: GetTrailInput) async throws -> GetTrailOutputResponse
    {
        typealias getTrailContinuation = CheckedContinuation<GetTrailOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getTrailContinuation) in
            getTrail(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns a JSON-formatted list of information about the specified trail. Fields include information on delivery errors, Amazon SNS and Amazon S3 errors, and start and stop logging times for each trail. This operation returns trail status from a single region. To return trail status from all regions, you must call the operation on each region.
    func getTrailStatus(input: GetTrailStatusInput) async throws -> GetTrailStatusOutputResponse
    {
        typealias getTrailStatusContinuation = CheckedContinuation<GetTrailStatusOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getTrailStatusContinuation) in
            getTrailStatus(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns all public keys whose private keys were used to sign the digest files within the specified time range. The public key is needed to validate digest files that were signed with its corresponding private key. CloudTrail uses different private and public key pairs per region. Each digest file is signed with a private key unique to its region. When you validate a digest file from a specific region, you must look in the same region for its corresponding public key.
    func listPublicKeys(input: ListPublicKeysInput) async throws -> ListPublicKeysOutputResponse
    {
        typealias listPublicKeysContinuation = CheckedContinuation<ListPublicKeysOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listPublicKeysContinuation) in
            listPublicKeys(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists the tags for the trail in the current region.
    func listTags(input: ListTagsInput) async throws -> ListTagsOutputResponse
    {
        typealias listTagsContinuation = CheckedContinuation<ListTagsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listTagsContinuation) in
            listTags(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists trails that are in the current account.
    func listTrails(input: ListTrailsInput) async throws -> ListTrailsOutputResponse
    {
        typealias listTrailsContinuation = CheckedContinuation<ListTrailsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listTrailsContinuation) in
            listTrails(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Looks up [management events](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-concepts.html#cloudtrail-concepts-management-events) or [CloudTrail Insights events](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-concepts.html#cloudtrail-concepts-insights-events) that are captured by CloudTrail. You can look up events that occurred in a region within the last 90 days. Lookup supports the following attributes for management events:
    ///
    /// * Amazon Web Services access key
    ///
    /// * Event ID
    ///
    /// * Event name
    ///
    /// * Event source
    ///
    /// * Read only
    ///
    /// * Resource name
    ///
    /// * Resource type
    ///
    /// * User name
    ///
    ///
    /// Lookup supports the following attributes for Insights events:
    ///
    /// * Event ID
    ///
    /// * Event name
    ///
    /// * Event source
    ///
    ///
    /// All attributes are optional. The default number of results returned is 50, with a maximum of 50 possible. The response includes a token that you can use to get the next page of results. The rate of lookup requests is limited to two per second, per account, per region. If this limit is exceeded, a throttling error occurs.
    func lookupEvents(input: LookupEventsInput) async throws -> LookupEventsOutputResponse
    {
        typealias lookupEventsContinuation = CheckedContinuation<LookupEventsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: lookupEventsContinuation) in
            lookupEvents(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Configures an event selector or advanced event selectors for your trail. Use event selectors or advanced event selectors to specify management and data event settings for your trail. By default, trails created without specific event selectors are configured to log all read and write management events, and no data events. When an event occurs in your account, CloudTrail evaluates the event selectors or advanced event selectors in all trails. For each trail, if the event matches any event selector, the trail processes and logs the event. If the event doesn't match any event selector, the trail doesn't log the event. Example
    ///
    /// * You create an event selector for a trail and specify that you want write-only events.
    ///
    /// * The EC2 GetConsoleOutput and RunInstances API operations occur in your account.
    ///
    /// * CloudTrail evaluates whether the events match your event selectors.
    ///
    /// * The RunInstances is a write-only event and it matches your event selector. The trail logs the event.
    ///
    /// * The GetConsoleOutput is a read-only event that doesn't match your event selector. The trail doesn't log the event.
    ///
    ///
    /// The PutEventSelectors operation must be called from the region in which the trail was created; otherwise, an InvalidHomeRegionException exception is thrown. You can configure up to five event selectors for each trail. For more information, see [Logging data and management events for trails ](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-management-and-data-events-with-cloudtrail.html) and [Quotas in CloudTrail](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/WhatIsCloudTrail-Limits.html) in the CloudTrail User Guide. You can add advanced event selectors, and conditions for your advanced event selectors, up to a maximum of 500 values for all conditions and selectors on a trail. You can use either AdvancedEventSelectors or EventSelectors, but not both. If you apply AdvancedEventSelectors to a trail, any existing EventSelectors are overwritten. For more information about advanced event selectors, see [Logging data events for trails](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-data-events-with-cloudtrail.html) in the CloudTrail User Guide.
    func putEventSelectors(input: PutEventSelectorsInput) async throws -> PutEventSelectorsOutputResponse
    {
        typealias putEventSelectorsContinuation = CheckedContinuation<PutEventSelectorsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: putEventSelectorsContinuation) in
            putEventSelectors(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lets you enable Insights event logging by specifying the Insights selectors that you want to enable on an existing trail. You also use PutInsightSelectors to turn off Insights event logging, by passing an empty list of insight types. The valid Insights event type in this release is ApiCallRateInsight.
    func putInsightSelectors(input: PutInsightSelectorsInput) async throws -> PutInsightSelectorsOutputResponse
    {
        typealias putInsightSelectorsContinuation = CheckedContinuation<PutInsightSelectorsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: putInsightSelectorsContinuation) in
            putInsightSelectors(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Removes the specified tags from a trail.
    func removeTags(input: RemoveTagsInput) async throws -> RemoveTagsOutputResponse
    {
        typealias removeTagsContinuation = CheckedContinuation<RemoveTagsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: removeTagsContinuation) in
            removeTags(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Starts the recording of Amazon Web Services API calls and log file delivery for a trail. For a trail that is enabled in all regions, this operation must be called from the region in which the trail was created. This operation cannot be called on the shadow trails (replicated trails in other regions) of a trail that is enabled in all regions.
    func startLogging(input: StartLoggingInput) async throws -> StartLoggingOutputResponse
    {
        typealias startLoggingContinuation = CheckedContinuation<StartLoggingOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: startLoggingContinuation) in
            startLogging(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Suspends the recording of Amazon Web Services API calls and log file delivery for the specified trail. Under most circumstances, there is no need to use this action. You can update a trail without stopping it first. This action is the only way to stop recording. For a trail enabled in all regions, this operation must be called from the region in which the trail was created, or an InvalidHomeRegionException will occur. This operation cannot be called on the shadow trails (replicated trails in other regions) of a trail enabled in all regions.
    func stopLogging(input: StopLoggingInput) async throws -> StopLoggingOutputResponse
    {
        typealias stopLoggingContinuation = CheckedContinuation<StopLoggingOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: stopLoggingContinuation) in
            stopLogging(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Updates trail settings that control what events you are logging, and how to handle log files. Changes to a trail do not require stopping the CloudTrail service. Use this action to designate an existing bucket for log delivery. If the existing bucket has previously been a target for CloudTrail log files, an IAM policy exists for the bucket. UpdateTrail must be called from the region in which the trail was created; otherwise, an InvalidHomeRegionException is thrown.
    func updateTrail(input: UpdateTrailInput) async throws -> UpdateTrailOutputResponse
    {
        typealias updateTrailContinuation = CheckedContinuation<UpdateTrailOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateTrailContinuation) in
            updateTrail(input: input) { result in
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