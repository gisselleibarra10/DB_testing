// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime

/// Batch Using Batch, you can run batch computing workloads on the Amazon Web Services Cloud. Batch computing is a common means for developers, scientists, and engineers to access large amounts of compute resources. Batch uses the advantages of the batch computing to remove the undifferentiated heavy lifting of configuring and managing required infrastructure. At the same time, it also adopts a familiar batch computing software approach. You can use Batch to efficiently provision resources d, and work toward eliminating capacity constraints, reducing your overall compute costs, and delivering results more quickly. As a fully managed service, Batch can run batch computing workloads of any scale. Batch automatically provisions compute resources and optimizes workload distribution based on the quantity and scale of your specific workloads. With Batch, there's no need to install or manage batch computing software. This means that you can focus on analyzing results and solving your specific problems instead.
public protocol BatchClientProtocol {
    /// Cancels a job in an Batch job queue. Jobs that are in the SUBMITTED, PENDING, or RUNNABLE state are canceled. Jobs that progressed to the STARTING or RUNNING state aren't canceled. However, the API operation still succeeds, even if no job is canceled. These jobs must be terminated with the [TerminateJob] operation.
    func cancelJob(input: CancelJobInput) async throws -> CancelJobOutputResponse
    /// Creates an Batch compute environment. You can create MANAGED or UNMANAGED compute environments. MANAGED compute environments can use Amazon EC2 or Fargate resources. UNMANAGED compute environments can only use EC2 resources. In a managed compute environment, Batch manages the capacity and instance types of the compute resources within the environment. This is based on the compute resource specification that you define or the [launch template](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html) that you specify when you create the compute environment. Either, you can choose to use EC2 On-Demand Instances and EC2 Spot Instances. Or, you can use Fargate and Fargate Spot capacity in your managed compute environment. You can optionally set a maximum price so that Spot Instances only launch when the Spot Instance price is less than a specified percentage of the On-Demand price. Multi-node parallel jobs aren't supported on Spot Instances. In an unmanaged compute environment, you can manage your own EC2 compute resources and have flexibility with how you configure your compute resources. For example, you can use custom AMIs. However, you must verify that each of your AMIs meet the Amazon ECS container instance AMI specification. For more information, see [container instance AMIs](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/container_instance_AMIs.html) in the Amazon Elastic Container Service Developer Guide. After you created your unmanaged compute environment, you can use the [DescribeComputeEnvironments] operation to find the Amazon ECS cluster that's associated with it. Then, launch your container instances into that Amazon ECS cluster. For more information, see [Launching an Amazon ECS container instance](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_container_instance.html) in the Amazon Elastic Container Service Developer Guide. To create a compute environment that uses EKS resources, the caller must have permissions to call eks:DescribeCluster. Batch doesn't automatically upgrade the AMIs in a compute environment after it's created. For example, it also doesn't update the AMIs in your compute environment when a newer version of the Amazon ECS optimized AMI is available. You're responsible for the management of the guest operating system. This includes any updates and security patches. You're also responsible for any additional application software or utilities that you install on the compute resources. There are two ways to use a new AMI for your Batch jobs. The original method is to complete these steps:
    ///
    /// * Create a new compute environment with the new AMI.
    ///
    /// * Add the compute environment to an existing job queue.
    ///
    /// * Remove the earlier compute environment from your job queue.
    ///
    /// * Delete the earlier compute environment.
    ///
    ///
    /// In April 2022, Batch added enhanced support for updating compute environments. For more information, see [Updating compute environments](https://docs.aws.amazon.com/batch/latest/userguide/updating-compute-environments.html). To use the enhanced updating of compute environments to update AMIs, follow these rules:
    ///
    /// * Either don't set the service role (serviceRole) parameter or set it to the AWSBatchServiceRole service-linked role.
    ///
    /// * Set the allocation strategy (allocationStrategy) parameter to BEST_FIT_PROGRESSIVE or SPOT_CAPACITY_OPTIMIZED.
    ///
    /// * Set the update to latest image version (updateToLatestImageVersion) parameter to true.
    ///
    /// * Don't specify an AMI ID in imageId, imageIdOverride (in [ec2Configuration](https://docs.aws.amazon.com/batch/latest/APIReference/API_Ec2Configuration.html)), or in the launch template (launchTemplate). In that case, Batch selects the latest Amazon ECS optimized AMI that's supported by Batch at the time the infrastructure update is initiated. Alternatively, you can specify the AMI ID in the imageId or imageIdOverride parameters, or the launch template identified by the LaunchTemplate properties. Changing any of these properties starts an infrastructure update. If the AMI ID is specified in the launch template, it can't be replaced by specifying an AMI ID in either the imageId or imageIdOverride parameters. It can only be replaced by specifying a different launch template, or if the launch template version is set to $Default or $Latest, by setting either a new default version for the launch template (if $Default) or by adding a new version to the launch template (if $Latest).
    ///
    ///
    /// If these rules are followed, any update that starts an infrastructure update causes the AMI ID to be re-selected. If the version setting in the launch template (launchTemplate) is set to $Latest or $Default, the latest or default version of the launch template is evaluated up at the time of the infrastructure update, even if the launchTemplate wasn't updated.
    func createComputeEnvironment(input: CreateComputeEnvironmentInput) async throws -> CreateComputeEnvironmentOutputResponse
    /// Creates an Batch job queue. When you create a job queue, you associate one or more compute environments to the queue and assign an order of preference for the compute environments. You also set a priority to the job queue that determines the order that the Batch scheduler places jobs onto its associated compute environments. For example, if a compute environment is associated with more than one job queue, the job queue with a higher priority is given preference for scheduling jobs to that compute environment.
    func createJobQueue(input: CreateJobQueueInput) async throws -> CreateJobQueueOutputResponse
    /// Creates an Batch scheduling policy.
    func createSchedulingPolicy(input: CreateSchedulingPolicyInput) async throws -> CreateSchedulingPolicyOutputResponse
    /// Deletes an Batch compute environment. Before you can delete a compute environment, you must set its state to DISABLED with the [UpdateComputeEnvironment] API operation and disassociate it from any job queues with the [UpdateJobQueue] API operation. Compute environments that use Fargate resources must terminate all active jobs on that compute environment before deleting the compute environment. If this isn't done, the compute environment enters an invalid state.
    func deleteComputeEnvironment(input: DeleteComputeEnvironmentInput) async throws -> DeleteComputeEnvironmentOutputResponse
    /// Deletes the specified job queue. You must first disable submissions for a queue with the [UpdateJobQueue] operation. All jobs in the queue are eventually terminated when you delete a job queue. The jobs are terminated at a rate of about 16 jobs each second. It's not necessary to disassociate compute environments from a queue before submitting a DeleteJobQueue request.
    func deleteJobQueue(input: DeleteJobQueueInput) async throws -> DeleteJobQueueOutputResponse
    /// Deletes the specified scheduling policy. You can't delete a scheduling policy that's used in any job queues.
    func deleteSchedulingPolicy(input: DeleteSchedulingPolicyInput) async throws -> DeleteSchedulingPolicyOutputResponse
    /// Deregisters an Batch job definition. Job definitions are permanently deleted after 180 days.
    func deregisterJobDefinition(input: DeregisterJobDefinitionInput) async throws -> DeregisterJobDefinitionOutputResponse
    /// Describes one or more of your compute environments. If you're using an unmanaged compute environment, you can use the DescribeComputeEnvironment operation to determine the ecsClusterArn that you launch your Amazon ECS container instances into.
    func describeComputeEnvironments(input: DescribeComputeEnvironmentsInput) async throws -> DescribeComputeEnvironmentsOutputResponse
    /// Describes a list of job definitions. You can specify a status (such as ACTIVE) to only return job definitions that match that status.
    func describeJobDefinitions(input: DescribeJobDefinitionsInput) async throws -> DescribeJobDefinitionsOutputResponse
    /// Describes one or more of your job queues.
    func describeJobQueues(input: DescribeJobQueuesInput) async throws -> DescribeJobQueuesOutputResponse
    /// Describes a list of Batch jobs.
    func describeJobs(input: DescribeJobsInput) async throws -> DescribeJobsOutputResponse
    /// Describes one or more of your scheduling policies.
    func describeSchedulingPolicies(input: DescribeSchedulingPoliciesInput) async throws -> DescribeSchedulingPoliciesOutputResponse
    /// Returns a list of Batch jobs. You must specify only one of the following items:
    ///
    /// * A job queue ID to return a list of jobs in that job queue
    ///
    /// * A multi-node parallel job ID to return a list of nodes for that job
    ///
    /// * An array job ID to return a list of the children for that job
    ///
    ///
    /// You can filter the results by job status with the jobStatus parameter. If you don't specify a status, only RUNNING jobs are returned.
    func listJobs(input: ListJobsInput) async throws -> ListJobsOutputResponse
    /// Returns a list of Batch scheduling policies.
    func listSchedulingPolicies(input: ListSchedulingPoliciesInput) async throws -> ListSchedulingPoliciesOutputResponse
    /// Lists the tags for an Batch resource. Batch resources that support tags are compute environments, jobs, job definitions, job queues, and scheduling policies. ARNs for child jobs of array and multi-node parallel (MNP) jobs aren't supported.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Registers an Batch job definition.
    func registerJobDefinition(input: RegisterJobDefinitionInput) async throws -> RegisterJobDefinitionOutputResponse
    /// Submits an Batch job from a job definition. Parameters that are specified during [SubmitJob] override parameters defined in the job definition. vCPU and memory requirements that are specified in the resourceRequirements objects in the job definition are the exception. They can't be overridden this way using the memory and vcpus parameters. Rather, you must specify updates to job definition parameters in a resourceRequirements object that's included in the containerOverrides parameter. Job queues with a scheduling policy are limited to 500 active fair share identifiers at a time. Jobs that run on Fargate resources can't be guaranteed to run for more than 14 days. This is because, after 14 days, Fargate resources might become unavailable and job might be terminated.
    func submitJob(input: SubmitJobInput) async throws -> SubmitJobOutputResponse
    /// Associates the specified tags to a resource with the specified resourceArn. If existing tags on a resource aren't specified in the request parameters, they aren't changed. When a resource is deleted, the tags that are associated with that resource are deleted as well. Batch resources that support tags are compute environments, jobs, job definitions, job queues, and scheduling policies. ARNs for child jobs of array and multi-node parallel (MNP) jobs aren't supported.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Terminates a job in a job queue. Jobs that are in the STARTING or RUNNING state are terminated, which causes them to transition to FAILED. Jobs that have not progressed to the STARTING state are cancelled.
    func terminateJob(input: TerminateJobInput) async throws -> TerminateJobOutputResponse
    /// Deletes specified tags from an Batch resource.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// Updates an Batch compute environment.
    func updateComputeEnvironment(input: UpdateComputeEnvironmentInput) async throws -> UpdateComputeEnvironmentOutputResponse
    /// Updates a job queue.
    func updateJobQueue(input: UpdateJobQueueInput) async throws -> UpdateJobQueueOutputResponse
    /// Updates a scheduling policy.
    func updateSchedulingPolicy(input: UpdateSchedulingPolicyInput) async throws -> UpdateSchedulingPolicyOutputResponse
}

public protocol BatchClientConfigurationProtocol : AWSClientRuntime.AWSClientConfiguration {
    var endpointResolver: EndpointResolver { get }
}

public enum BatchClientTypes {}
