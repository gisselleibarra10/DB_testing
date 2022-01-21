// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime
import Foundation
import Logging

public class MigrationHubConfigClient {
    public static let clientName = "MigrationHubConfigClient"
    let client: ClientRuntime.SdkHttpClient
    let config: AWSClientRuntime.AWSClientConfiguration
    let serviceName = "MigrationHub Config"
    let encoder: ClientRuntime.RequestEncoder
    let decoder: ClientRuntime.ResponseDecoder

    public init(config: AWSClientRuntime.AWSClientConfiguration) {
        client = ClientRuntime.SdkHttpClient(engine: config.httpClientEngine, config: config.httpClientConfiguration)
        let encoder = ClientRuntime.JSONEncoder()
        encoder.dateEncodingStrategy = .secondsSince1970
        encoder.nonConformingFloatEncodingStrategy = .convertToString(positiveInfinity: "Infinity", negativeInfinity: "-Infinity", nan: "NaN")
        self.encoder = config.encoder ?? encoder
        let decoder = ClientRuntime.JSONDecoder()
        decoder.dateDecodingStrategy = .secondsSince1970
        decoder.nonConformingFloatDecodingStrategy = .convertFromString(positiveInfinity: "Infinity", negativeInfinity: "-Infinity", nan: "NaN")
        self.decoder = config.decoder ?? decoder
        self.config = config
    }

    public convenience init(region: Swift.String? = nil) throws {
        let config = try MigrationHubConfigClientConfiguration(region: region)
        self.init(config: config)
    }

    deinit {
        client.close()
    }

    public class MigrationHubConfigClientConfiguration: AWSClientRuntime.AWSClientConfiguration {

        public var clientLogMode: ClientRuntime.ClientLogMode
        public var decoder: ClientRuntime.ResponseDecoder?
        public var encoder: ClientRuntime.RequestEncoder?
        public var httpClientConfiguration: ClientRuntime.HttpClientConfiguration
        public var httpClientEngine: ClientRuntime.HttpClientEngine
        public var idempotencyTokenGenerator: ClientRuntime.IdempotencyTokenGenerator
        public var logger: ClientRuntime.LogAgent
        public var retryer: ClientRuntime.SDKRetryer

        public var credentialsProvider: AWSClientRuntime.CredentialsProvider
        public var endpointResolver: AWSClientRuntime.EndpointResolver
        public var frameworkMetadata: AWSClientRuntime.FrameworkMetadata?
        public var region: Swift.String?
        public var regionResolver: AWSClientRuntime.RegionResolver?
        public var signingRegion: Swift.String?

        public init(
            credentialsProvider: AWSClientRuntime.CredentialsProvider? = nil,
            endpointResolver: AWSClientRuntime.EndpointResolver? = nil,
            frameworkMetadata: AWSClientRuntime.FrameworkMetadata? = nil,
            region: Swift.String? = nil,
            regionResolver: AWSClientRuntime.RegionResolver? = nil,
            signingRegion: Swift.String? = nil,
            runtimeConfig: ClientRuntime.SDKRuntimeConfiguration
        ) throws {
            if let region = region {
                self.region = region
                self.regionResolver = nil
                self.signingRegion = signingRegion ?? region
            } else {
                let resolvedRegionResolver = regionResolver ?? DefaultRegionResolver()
                let region = resolvedRegionResolver.resolveRegion()
                self.region = region
                self.regionResolver = resolvedRegionResolver
                self.signingRegion = signingRegion ?? region
            }
            self.endpointResolver = endpointResolver ?? DefaultEndpointResolver()
            if let credProvider = credentialsProvider {
                self.credentialsProvider = try AWSClientRuntime.AWSCredentialsProvider.fromCustom(credProvider)
            } else {
                self.credentialsProvider = try AWSClientRuntime.AWSCredentialsProvider.fromChain()
            }
            self.frameworkMetadata = frameworkMetadata
            self.clientLogMode = runtimeConfig.clientLogMode
            self.decoder = runtimeConfig.decoder
            self.encoder = runtimeConfig.encoder
            self.httpClientConfiguration = runtimeConfig.httpClientConfiguration
            self.httpClientEngine = runtimeConfig.httpClientEngine
            self.idempotencyTokenGenerator = runtimeConfig.idempotencyTokenGenerator
            self.logger = runtimeConfig.logger
            self.retryer = runtimeConfig.retryer
        }

        public convenience init(
            credentialsProvider: AWSClientRuntime.CredentialsProvider? = nil,
            endpointResolver: AWSClientRuntime.EndpointResolver? = nil,
            frameworkMetadata: AWSClientRuntime.FrameworkMetadata? = nil,
            region: Swift.String? = nil,
            regionResolver: AWSClientRuntime.RegionResolver? = nil,
            signingRegion: Swift.String? = nil
        ) throws {
            let defaultRuntimeConfig = try ClientRuntime.DefaultSDKRuntimeConfiguration("MigrationHubConfigClient")
            try self.init(credentialsProvider: credentialsProvider, endpointResolver: endpointResolver, frameworkMetadata: frameworkMetadata, region: region, regionResolver: regionResolver, signingRegion: signingRegion, runtimeConfig: defaultRuntimeConfig)
        }
    }
}

