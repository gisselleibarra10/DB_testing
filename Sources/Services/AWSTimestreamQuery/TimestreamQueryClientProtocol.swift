// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime

/// Amazon Timestream Query
public protocol TimestreamQueryClientProtocol {
    /// Cancels a query that has been issued. Cancellation is provided only if the query has not completed running before the cancellation request was issued. Because cancellation is an idempotent operation, subsequent cancellation requests will return a CancellationMessage, indicating that the query has already been canceled. See [code sample](https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.cancel-query.html) for details.
    func cancelQuery(input: CancelQueryInput) async throws -> CancelQueryOutputResponse
    /// Create a scheduled query that will be run on your behalf at the configured schedule. Timestream assumes the execution role provided as part of the ScheduledQueryExecutionRoleArn parameter to run the query. You can use the NotificationConfiguration parameter to configure notification for your scheduled query operations.
    func createScheduledQuery(input: CreateScheduledQueryInput) async throws -> CreateScheduledQueryOutputResponse
    /// Deletes a given scheduled query. This is an irreversible operation.
    func deleteScheduledQuery(input: DeleteScheduledQueryInput) async throws -> DeleteScheduledQueryOutputResponse
    /// DescribeEndpoints returns a list of available endpoints to make Timestream API calls against. This API is available through both Write and Query. Because the Timestream SDKs are designed to transparently work with the service’s architecture, including the management and mapping of the service endpoints, it is not recommended that you use this API unless:
    ///
    /// * You are using [VPC endpoints (Amazon Web Services PrivateLink) with Timestream ](https://docs.aws.amazon.com/timestream/latest/developerguide/VPCEndpoints)
    ///
    /// * Your application uses a programming language that does not yet have SDK support
    ///
    /// * You require better control over the client-side implementation
    ///
    ///
    /// For detailed information on how and when to use and implement DescribeEndpoints, see [The Endpoint Discovery Pattern](https://docs.aws.amazon.com/timestream/latest/developerguide/Using.API.html#Using-API.endpoint-discovery).
    func describeEndpoints(input: DescribeEndpointsInput) async throws -> DescribeEndpointsOutputResponse
    /// Provides detailed information about a scheduled query.
    func describeScheduledQuery(input: DescribeScheduledQueryInput) async throws -> DescribeScheduledQueryOutputResponse
    /// You can use this API to run a scheduled query manually.
    func executeScheduledQuery(input: ExecuteScheduledQueryInput) async throws -> ExecuteScheduledQueryOutputResponse
    /// Gets a list of all scheduled queries in the caller's Amazon account and Region. ListScheduledQueries is eventually consistent.
    func listScheduledQueries(input: ListScheduledQueriesInput) async throws -> ListScheduledQueriesOutputResponse
    /// List all tags on a Timestream query resource.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// A synchronous operation that allows you to submit a query with parameters to be stored by Timestream for later running. Timestream only supports using this operation with the PrepareQueryRequest$ValidateOnly set to true.
    func prepareQuery(input: PrepareQueryInput) async throws -> PrepareQueryOutputResponse
    /// Query is a synchronous operation that enables you to run a query against your Amazon Timestream data. Query will time out after 60 seconds. You must update the default timeout in the SDK to support a timeout of 60 seconds. See the [code sample](https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.run-query.html) for details. Your query request will fail in the following cases:
    ///
    /// * If you submit a Query request with the same client token outside of the 5-minute idempotency window.
    ///
    /// * If you submit a Query request with the same client token, but change other parameters, within the 5-minute idempotency window.
    ///
    /// * If the size of the row (including the query metadata) exceeds 1 MB, then the query will fail with the following error message: Query aborted as max page response size has been exceeded by the output result row
    ///
    /// * If the IAM principal of the query initiator and the result reader are not the same and/or the query initiator and the result reader do not have the same query string in the query requests, the query will fail with an Invalid pagination token error.
    func query(input: QueryInput) async throws -> QueryOutputResponse
    /// Associate a set of tags with a Timestream resource. You can then activate these user-defined tags so that they appear on the Billing and Cost Management console for cost allocation tracking.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Removes the association of tags from a Timestream query resource.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// Update a scheduled query.
    func updateScheduledQuery(input: UpdateScheduledQueryInput) async throws -> UpdateScheduledQueryOutputResponse
}

public protocol TimestreamQueryClientConfigurationProtocol : AWSClientRuntime.AWSClientConfiguration {
    var endpointResolver: EndpointResolver { get }
}

public enum TimestreamQueryClientTypes {}
