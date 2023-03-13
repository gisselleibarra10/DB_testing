// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension GlacierClientProtocol {

    static func vaultExistsWaiterConfig() throws -> WaiterConfiguration<DescribeVaultInput, DescribeVaultOutputResponse> {
        let acceptors: [WaiterConfiguration<DescribeVaultInput, DescribeVaultOutputResponse>.Acceptor] = [
            .init(state: .success, matcher: { (input: DescribeVaultInput, result: Result<DescribeVaultOutputResponse, Error>) -> Bool in
                switch result {
                    case .success: return true
                    case .failure: return false
                }
            }),
            .init(state: .retry, matcher: { (input: DescribeVaultInput, result: Result<DescribeVaultOutputResponse, Error>) -> Bool in
                guard case .failure(let error) = result else { return false }
                return (error as? WaiterTypedError)?.waiterErrorType == "ResourceNotFoundException"
            }),
        ]
        return try WaiterConfiguration<DescribeVaultInput, DescribeVaultOutputResponse>(acceptors: acceptors, minDelay: 3.0, maxDelay: 120.0)
    }

    /// Initiates waiting for the VaultExists event on the describeVault operation.
    /// The operation will be tried and (if necessary) retried until the wait succeeds, fails, or times out.
    /// Returns a `WaiterOutcome` asynchronously on waiter success, throws an error asynchronously on
    /// waiter failure or timeout.
    /// - Parameters:
    ///   - options: `WaiterOptions` to be used to configure this wait.
    ///   - input: The `DescribeVaultInput` object to be used as a parameter when performing the operation.
    /// - Returns: A `WaiterOutcome` with the result of the final, successful performance of the operation.
    /// - Throws: `WaiterFailureError` if the waiter fails due to matching an `Acceptor` with state `failure`
    /// or there is an error not handled by any `Acceptor.`
    /// `WaiterTimeoutError` if the waiter times out.
    public func waitUntilVaultExists(options: WaiterOptions, input: DescribeVaultInput) async throws -> WaiterOutcome<DescribeVaultOutputResponse> {
        let waiter = Waiter(config: try Self.vaultExistsWaiterConfig(), operation: self.describeVault(input:))
        return try await waiter.waitUntil(options: options, input: input)
    }

    static func vaultNotExistsWaiterConfig() throws -> WaiterConfiguration<DescribeVaultInput, DescribeVaultOutputResponse> {
        let acceptors: [WaiterConfiguration<DescribeVaultInput, DescribeVaultOutputResponse>.Acceptor] = [
            .init(state: .retry, matcher: { (input: DescribeVaultInput, result: Result<DescribeVaultOutputResponse, Error>) -> Bool in
                switch result {
                    case .success: return true
                    case .failure: return false
                }
            }),
            .init(state: .success, matcher: { (input: DescribeVaultInput, result: Result<DescribeVaultOutputResponse, Error>) -> Bool in
                guard case .failure(let error) = result else { return false }
                return (error as? WaiterTypedError)?.waiterErrorType == "ResourceNotFoundException"
            }),
        ]
        return try WaiterConfiguration<DescribeVaultInput, DescribeVaultOutputResponse>(acceptors: acceptors, minDelay: 3.0, maxDelay: 120.0)
    }

    /// Initiates waiting for the VaultNotExists event on the describeVault operation.
    /// The operation will be tried and (if necessary) retried until the wait succeeds, fails, or times out.
    /// Returns a `WaiterOutcome` asynchronously on waiter success, throws an error asynchronously on
    /// waiter failure or timeout.
    /// - Parameters:
    ///   - options: `WaiterOptions` to be used to configure this wait.
    ///   - input: The `DescribeVaultInput` object to be used as a parameter when performing the operation.
    /// - Returns: A `WaiterOutcome` with the result of the final, successful performance of the operation.
    /// - Throws: `WaiterFailureError` if the waiter fails due to matching an `Acceptor` with state `failure`
    /// or there is an error not handled by any `Acceptor.`
    /// `WaiterTimeoutError` if the waiter times out.
    public func waitUntilVaultNotExists(options: WaiterOptions, input: DescribeVaultInput) async throws -> WaiterOutcome<DescribeVaultOutputResponse> {
        let waiter = Waiter(config: try Self.vaultNotExistsWaiterConfig(), operation: self.describeVault(input:))
        return try await waiter.waitUntil(options: options, input: input)
    }
}
