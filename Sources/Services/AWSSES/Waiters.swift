// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension SESClientProtocol {

    static func identityExistsWaiterConfig() throws -> WaiterConfiguration<GetIdentityVerificationAttributesInput, GetIdentityVerificationAttributesOutputResponse> {
        let acceptors: [WaiterConfiguration<GetIdentityVerificationAttributesInput, GetIdentityVerificationAttributesOutputResponse>.Acceptor] = [
            .init(state: .success, matcher: { (input: GetIdentityVerificationAttributesInput, result: Result<GetIdentityVerificationAttributesOutputResponse, Error>) -> Bool in
                // JMESPath expression: "VerificationAttributes.*.VerificationStatus"
                // JMESPath comparator: "allStringEquals"
                // JMESPath expected value: "Success"
                guard case .success(let output) = result else { return false }
                let verificationAttributes = output.verificationAttributes
                let projection = verificationAttributes.map { Array($0.values) }
                let projection2: [SESClientTypes.VerificationStatus]? = projection?.compactMap { original in
                    let verificationStatus = original.verificationStatus
                    return verificationStatus
                }
                return (projection2?.count ?? 0) > 1 && (projection2?.allSatisfy { JMESUtils.compare($0, ==, "Success") } ?? false)
            }),
        ]
        return try WaiterConfiguration<GetIdentityVerificationAttributesInput, GetIdentityVerificationAttributesOutputResponse>(acceptors: acceptors, minDelay: 3.0, maxDelay: 120.0)
    }

    /// Initiates waiting for the IdentityExists event on the getIdentityVerificationAttributes operation.
    /// The operation will be tried and (if necessary) retried until the wait succeeds, fails, or times out.
    /// Returns a `WaiterOutcome` asynchronously on waiter success, throws an error asynchronously on
    /// waiter failure or timeout.
    /// - Parameters:
    ///   - options: `WaiterOptions` to be used to configure this wait.
    ///   - input: The `GetIdentityVerificationAttributesInput` object to be used as a parameter when performing the operation.
    /// - Returns: A `WaiterOutcome` with the result of the final, successful performance of the operation.
    /// - Throws: `WaiterFailureError` if the waiter fails due to matching an `Acceptor` with state `failure`
    /// or there is an error not handled by any `Acceptor.`
    /// `WaiterTimeoutError` if the waiter times out.
    public func waitUntilIdentityExists(options: WaiterOptions, input: GetIdentityVerificationAttributesInput) async throws -> WaiterOutcome<GetIdentityVerificationAttributesOutputResponse> {
        let waiter = Waiter(config: try Self.identityExistsWaiterConfig(), operation: self.getIdentityVerificationAttributes(input:))
        return try await waiter.waitUntil(options: options, input: input)
    }
}
