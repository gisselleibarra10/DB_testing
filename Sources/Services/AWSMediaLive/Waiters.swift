// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension MediaLiveClientProtocol {

    static func channelCreatedWaiterConfig() throws -> WaiterConfiguration<DescribeChannelInput, DescribeChannelOutputResponse> {
        let acceptors: [WaiterConfiguration<DescribeChannelInput, DescribeChannelOutputResponse>.Acceptor] = [
            .init(state: .success, matcher: { (input: DescribeChannelInput, result: Result<DescribeChannelOutputResponse, Error>) -> Bool in
                // JMESPath expression: "State"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "IDLE"
                guard case .success(let output) = result else { return false }
                let state = output.state
                return JMESUtils.compare(state, ==, "IDLE")
            }),
            .init(state: .retry, matcher: { (input: DescribeChannelInput, result: Result<DescribeChannelOutputResponse, Error>) -> Bool in
                // JMESPath expression: "State"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "CREATING"
                guard case .success(let output) = result else { return false }
                let state = output.state
                return JMESUtils.compare(state, ==, "CREATING")
            }),
            .init(state: .retry, matcher: { (input: DescribeChannelInput, result: Result<DescribeChannelOutputResponse, Error>) -> Bool in
                guard case .failure(let error) = result else { return false }
                return (error as? WaiterTypedError)?.waiterErrorType == "InternalServerErrorException"
            }),
            .init(state: .failure, matcher: { (input: DescribeChannelInput, result: Result<DescribeChannelOutputResponse, Error>) -> Bool in
                // JMESPath expression: "State"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "CREATE_FAILED"
                guard case .success(let output) = result else { return false }
                let state = output.state
                return JMESUtils.compare(state, ==, "CREATE_FAILED")
            }),
        ]
        return try WaiterConfiguration<DescribeChannelInput, DescribeChannelOutputResponse>(acceptors: acceptors, minDelay: 3.0, maxDelay: 120.0)
    }

    /// Initiates waiting for the ChannelCreated event on the describeChannel operation.
    /// The operation will be tried and (if necessary) retried until the wait succeeds, fails, or times out.
    /// Returns a `WaiterOutcome` asynchronously on waiter success, throws an error asynchronously on
    /// waiter failure or timeout.
    /// - Parameters:
    ///   - options: `WaiterOptions` to be used to configure this wait.
    ///   - input: The `DescribeChannelInput` object to be used as a parameter when performing the operation.
    /// - Returns: A `WaiterOutcome` with the result of the final, successful performance of the operation.
    /// - Throws: `WaiterFailureError` if the waiter fails due to matching an `Acceptor` with state `failure`
    /// or there is an error not handled by any `Acceptor.`
    /// `WaiterTimeoutError` if the waiter times out.
    public func waitUntilChannelCreated(options: WaiterOptions, input: DescribeChannelInput) async throws -> WaiterOutcome<DescribeChannelOutputResponse> {
        let waiter = Waiter(config: try Self.channelCreatedWaiterConfig(), operation: self.describeChannel(input:))
        return try await waiter.waitUntil(options: options, input: input)
    }

    static func channelDeletedWaiterConfig() throws -> WaiterConfiguration<DescribeChannelInput, DescribeChannelOutputResponse> {
        let acceptors: [WaiterConfiguration<DescribeChannelInput, DescribeChannelOutputResponse>.Acceptor] = [
            .init(state: .success, matcher: { (input: DescribeChannelInput, result: Result<DescribeChannelOutputResponse, Error>) -> Bool in
                // JMESPath expression: "State"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "DELETED"
                guard case .success(let output) = result else { return false }
                let state = output.state
                return JMESUtils.compare(state, ==, "DELETED")
            }),
            .init(state: .retry, matcher: { (input: DescribeChannelInput, result: Result<DescribeChannelOutputResponse, Error>) -> Bool in
                // JMESPath expression: "State"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "DELETING"
                guard case .success(let output) = result else { return false }
                let state = output.state
                return JMESUtils.compare(state, ==, "DELETING")
            }),
            .init(state: .retry, matcher: { (input: DescribeChannelInput, result: Result<DescribeChannelOutputResponse, Error>) -> Bool in
                guard case .failure(let error) = result else { return false }
                return (error as? WaiterTypedError)?.waiterErrorType == "InternalServerErrorException"
            }),
        ]
        return try WaiterConfiguration<DescribeChannelInput, DescribeChannelOutputResponse>(acceptors: acceptors, minDelay: 5.0, maxDelay: 120.0)
    }

    /// Initiates waiting for the ChannelDeleted event on the describeChannel operation.
    /// The operation will be tried and (if necessary) retried until the wait succeeds, fails, or times out.
    /// Returns a `WaiterOutcome` asynchronously on waiter success, throws an error asynchronously on
    /// waiter failure or timeout.
    /// - Parameters:
    ///   - options: `WaiterOptions` to be used to configure this wait.
    ///   - input: The `DescribeChannelInput` object to be used as a parameter when performing the operation.
    /// - Returns: A `WaiterOutcome` with the result of the final, successful performance of the operation.
    /// - Throws: `WaiterFailureError` if the waiter fails due to matching an `Acceptor` with state `failure`
    /// or there is an error not handled by any `Acceptor.`
    /// `WaiterTimeoutError` if the waiter times out.
    public func waitUntilChannelDeleted(options: WaiterOptions, input: DescribeChannelInput) async throws -> WaiterOutcome<DescribeChannelOutputResponse> {
        let waiter = Waiter(config: try Self.channelDeletedWaiterConfig(), operation: self.describeChannel(input:))
        return try await waiter.waitUntil(options: options, input: input)
    }

    static func channelRunningWaiterConfig() throws -> WaiterConfiguration<DescribeChannelInput, DescribeChannelOutputResponse> {
        let acceptors: [WaiterConfiguration<DescribeChannelInput, DescribeChannelOutputResponse>.Acceptor] = [
            .init(state: .success, matcher: { (input: DescribeChannelInput, result: Result<DescribeChannelOutputResponse, Error>) -> Bool in
                // JMESPath expression: "State"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "RUNNING"
                guard case .success(let output) = result else { return false }
                let state = output.state
                return JMESUtils.compare(state, ==, "RUNNING")
            }),
            .init(state: .retry, matcher: { (input: DescribeChannelInput, result: Result<DescribeChannelOutputResponse, Error>) -> Bool in
                // JMESPath expression: "State"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "STARTING"
                guard case .success(let output) = result else { return false }
                let state = output.state
                return JMESUtils.compare(state, ==, "STARTING")
            }),
            .init(state: .retry, matcher: { (input: DescribeChannelInput, result: Result<DescribeChannelOutputResponse, Error>) -> Bool in
                guard case .failure(let error) = result else { return false }
                return (error as? WaiterTypedError)?.waiterErrorType == "InternalServerErrorException"
            }),
        ]
        return try WaiterConfiguration<DescribeChannelInput, DescribeChannelOutputResponse>(acceptors: acceptors, minDelay: 5.0, maxDelay: 120.0)
    }

    /// Initiates waiting for the ChannelRunning event on the describeChannel operation.
    /// The operation will be tried and (if necessary) retried until the wait succeeds, fails, or times out.
    /// Returns a `WaiterOutcome` asynchronously on waiter success, throws an error asynchronously on
    /// waiter failure or timeout.
    /// - Parameters:
    ///   - options: `WaiterOptions` to be used to configure this wait.
    ///   - input: The `DescribeChannelInput` object to be used as a parameter when performing the operation.
    /// - Returns: A `WaiterOutcome` with the result of the final, successful performance of the operation.
    /// - Throws: `WaiterFailureError` if the waiter fails due to matching an `Acceptor` with state `failure`
    /// or there is an error not handled by any `Acceptor.`
    /// `WaiterTimeoutError` if the waiter times out.
    public func waitUntilChannelRunning(options: WaiterOptions, input: DescribeChannelInput) async throws -> WaiterOutcome<DescribeChannelOutputResponse> {
        let waiter = Waiter(config: try Self.channelRunningWaiterConfig(), operation: self.describeChannel(input:))
        return try await waiter.waitUntil(options: options, input: input)
    }

    static func channelStoppedWaiterConfig() throws -> WaiterConfiguration<DescribeChannelInput, DescribeChannelOutputResponse> {
        let acceptors: [WaiterConfiguration<DescribeChannelInput, DescribeChannelOutputResponse>.Acceptor] = [
            .init(state: .success, matcher: { (input: DescribeChannelInput, result: Result<DescribeChannelOutputResponse, Error>) -> Bool in
                // JMESPath expression: "State"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "IDLE"
                guard case .success(let output) = result else { return false }
                let state = output.state
                return JMESUtils.compare(state, ==, "IDLE")
            }),
            .init(state: .retry, matcher: { (input: DescribeChannelInput, result: Result<DescribeChannelOutputResponse, Error>) -> Bool in
                // JMESPath expression: "State"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "STOPPING"
                guard case .success(let output) = result else { return false }
                let state = output.state
                return JMESUtils.compare(state, ==, "STOPPING")
            }),
            .init(state: .retry, matcher: { (input: DescribeChannelInput, result: Result<DescribeChannelOutputResponse, Error>) -> Bool in
                guard case .failure(let error) = result else { return false }
                return (error as? WaiterTypedError)?.waiterErrorType == "InternalServerErrorException"
            }),
        ]
        return try WaiterConfiguration<DescribeChannelInput, DescribeChannelOutputResponse>(acceptors: acceptors, minDelay: 5.0, maxDelay: 120.0)
    }

    /// Initiates waiting for the ChannelStopped event on the describeChannel operation.
    /// The operation will be tried and (if necessary) retried until the wait succeeds, fails, or times out.
    /// Returns a `WaiterOutcome` asynchronously on waiter success, throws an error asynchronously on
    /// waiter failure or timeout.
    /// - Parameters:
    ///   - options: `WaiterOptions` to be used to configure this wait.
    ///   - input: The `DescribeChannelInput` object to be used as a parameter when performing the operation.
    /// - Returns: A `WaiterOutcome` with the result of the final, successful performance of the operation.
    /// - Throws: `WaiterFailureError` if the waiter fails due to matching an `Acceptor` with state `failure`
    /// or there is an error not handled by any `Acceptor.`
    /// `WaiterTimeoutError` if the waiter times out.
    public func waitUntilChannelStopped(options: WaiterOptions, input: DescribeChannelInput) async throws -> WaiterOutcome<DescribeChannelOutputResponse> {
        let waiter = Waiter(config: try Self.channelStoppedWaiterConfig(), operation: self.describeChannel(input:))
        return try await waiter.waitUntil(options: options, input: input)
    }

    static func inputAttachedWaiterConfig() throws -> WaiterConfiguration<DescribeInputInput, DescribeInputOutputResponse> {
        let acceptors: [WaiterConfiguration<DescribeInputInput, DescribeInputOutputResponse>.Acceptor] = [
            .init(state: .success, matcher: { (input: DescribeInputInput, result: Result<DescribeInputOutputResponse, Error>) -> Bool in
                // JMESPath expression: "State"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "ATTACHED"
                guard case .success(let output) = result else { return false }
                let state = output.state
                return JMESUtils.compare(state, ==, "ATTACHED")
            }),
            .init(state: .retry, matcher: { (input: DescribeInputInput, result: Result<DescribeInputOutputResponse, Error>) -> Bool in
                // JMESPath expression: "State"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "DETACHED"
                guard case .success(let output) = result else { return false }
                let state = output.state
                return JMESUtils.compare(state, ==, "DETACHED")
            }),
            .init(state: .retry, matcher: { (input: DescribeInputInput, result: Result<DescribeInputOutputResponse, Error>) -> Bool in
                guard case .failure(let error) = result else { return false }
                return (error as? WaiterTypedError)?.waiterErrorType == "InternalServerErrorException"
            }),
        ]
        return try WaiterConfiguration<DescribeInputInput, DescribeInputOutputResponse>(acceptors: acceptors, minDelay: 5.0, maxDelay: 120.0)
    }

    /// Initiates waiting for the InputAttached event on the describeInput operation.
    /// The operation will be tried and (if necessary) retried until the wait succeeds, fails, or times out.
    /// Returns a `WaiterOutcome` asynchronously on waiter success, throws an error asynchronously on
    /// waiter failure or timeout.
    /// - Parameters:
    ///   - options: `WaiterOptions` to be used to configure this wait.
    ///   - input: The `DescribeInputInput` object to be used as a parameter when performing the operation.
    /// - Returns: A `WaiterOutcome` with the result of the final, successful performance of the operation.
    /// - Throws: `WaiterFailureError` if the waiter fails due to matching an `Acceptor` with state `failure`
    /// or there is an error not handled by any `Acceptor.`
    /// `WaiterTimeoutError` if the waiter times out.
    public func waitUntilInputAttached(options: WaiterOptions, input: DescribeInputInput) async throws -> WaiterOutcome<DescribeInputOutputResponse> {
        let waiter = Waiter(config: try Self.inputAttachedWaiterConfig(), operation: self.describeInput(input:))
        return try await waiter.waitUntil(options: options, input: input)
    }

    static func inputDeletedWaiterConfig() throws -> WaiterConfiguration<DescribeInputInput, DescribeInputOutputResponse> {
        let acceptors: [WaiterConfiguration<DescribeInputInput, DescribeInputOutputResponse>.Acceptor] = [
            .init(state: .success, matcher: { (input: DescribeInputInput, result: Result<DescribeInputOutputResponse, Error>) -> Bool in
                // JMESPath expression: "State"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "DELETED"
                guard case .success(let output) = result else { return false }
                let state = output.state
                return JMESUtils.compare(state, ==, "DELETED")
            }),
            .init(state: .retry, matcher: { (input: DescribeInputInput, result: Result<DescribeInputOutputResponse, Error>) -> Bool in
                // JMESPath expression: "State"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "DELETING"
                guard case .success(let output) = result else { return false }
                let state = output.state
                return JMESUtils.compare(state, ==, "DELETING")
            }),
            .init(state: .retry, matcher: { (input: DescribeInputInput, result: Result<DescribeInputOutputResponse, Error>) -> Bool in
                guard case .failure(let error) = result else { return false }
                return (error as? WaiterTypedError)?.waiterErrorType == "InternalServerErrorException"
            }),
        ]
        return try WaiterConfiguration<DescribeInputInput, DescribeInputOutputResponse>(acceptors: acceptors, minDelay: 5.0, maxDelay: 120.0)
    }

    /// Initiates waiting for the InputDeleted event on the describeInput operation.
    /// The operation will be tried and (if necessary) retried until the wait succeeds, fails, or times out.
    /// Returns a `WaiterOutcome` asynchronously on waiter success, throws an error asynchronously on
    /// waiter failure or timeout.
    /// - Parameters:
    ///   - options: `WaiterOptions` to be used to configure this wait.
    ///   - input: The `DescribeInputInput` object to be used as a parameter when performing the operation.
    /// - Returns: A `WaiterOutcome` with the result of the final, successful performance of the operation.
    /// - Throws: `WaiterFailureError` if the waiter fails due to matching an `Acceptor` with state `failure`
    /// or there is an error not handled by any `Acceptor.`
    /// `WaiterTimeoutError` if the waiter times out.
    public func waitUntilInputDeleted(options: WaiterOptions, input: DescribeInputInput) async throws -> WaiterOutcome<DescribeInputOutputResponse> {
        let waiter = Waiter(config: try Self.inputDeletedWaiterConfig(), operation: self.describeInput(input:))
        return try await waiter.waitUntil(options: options, input: input)
    }

    static func inputDetachedWaiterConfig() throws -> WaiterConfiguration<DescribeInputInput, DescribeInputOutputResponse> {
        let acceptors: [WaiterConfiguration<DescribeInputInput, DescribeInputOutputResponse>.Acceptor] = [
            .init(state: .success, matcher: { (input: DescribeInputInput, result: Result<DescribeInputOutputResponse, Error>) -> Bool in
                // JMESPath expression: "State"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "DETACHED"
                guard case .success(let output) = result else { return false }
                let state = output.state
                return JMESUtils.compare(state, ==, "DETACHED")
            }),
            .init(state: .retry, matcher: { (input: DescribeInputInput, result: Result<DescribeInputOutputResponse, Error>) -> Bool in
                // JMESPath expression: "State"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "CREATING"
                guard case .success(let output) = result else { return false }
                let state = output.state
                return JMESUtils.compare(state, ==, "CREATING")
            }),
            .init(state: .retry, matcher: { (input: DescribeInputInput, result: Result<DescribeInputOutputResponse, Error>) -> Bool in
                // JMESPath expression: "State"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "ATTACHED"
                guard case .success(let output) = result else { return false }
                let state = output.state
                return JMESUtils.compare(state, ==, "ATTACHED")
            }),
            .init(state: .retry, matcher: { (input: DescribeInputInput, result: Result<DescribeInputOutputResponse, Error>) -> Bool in
                guard case .failure(let error) = result else { return false }
                return (error as? WaiterTypedError)?.waiterErrorType == "InternalServerErrorException"
            }),
        ]
        return try WaiterConfiguration<DescribeInputInput, DescribeInputOutputResponse>(acceptors: acceptors, minDelay: 5.0, maxDelay: 120.0)
    }

    /// Initiates waiting for the InputDetached event on the describeInput operation.
    /// The operation will be tried and (if necessary) retried until the wait succeeds, fails, or times out.
    /// Returns a `WaiterOutcome` asynchronously on waiter success, throws an error asynchronously on
    /// waiter failure or timeout.
    /// - Parameters:
    ///   - options: `WaiterOptions` to be used to configure this wait.
    ///   - input: The `DescribeInputInput` object to be used as a parameter when performing the operation.
    /// - Returns: A `WaiterOutcome` with the result of the final, successful performance of the operation.
    /// - Throws: `WaiterFailureError` if the waiter fails due to matching an `Acceptor` with state `failure`
    /// or there is an error not handled by any `Acceptor.`
    /// `WaiterTimeoutError` if the waiter times out.
    public func waitUntilInputDetached(options: WaiterOptions, input: DescribeInputInput) async throws -> WaiterOutcome<DescribeInputOutputResponse> {
        let waiter = Waiter(config: try Self.inputDetachedWaiterConfig(), operation: self.describeInput(input:))
        return try await waiter.waitUntil(options: options, input: input)
    }

    static func multiplexCreatedWaiterConfig() throws -> WaiterConfiguration<DescribeMultiplexInput, DescribeMultiplexOutputResponse> {
        let acceptors: [WaiterConfiguration<DescribeMultiplexInput, DescribeMultiplexOutputResponse>.Acceptor] = [
            .init(state: .success, matcher: { (input: DescribeMultiplexInput, result: Result<DescribeMultiplexOutputResponse, Error>) -> Bool in
                // JMESPath expression: "State"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "IDLE"
                guard case .success(let output) = result else { return false }
                let state = output.state
                return JMESUtils.compare(state, ==, "IDLE")
            }),
            .init(state: .retry, matcher: { (input: DescribeMultiplexInput, result: Result<DescribeMultiplexOutputResponse, Error>) -> Bool in
                // JMESPath expression: "State"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "CREATING"
                guard case .success(let output) = result else { return false }
                let state = output.state
                return JMESUtils.compare(state, ==, "CREATING")
            }),
            .init(state: .retry, matcher: { (input: DescribeMultiplexInput, result: Result<DescribeMultiplexOutputResponse, Error>) -> Bool in
                guard case .failure(let error) = result else { return false }
                return (error as? WaiterTypedError)?.waiterErrorType == "InternalServerErrorException"
            }),
            .init(state: .failure, matcher: { (input: DescribeMultiplexInput, result: Result<DescribeMultiplexOutputResponse, Error>) -> Bool in
                // JMESPath expression: "State"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "CREATE_FAILED"
                guard case .success(let output) = result else { return false }
                let state = output.state
                return JMESUtils.compare(state, ==, "CREATE_FAILED")
            }),
        ]
        return try WaiterConfiguration<DescribeMultiplexInput, DescribeMultiplexOutputResponse>(acceptors: acceptors, minDelay: 3.0, maxDelay: 120.0)
    }

    /// Initiates waiting for the MultiplexCreated event on the describeMultiplex operation.
    /// The operation will be tried and (if necessary) retried until the wait succeeds, fails, or times out.
    /// Returns a `WaiterOutcome` asynchronously on waiter success, throws an error asynchronously on
    /// waiter failure or timeout.
    /// - Parameters:
    ///   - options: `WaiterOptions` to be used to configure this wait.
    ///   - input: The `DescribeMultiplexInput` object to be used as a parameter when performing the operation.
    /// - Returns: A `WaiterOutcome` with the result of the final, successful performance of the operation.
    /// - Throws: `WaiterFailureError` if the waiter fails due to matching an `Acceptor` with state `failure`
    /// or there is an error not handled by any `Acceptor.`
    /// `WaiterTimeoutError` if the waiter times out.
    public func waitUntilMultiplexCreated(options: WaiterOptions, input: DescribeMultiplexInput) async throws -> WaiterOutcome<DescribeMultiplexOutputResponse> {
        let waiter = Waiter(config: try Self.multiplexCreatedWaiterConfig(), operation: self.describeMultiplex(input:))
        return try await waiter.waitUntil(options: options, input: input)
    }

    static func multiplexDeletedWaiterConfig() throws -> WaiterConfiguration<DescribeMultiplexInput, DescribeMultiplexOutputResponse> {
        let acceptors: [WaiterConfiguration<DescribeMultiplexInput, DescribeMultiplexOutputResponse>.Acceptor] = [
            .init(state: .success, matcher: { (input: DescribeMultiplexInput, result: Result<DescribeMultiplexOutputResponse, Error>) -> Bool in
                // JMESPath expression: "State"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "DELETED"
                guard case .success(let output) = result else { return false }
                let state = output.state
                return JMESUtils.compare(state, ==, "DELETED")
            }),
            .init(state: .retry, matcher: { (input: DescribeMultiplexInput, result: Result<DescribeMultiplexOutputResponse, Error>) -> Bool in
                // JMESPath expression: "State"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "DELETING"
                guard case .success(let output) = result else { return false }
                let state = output.state
                return JMESUtils.compare(state, ==, "DELETING")
            }),
            .init(state: .retry, matcher: { (input: DescribeMultiplexInput, result: Result<DescribeMultiplexOutputResponse, Error>) -> Bool in
                guard case .failure(let error) = result else { return false }
                return (error as? WaiterTypedError)?.waiterErrorType == "InternalServerErrorException"
            }),
        ]
        return try WaiterConfiguration<DescribeMultiplexInput, DescribeMultiplexOutputResponse>(acceptors: acceptors, minDelay: 5.0, maxDelay: 120.0)
    }

    /// Initiates waiting for the MultiplexDeleted event on the describeMultiplex operation.
    /// The operation will be tried and (if necessary) retried until the wait succeeds, fails, or times out.
    /// Returns a `WaiterOutcome` asynchronously on waiter success, throws an error asynchronously on
    /// waiter failure or timeout.
    /// - Parameters:
    ///   - options: `WaiterOptions` to be used to configure this wait.
    ///   - input: The `DescribeMultiplexInput` object to be used as a parameter when performing the operation.
    /// - Returns: A `WaiterOutcome` with the result of the final, successful performance of the operation.
    /// - Throws: `WaiterFailureError` if the waiter fails due to matching an `Acceptor` with state `failure`
    /// or there is an error not handled by any `Acceptor.`
    /// `WaiterTimeoutError` if the waiter times out.
    public func waitUntilMultiplexDeleted(options: WaiterOptions, input: DescribeMultiplexInput) async throws -> WaiterOutcome<DescribeMultiplexOutputResponse> {
        let waiter = Waiter(config: try Self.multiplexDeletedWaiterConfig(), operation: self.describeMultiplex(input:))
        return try await waiter.waitUntil(options: options, input: input)
    }

    static func multiplexRunningWaiterConfig() throws -> WaiterConfiguration<DescribeMultiplexInput, DescribeMultiplexOutputResponse> {
        let acceptors: [WaiterConfiguration<DescribeMultiplexInput, DescribeMultiplexOutputResponse>.Acceptor] = [
            .init(state: .success, matcher: { (input: DescribeMultiplexInput, result: Result<DescribeMultiplexOutputResponse, Error>) -> Bool in
                // JMESPath expression: "State"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "RUNNING"
                guard case .success(let output) = result else { return false }
                let state = output.state
                return JMESUtils.compare(state, ==, "RUNNING")
            }),
            .init(state: .retry, matcher: { (input: DescribeMultiplexInput, result: Result<DescribeMultiplexOutputResponse, Error>) -> Bool in
                // JMESPath expression: "State"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "STARTING"
                guard case .success(let output) = result else { return false }
                let state = output.state
                return JMESUtils.compare(state, ==, "STARTING")
            }),
            .init(state: .retry, matcher: { (input: DescribeMultiplexInput, result: Result<DescribeMultiplexOutputResponse, Error>) -> Bool in
                guard case .failure(let error) = result else { return false }
                return (error as? WaiterTypedError)?.waiterErrorType == "InternalServerErrorException"
            }),
        ]
        return try WaiterConfiguration<DescribeMultiplexInput, DescribeMultiplexOutputResponse>(acceptors: acceptors, minDelay: 5.0, maxDelay: 120.0)
    }

    /// Initiates waiting for the MultiplexRunning event on the describeMultiplex operation.
    /// The operation will be tried and (if necessary) retried until the wait succeeds, fails, or times out.
    /// Returns a `WaiterOutcome` asynchronously on waiter success, throws an error asynchronously on
    /// waiter failure or timeout.
    /// - Parameters:
    ///   - options: `WaiterOptions` to be used to configure this wait.
    ///   - input: The `DescribeMultiplexInput` object to be used as a parameter when performing the operation.
    /// - Returns: A `WaiterOutcome` with the result of the final, successful performance of the operation.
    /// - Throws: `WaiterFailureError` if the waiter fails due to matching an `Acceptor` with state `failure`
    /// or there is an error not handled by any `Acceptor.`
    /// `WaiterTimeoutError` if the waiter times out.
    public func waitUntilMultiplexRunning(options: WaiterOptions, input: DescribeMultiplexInput) async throws -> WaiterOutcome<DescribeMultiplexOutputResponse> {
        let waiter = Waiter(config: try Self.multiplexRunningWaiterConfig(), operation: self.describeMultiplex(input:))
        return try await waiter.waitUntil(options: options, input: input)
    }

    static func multiplexStoppedWaiterConfig() throws -> WaiterConfiguration<DescribeMultiplexInput, DescribeMultiplexOutputResponse> {
        let acceptors: [WaiterConfiguration<DescribeMultiplexInput, DescribeMultiplexOutputResponse>.Acceptor] = [
            .init(state: .success, matcher: { (input: DescribeMultiplexInput, result: Result<DescribeMultiplexOutputResponse, Error>) -> Bool in
                // JMESPath expression: "State"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "IDLE"
                guard case .success(let output) = result else { return false }
                let state = output.state
                return JMESUtils.compare(state, ==, "IDLE")
            }),
            .init(state: .retry, matcher: { (input: DescribeMultiplexInput, result: Result<DescribeMultiplexOutputResponse, Error>) -> Bool in
                // JMESPath expression: "State"
                // JMESPath comparator: "stringEquals"
                // JMESPath expected value: "STOPPING"
                guard case .success(let output) = result else { return false }
                let state = output.state
                return JMESUtils.compare(state, ==, "STOPPING")
            }),
            .init(state: .retry, matcher: { (input: DescribeMultiplexInput, result: Result<DescribeMultiplexOutputResponse, Error>) -> Bool in
                guard case .failure(let error) = result else { return false }
                return (error as? WaiterTypedError)?.waiterErrorType == "InternalServerErrorException"
            }),
        ]
        return try WaiterConfiguration<DescribeMultiplexInput, DescribeMultiplexOutputResponse>(acceptors: acceptors, minDelay: 5.0, maxDelay: 120.0)
    }

    /// Initiates waiting for the MultiplexStopped event on the describeMultiplex operation.
    /// The operation will be tried and (if necessary) retried until the wait succeeds, fails, or times out.
    /// Returns a `WaiterOutcome` asynchronously on waiter success, throws an error asynchronously on
    /// waiter failure or timeout.
    /// - Parameters:
    ///   - options: `WaiterOptions` to be used to configure this wait.
    ///   - input: The `DescribeMultiplexInput` object to be used as a parameter when performing the operation.
    /// - Returns: A `WaiterOutcome` with the result of the final, successful performance of the operation.
    /// - Throws: `WaiterFailureError` if the waiter fails due to matching an `Acceptor` with state `failure`
    /// or there is an error not handled by any `Acceptor.`
    /// `WaiterTimeoutError` if the waiter times out.
    public func waitUntilMultiplexStopped(options: WaiterOptions, input: DescribeMultiplexInput) async throws -> WaiterOutcome<DescribeMultiplexOutputResponse> {
        let waiter = Waiter(config: try Self.multiplexStoppedWaiterConfig(), operation: self.describeMultiplex(input:))
        return try await waiter.waitUntil(options: options, input: input)
    }
}
