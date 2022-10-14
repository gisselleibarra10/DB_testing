// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct PutObjectAclInputBodyMiddleware: ClientRuntime.Middleware {
    public let id: Swift.String = "PutObjectAclInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: ClientRuntime.SerializeStepInput<PutObjectAclInput>,
                  next: H) async throws -> ClientRuntime.OperationOutput<PutObjectAclOutputResponse>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        do {
            let encoder = context.getEncoder()
            if let accessControlPolicy = input.operationInput.accessControlPolicy {
                let accessControlPolicydata = try encoder.encode(accessControlPolicy)
                let accessControlPolicybody = ClientRuntime.HttpBody.data(accessControlPolicydata)
                input.builder.withBody(accessControlPolicybody)
            } else {
                let accessControlPolicydata = try encoder.encode(input.operationInput)
                let accessControlPolicybody = ClientRuntime.HttpBody.data(accessControlPolicydata)
                input.builder.withBody(accessControlPolicybody)
            }
        } catch let err {
            throw SdkError<PutObjectAclOutputError>.client(ClientRuntime.ClientError.serializationFailed(err.localizedDescription))
        }
        return try await next.handle(context: context, input: input)
    }

    public typealias MInput = ClientRuntime.SerializeStepInput<PutObjectAclInput>
    public typealias MOutput = ClientRuntime.OperationOutput<PutObjectAclOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
}
