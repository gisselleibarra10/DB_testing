// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime
import Foundation
import Logging

public class WorkMailMessageFlowClient {
    let client: SdkHttpClient
    let config: WorkMailMessageFlowClientConfiguration
    let serviceName = "WorkMailMessageFlow"
    let encoder: RequestEncoder
    let decoder: ResponseDecoder

    public init(config: WorkMailMessageFlowClientConfiguration) {
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

    public class WorkMailMessageFlowClientConfiguration: ClientRuntime.Configuration, AWSClientConfiguration {

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
            self.logger = logger ?? SwiftLogger(label: "WorkMailMessageFlowClient")
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

        public static func `default`() throws -> WorkMailMessageFlowClientConfiguration {
            let awsCredsProvider = try AWSCredentialsProvider.fromEnv()
            return try WorkMailMessageFlowClientConfiguration(credentialsProvider: awsCredsProvider)
        }
    }
}

public struct WorkMailMessageFlowClientLogHandlerFactory: SDKLogHandlerFactory {
    public var label = "WorkMailMessageFlowClient"
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

extension WorkMailMessageFlowClient: WorkMailMessageFlowClientProtocol {
    /// <p>Retrieves the raw content of an in-transit email message, in MIME format.</p>
    public func getRawMessageContent(input: GetRawMessageContentInput, completion: @escaping (SdkResult<GetRawMessageContentOutputResponse, GetRawMessageContentOutputError>) -> Void)
    {
        guard let messageId = input.messageId else {
            completion(.failure(.client(ClientError.serializationFailed("uri component messageId unexpectedly nil"))))
            return
        }
        let urlPath = "/messages/\(messageId)"
        let context = HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .get)
                      .withPath(value: urlPath)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "getRawMessageContent")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withHost(value: "workmailmessageflow.\(config.region).amazonaws.com")
                      .withSigningName(value: "workmailmessageflow")
                      .withSigningRegion(value: config.signingRegion)
        var operation = OperationStack<GetRawMessageContentInput, GetRawMessageContentOutputResponse, GetRawMessageContentOutputError>(id: "getRawMessageContent")
        operation.addDefaultOperationMiddlewares()
        operation.serializeStep.intercept(position: .before, middleware: GetRawMessageContentInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: GetRawMessageContentInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ContentTypeMiddleware<GetRawMessageContentInput, GetRawMessageContentOutputResponse, GetRawMessageContentOutputError>(contentType: "application/json"))
        operation.deserializeStep.intercept(position: .before, middleware: LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        operation.finalizeStep.intercept(position: .after, middleware: RetrierMiddleware(retrier: config.retrier))
        let sigv4Config = SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before,
                                                 middleware: SigV4Middleware(config: sigv4Config))
        operation.buildStep.intercept(position: .before, middleware: UserAgentMiddleware(metadata: AWSUserAgentMetadata.fromEnv(apiMetadata: APIMetadata(serviceId: serviceName, version: "1.0"))))
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

    /// <p>Updates the raw content of an in-transit email message, in MIME format.</p>
    ///          <p>This example describes how to update in-transit email message. For more information and examples for using this API, see
    ///       <a href="https://docs.aws.amazon.com/workmail/latest/adminguide/update-with-lambda.html">
    ///         Updating message content with AWS Lambda</a>.</p>
    ///
    ///
    ///          <note>
    ///             <p>Updates to an in-transit message only appear when you call <code>PutRawMessageContent</code> from an AWS Lambda function
    ///       configured with a  synchronous <a href="https://docs.aws.amazon.com/workmail/latest/adminguide/lambda.html#synchronous-rules">
    ///         Run Lambda</a> rule. If you call <code>PutRawMessageContent</code> on a delivered or sent message, the message remains unchanged,
    ///       even though <a href="https://docs.aws.amazon.com/workmail/latest/APIReference/API_messageflow_GetRawMessageContent.html">GetRawMessageContent</a> returns an updated
    ///         message.
    ///     </p>
    ///          </note>
    public func putRawMessageContent(input: PutRawMessageContentInput, completion: @escaping (SdkResult<PutRawMessageContentOutputResponse, PutRawMessageContentOutputError>) -> Void)
    {
        guard let messageId = input.messageId else {
            completion(.failure(.client(ClientError.serializationFailed("uri component messageId unexpectedly nil"))))
            return
        }
        let urlPath = "/messages/\(messageId)"
        let context = HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withPath(value: urlPath)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "putRawMessageContent")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withHost(value: "workmailmessageflow.\(config.region).amazonaws.com")
                      .withSigningName(value: "workmailmessageflow")
                      .withSigningRegion(value: config.signingRegion)
        var operation = OperationStack<PutRawMessageContentInput, PutRawMessageContentOutputResponse, PutRawMessageContentOutputError>(id: "putRawMessageContent")
        operation.addDefaultOperationMiddlewares()
        operation.serializeStep.intercept(position: .before, middleware: PutRawMessageContentInputHeadersMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: PutRawMessageContentInputQueryItemMiddleware())
        operation.serializeStep.intercept(position: .before, middleware: ContentTypeMiddleware<PutRawMessageContentInput, PutRawMessageContentOutputResponse, PutRawMessageContentOutputError>(contentType: "application/json"))
        operation.serializeStep.intercept(position: .before, middleware: PutRawMessageContentInputBodyMiddleware())
        operation.deserializeStep.intercept(position: .before, middleware: LoggerMiddleware(clientLogMode: config.clientLogMode))
        operation.buildStep.intercept(position: .before, middleware: EndpointResolverMiddleware(endpointResolver: config.endpointResolver, serviceId: serviceName))
        operation.finalizeStep.intercept(position: .after, middleware: RetrierMiddleware(retrier: config.retrier))
        let sigv4Config = SigV4Config(unsignedBody: false)
        operation.finalizeStep.intercept(position: .before,
                                                 middleware: SigV4Middleware(config: sigv4Config))
        operation.buildStep.intercept(position: .before, middleware: UserAgentMiddleware(metadata: AWSUserAgentMetadata.fromEnv(apiMetadata: APIMetadata(serviceId: serviceName, version: "1.0"))))
        let result = operation.handleMiddleware(context: context.build(), input: input, next: client.getHandler())
        completion(result)
    }

}
