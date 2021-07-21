// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime
import Foundation
import Logging

public class TimestreamQueryClient {
    let client: SdkHttpClient
    let config: TimestreamQueryClientConfiguration
    let serviceName = "Timestream Query"
    let encoder: RequestEncoder
    let decoder: ResponseDecoder

    public init(config: TimestreamQueryClientConfiguration) {
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

    public class TimestreamQueryClientConfiguration: ClientRuntime.Configuration, AWSClientConfiguration {

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
            self.logger = logger ?? SwiftLogger(label: "TimestreamQueryClient")
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

        public static func `default`() throws -> TimestreamQueryClientConfiguration {
            let awsCredsProvider = try AWSCredentialsProvider.fromEnv()
            return try TimestreamQueryClientConfiguration(credentialsProvider: awsCredsProvider)
        }
    }
}

public struct TimestreamQueryClientLogHandlerFactory: SDKLogHandlerFactory {
    public var label = "TimestreamQueryClient"
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

extension TimestreamQueryClient: TimestreamQueryClientProtocol {
    /// <p>
    ///         Cancels a query that has been issued. Cancellation is guaranteed only if the query has not
    ///         completed execution before the cancellation request was issued. Because cancellation is an idempotent operation,
    ///         subsequent cancellation requests will return a <code>CancellationMessage</code>, indicating that the query has already been canceled.
    ///     </p>
    public func cancelQuery(input: CancelQueryInput, completion: @escaping (SdkResult<CancelQueryOutputResponse, CancelQueryOutputError>) -> Void)
    {
        let urlPath = "/"
        let context = HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withPath(value: urlPath)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "cancelQuery")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withHost(value: "query.timestream.\(config.region).amazonaws.com")
                      .withSigningName(value: "timestream")
                      .withSigningRegion(value: config.signingRegion)
        var operation = OperationStack<CancelQueryInput, CancelQueryOutputResponse, CancelQueryOutputError>(id: "cancelQuery")
        operation.addDefaultOperationMiddlewares()
        operation.serializeStep.intercept(position: .before, middleware: CancelQueryInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: CancelQueryInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ContentTypeMiddleware<CancelQueryInput, CancelQueryOutputResponse, CancelQueryOutputError>(contentType: "application/x-amz-json-1.0"))
        operation.serializeStep.intercept(position: .before, middleware: CancelQueryInputBodyMiddleware())
        operation.deserializeStep.intercept(position: .before, middleware: LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        operation.finalizeStep.intercept(position: .after, middleware: RetrierMiddleware(retrier: config.retrier))
        let sigv4Config = SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before,
                                                 middleware: SigV4Middleware(config: sigv4Config))
        operation.buildStep.intercept(position: .before, middleware: UserAgentMiddleware(metadata: AWSUserAgentMetadata.fromEnv(apiMetadata: APIMetadata(serviceId: serviceName, version: "1.0"))))
        operation.serializeStep.intercept(position: .before, middleware: XAmzTargetMiddleware<CancelQueryInput, CancelQueryOutputResponse, CancelQueryOutputError>(xAmzTarget: "Timestream_20181101.CancelQuery"))
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

