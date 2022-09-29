// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime


/// Paginate over `[DescribeComputeEnvironmentsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[DescribeComputeEnvironmentsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `DescribeComputeEnvironmentsOutputResponse`
extension BatchClient {
    public func describeComputeEnvironmentsPaginated(input: DescribeComputeEnvironmentsInput) -> ClientRuntime.PaginatorSequence<DescribeComputeEnvironmentsInput, DescribeComputeEnvironmentsOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeComputeEnvironmentsInput, DescribeComputeEnvironmentsOutputResponse>(input: input, inputKey: \DescribeComputeEnvironmentsInput.nextToken, outputKey: \DescribeComputeEnvironmentsOutputResponse.nextToken, paginationFunction: self.describeComputeEnvironments(input:))
    }
}

extension DescribeComputeEnvironmentsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeComputeEnvironmentsInput {
        return DescribeComputeEnvironmentsInput(
            computeEnvironments: self.computeEnvironments,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `describeComputeEnvironmentsPaginated`
/// to access the nested member `[BatchClientTypes.ComputeEnvironmentDetail]`
/// - Returns: `[BatchClientTypes.ComputeEnvironmentDetail]`
extension PaginatorSequence where Input == DescribeComputeEnvironmentsInput, Output == DescribeComputeEnvironmentsOutputResponse {
    public func computeEnvironments() async throws -> [BatchClientTypes.ComputeEnvironmentDetail] {
        return try await self.asyncCompactMap { item in item.computeEnvironments }
    }
}

/// Paginate over `[DescribeJobDefinitionsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[DescribeJobDefinitionsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `DescribeJobDefinitionsOutputResponse`
extension BatchClient {
    public func describeJobDefinitionsPaginated(input: DescribeJobDefinitionsInput) -> ClientRuntime.PaginatorSequence<DescribeJobDefinitionsInput, DescribeJobDefinitionsOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeJobDefinitionsInput, DescribeJobDefinitionsOutputResponse>(input: input, inputKey: \DescribeJobDefinitionsInput.nextToken, outputKey: \DescribeJobDefinitionsOutputResponse.nextToken, paginationFunction: self.describeJobDefinitions(input:))
    }
}

extension DescribeJobDefinitionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeJobDefinitionsInput {
        return DescribeJobDefinitionsInput(
            jobDefinitionName: self.jobDefinitionName,
            jobDefinitions: self.jobDefinitions,
            maxResults: self.maxResults,
            nextToken: token,
            status: self.status
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `describeJobDefinitionsPaginated`
/// to access the nested member `[BatchClientTypes.JobDefinition]`
/// - Returns: `[BatchClientTypes.JobDefinition]`
extension PaginatorSequence where Input == DescribeJobDefinitionsInput, Output == DescribeJobDefinitionsOutputResponse {
    public func jobDefinitions() async throws -> [BatchClientTypes.JobDefinition] {
        return try await self.asyncCompactMap { item in item.jobDefinitions }
    }
}

/// Paginate over `[DescribeJobQueuesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[DescribeJobQueuesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `DescribeJobQueuesOutputResponse`
extension BatchClient {
    public func describeJobQueuesPaginated(input: DescribeJobQueuesInput) -> ClientRuntime.PaginatorSequence<DescribeJobQueuesInput, DescribeJobQueuesOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeJobQueuesInput, DescribeJobQueuesOutputResponse>(input: input, inputKey: \DescribeJobQueuesInput.nextToken, outputKey: \DescribeJobQueuesOutputResponse.nextToken, paginationFunction: self.describeJobQueues(input:))
    }
}

extension DescribeJobQueuesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeJobQueuesInput {
        return DescribeJobQueuesInput(
            jobQueues: self.jobQueues,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `describeJobQueuesPaginated`
/// to access the nested member `[BatchClientTypes.JobQueueDetail]`
/// - Returns: `[BatchClientTypes.JobQueueDetail]`
extension PaginatorSequence where Input == DescribeJobQueuesInput, Output == DescribeJobQueuesOutputResponse {
    public func jobQueues() async throws -> [BatchClientTypes.JobQueueDetail] {
        return try await self.asyncCompactMap { item in item.jobQueues }
    }
}

/// Paginate over `[ListJobsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListJobsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListJobsOutputResponse`
extension BatchClient {
    public func listJobsPaginated(input: ListJobsInput) -> ClientRuntime.PaginatorSequence<ListJobsInput, ListJobsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListJobsInput, ListJobsOutputResponse>(input: input, inputKey: \ListJobsInput.nextToken, outputKey: \ListJobsOutputResponse.nextToken, paginationFunction: self.listJobs(input:))
    }
}

extension ListJobsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListJobsInput {
        return ListJobsInput(
            arrayJobId: self.arrayJobId,
            filters: self.filters,
            jobQueue: self.jobQueue,
            jobStatus: self.jobStatus,
            maxResults: self.maxResults,
            multiNodeJobId: self.multiNodeJobId,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listJobsPaginated`
/// to access the nested member `[BatchClientTypes.JobSummary]`
/// - Returns: `[BatchClientTypes.JobSummary]`
extension PaginatorSequence where Input == ListJobsInput, Output == ListJobsOutputResponse {
    public func jobSummaryList() async throws -> [BatchClientTypes.JobSummary] {
        return try await self.asyncCompactMap { item in item.jobSummaryList }
    }
}

/// Paginate over `[ListSchedulingPoliciesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListSchedulingPoliciesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListSchedulingPoliciesOutputResponse`
extension BatchClient {
    public func listSchedulingPoliciesPaginated(input: ListSchedulingPoliciesInput) -> ClientRuntime.PaginatorSequence<ListSchedulingPoliciesInput, ListSchedulingPoliciesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListSchedulingPoliciesInput, ListSchedulingPoliciesOutputResponse>(input: input, inputKey: \ListSchedulingPoliciesInput.nextToken, outputKey: \ListSchedulingPoliciesOutputResponse.nextToken, paginationFunction: self.listSchedulingPolicies(input:))
    }
}

extension ListSchedulingPoliciesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListSchedulingPoliciesInput {
        return ListSchedulingPoliciesInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listSchedulingPoliciesPaginated`
/// to access the nested member `[BatchClientTypes.SchedulingPolicyListingDetail]`
/// - Returns: `[BatchClientTypes.SchedulingPolicyListingDetail]`
extension PaginatorSequence where Input == ListSchedulingPoliciesInput, Output == ListSchedulingPoliciesOutputResponse {
    public func schedulingPolicies() async throws -> [BatchClientTypes.SchedulingPolicyListingDetail] {
        return try await self.asyncCompactMap { item in item.schedulingPolicies }
    }
}
