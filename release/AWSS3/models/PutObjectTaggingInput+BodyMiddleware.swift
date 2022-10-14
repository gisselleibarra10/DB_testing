// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct PutObjectTaggingInputBodyMiddleware: ClientRuntime.Middleware {
    public let id: Swift.String = "PutObjectTaggingInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: ClientRuntime.SerializeStepInput<PutObjectTaggingInput>,
                  next: H) async throws -> ClientRuntime.OperationOutput<PutObjectTaggingOutputResponse>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        do {
            let encoder = context.getEncoder()
            if let tagging = input.operationInput.tagging {
                let taggingdata = try encoder.encode(tagging)
                let taggingbody = ClientRuntime.HttpBody.data(taggingdata)
                input.builder.withBody(taggingbody)
            } else {
                let taggingdata = try encoder.encode(input.operationInput)
                let taggingbody = ClientRuntime.HttpBody.data(taggingdata)
                input.builder.withBody(taggingbody)
            }
        } catch let err {
            throw SdkError<PutObjectTaggingOutputError>.client(ClientRuntime.ClientError.serializationFailed(err.localizedDescription))
        }
        return try await next.handle(context: context, input: input)
    }

    public typealias MInput = ClientRuntime.SerializeStepInput<PutObjectTaggingInput>
    public typealias MOutput = ClientRuntime.OperationOutput<PutObjectTaggingOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
}
