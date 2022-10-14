// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DeleteObjectsInputBodyMiddleware: ClientRuntime.Middleware {
    public let id: Swift.String = "DeleteObjectsInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: ClientRuntime.SerializeStepInput<DeleteObjectsInput>,
                  next: H) async throws -> ClientRuntime.OperationOutput<DeleteObjectsOutputResponse>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        do {
            let encoder = context.getEncoder()
            if let delete = input.operationInput.delete {
                let deletedata = try encoder.encode(delete)
                let deletebody = ClientRuntime.HttpBody.data(deletedata)
                input.builder.withBody(deletebody)
            } else {
                let deletedata = try encoder.encode(input.operationInput)
                let deletebody = ClientRuntime.HttpBody.data(deletedata)
                input.builder.withBody(deletebody)
            }
        } catch let err {
            throw SdkError<DeleteObjectsOutputError>.client(ClientRuntime.ClientError.serializationFailed(err.localizedDescription))
        }
        return try await next.handle(context: context, input: input)
    }

    public typealias MInput = ClientRuntime.SerializeStepInput<DeleteObjectsInput>
    public typealias MOutput = ClientRuntime.OperationOutput<DeleteObjectsOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
}
