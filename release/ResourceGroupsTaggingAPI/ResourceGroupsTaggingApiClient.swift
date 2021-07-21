// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime
import Foundation
import Logging

public class ResourceGroupsTaggingApiClient {
    let client: SdkHttpClient
    let config: ResourceGroupsTaggingApiClientConfiguration
    let serviceName = "Resource Groups Tagging API"
    let encoder: RequestEncoder
    let decoder: ResponseDecoder

    public init(config: ResourceGroupsTaggingApiClientConfiguration) {
        client = SdkHttpClient(engine: config.httpClientEngine, config: config.httpClientConfiguration)
        let encoder = JSONEncoder()
        encoder.dateEncodingStrategy = .secondsSince1970
        encoder.nonConformingFloatEncodingStrategy = .convertToString(positiveInfinity: "Infinity", negativeInfinity: "-Infinity", nan: "NaN")
        self.encoder = config.encoder ?? encoder
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .secondsSince1970
        decoder.nonConformingFloatDecodingStrategy = .convertFromString(positiveInfinity: "Infinity", negativeInfinity: "-Infinity", nan: "NaN")
        self.decoder = config.decoder ?? decoder
        self.config = config
    }

    deinit {
        client.close()
    }

    public class ResourceGroupsTaggingApiClientConfiguration: ClientRuntime.Configuration, AWSClientConfiguration {

        public var region: String
        public var credentialsProvider: AWSCredentialsProvider
        public var signingRegion: String
        public var endpointResolver: EndpointResolver

        public let clientLogMode: ClientLogMode
        public let logger: LogAgent

        public init (
            credentialsProvider: AWSCredentialsProvider,
            endpointResolver: EndpointResolver,
            region: String,
            signingRegion: String,
            clientLogMode: ClientLogMode = .request,
            logger: LogAgent? = nil
        ) throws
        {
            self.credentialsProvider = credentialsProvider
            self.endpointResolver = endpointResolver
            self.region = region
            self.signingRegion = signingRegion
            self.clientLogMode = clientLogMode
            self.logger = logger ?? SwiftLogger(label: "ResourceGroupsTaggingApiClient")
        }

        public convenience init(credentialsProvider: AWSCredentialsProvider) throws {
            let region = "us-east-1"
            let signingRegion = "us-east-1"
            let endpointResolver = DefaultEndpointResolver()
            try self.init(
                credentialsProvider: credentialsProvider,
                endpointResolver: endpointResolver,
                region: region,
                signingRegion: signingRegion
            )
        }

        public static func `default`() throws -> ResourceGroupsTaggingApiClientConfiguration {
            let awsCredsProvider = try AWSCredentialsProvider.fromEnv()
            return try ResourceGroupsTaggingApiClientConfiguration(credentialsProvider: awsCredsProvider)
        }
    }
}

public struct ResourceGroupsTaggingApiClientLogHandlerFactory: SDKLogHandlerFactory {
    public var label = "ResourceGroupsTaggingApiClient"
    let logLevel: SDKLogLevel
    public func construct(label: String) -> LogHandler {
        var handler = StreamLogHandler.standardOutput(label: label)
        handler.logLevel = logLevel.toLoggerType()
        return handler
    }
    public init(logLevel: SDKLogLevel) {
        self.logLevel = logLevel
    }
}

