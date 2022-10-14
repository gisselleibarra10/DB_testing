// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct PutObjectLegalHoldInputBodyMiddleware: ClientRuntime.Middleware {
    public let id: Swift.String = "PutObjectLegalHoldInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: ClientRuntime.SerializeStepInput<PutObjectLegalHoldInput>,
                  next: H) async throws -> ClientRuntime.OperationOutput<PutObjectLegalHoldOutputResponse>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        do {
            let encoder = context.getEncoder()
            if let legalHold = input.operationInput.legalHold {
                let legalHolddata = try encoder.encode(legalHold)
                let legalHoldbody = ClientRuntime.HttpBody.data(legalHolddata)
                input.builder.withBody(legalHoldbody)
            } else {
                let legalHolddata = try encoder.encode(input.operationInput)
                let legalHoldbody = ClientRuntime.HttpBody.data(legalHolddata)
                input.builder.withBody(legalHoldbody)
            }
        } catch let err {
            throw SdkError<PutObjectLegalHoldOutputError>.client(ClientRuntime.ClientError.serializationFailed(err.localizedDescription))
        }
        return try await next.handle(context: context, input: input)
    }

    public typealias MInput = ClientRuntime.SerializeStepInput<PutObjectLegalHoldInput>
    public typealias MOutput = ClientRuntime.OperationOutput<PutObjectLegalHoldOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
}