    /// <p>DescribeEndpoints returns a list of available endpoints to make Timestream API calls against.
    ///             This API is available through both Write and Query.</p>
    ///         <p>Because Timestream’s SDKs are designed to transparently work with the service’s architecture,
    ///             including the management and mapping of the service endpoints,
    ///             <i>it is not recommended that you use this API unless</i>:</p>
    ///         <ul>
    ///             <li>
    ///                <p>Your application uses a programming language that does not yet have SDK support</p>
    ///             </li>
    ///             <li>
    ///                <p>You require better control over the client-side implementation</p>
    ///             </li>
    ///          </ul>
    ///         <p>For detailed information on how to use DescribeEndpoints,
    ///             see <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/Using-API.endpoint-discovery.html">The Endpoint Discovery Pattern and REST APIs</a>.</p>
    public func describeEndpoints(input: DescribeEndpointsInput, completion: @escaping (SdkResult<DescribeEndpointsOutputResponse, DescribeEndpointsOutputError>) -> Void)
    {
        let urlPath = "/"
        let context = HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withPath(value: urlPath)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "describeEndpoints")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withHost(value: "query.timestream.\(config.region).amazonaws.com")
                      .withSigningName(value: "timestream")
                      .withSigningRegion(value: config.signingRegion)
        var operation = OperationStack<DescribeEndpointsInput, DescribeEndpointsOutputResponse, DescribeEndpointsOutputError>(id: "describeEndpoints")
        operation.addDefaultOperationMiddlewares()
        operation.serializeStep.intercept(position: .before, middleware: DescribeEndpointsInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: DescribeEndpointsInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ContentTypeMiddleware<DescribeEndpointsInput, DescribeEndpointsOutputResponse, DescribeEndpointsOutputError>(contentType: "application/x-amz-json-1.0"))
        operation.deserializeStep.intercept(position: .before, middleware: LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        operation.finalizeStep.intercept(position: .after, middleware: RetrierMiddleware(retrier: config.retrier))
        let sigv4Config = SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before,
                                                 middleware: SigV4Middleware(config: sigv4Config))
        operation.buildStep.intercept(position: .before, middleware: UserAgentMiddleware(metadata: AWSUserAgentMetadata.fromEnv(apiMetadata: APIMetadata(serviceId: serviceName, version: "1.0"))))
        operation.serializeStep.intercept(position: .before, middleware: XAmzTargetMiddleware<DescribeEndpointsInput, DescribeEndpointsOutputResponse, DescribeEndpointsOutputError>(xAmzTarget: "Timestream_20181101.DescribeEndpoints"))
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

    /// <p>
    ///             Query is a synchronous operation that enables you to execute a query. Query will timeout after 60 seconds. You must update the default timeout in the SDK to support a timeout of 60 seconds. The result set will be truncated to 1MB. Service quotas apply. For more information, see Quotas in the Timestream Developer Guide.
    ///         </p>
    public func query(input: QueryInput, completion: @escaping (SdkResult<QueryOutputResponse, QueryOutputError>) -> Void)
    {
        let urlPath = "/"
        let context = HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withPath(value: urlPath)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "query")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withHost(value: "query.timestream.\(config.region).amazonaws.com")
                      .withSigningName(value: "timestream")
                      .withSigningRegion(value: config.signingRegion)
        var operation = OperationStack<QueryInput, QueryOutputResponse, QueryOutputError>(id: "query")
        operation.addDefaultOperationMiddlewares()
        operation.initializeStep.intercept(position: .before, id: "IdempotencyTokenMiddleware") { (context, input, next) -> Result<OperationOutput<QueryOutputResponse>, SdkError<QueryOutputError>> in
            let idempotencyTokenGenerator = context.getIdempotencyTokenGenerator()
            var copiedInput = input
            if input.clientToken == nil {
                copiedInput.clientToken = idempotencyTokenGenerator.generateToken()
            }
            return next.handle(context: context, input: copiedInput)
        }
        operation.serializeStep.intercept(position: .before, middleware: QueryInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: QueryInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ContentTypeMiddleware<QueryInput, QueryOutputResponse, QueryOutputError>(contentType: "application/x-amz-json-1.0"))
        operation.serializeStep.intercept(position: .before, middleware: QueryInputBodyMiddleware())
        operation.deserializeStep.intercept(position: .before, middleware: LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        operation.finalizeStep.intercept(position: .after, middleware: RetrierMiddleware(retrier: config.retrier))
        let sigv4Config = SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before,
                                                 middleware: SigV4Middleware(config: sigv4Config))
        operation.buildStep.intercept(position: .before, middleware: UserAgentMiddleware(metadata: AWSUserAgentMetadata.fromEnv(apiMetadata: APIMetadata(serviceId: serviceName, version: "1.0"))))
        operation.serializeStep.intercept(position: .before, middleware: XAmzTargetMiddleware<QueryInput, QueryOutputResponse, QueryOutputError>(xAmzTarget: "Timestream_20181101.Query"))
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

}