extension ResourceGroupsTaggingApiClient: ResourceGroupsTaggingApiClientProtocol {
    /// <p>Describes the status of the <code>StartReportCreation</code> operation. </p>
    ///         <p>You can call this operation only from the organization's
    ///     management account and from the us-east-1 Region.</p>
    public func describeReportCreation(input: DescribeReportCreationInput, completion: @escaping (SdkResult<DescribeReportCreationOutputResponse, DescribeReportCreationOutputError>) -> Void)
    {
        let urlPath = "/"
        let context = HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withPath(value: urlPath)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "describeReportCreation")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withHost(value: "tagging.\(config.region).amazonaws.com")
                      .withSigningName(value: "tagging")
                      .withSigningRegion(value: config.signingRegion)
        var operation = OperationStack<DescribeReportCreationInput, DescribeReportCreationOutputResponse, DescribeReportCreationOutputError>(id: "describeReportCreation")
        operation.addDefaultOperationMiddlewares()
        operation.serializeStep.intercept(position: .before, middleware: DescribeReportCreationInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: DescribeReportCreationInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ContentTypeMiddleware<DescribeReportCreationInput, DescribeReportCreationOutputResponse, DescribeReportCreationOutputError>(contentType: "application/x-amz-json-1.1"))
        operation.deserializeStep.intercept(position: .before, middleware: LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        operation.finalizeStep.intercept(position: .after, middleware: RetrierMiddleware(retrier: config.retrier))
        let sigv4Config = SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before,
                                                 middleware: SigV4Middleware(config: sigv4Config))
        operation.buildStep.intercept(position: .before, middleware: UserAgentMiddleware(metadata: AWSUserAgentMetadata.fromEnv(apiMetadata: APIMetadata(serviceId: serviceName, version: "1.0"))))
        operation.serializeStep.intercept(position: .before, middleware: XAmzTargetMiddleware<DescribeReportCreationInput, DescribeReportCreationOutputResponse, DescribeReportCreationOutputError>(xAmzTarget: "ResourceGroupsTaggingAPI_20170126.DescribeReportCreation"))
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

    /// <p>Returns a table that shows counts of resources that are noncompliant with their tag
    ///             policies.</p>
    ///         <p>For more information on tag policies, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html">Tag Policies</a> in
    ///             the <i>AWS Organizations User Guide.</i>
    ///          </p>
    ///         <p>You can call this operation only from the organization's
    ///     management account and from the us-east-1 Region.</p>
    ///          <p>This operation supports pagination, where the response can be sent in
    ///     multiple pages. You should check the <code>PaginationToken</code> response parameter to determine
    ///     if there are additional results available to return. Repeat the query, passing the
    ///     <code>PaginationToken</code> response parameter value as an input to the next request until you
    ///     recieve a <code>null</code> value. A null value for <code>PaginationToken</code> indicates that
    ///     there are no more results waiting to be returned.</p>
    public func getComplianceSummary(input: GetComplianceSummaryInput, completion: @escaping (SdkResult<GetComplianceSummaryOutputResponse, GetComplianceSummaryOutputError>) -> Void)
    {
        let urlPath = "/"
        let context = HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withPath(value: urlPath)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "getComplianceSummary")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withHost(value: "tagging.\(config.region).amazonaws.com")
                      .withSigningName(value: "tagging")
                      .withSigningRegion(value: config.signingRegion)
        var operation = OperationStack<GetComplianceSummaryInput, GetComplianceSummaryOutputResponse, GetComplianceSummaryOutputError>(id: "getComplianceSummary")
        operation.addDefaultOperationMiddlewares()
        operation.serializeStep.intercept(position: .before, middleware: GetComplianceSummaryInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: GetComplianceSummaryInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ContentTypeMiddleware<GetComplianceSummaryInput, GetComplianceSummaryOutputResponse, GetComplianceSummaryOutputError>(contentType: "application/x-amz-json-1.1"))
        operation.serializeStep.intercept(position: .before, middleware: GetComplianceSummaryInputBodyMiddleware())
        operation.deserializeStep.intercept(position: .before, middleware: LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        operation.finalizeStep.intercept(position: .after, middleware: RetrierMiddleware(retrier: config.retrier))
        let sigv4Config = SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before,
                                                 middleware: SigV4Middleware(config: sigv4Config))
        operation.buildStep.intercept(position: .before, middleware: UserAgentMiddleware(metadata: AWSUserAgentMetadata.fromEnv(apiMetadata: APIMetadata(serviceId: serviceName, version: "1.0"))))
        operation.serializeStep.intercept(position: .before, middleware: XAmzTargetMiddleware<GetComplianceSummaryInput, GetComplianceSummaryOutputResponse, GetComplianceSummaryOutputError>(xAmzTarget: "ResourceGroupsTaggingAPI_20170126.GetComplianceSummary"))
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