public struct MigrationHubConfigClientLogHandlerFactory: ClientRuntime.SDKLogHandlerFactory {
    public var label = "MigrationHubConfigClient"
    let logLevel: ClientRuntime.SDKLogLevel
    public func construct(label: String) -> LogHandler {
        var handler = StreamLogHandler.standardOutput(label: label)
        handler.logLevel = logLevel.toLoggerType()
        return handler
    }
    public init(logLevel: ClientRuntime.SDKLogLevel) {
        self.logLevel = logLevel
    }
}

extension MigrationHubConfigClient: MigrationHubConfigClientProtocol {
    /// This API sets up the home region for the calling account only.
    public func createHomeRegionControl(input: CreateHomeRegionControlInput, completion: @escaping (ClientRuntime.SdkResult<CreateHomeRegionControlOutputResponse, CreateHomeRegionControlOutputError>) -> Void)
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "createHomeRegionControl")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "mgh")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<CreateHomeRegionControlInput, CreateHomeRegionControlOutputResponse, CreateHomeRegionControlOutputError>(id: "createHomeRegionControl")
        operation.initializeStep.intercept(position: .after, middleware: CreateHomeRegionControlInputURLPathMiddleware())
        operation.initializeStep.intercept(position: .after, middleware: CreateHomeRegionControlInputURLHostMiddleware())
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.serializeStep.intercept(position: .after, middleware: CreateHomeRegionControlInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: CreateHomeRegionControlInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: CreateHomeRegionControlInputBodyMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: AWSClientRuntime.XAmzTargetMiddleware<CreateHomeRegionControlInput, CreateHomeRegionControlOutputResponse, CreateHomeRegionControlOutputError>(xAmzTarget: "AWSMigrationHubMultiAccountService.CreateHomeRegionControl"))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<CreateHomeRegionControlInput, CreateHomeRegionControlOutputResponse, CreateHomeRegionControlOutputError>(contentType: "application/x-amz-json-1.1"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: AWSClientRuntime.RetryerMiddleware(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware(config: sigv4Config))
        operation.deserializeStep.intercept(position: .before, middleware: ClientRuntime.LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware())
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

    /// This API permits filtering on the ControlId and HomeRegion fields.
    public func describeHomeRegionControls(input: DescribeHomeRegionControlsInput, completion: @escaping (ClientRuntime.SdkResult<DescribeHomeRegionControlsOutputResponse, DescribeHomeRegionControlsOutputError>) -> Void)
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "describeHomeRegionControls")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "mgh")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<DescribeHomeRegionControlsInput, DescribeHomeRegionControlsOutputResponse, DescribeHomeRegionControlsOutputError>(id: "describeHomeRegionControls")
        operation.initializeStep.intercept(position: .after, middleware: DescribeHomeRegionControlsInputURLPathMiddleware())
        operation.initializeStep.intercept(position: .after, middleware: DescribeHomeRegionControlsInputURLHostMiddleware())
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.serializeStep.intercept(position: .after, middleware: DescribeHomeRegionControlsInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: DescribeHomeRegionControlsInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: DescribeHomeRegionControlsInputBodyMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: AWSClientRuntime.XAmzTargetMiddleware<DescribeHomeRegionControlsInput, DescribeHomeRegionControlsOutputResponse, DescribeHomeRegionControlsOutputError>(xAmzTarget: "AWSMigrationHubMultiAccountService.DescribeHomeRegionControls"))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<DescribeHomeRegionControlsInput, DescribeHomeRegionControlsOutputResponse, DescribeHomeRegionControlsOutputError>(contentType: "application/x-amz-json-1.1"))
        operation.finalizeStep.intercept(position: .before, middleware: ClientRuntime.ContentLengthMiddleware())
        operation.finalizeStep.intercept(position: .after, middleware: AWSClientRuntime.RetryerMiddleware(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware(config: sigv4Config))
        operation.deserializeStep.intercept(position: .before, middleware: ClientRuntime.LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware())
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

    /// Returns the calling account’s home region, if configured. This API is used by other AWS services to determine the regional endpoint for calling AWS Application Discovery Service and Migration Hub. You must call GetHomeRegion at least once before you call any other AWS Application Discovery Service and AWS Migration Hub APIs, to obtain the account's Migration Hub home region.
    public func getHomeRegion(input: GetHomeRegionInput, completion: @escaping (ClientRuntime.SdkResult<GetHomeRegionOutputResponse, GetHomeRegionOutputError>) -> Void)
    {
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "getHomeRegion")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "mgh")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<GetHomeRegionInput, GetHomeRegionOutputResponse, GetHomeRegionOutputError>(id: "getHomeRegion")
        operation.initializeStep.intercept(position: .after, middleware: GetHomeRegionInputURLPathMiddleware())
        operation.initializeStep.intercept(position: .after, middleware: GetHomeRegionInputURLHostMiddleware())
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.serializeStep.intercept(position: .after, middleware: GetHomeRegionInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .after, middleware: GetHomeRegionInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: AWSClientRuntime.XAmzTargetMiddleware<GetHomeRegionInput, GetHomeRegionOutputResponse, GetHomeRegionOutputError>(xAmzTarget: "AWSMigrationHubMultiAccountService.GetHomeRegion"))
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<GetHomeRegionInput, GetHomeRegionOutputResponse, GetHomeRegionOutputError>(contentType: "application/x-amz-json-1.1"))
        operation.finalizeStep.intercept(position: .after, middleware: AWSClientRuntime.RetryerMiddleware(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware(config: sigv4Config))
        operation.deserializeStep.intercept(position: .before, middleware: ClientRuntime.LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware())
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

}