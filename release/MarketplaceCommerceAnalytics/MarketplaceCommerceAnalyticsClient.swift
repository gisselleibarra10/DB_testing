// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime
import Foundation
import Logging

public class MarketplaceCommerceAnalyticsClient {
    let client: SdkHttpClient
    let config: MarketplaceCommerceAnalyticsClientConfiguration
    let serviceName = "Marketplace Commerce Analytics"
    let encoder: RequestEncoder
    let decoder: ResponseDecoder

    public init(config: MarketplaceCommerceAnalyticsClientConfiguration) {
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

    public class MarketplaceCommerceAnalyticsClientConfiguration: ClientRuntime.Configuration, AWSClientConfiguration {

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
            self.logger = logger ?? SwiftLogger(label: "MarketplaceCommerceAnalyticsClient")
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

        public static func `default`() throws -> MarketplaceCommerceAnalyticsClientConfiguration {
            let awsCredsProvider = try AWSCredentialsProvider.fromEnv()
            return try MarketplaceCommerceAnalyticsClientConfiguration(credentialsProvider: awsCredsProvider)
        }
    }
}

public struct MarketplaceCommerceAnalyticsClientLogHandlerFactory: SDKLogHandlerFactory {
    public var label = "MarketplaceCommerceAnalyticsClient"
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

extension MarketplaceCommerceAnalyticsClient: MarketplaceCommerceAnalyticsClientProtocol {
    /// Given a data set type and data set publication date, asynchronously publishes the requested data set to the specified
    ///         S3 bucket and notifies the specified SNS topic once the data is available. Returns a unique request identifier that
    ///         can be used to correlate requests with notifications from the SNS topic.
    ///         Data sets will be published in comma-separated values (CSV) format with the file name {data_set_type}_YYYY-MM-DD.csv.
    ///         If a file with the same name already exists (e.g. if the same data set is requested twice), the original file will
    ///         be overwritten by the new file.
    ///         Requires a Role with an attached permissions policy providing Allow permissions for the following actions:
    ///         s3:PutObject, s3:GetBucketLocation, sns:GetTopicAttributes, sns:Publish, iam:GetRolePolicy.
    public func generateDataSet(input: GenerateDataSetInput, completion: @escaping (SdkResult<GenerateDataSetOutputResponse, GenerateDataSetOutputError>) -> Void)
    {
        let urlPath = "/"
        let context = HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withPath(value: urlPath)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "generateDataSet")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withHost(value: "marketplacecommerceanalytics.\(config.region).amazonaws.com")
                      .withSigningName(value: "marketplacecommerceanalytics")
                      .withSigningRegion(value: config.signingRegion)
        var operation = OperationStack<GenerateDataSetInput, GenerateDataSetOutputResponse, GenerateDataSetOutputError>(id: "generateDataSet")
        operation.addDefaultOperationMiddlewares()
        operation.serializeStep.intercept(position: .before, middleware: GenerateDataSetInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: GenerateDataSetInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ContentTypeMiddleware<GenerateDataSetInput, GenerateDataSetOutputResponse, GenerateDataSetOutputError>(contentType: "application/x-amz-json-1.1"))
        operation.serializeStep.intercept(position: .before, middleware: GenerateDataSetInputBodyMiddleware())
        operation.deserializeStep.intercept(position: .before, middleware: LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        operation.finalizeStep.intercept(position: .after, middleware: RetrierMiddleware(retrier: config.retrier))
        let sigv4Config = SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before,
                                                 middleware: SigV4Middleware(config: sigv4Config))
        operation.buildStep.intercept(position: .before, middleware: UserAgentMiddleware(metadata: AWSUserAgentMetadata.fromEnv(apiMetadata: APIMetadata(serviceId: serviceName, version: "1.0"))))
        operation.serializeStep.intercept(position: .before, middleware: XAmzTargetMiddleware<GenerateDataSetInput, GenerateDataSetOutputResponse, GenerateDataSetOutputError>(xAmzTarget: "MarketplaceCommerceAnalytics20150701.GenerateDataSet"))
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

    /// Given a data set type and a from date, asynchronously publishes the requested customer support data
    ///         to the specified S3 bucket and notifies the specified SNS topic once the data is available. Returns a unique request
    ///         identifier that can be used to correlate requests with notifications from the SNS topic.
    ///         Data sets will be published in comma-separated values (CSV) format with the file name {data_set_type}_YYYY-MM-DD'T'HH-mm-ss'Z'.csv.
    ///         If a file with the same name already exists (e.g. if the same data set is requested twice), the original file will
    ///         be overwritten by the new file.
    ///         Requires a Role with an attached permissions policy providing Allow permissions for the following actions:
    ///         s3:PutObject, s3:GetBucketLocation, sns:GetTopicAttributes, sns:Publish, iam:GetRolePolicy.
    public func startSupportDataExport(input: StartSupportDataExportInput, completion: @escaping (SdkResult<StartSupportDataExportOutputResponse, StartSupportDataExportOutputError>) -> Void)
    {
        let urlPath = "/"
        let context = HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withPath(value: urlPath)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "startSupportDataExport")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withHost(value: "marketplacecommerceanalytics.\(config.region).amazonaws.com")
                      .withSigningName(value: "marketplacecommerceanalytics")
                      .withSigningRegion(value: config.signingRegion)
        var operation = OperationStack<StartSupportDataExportInput, StartSupportDataExportOutputResponse, StartSupportDataExportOutputError>(id: "startSupportDataExport")
        operation.addDefaultOperationMiddlewares()
        operation.serializeStep.intercept(position: .before, middleware: StartSupportDataExportInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: StartSupportDataExportInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ContentTypeMiddleware<StartSupportDataExportInput, StartSupportDataExportOutputResponse, StartSupportDataExportOutputError>(contentType: "application/x-amz-json-1.1"))
        operation.serializeStep.intercept(position: .before, middleware: StartSupportDataExportInputBodyMiddleware())
        operation.deserializeStep.intercept(position: .before, middleware: LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        operation.finalizeStep.intercept(position: .after, middleware: RetrierMiddleware(retrier: config.retrier))
        let sigv4Config = SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before,
                                                 middleware: SigV4Middleware(config: sigv4Config))
        operation.buildStep.intercept(position: .before, middleware: UserAgentMiddleware(metadata: AWSUserAgentMetadata.fromEnv(apiMetadata: APIMetadata(serviceId: serviceName, version: "1.0"))))
        operation.serializeStep.intercept(position: .before, middleware: XAmzTargetMiddleware<StartSupportDataExportInput, StartSupportDataExportOutputResponse, StartSupportDataExportOutputError>(xAmzTarget: "MarketplaceCommerceAnalytics20150701.StartSupportDataExport"))
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

}