    /// <p>Returns all the tagged or previously tagged resources that are located in the
    ///             specified Region for the AWS account.</p>
    ///         <p>Depending on what information you want returned, you can also specify the
    ///             following:</p>
    ///         <ul>
    ///             <li>
    ///                 <p>
    ///                   <i>Filters</i> that specify what tags and resource types you
    ///                     want returned. The response includes all tags that are associated with the
    ///                     requested resources.</p>
    ///             </li>
    ///             <li>
    ///                 <p>Information about compliance with the account's effective tag policy. For more
    ///                     information on tag policies, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html">Tag
    ///                         Policies</a> in the <i>AWS Organizations User Guide.</i>
    ///                </p>
    ///             </li>
    ///          </ul>
    ///          <p>This operation supports pagination, where the response can be sent in
    ///     multiple pages. You should check the <code>PaginationToken</code> response parameter to determine
    ///     if there are additional results available to return. Repeat the query, passing the
    ///     <code>PaginationToken</code> response parameter value as an input to the next request until you
    ///     recieve a <code>null</code> value. A null value for <code>PaginationToken</code> indicates that
    ///     there are no more results waiting to be returned.</p>
    public func getResources(input: GetResourcesInput, completion: @escaping (SdkResult<GetResourcesOutputResponse, GetResourcesOutputError>) -> Void)
    {
        let urlPath = "/"
        let context = HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withPath(value: urlPath)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "getResources")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withHost(value: "tagging.\(config.region).amazonaws.com")
                      .withSigningName(value: "tagging")
                      .withSigningRegion(value: config.signingRegion)
        var operation = OperationStack<GetResourcesInput, GetResourcesOutputResponse, GetResourcesOutputError>(id: "getResources")
        operation.addDefaultOperationMiddlewares()
        operation.serializeStep.intercept(position: .before, middleware: GetResourcesInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: GetResourcesInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ContentTypeMiddleware<GetResourcesInput, GetResourcesOutputResponse, GetResourcesOutputError>(contentType: "application/x-amz-json-1.1"))
        operation.serializeStep.intercept(position: .before, middleware: GetResourcesInputBodyMiddleware())
        operation.deserializeStep.intercept(position: .before, middleware: LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        operation.finalizeStep.intercept(position: .after, middleware: RetrierMiddleware(retrier: config.retrier))
        let sigv4Config = SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before,
                                                 middleware: SigV4Middleware(config: sigv4Config))
        operation.buildStep.intercept(position: .before, middleware: UserAgentMiddleware(metadata: AWSUserAgentMetadata.fromEnv(apiMetadata: APIMetadata(serviceId: serviceName, version: "1.0"))))
        operation.serializeStep.intercept(position: .before, middleware: XAmzTargetMiddleware<GetResourcesInput, GetResourcesOutputResponse, GetResourcesOutputError>(xAmzTarget: "ResourceGroupsTaggingAPI_20170126.GetResources"))
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

