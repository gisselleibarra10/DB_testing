// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime

/// Amazon Data Lifecycle Manager With Amazon Data Lifecycle Manager, you can manage the lifecycle of your Amazon Web Services resources. You create lifecycle policies, which are used to automate operations on the specified resources. Amazon Data Lifecycle Manager supports Amazon EBS volumes and snapshots. For information about using Amazon Data Lifecycle Manager with Amazon EBS, see [ Amazon Data Lifecycle Manager](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/snapshot-lifecycle.html) in the Amazon EC2 User Guide.
public protocol DLMClientProtocol {
    /// Creates a policy to manage the lifecycle of the specified Amazon Web Services resources. You can create up to 100 lifecycle policies.
    func createLifecyclePolicy(input: CreateLifecyclePolicyInput) async throws -> CreateLifecyclePolicyOutputResponse
    /// Deletes the specified lifecycle policy and halts the automated operations that the policy specified. For more information about deleting a policy, see [Delete lifecycle policies](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/view-modify-delete.html#delete).
    func deleteLifecyclePolicy(input: DeleteLifecyclePolicyInput) async throws -> DeleteLifecyclePolicyOutputResponse
    /// Gets summary information about all or the specified data lifecycle policies. To get complete information about a policy, use [GetLifecyclePolicy].
    func getLifecyclePolicies(input: GetLifecyclePoliciesInput) async throws -> GetLifecyclePoliciesOutputResponse
    /// Gets detailed information about the specified lifecycle policy.
    func getLifecyclePolicy(input: GetLifecyclePolicyInput) async throws -> GetLifecyclePolicyOutputResponse
    /// Lists the tags for the specified resource.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Adds the specified tags to the specified resource.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Removes the specified tags from the specified resource.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// Updates the specified lifecycle policy. For more information about updating a policy, see [Modify lifecycle policies](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/view-modify-delete.html#modify).
    func updateLifecyclePolicy(input: UpdateLifecyclePolicyInput) async throws -> UpdateLifecyclePolicyOutputResponse
}

public protocol DLMClientConfigurationProtocol : AWSClientRuntime.AWSClientConfiguration {
    var endpointResolver: EndpointResolver { get }
}

public enum DLMClientTypes {}
