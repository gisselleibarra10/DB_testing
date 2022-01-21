// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5) && canImport(_Concurrency)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension PinpointSmsVoiceClient {
    /// Create a new configuration set. After you create the configuration set, you can add one or more event destinations to it.
    func createConfigurationSet(input: CreateConfigurationSetInput) async throws -> CreateConfigurationSetOutputResponse
    {
        typealias createConfigurationSetContinuation = CheckedContinuation<CreateConfigurationSetOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createConfigurationSetContinuation) in
            createConfigurationSet(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Create a new event destination in a configuration set.
    func createConfigurationSetEventDestination(input: CreateConfigurationSetEventDestinationInput) async throws -> CreateConfigurationSetEventDestinationOutputResponse
    {
        typealias createConfigurationSetEventDestinationContinuation = CheckedContinuation<CreateConfigurationSetEventDestinationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createConfigurationSetEventDestinationContinuation) in
            createConfigurationSetEventDestination(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes an existing configuration set.
    func deleteConfigurationSet(input: DeleteConfigurationSetInput) async throws -> DeleteConfigurationSetOutputResponse
    {
        typealias deleteConfigurationSetContinuation = CheckedContinuation<DeleteConfigurationSetOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteConfigurationSetContinuation) in
            deleteConfigurationSet(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes an event destination in a configuration set.
    func deleteConfigurationSetEventDestination(input: DeleteConfigurationSetEventDestinationInput) async throws -> DeleteConfigurationSetEventDestinationOutputResponse
    {
        typealias deleteConfigurationSetEventDestinationContinuation = CheckedContinuation<DeleteConfigurationSetEventDestinationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteConfigurationSetEventDestinationContinuation) in
            deleteConfigurationSetEventDestination(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Obtain information about an event destination, including the types of events it reports, the Amazon Resource Name (ARN) of the destination, and the name of the event destination.
    func getConfigurationSetEventDestinations(input: GetConfigurationSetEventDestinationsInput) async throws -> GetConfigurationSetEventDestinationsOutputResponse
    {
        typealias getConfigurationSetEventDestinationsContinuation = CheckedContinuation<GetConfigurationSetEventDestinationsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getConfigurationSetEventDestinationsContinuation) in
            getConfigurationSetEventDestinations(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// List all of the configuration sets associated with your Amazon Pinpoint account in the current region.
    func listConfigurationSets(input: ListConfigurationSetsInput) async throws -> ListConfigurationSetsOutputResponse
    {
        typealias listConfigurationSetsContinuation = CheckedContinuation<ListConfigurationSetsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listConfigurationSetsContinuation) in
            listConfigurationSets(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Create a new voice message and send it to a recipient's phone number.
    func sendVoiceMessage(input: SendVoiceMessageInput) async throws -> SendVoiceMessageOutputResponse
    {
        typealias sendVoiceMessageContinuation = CheckedContinuation<SendVoiceMessageOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: sendVoiceMessageContinuation) in
            sendVoiceMessage(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Update an event destination in a configuration set. An event destination is a location that you publish information about your voice calls to. For example, you can log an event to an Amazon CloudWatch destination when a call fails.
    func updateConfigurationSetEventDestination(input: UpdateConfigurationSetEventDestinationInput) async throws -> UpdateConfigurationSetEventDestinationOutputResponse
    {
        typealias updateConfigurationSetEventDestinationContinuation = CheckedContinuation<UpdateConfigurationSetEventDestinationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateConfigurationSetEventDestinationContinuation) in
            updateConfigurationSetEventDestination(input: input) { result in
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