    /// <p>Returns all tag keys currently in use in the specified Region for the calling AWS
    ///             account.</p>
    ///          <p>This operation supports pagination, where the response can be sent in
    ///     multiple pages. You should check the <code>PaginationToken</code> response parameter to determine
    ///     if there are additional results available to return. Repeat the query, passing the
    ///     <code>PaginationToken</code> response parameter value as an input to the next request until you
    ///     recieve a <code>null</code> value. A null value for <code>PaginationToken</code> indicates that
    ///     there are no more results waiting to be returned.</p>
    public func getTagKeys(input: GetTagKeysInput, completion: @escaping (SdkResult<GetTagKeysOutputResponse, GetTagKeysOutputError>) -> Void)
    {
        let urlPath = "/"
        let context = HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withPath(value: urlPath)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "getTagKeys")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withHost(value: "tagging.\(config.region).amazonaws.com")
                      .withSigningName(value: "tagging")
                      .withSigningRegion(value: config.signingRegion)
        var operation = OperationStack<GetTagKeysInput, GetTagKeysOutputResponse, GetTagKeysOutputError>(id: "getTagKeys")
        operation.addDefaultOperationMiddlewares()
        operation.serializeStep.intercept(position: .before, middleware: GetTagKeysInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: GetTagKeysInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ContentTypeMiddleware<GetTagKeysInput, GetTagKeysOutputResponse, GetTagKeysOutputError>(contentType: "application/x-amz-json-1.1"))
        operation.serializeStep.intercept(position: .before, middleware: GetTagKeysInputBodyMiddleware())
        operation.deserializeStep.intercept(position: .before, middleware: LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        operation.finalizeStep.intercept(position: .after, middleware: RetrierMiddleware(retrier: config.retrier))
        let sigv4Config = SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before,
                                                 middleware: SigV4Middleware(config: sigv4Config))
        operation.buildStep.intercept(position: .before, middleware: UserAgentMiddleware(metadata: AWSUserAgentMetadata.fromEnv(apiMetadata: APIMetadata(serviceId: serviceName, version: "1.0"))))
        operation.serializeStep.intercept(position: .before, middleware: XAmzTargetMiddleware<GetTagKeysInput, GetTagKeysOutputResponse, GetTagKeysOutputError>(xAmzTarget: "ResourceGroupsTaggingAPI_20170126.GetTagKeys"))
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

    /// <p>Returns all tag values for the specified key that are used in the specified AWS
    ///             Region for the calling AWS account.</p>
    ///          <p>This operation supports pagination, where the response can be sent in
    ///     multiple pages. You should check the <code>PaginationToken</code> response parameter to determine
    ///     if there are additional results available to return. Repeat the query, passing the
    ///     <code>PaginationToken</code> response parameter value as an input to the next request until you
    ///     recieve a <code>null</code> value. A null value for <code>PaginationToken</code> indicates that
    ///     there are no more results waiting to be returned.</p>
    public func getTagValues(input: GetTagValuesInput, completion: @escaping (SdkResult<GetTagValuesOutputResponse, GetTagValuesOutputError>) -> Void)
    {
        let urlPath = "/"
        let context = HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withPath(value: urlPath)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "getTagValues")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withHost(value: "tagging.\(config.region).amazonaws.com")
                      .withSigningName(value: "tagging")
                      .withSigningRegion(value: config.signingRegion)
        var operation = OperationStack<GetTagValuesInput, GetTagValuesOutputResponse, GetTagValuesOutputError>(id: "getTagValues")
        operation.addDefaultOperationMiddlewares()
        operation.serializeStep.intercept(position: .before, middleware: GetTagValuesInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: GetTagValuesInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ContentTypeMiddleware<GetTagValuesInput, GetTagValuesOutputResponse, GetTagValuesOutputError>(contentType: "application/x-amz-json-1.1"))
        operation.serializeStep.intercept(position: .before, middleware: GetTagValuesInputBodyMiddleware())
        operation.deserializeStep.intercept(position: .before, middleware: LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        operation.finalizeStep.intercept(position: .after, middleware: RetrierMiddleware(retrier: config.retrier))
        let sigv4Config = SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before,
                                                 middleware: SigV4Middleware(config: sigv4Config))
        operation.buildStep.intercept(position: .before, middleware: UserAgentMiddleware(metadata: AWSUserAgentMetadata.fromEnv(apiMetadata: APIMetadata(serviceId: serviceName, version: "1.0"))))
        operation.serializeStep.intercept(position: .before, middleware: XAmzTargetMiddleware<GetTagValuesInput, GetTagValuesOutputResponse, GetTagValuesOutputError>(xAmzTarget: "ResourceGroupsTaggingAPI_20170126.GetTagValues"))
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

