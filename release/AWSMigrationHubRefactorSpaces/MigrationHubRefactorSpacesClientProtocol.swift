// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// Amazon Web Services Migration Hub Refactor Spaces This API reference provides descriptions, syntax, and other details about each of the actions and data types for Amazon Web Services Migration Hub Refactor Spaces (Refactor Spaces). The topic for each action shows the API request parameters and the response. Alternatively, you can use one of the Amazon Web Services SDKs to access an API that is tailored to the programming language or platform that you're using. For more information, see [Amazon Web Services SDKs](http://aws.amazon.com/tools/#SDKs).
public protocol MigrationHubRefactorSpacesClientProtocol {
    /// Creates an Amazon Web Services Migration Hub Refactor Spaces application. The account that owns the environment also owns the applications created inside the environment, regardless of the account that creates the application. Refactor Spaces provisions the Amazon API Gateway and Network Load Balancer for the application proxy inside your account.
    func createApplication(input: CreateApplicationInput, completion: @escaping (ClientRuntime.SdkResult<CreateApplicationOutputResponse, CreateApplicationOutputError>) -> Void)
    /// Creates an Amazon Web Services Migration Hub Refactor Spaces environment. The caller owns the environment resource, and they are referred to as the environment owner. The environment owner has cross-account visibility and control of Refactor Spaces resources that are added to the environment by other accounts that the environment is shared with. When creating an environment, Refactor Spaces provisions a transit gateway in your account.
    func createEnvironment(input: CreateEnvironmentInput, completion: @escaping (ClientRuntime.SdkResult<CreateEnvironmentOutputResponse, CreateEnvironmentOutputError>) -> Void)
    /// Creates an Amazon Web Services Migration Hub Refactor Spaces route. The account owner of the service resource is always the environment owner, regardless of which account creates the route. Routes target a service in the application. If an application does not have any routes, then the first route must be created as a DEFAULTRouteType. When you create a route, Refactor Spaces configures the Amazon API Gateway to send traffic to the target service as follows:
    ///
    /// * If the service has a URL endpoint, and the endpoint resolves to a private IP address, Refactor Spaces routes traffic using the API Gateway VPC link.
    ///
    /// * If the service has a URL endpoint, and the endpoint resolves to a public IP address, Refactor Spaces routes traffic over the public internet.
    ///
    /// * If the service has an Lambda function endpoint, then Refactor Spaces uses the API Gateway Lambda integration.
    ///
    ///
    /// A health check is performed on the service when the route is created. If the health check fails, the route transitions to FAILED, and no traffic is sent to the service. For Lambda functions, the Lambda function state is checked. If the function is not active, the function configuration is updated so that Lambda resources are provisioned. If the Lambda state is Failed, then the route creation fails. For more information, see the [GetFunctionConfiguration's State response parameter](https://docs.aws.amazon.com/lambda/latest/dg/API_GetFunctionConfiguration.html#SSS-GetFunctionConfiguration-response-State) in the Lambda Developer Guide. For public URLs, a connection is opened to the public endpoint. If the URL is not reachable, the health check fails. For private URLs, a target group is created and the target group health check is run. The HealthCheckProtocol, HealthCheckPort, and HealthCheckPath are the same protocol, port, and path specified in the URL or health URL, if used. All other settings use the default values, as described in [Health checks for your target groups](https://docs.aws.amazon.com/elasticloadbalancing/latest/application/target-group-health-checks.html). The health check is considered successful if at least one target within the target group transitions to a healthy state.
    func createRoute(input: CreateRouteInput, completion: @escaping (ClientRuntime.SdkResult<CreateRouteOutputResponse, CreateRouteOutputError>) -> Void)
    /// Creates an Amazon Web Services Migration Hub Refactor Spaces service. The account owner of the service is always the environment owner, regardless of which account in the environment creates the service. Services have either a URL endpoint in a virtual private cloud (VPC), or a Lambda function endpoint. If an Amazon Web Services resourceis launched in a service VPC, and you want it to be accessible to all of an environment’s services with VPCs and routes, apply the RefactorSpacesSecurityGroup to the resource. Alternatively, to add more cross-account constraints, apply your own security group.
    func createService(input: CreateServiceInput, completion: @escaping (ClientRuntime.SdkResult<CreateServiceOutputResponse, CreateServiceOutputError>) -> Void)
    /// Deletes an Amazon Web Services Migration Hub Refactor Spaces application. Before you can delete an application, you must first delete any services or routes within the application.
    func deleteApplication(input: DeleteApplicationInput, completion: @escaping (ClientRuntime.SdkResult<DeleteApplicationOutputResponse, DeleteApplicationOutputError>) -> Void)
    /// Deletes an Amazon Web Services Migration Hub Refactor Spaces environment. Before you can delete an environment, you must first delete any applications and services within the environment.
    func deleteEnvironment(input: DeleteEnvironmentInput, completion: @escaping (ClientRuntime.SdkResult<DeleteEnvironmentOutputResponse, DeleteEnvironmentOutputError>) -> Void)
    /// Deletes the resource policy set for the environment.
    func deleteResourcePolicy(input: DeleteResourcePolicyInput, completion: @escaping (ClientRuntime.SdkResult<DeleteResourcePolicyOutputResponse, DeleteResourcePolicyOutputError>) -> Void)
    /// Deletes an Amazon Web Services Migration Hub Refactor Spaces route.
    func deleteRoute(input: DeleteRouteInput, completion: @escaping (ClientRuntime.SdkResult<DeleteRouteOutputResponse, DeleteRouteOutputError>) -> Void)
    /// Deletes an Amazon Web Services Migration Hub Refactor Spaces service.
    func deleteService(input: DeleteServiceInput, completion: @escaping (ClientRuntime.SdkResult<DeleteServiceOutputResponse, DeleteServiceOutputError>) -> Void)
    /// Gets an Amazon Web Services Migration Hub Refactor Spaces application.
    func getApplication(input: GetApplicationInput, completion: @escaping (ClientRuntime.SdkResult<GetApplicationOutputResponse, GetApplicationOutputError>) -> Void)
    /// Gets an Amazon Web Services Migration Hub Refactor Spaces environment.
    func getEnvironment(input: GetEnvironmentInput, completion: @escaping (ClientRuntime.SdkResult<GetEnvironmentOutputResponse, GetEnvironmentOutputError>) -> Void)
    /// Gets the resource-based permission policy that is set for the given environment.
    func getResourcePolicy(input: GetResourcePolicyInput, completion: @escaping (ClientRuntime.SdkResult<GetResourcePolicyOutputResponse, GetResourcePolicyOutputError>) -> Void)
    /// Gets an Amazon Web Services Migration Hub Refactor Spaces route.
    func getRoute(input: GetRouteInput, completion: @escaping (ClientRuntime.SdkResult<GetRouteOutputResponse, GetRouteOutputError>) -> Void)
    /// Gets an Amazon Web Services Migration Hub Refactor Spaces service.
    func getService(input: GetServiceInput, completion: @escaping (ClientRuntime.SdkResult<GetServiceOutputResponse, GetServiceOutputError>) -> Void)
    /// Lists all the Amazon Web Services Migration Hub Refactor Spaces applications within an environment.
    func listApplications(input: ListApplicationsInput, completion: @escaping (ClientRuntime.SdkResult<ListApplicationsOutputResponse, ListApplicationsOutputError>) -> Void)
    /// Lists Amazon Web Services Migration Hub Refactor Spaces environments owned by a caller account or shared with the caller account.
    func listEnvironments(input: ListEnvironmentsInput, completion: @escaping (ClientRuntime.SdkResult<ListEnvironmentsOutputResponse, ListEnvironmentsOutputError>) -> Void)
    /// Lists all the virtual private clouds (VPCs) that are part of an Amazon Web Services Migration Hub Refactor Spaces environment.
    func listEnvironmentVpcs(input: ListEnvironmentVpcsInput, completion: @escaping (ClientRuntime.SdkResult<ListEnvironmentVpcsOutputResponse, ListEnvironmentVpcsOutputError>) -> Void)
    /// Lists all the Amazon Web Services Migration Hub Refactor Spaces routes within an application.
    func listRoutes(input: ListRoutesInput, completion: @escaping (ClientRuntime.SdkResult<ListRoutesOutputResponse, ListRoutesOutputError>) -> Void)
    /// Lists all the Amazon Web Services Migration Hub Refactor Spaces services within an application.
    func listServices(input: ListServicesInput, completion: @escaping (ClientRuntime.SdkResult<ListServicesOutputResponse, ListServicesOutputError>) -> Void)
    /// Lists the tags of a resource. The caller account must be the same as the resource’s OwnerAccountId. Listing tags in other accounts is not supported.
    func listTagsForResource(input: ListTagsForResourceInput, completion: @escaping (ClientRuntime.SdkResult<ListTagsForResourceOutputResponse, ListTagsForResourceOutputError>) -> Void)
    /// Attaches a resource-based permission policy to the Amazon Web Services Migration Hub Refactor Spaces environment. The policy must contain the same actions and condition statements as the arn:aws:ram::aws:permission/AWSRAMDefaultPermissionRefactorSpacesEnvironment permission in Resource Access Manager. The policy must not contain new lines or blank lines.
    func putResourcePolicy(input: PutResourcePolicyInput, completion: @escaping (ClientRuntime.SdkResult<PutResourcePolicyOutputResponse, PutResourcePolicyOutputError>) -> Void)
    /// Removes the tags of a given resource. Tags are metadata which can be used to manage a resource. To tag a resource, the caller account must be the same as the resource’s OwnerAccountId. Tagging resources in other accounts is not supported. Amazon Web Services Migration Hub Refactor Spaces does not propagate tags to orchestrated resources, such as an environment’s transit gateway.
    func tagResource(input: TagResourceInput, completion: @escaping (ClientRuntime.SdkResult<TagResourceOutputResponse, TagResourceOutputError>) -> Void)
    /// Adds to or modifies the tags of the given resource. Tags are metadata which can be used to manage a resource. To untag a resource, the caller account must be the same as the resource’s OwnerAccountId. Untagging resources across accounts is not supported.
    func untagResource(input: UntagResourceInput, completion: @escaping (ClientRuntime.SdkResult<UntagResourceOutputResponse, UntagResourceOutputError>) -> Void)
}

public enum MigrationHubRefactorSpacesClientTypes {}