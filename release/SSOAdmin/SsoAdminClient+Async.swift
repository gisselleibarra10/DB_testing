// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension SsoAdminClient {
    /// <p>Attaches an IAM managed policy ARN to a permission set.</p>
    ///          <note>
    ///             <p>If the permission set is already referenced by one or more account assignments, you will need to call <code>
    ///                   <a>ProvisionPermissionSet</a>
    ///                </code> after this action to apply the corresponding IAM policy updates to all assigned accounts.</p>
    ///          </note>
    func attachManagedPolicyToPermissionSet(input: AttachManagedPolicyToPermissionSetInput) async throws -> AttachManagedPolicyToPermissionSetOutputResponse
    {
        typealias attachManagedPolicyToPermissionSetContinuation = CheckedContinuation<AttachManagedPolicyToPermissionSetOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: attachManagedPolicyToPermissionSetContinuation) in
            attachManagedPolicyToPermissionSet(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Assigns access to a principal for a specified AWS account using a specified permission
    ///       set.</p>
    ///          <note>
    ///             <p>The term <i>principal</i> here refers to a user or group that is defined in AWS SSO.</p>
    ///          </note>
    ///          <note>
    ///             <p>As part of a successful <code>CreateAccountAssignment</code> call, the specified permission set will automatically be provisioned to the account in the form of an IAM policy attached to the SSO-created IAM role. If the permission set is subsequently updated, the corresponding IAM policies attached to roles in your accounts will not be updated automatically. In this case, you will need to call <code>
    ///                   <a>ProvisionPermissionSet</a>
    ///                </code> to make these updates.</p>
    ///          </note>
    func createAccountAssignment(input: CreateAccountAssignmentInput) async throws -> CreateAccountAssignmentOutputResponse
    {
        typealias createAccountAssignmentContinuation = CheckedContinuation<CreateAccountAssignmentOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createAccountAssignmentContinuation) in
            createAccountAssignment(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Enables the attributes-based access control (ABAC) feature for the specified AWS SSO instance. You can also specify new attributes to add to your ABAC configuration during the enabling process. For more information about ABAC, see <a href="/singlesignon/latest/userguide/abac.html">Attribute-Based Access Control</a> in the <i>AWS SSO User Guide</i>.</p>
    func createInstanceAccessControlAttributeConfiguration(input: CreateInstanceAccessControlAttributeConfigurationInput) async throws -> CreateInstanceAccessControlAttributeConfigurationOutputResponse
    {
        typealias createInstanceAccessControlAttributeConfigurationContinuation = CheckedContinuation<CreateInstanceAccessControlAttributeConfigurationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createInstanceAccessControlAttributeConfigurationContinuation) in
            createInstanceAccessControlAttributeConfiguration(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Creates a permission set within a specified SSO instance.</p>
    ///          <note>
    ///             <p>To grant users and groups access to AWS account resources, use <code>
    ///                   <a>CreateAccountAssignment</a>
    ///                </code>.</p>
    ///          </note>
    func createPermissionSet(input: CreatePermissionSetInput) async throws -> CreatePermissionSetOutputResponse
    {
        typealias createPermissionSetContinuation = CheckedContinuation<CreatePermissionSetOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createPermissionSetContinuation) in
            createPermissionSet(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Deletes a principal's access from a specified AWS account using a specified permission
    ///       set.</p>
    func deleteAccountAssignment(input: DeleteAccountAssignmentInput) async throws -> DeleteAccountAssignmentOutputResponse
    {
        typealias deleteAccountAssignmentContinuation = CheckedContinuation<DeleteAccountAssignmentOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteAccountAssignmentContinuation) in
            deleteAccountAssignment(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Deletes the inline policy from a specified permission set.</p>
    func deleteInlinePolicyFromPermissionSet(input: DeleteInlinePolicyFromPermissionSetInput) async throws -> DeleteInlinePolicyFromPermissionSetOutputResponse
    {
        typealias deleteInlinePolicyFromPermissionSetContinuation = CheckedContinuation<DeleteInlinePolicyFromPermissionSetOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteInlinePolicyFromPermissionSetContinuation) in
            deleteInlinePolicyFromPermissionSet(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Disables the attributes-based access control (ABAC) feature for the specified AWS SSO instance and deletes all of the attribute mappings that have been configured. Once deleted, any attributes that are received from an identity source and any custom attributes you have previously configured will not be passed. For more information about ABAC, see <a href="/singlesignon/latest/userguide/abac.html">Attribute-Based Access Control</a> in the <i>AWS SSO User Guide</i>.</p>
    func deleteInstanceAccessControlAttributeConfiguration(input: DeleteInstanceAccessControlAttributeConfigurationInput) async throws -> DeleteInstanceAccessControlAttributeConfigurationOutputResponse
    {
        typealias deleteInstanceAccessControlAttributeConfigurationContinuation = CheckedContinuation<DeleteInstanceAccessControlAttributeConfigurationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteInstanceAccessControlAttributeConfigurationContinuation) in
            deleteInstanceAccessControlAttributeConfiguration(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Deletes the specified permission set.</p>
    func deletePermissionSet(input: DeletePermissionSetInput) async throws -> DeletePermissionSetOutputResponse
    {
        typealias deletePermissionSetContinuation = CheckedContinuation<DeletePermissionSetOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deletePermissionSetContinuation) in
            deletePermissionSet(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Describes the status of the assignment creation request.</p>
    func describeAccountAssignmentCreationStatus(input: DescribeAccountAssignmentCreationStatusInput) async throws -> DescribeAccountAssignmentCreationStatusOutputResponse
    {
        typealias describeAccountAssignmentCreationStatusContinuation = CheckedContinuation<DescribeAccountAssignmentCreationStatusOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeAccountAssignmentCreationStatusContinuation) in
            describeAccountAssignmentCreationStatus(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Describes the status of the assignment deletion request.</p>
    func describeAccountAssignmentDeletionStatus(input: DescribeAccountAssignmentDeletionStatusInput) async throws -> DescribeAccountAssignmentDeletionStatusOutputResponse
    {
        typealias describeAccountAssignmentDeletionStatusContinuation = CheckedContinuation<DescribeAccountAssignmentDeletionStatusOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeAccountAssignmentDeletionStatusContinuation) in
            describeAccountAssignmentDeletionStatus(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Returns the list of AWS SSO identity store attributes that have been configured to work with attributes-based access control (ABAC) for the specified AWS SSO instance. This will not return attributes configured and sent by an external identity provider. For more information about ABAC, see <a href="/singlesignon/latest/userguide/abac.html">Attribute-Based Access Control</a> in the <i>AWS SSO User Guide</i>.</p>
    func describeInstanceAccessControlAttributeConfiguration(input: DescribeInstanceAccessControlAttributeConfigurationInput) async throws -> DescribeInstanceAccessControlAttributeConfigurationOutputResponse
    {
        typealias describeInstanceAccessControlAttributeConfigurationContinuation = CheckedContinuation<DescribeInstanceAccessControlAttributeConfigurationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeInstanceAccessControlAttributeConfigurationContinuation) in
            describeInstanceAccessControlAttributeConfiguration(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Gets the details of the permission set.</p>
    func describePermissionSet(input: DescribePermissionSetInput) async throws -> DescribePermissionSetOutputResponse
    {
        typealias describePermissionSetContinuation = CheckedContinuation<DescribePermissionSetOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describePermissionSetContinuation) in
            describePermissionSet(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Describes the status for the given permission set provisioning request.</p>
    func describePermissionSetProvisioningStatus(input: DescribePermissionSetProvisioningStatusInput) async throws -> DescribePermissionSetProvisioningStatusOutputResponse
    {
        typealias describePermissionSetProvisioningStatusContinuation = CheckedContinuation<DescribePermissionSetProvisioningStatusOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describePermissionSetProvisioningStatusContinuation) in
            describePermissionSetProvisioningStatus(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Detaches the attached IAM managed policy ARN from the specified permission set.</p>
    func detachManagedPolicyFromPermissionSet(input: DetachManagedPolicyFromPermissionSetInput) async throws -> DetachManagedPolicyFromPermissionSetOutputResponse
    {
        typealias detachManagedPolicyFromPermissionSetContinuation = CheckedContinuation<DetachManagedPolicyFromPermissionSetOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: detachManagedPolicyFromPermissionSetContinuation) in
            detachManagedPolicyFromPermissionSet(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Obtains the inline policy assigned to the permission set.</p>
    func getInlinePolicyForPermissionSet(input: GetInlinePolicyForPermissionSetInput) async throws -> GetInlinePolicyForPermissionSetOutputResponse
    {
        typealias getInlinePolicyForPermissionSetContinuation = CheckedContinuation<GetInlinePolicyForPermissionSetOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getInlinePolicyForPermissionSetContinuation) in
            getInlinePolicyForPermissionSet(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Lists the status of the AWS account assignment creation requests for a specified SSO
    ///        instance.</p>
    func listAccountAssignmentCreationStatus(input: ListAccountAssignmentCreationStatusInput) async throws -> ListAccountAssignmentCreationStatusOutputResponse
    {
        typealias listAccountAssignmentCreationStatusContinuation = CheckedContinuation<ListAccountAssignmentCreationStatusOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listAccountAssignmentCreationStatusContinuation) in
            listAccountAssignmentCreationStatus(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Lists the status of the AWS account assignment deletion requests for a specified SSO
    ///        instance.</p>
    func listAccountAssignmentDeletionStatus(input: ListAccountAssignmentDeletionStatusInput) async throws -> ListAccountAssignmentDeletionStatusOutputResponse
    {
        typealias listAccountAssignmentDeletionStatusContinuation = CheckedContinuation<ListAccountAssignmentDeletionStatusOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listAccountAssignmentDeletionStatusContinuation) in
            listAccountAssignmentDeletionStatus(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Lists the assignee of the specified AWS account with the specified permission
    ///        set.</p>
    func listAccountAssignments(input: ListAccountAssignmentsInput) async throws -> ListAccountAssignmentsOutputResponse
    {
        typealias listAccountAssignmentsContinuation = CheckedContinuation<ListAccountAssignmentsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listAccountAssignmentsContinuation) in
            listAccountAssignments(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Lists all the AWS accounts where the specified permission set is provisioned.</p>
    func listAccountsForProvisionedPermissionSet(input: ListAccountsForProvisionedPermissionSetInput) async throws -> ListAccountsForProvisionedPermissionSetOutputResponse
    {
        typealias listAccountsForProvisionedPermissionSetContinuation = CheckedContinuation<ListAccountsForProvisionedPermissionSetOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listAccountsForProvisionedPermissionSetContinuation) in
            listAccountsForProvisionedPermissionSet(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Lists the SSO instances that the caller has access to.</p>
    func listInstances(input: ListInstancesInput) async throws -> ListInstancesOutputResponse
    {
        typealias listInstancesContinuation = CheckedContinuation<ListInstancesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listInstancesContinuation) in
            listInstances(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Lists the IAM managed policy that is attached to a specified permission set.</p>
    func listManagedPoliciesInPermissionSet(input: ListManagedPoliciesInPermissionSetInput) async throws -> ListManagedPoliciesInPermissionSetOutputResponse
    {
        typealias listManagedPoliciesInPermissionSetContinuation = CheckedContinuation<ListManagedPoliciesInPermissionSetOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listManagedPoliciesInPermissionSetContinuation) in
            listManagedPoliciesInPermissionSet(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Lists the status of the permission set provisioning requests for a specified SSO
    ///       instance.</p>
    func listPermissionSetProvisioningStatus(input: ListPermissionSetProvisioningStatusInput) async throws -> ListPermissionSetProvisioningStatusOutputResponse
    {
        typealias listPermissionSetProvisioningStatusContinuation = CheckedContinuation<ListPermissionSetProvisioningStatusOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listPermissionSetProvisioningStatusContinuation) in
            listPermissionSetProvisioningStatus(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Lists the <a>PermissionSet</a>s in an SSO instance.</p>
    func listPermissionSets(input: ListPermissionSetsInput) async throws -> ListPermissionSetsOutputResponse
    {
        typealias listPermissionSetsContinuation = CheckedContinuation<ListPermissionSetsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listPermissionSetsContinuation) in
            listPermissionSets(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Lists all the permission sets that are provisioned to a specified AWS account.</p>
    func listPermissionSetsProvisionedToAccount(input: ListPermissionSetsProvisionedToAccountInput) async throws -> ListPermissionSetsProvisionedToAccountOutputResponse
    {
        typealias listPermissionSetsProvisionedToAccountContinuation = CheckedContinuation<ListPermissionSetsProvisionedToAccountOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listPermissionSetsProvisionedToAccountContinuation) in
            listPermissionSetsProvisionedToAccount(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Lists the tags that are attached to a specified resource.</p>
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

    /// <p>The process by which a specified permission set is provisioned to the specified target.</p>
    func provisionPermissionSet(input: ProvisionPermissionSetInput) async throws -> ProvisionPermissionSetOutputResponse
    {
        typealias provisionPermissionSetContinuation = CheckedContinuation<ProvisionPermissionSetOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: provisionPermissionSetContinuation) in
            provisionPermissionSet(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Attaches an IAM inline policy to a permission set.</p>
    ///          <note>
    ///             <p>If the permission set is already referenced by one or more account assignments, you will need to call <code>
    ///                   <a>ProvisionPermissionSet</a>
    ///                </code> after this action to apply the corresponding IAM policy updates to all assigned accounts.</p>
    ///          </note>
    func putInlinePolicyToPermissionSet(input: PutInlinePolicyToPermissionSetInput) async throws -> PutInlinePolicyToPermissionSetOutputResponse
    {
        typealias putInlinePolicyToPermissionSetContinuation = CheckedContinuation<PutInlinePolicyToPermissionSetOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: putInlinePolicyToPermissionSetContinuation) in
            putInlinePolicyToPermissionSet(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Associates a set of tags with a specified resource.</p>
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

    /// <p>Disassociates a set of tags from a specified resource.</p>
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

    /// <p>Updates the AWS SSO identity store attributes to use with the AWS SSO instance for attributes-based access control (ABAC). When using an external identity provider as an identity source, you can pass attributes through the SAML assertion as an alternative to configuring attributes from the AWS SSO identity store. If a SAML assertion passes any of these attributes, AWS SSO will replace the attribute value with the value from the AWS SSO identity store. For more information about ABAC, see <a href="/singlesignon/latest/userguide/abac.html">Attribute-Based Access Control</a> in the <i>AWS SSO User Guide</i>.</p>
    func updateInstanceAccessControlAttributeConfiguration(input: UpdateInstanceAccessControlAttributeConfigurationInput) async throws -> UpdateInstanceAccessControlAttributeConfigurationOutputResponse
    {
        typealias updateInstanceAccessControlAttributeConfigurationContinuation = CheckedContinuation<UpdateInstanceAccessControlAttributeConfigurationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateInstanceAccessControlAttributeConfigurationContinuation) in
            updateInstanceAccessControlAttributeConfiguration(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Updates an existing permission set.</p>
    func updatePermissionSet(input: UpdatePermissionSetInput) async throws -> UpdatePermissionSetOutputResponse
    {
        typealias updatePermissionSetContinuation = CheckedContinuation<UpdatePermissionSetOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updatePermissionSetContinuation) in
            updatePermissionSet(input: input) { result in
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
