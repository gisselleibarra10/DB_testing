// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5) && canImport(_Concurrency)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension AccountClient {
    /// Deletes the specified alternate contact from an Amazon Web Services account. For complete details about how to use the alternate contact operations, see [Access or updating the alternate contacts](https://docs.aws.amazon.com/accounts/latest/reference/manage-acct-update-contact.html).
    func deleteAlternateContact(input: DeleteAlternateContactInput) async throws -> DeleteAlternateContactOutputResponse
    {
        typealias deleteAlternateContactContinuation = CheckedContinuation<DeleteAlternateContactOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteAlternateContactContinuation) in
            deleteAlternateContact(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves the specified alternate contact attached to an Amazon Web Services account. For complete details about how to use the alternate contact operations, see [Access or updating the alternate contacts](https://docs.aws.amazon.com/accounts/latest/reference/manage-acct-update-contact.html).
    func getAlternateContact(input: GetAlternateContactInput) async throws -> GetAlternateContactOutputResponse
    {
        typealias getAlternateContactContinuation = CheckedContinuation<GetAlternateContactOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getAlternateContactContinuation) in
            getAlternateContact(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Modifies the specified alternate contact attached to an Amazon Web Services account. For complete details about how to use the alternate contact operations, see [Access or updating the alternate contacts](https://docs.aws.amazon.com/accounts/latest/reference/manage-acct-update-contact.html).
    func putAlternateContact(input: PutAlternateContactInput) async throws -> PutAlternateContactOutputResponse
    {
        typealias putAlternateContactContinuation = CheckedContinuation<PutAlternateContactOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: putAlternateContactContinuation) in
            putAlternateContact(input: input) { result in
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