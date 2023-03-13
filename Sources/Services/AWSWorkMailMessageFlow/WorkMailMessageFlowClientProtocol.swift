// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime

/// The WorkMail Message Flow API provides access to email messages as they are being sent and received by a WorkMail organization.
public protocol WorkMailMessageFlowClientProtocol {
    /// Retrieves the raw content of an in-transit email message, in MIME format.
    func getRawMessageContent(input: GetRawMessageContentInput) async throws -> GetRawMessageContentOutputResponse
    /// Updates the raw content of an in-transit email message, in MIME format. This example describes how to update in-transit email message. For more information and examples for using this API, see [ Updating message content with AWS Lambda](https://docs.aws.amazon.com/workmail/latest/adminguide/update-with-lambda.html). Updates to an in-transit message only appear when you call PutRawMessageContent from an AWS Lambda function configured with a synchronous [ Run Lambda](https://docs.aws.amazon.com/workmail/latest/adminguide/lambda.html#synchronous-rules) rule. If you call PutRawMessageContent on a delivered or sent message, the message remains unchanged, even though [GetRawMessageContent](https://docs.aws.amazon.com/workmail/latest/APIReference/API_messageflow_GetRawMessageContent.html) returns an updated message.
    func putRawMessageContent(input: PutRawMessageContentInput) async throws -> PutRawMessageContentOutputResponse
}

public protocol WorkMailMessageFlowClientConfigurationProtocol : AWSClientRuntime.AWSClientConfiguration {
    var endpointResolver: EndpointResolver { get }
}

public enum WorkMailMessageFlowClientTypes {}