    /// <p>Generates a report that lists all tagged resources in the accounts across your
    ///             organization and tells whether each resource is compliant with the effective tag policy.
    ///             Compliance data is refreshed daily. The report is generated asynchronously.</p>
    ///         <p>The generated report is saved to the following location:</p>
    ///         <p>
    ///             <code>s3://example-bucket/AwsTagPolicies/o-exampleorgid/YYYY-MM-ddTHH:mm:ssZ/report.csv</code>
    ///          </p>
    ///         <p>You can call this operation only from the organization's
    ///     management account and from the us-east-1 Region.</p>
    public func startReportCreation(input: StartReportCreationInput, completion: @escaping (SdkResult<StartReportCreationOutputResponse, StartReportCreationOutputError>) -> Void)
    {
        let urlPath = "/"
        let context = HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withPath(value: urlPath)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "startReportCreation")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withHost(value: "tagging.\(config.region).amazonaws.com")
                      .withSigningName(value: "tagging")
                      .withSigningRegion(value: config.signingRegion)
        var operation = OperationStack<StartReportCreationInput, StartReportCreationOutputResponse, StartReportCreationOutputError>(id: "startReportCreation")
        operation.addDefaultOperationMiddlewares()
        operation.serializeStep.intercept(position: .before, middleware: StartReportCreationInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: StartReportCreationInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ContentTypeMiddleware<StartReportCreationInput, StartReportCreationOutputResponse, StartReportCreationOutputError>(contentType: "application/x-amz-json-1.1"))
        operation.serializeStep.intercept(position: .before, middleware: StartReportCreationInputBodyMiddleware())
        operation.deserializeStep.intercept(position: .before, middleware: LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        operation.finalizeStep.intercept(position: .after, middleware: RetrierMiddleware(retrier: config.retrier))
        let sigv4Config = SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before,
                                                 middleware: SigV4Middleware(config: sigv4Config))
        operation.buildStep.intercept(position: .before, middleware: UserAgentMiddleware(metadata: AWSUserAgentMetadata.fromEnv(apiMetadata: APIMetadata(serviceId: serviceName, version: "1.0"))))
        operation.serializeStep.intercept(position: .before, middleware: XAmzTargetMiddleware<StartReportCreationInput, StartReportCreationOutputResponse, StartReportCreationOutputError>(xAmzTarget: "ResourceGroupsTaggingAPI_20170126.StartReportCreation"))
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

    /// <p>Applies one or more tags to the specified resources. Note the following:</p>
    ///         <ul>
    ///             <li>
    ///                 <p>Not all resources can have tags. For a list of services with resources that
    ///                     support tagging using this operation, see <a href="https://docs.aws.amazon.com/resourcegroupstagging/latest/APIReference/supported-services.html">Services that support the
    ///                         Resource Groups Tagging API</a>.</p>
    ///             </li>
    ///             <li>
    ///                 <p>Each resource can have up to 50 tags. For other limits, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html#tag-conventions">Tag Naming and Usage Conventions</a> in the <i>AWS General
    ///                         Reference.</i>
    ///                </p>
    ///             </li>
    ///             <li>
    ///                 <p>You can only tag resources that are located in the specified AWS Region for
    ///                     the AWS account.</p>
    ///             </li>
    ///             <li>
    ///                 <p>To add tags to a resource, you need the necessary permissions for the service
    ///                     that the resource belongs to as well as permissions for adding tags. For more
    ///                     information, see the documentation for each service.</p>
    ///             </li>
    ///          </ul>
    ///         <important>
    ///             <p>Do not store personally identifiable information (PII) or other confidential or
    ///                 sensitive information in tags. We use tags to provide you with billing and
    ///                 administration services. Tags are not intended to be used for private or sensitive
    ///                 data.</p>
    ///         </important>
    public func tagResources(input: TagResourcesInput, completion: @escaping (SdkResult<TagResourcesOutputResponse, TagResourcesOutputError>) -> Void)
    {
        let urlPath = "/"
        let context = HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withPath(value: urlPath)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "tagResources")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withHost(value: "tagging.\(config.region).amazonaws.com")
                      .withSigningName(value: "tagging")
                      .withSigningRegion(value: config.signingRegion)
        var operation = OperationStack<TagResourcesInput, TagResourcesOutputResponse, TagResourcesOutputError>(id: "tagResources")
        operation.addDefaultOperationMiddlewares()
        operation.serializeStep.intercept(position: .before, middleware: TagResourcesInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: TagResourcesInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ContentTypeMiddleware<TagResourcesInput, TagResourcesOutputResponse, TagResourcesOutputError>(contentType: "application/x-amz-json-1.1"))
        operation.serializeStep.intercept(position: .before, middleware: TagResourcesInputBodyMiddleware())
        operation.deserializeStep.intercept(position: .before, middleware: LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        operation.finalizeStep.intercept(position: .after, middleware: RetrierMiddleware(retrier: config.retrier))
        let sigv4Config = SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before,
                                                 middleware: SigV4Middleware(config: sigv4Config))
        operation.buildStep.intercept(position: .before, middleware: UserAgentMiddleware(metadata: AWSUserAgentMetadata.fromEnv(apiMetadata: APIMetadata(serviceId: serviceName, version: "1.0"))))
        operation.serializeStep.intercept(position: .before, middleware: XAmzTargetMiddleware<TagResourcesInput, TagResourcesOutputResponse, TagResourcesOutputError>(xAmzTarget: "ResourceGroupsTaggingAPI_20170126.TagResources"))
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

