// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime

extension GetCallerIdentityInput {
    public func presign(config: AWSClientRuntime.AWSClientConfiguration, expiration: Swift.Int64) async throws -> ClientRuntime.SdkHttpRequest? {
        let serviceName = "STS"
        let input = self
        let encoder = ClientRuntime.FormURLEncoder()
        let decoder = ClientRuntime.XMLDecoder()
        let context = ClientRuntime.HttpContextBuilder()
                      .withEncoder(value: encoder)
                      .withDecoder(value: decoder)
                      .withMethod(value: .post)
                      .withServiceName(value: serviceName)
                      .withOperation(value: "getCallerIdentity")
                      .withIdempotencyTokenGenerator(value: config.idempotencyTokenGenerator)
                      .withLogger(value: config.logger)
                      .withCredentialsProvider(value: config.credentialsProvider)
                      .withRegion(value: config.region)
                      .withSigningName(value: "sts")
                      .withSigningRegion(value: config.signingRegion)
        var operation = ClientRuntime.OperationStack<GetCallerIdentityInput, GetCallerIdentityOutputResponse, GetCallerIdentityOutputError>(id: "getCallerIdentity")
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLPathMiddleware<GetCallerIdentityInput, GetCallerIdentityOutputResponse, GetCallerIdentityOutputError>())
        operation.initializeStep.intercept(position: .after, middleware: ClientRuntime.URLHostMiddleware<GetCallerIdentityInput, GetCallerIdentityOutputResponse>())
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.EndpointResolverMiddleware<GetCallerIdentityOutputResponse, GetCallerIdentityOutputError>(endpointResolver: config.endpointResolver, serviceId: serviceName))
        let apiMetadata = AWSClientRuntime.APIMetadata(serviceId: serviceName, version: "1.0")
        operation.buildStep.intercept(position: .before, middleware: AWSClientRuntime.UserAgentMiddleware(metadata: AWSClientRuntime.AWSUserAgentMetadata.fromEnv(apiMetadata: apiMetadata, frameworkMetadata: config.frameworkMetadata)))
        operation.serializeStep.intercept(position: .after, middleware: ClientRuntime.SerializableBodyMiddleware<GetCallerIdentityInput, GetCallerIdentityOutputResponse>())
        operation.serializeStep.intercept(position: .after, middleware: ContentTypeMiddleware<GetCallerIdentityInput, GetCallerIdentityOutputResponse>(contentType: "application/x-www-form-urlencoded"))
        operation.finalizeStep.intercept(position: .after, middleware: AWSClientRuntime.RetryerMiddleware<GetCallerIdentityOutputResponse, GetCallerIdentityOutputError>(retryer: config.retryer))
        let sigv4Config = AWSClientRuntime.SigV4Config(expiration: expiration, unsignedBody: false)
        operation.finalizeStep.intercept(position: .before, middleware: AWSClientRuntime.SigV4Middleware<GetCallerIdentityOutputResponse, GetCallerIdentityOutputError>(config: sigv4Config))
        operation.deserializeStep.intercept(position: .before, middleware: ClientRuntime.LoggerMiddleware<GetCallerIdentityOutputResponse, GetCallerIdentityOutputError>(clientLogMode: config.clientLogMode))
        operation.deserializeStep.intercept(position: .after, middleware: ClientRuntime.DeserializeMiddleware<GetCallerIdentityOutputResponse, GetCallerIdentityOutputError>())
        let presignedRequestBuilder = try await operation.presignedRequest(context: context.build(), input: input, next: ClientRuntime.NoopHandler())
        guard let builtRequest = presignedRequestBuilder?.build() else {
            return nil
        }
        return builtRequest
    }
}
