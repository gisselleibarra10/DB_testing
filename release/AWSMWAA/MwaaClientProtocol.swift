// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// Amazon Managed Workflows for Apache Airflow This section contains the Amazon Managed Workflows for Apache Airflow (MWAA) API reference documentation. For more information, see [What Is Amazon MWAA?](https://docs.aws.amazon.com/mwaa/latest/userguide/what-is-mwaa.html).
public protocol MwaaClientProtocol {
    /// Create a CLI token to use Airflow CLI.
    func createCliToken(input: CreateCliTokenInput, completion: @escaping (ClientRuntime.SdkResult<CreateCliTokenOutputResponse, CreateCliTokenOutputError>) -> Void)
    /// Creates an Amazon Managed Workflows for Apache Airflow (MWAA) environment.
    func createEnvironment(input: CreateEnvironmentInput, completion: @escaping (ClientRuntime.SdkResult<CreateEnvironmentOutputResponse, CreateEnvironmentOutputError>) -> Void)
    /// Create a JWT token to be used to login to Airflow Web UI with claims based Authentication.
    func createWebLoginToken(input: CreateWebLoginTokenInput, completion: @escaping (ClientRuntime.SdkResult<CreateWebLoginTokenOutputResponse, CreateWebLoginTokenOutputError>) -> Void)
    /// Deletes an Amazon Managed Workflows for Apache Airflow (MWAA) environment.
    func deleteEnvironment(input: DeleteEnvironmentInput, completion: @escaping (ClientRuntime.SdkResult<DeleteEnvironmentOutputResponse, DeleteEnvironmentOutputError>) -> Void)
    /// Retrieves the details of an Amazon Managed Workflows for Apache Airflow (MWAA) environment.
    func getEnvironment(input: GetEnvironmentInput, completion: @escaping (ClientRuntime.SdkResult<GetEnvironmentOutputResponse, GetEnvironmentOutputError>) -> Void)
    /// Lists the Amazon Managed Workflows for Apache Airflow (MWAA) environments.
    func listEnvironments(input: ListEnvironmentsInput, completion: @escaping (ClientRuntime.SdkResult<ListEnvironmentsOutputResponse, ListEnvironmentsOutputError>) -> Void)
    /// Lists the key-value tag pairs associated to the Amazon Managed Workflows for Apache Airflow (MWAA) environment. For example, "Environment": "Staging".
    func listTagsForResource(input: ListTagsForResourceInput, completion: @escaping (ClientRuntime.SdkResult<ListTagsForResourceOutputResponse, ListTagsForResourceOutputError>) -> Void)
    /// An operation for publishing metrics from the customers to the Ops plane.
    func publishMetrics(input: PublishMetricsInput, completion: @escaping (ClientRuntime.SdkResult<PublishMetricsOutputResponse, PublishMetricsOutputError>) -> Void)
    /// Associates key-value tag pairs to your Amazon Managed Workflows for Apache Airflow (MWAA) environment.
    func tagResource(input: TagResourceInput, completion: @escaping (ClientRuntime.SdkResult<TagResourceOutputResponse, TagResourceOutputError>) -> Void)
    /// Removes key-value tag pairs associated to your Amazon Managed Workflows for Apache Airflow (MWAA) environment. For example, "Environment": "Staging".
    func untagResource(input: UntagResourceInput, completion: @escaping (ClientRuntime.SdkResult<UntagResourceOutputResponse, UntagResourceOutputError>) -> Void)
    /// Updates an Amazon Managed Workflows for Apache Airflow (MWAA) environment.
    func updateEnvironment(input: UpdateEnvironmentInput, completion: @escaping (ClientRuntime.SdkResult<UpdateEnvironmentOutputResponse, UpdateEnvironmentOutputError>) -> Void)
}

public enum MwaaClientTypes {}