    /// <p>Removes the specified tags from the specified resources. When you specify a tag key,
    ///             the action removes both that key and its associated value. The operation succeeds even
    ///             if you attempt to remove tags from a resource that were already removed. Note the
    ///             following:</p>
    ///         <ul>
    ///             <li>
    ///                 <p>To remove tags from a resource, you need the necessary permissions for the
    ///                     service that the resource belongs to as well as permissions for removing tags.
    ///                     For more information, see the documentation for the service whose resource you
    ///                     want to untag.</p>
    ///             </li>
    ///             <li>
    ///                 <p>You can only tag resources that are located in the specified AWS Region for
    ///                     the calling AWS account.</p>
    ///             </li>
    ///          </ul>
    public func untagResources(input: UntagResourcesInput, completion: @escaping (SdkResult<UntagResourcesOutputResponse, UntagResourcesOutputError>) -> Void)
    {
        let urlPath = "/"
        let context = HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withPath(value: urlPath)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "untagResources")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withHost(value: "tagging.\(config.region).amazonaws.com")
                      .withSigningName(value: "tagging")
                      .withSigningRegion(value: config.signingRegion)
        var operation = OperationStack<UntagResourcesInput, UntagResourcesOutputResponse, UntagResourcesOutputError>(id: "untagResources")
        operation.addDefaultOperationMiddlewares()
        operation.serializeStep.intercept(position: .before, middleware: UntagResourcesInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: UntagResourcesInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ContentTypeMiddleware<UntagResourcesInput, UntagResourcesOutputResponse, UntagResourcesOutputError>(contentType: "application/x-amz-json-1.1"))
        operation.serializeStep.intercept(position: .before, middleware: UntagResourcesInputBodyMiddleware())
        operation.deserializeStep.intercept(position: .before, middleware: LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        operation.finalizeStep.intercept(position: .after, middleware: RetrierMiddleware(retrier: config.retrier))
        let sigv4Config = SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before,
                                                 middleware: SigV4Middleware(config: sigv4Config))
        operation.buildStep.intercept(position: .before, middleware: UserAgentMiddleware(metadata: AWSUserAgentMetadata.fromEnv(apiMetadata: APIMetadata(serviceId: serviceName, version: "1.0"))))
        operation.serializeStep.intercept(position: .before, middleware: XAmzTargetMiddleware<UntagResourcesInput, UntagResourcesOutputResponse, UntagResourcesOutputError>(xAmzTarget: "ResourceGroupsTaggingAPI_20170126.UntagResources"))
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

}
