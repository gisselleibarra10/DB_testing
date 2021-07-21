// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime
import Foundation
import Logging

public class ForecastqueryClient {
    let client: SdkHttpClient
    let config: ForecastqueryClientConfiguration
    let serviceName = "forecastquery"
    let encoder: RequestEncoder
    let decoder: ResponseDecoder

    public init(config: ForecastqueryClientConfiguration) {
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

    public class ForecastqueryClientConfiguration: ClientRuntime.Configuration, AWSClientConfiguration {

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
            self.logger = logger ?? SwiftLogger(label: "ForecastqueryClient")
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

        public static func `default`() throws -> ForecastqueryClientConfiguration {
            let awsCredsProvider = try AWSCredentialsProvider.fromEnv()
            return try ForecastqueryClientConfiguration(credentialsProvider: awsCredsProvider)
        }
    }
}

public struct ForecastqueryClientLogHandlerFactory: SDKLogHandlerFactory {
    public var label = "ForecastqueryClient"
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

extension ForecastqueryClient: ForecastqueryClientProtocol {
    /// <p>Retrieves a forecast for a single item, filtered by the supplied criteria.</p>
    ///          <p>The criteria is a key-value pair. The key is either <code>item_id</code> (or the
    ///       equivalent non-timestamp, non-target field) from the <code>TARGET_TIME_SERIES</code> dataset,
    ///       or one of the forecast dimensions specified as part of the <code>FeaturizationConfig</code>
    ///       object.</p>
    ///          <p>By default, <code>QueryForecast</code> returns the complete date range for the filtered
    ///       forecast. You can request a specific date range.</p>
    ///          <p>To get the full forecast, use the <a href="https://docs.aws.amazon.com/en_us/forecast/latest/dg/API_CreateForecastExportJob.html">CreateForecastExportJob</a> operation.</p>
    ///          <note>
    ///             <p>The forecasts generated by Amazon Forecast are in the same timezone as the dataset that was
    ///         used to create the predictor.</p>
    ///          </note>
    public func queryForecast(input: QueryForecastInput, completion: @escaping (SdkResult<QueryForecastOutputResponse, QueryForecastOutputError>) -> Void)
    {
        let urlPath = "/"
        let context = HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withPath(value: urlPath)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "queryForecast")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withHost(value: "forecastquery.\(config.region).amazonaws.com")
                      .withSigningName(value: "forecast")
                      .withSigningRegion(value: config.signingRegion)
        var operation = OperationStack<QueryForecastInput, QueryForecastOutputResponse, QueryForecastOutputError>(id: "queryForecast")
        operation.addDefaultOperationMiddlewares()
        operation.serializeStep.intercept(position: .before, middleware: QueryForecastInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: QueryForecastInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ContentTypeMiddleware<QueryForecastInput, QueryForecastOutputResponse, QueryForecastOutputError>(contentType: "application/x-amz-json-1.1"))
        operation.serializeStep.intercept(position: .before, middleware: QueryForecastInputBodyMiddleware())
        operation.deserializeStep.intercept(position: .before, middleware: LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        operation.finalizeStep.intercept(position: .after, middleware: RetrierMiddleware(retrier: config.retrier))
        let sigv4Config = SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before,
                                                 middleware: SigV4Middleware(config: sigv4Config))
        operation.buildStep.intercept(position: .before, middleware: UserAgentMiddleware(metadata: AWSUserAgentMetadata.fromEnv(apiMetadata: APIMetadata(serviceId: serviceName, version: "1.0"))))
        operation.serializeStep.intercept(position: .before, middleware: XAmzTargetMiddleware<QueryForecastInput, QueryForecastOutputResponse, QueryForecastOutputError>(xAmzTarget: "AmazonForecastRuntime.QueryForecast"))
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

}
