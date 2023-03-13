// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime

/// Introduction The Amazon IVS Chat control-plane API enables you to create and manage Amazon IVS Chat resources. You also need to integrate with the [ Amazon IVS Chat Messaging API](https://docs.aws.amazon.com/ivs/latest/chatmsgapireference/chat-messaging-api.html), to enable users to interact with chat rooms in real time. The API is an AWS regional service. For a list of supported regions and Amazon IVS Chat HTTPS service endpoints, see the Amazon IVS Chat information on the [Amazon IVS page](https://docs.aws.amazon.com/general/latest/gr/ivs.html) in the AWS General Reference. Notes on terminology:
///
/// * You create service applications using the Amazon IVS Chat API. We refer to these as applications.
///
/// * You create front-end client applications (browser and Android/iOS apps) using the Amazon IVS Chat Messaging API. We refer to these as clients.
///
///
/// Resources The following resources are part of Amazon IVS Chat:
///
/// * LoggingConfiguration — A configuration that allows customers to store and record sent messages in a chat room. See the Logging Configuration endpoints for more information.
///
/// * Room — The central Amazon IVS Chat resource through which clients connect to and exchange chat messages. See the Room endpoints for more information.
///
///
/// Tagging A tag is a metadata label that you assign to an AWS resource. A tag comprises a key and a value, both set by you. For example, you might set a tag as topic:nature to label a particular video category. See [Tagging AWS Resources](https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html) for more information, including restrictions that apply to tags and "Tag naming limits and requirements"; Amazon IVS Chat has no service-specific constraints beyond what is documented there. Tags can help you identify and organize your AWS resources. For example, you can use the same tag for different resources to indicate that they are related. You can also use tags to manage access (see [Access Tags](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html)). The Amazon IVS Chat API has these tag-related endpoints: [TagResource], [UntagResource], and [ListTagsForResource]. The following resource supports tagging: Room. At most 50 tags can be applied to a resource. API Access Security Your Amazon IVS Chat applications (service applications and clients) must be authenticated and authorized to access Amazon IVS Chat resources. Note the differences between these concepts:
///
/// * Authentication is about verifying identity. Requests to the Amazon IVS Chat API must be signed to verify your identity.
///
/// * Authorization is about granting permissions. Your IAM roles need to have permissions for Amazon IVS Chat API requests.
///
///
/// Users (viewers) connect to a room using secure access tokens that you create using the [CreateChatToken] endpoint through the AWS SDK. You call CreateChatToken for every user’s chat session, passing identity and authorization information about the user. Signing API Requests HTTP API requests must be signed with an AWS SigV4 signature using your AWS security credentials. The AWS Command Line Interface (CLI) and the AWS SDKs take care of signing the underlying API calls for you. However, if your application calls the Amazon IVS Chat HTTP API directly, it’s your responsibility to sign the requests. You generate a signature using valid AWS credentials for an IAM role that has permission to perform the requested action. For example, DeleteMessage requests must be made using an IAM role that has the ivschat:DeleteMessage permission. For more information:
///
/// * Authentication and generating signatures — See [Authenticating Requests (Amazon Web Services Signature Version 4)](https://docs.aws.amazon.com/AmazonS3/latest/API/sig-v4-authenticating-requests.html) in the Amazon Web Services General Reference.
///
/// * Managing Amazon IVS permissions — See [Identity and Access Management](https://docs.aws.amazon.com/ivs/latest/userguide/security-iam.html) on the Security page of the Amazon IVS User Guide.
///
///
/// Amazon Resource Names (ARNs) ARNs uniquely identify AWS resources. An ARN is required when you need to specify a resource unambiguously across all of AWS, such as in IAM policies and API calls. For more information, see [Amazon Resource Names](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) in the AWS General Reference. Messaging Endpoints
///
/// * [DeleteMessage] — Sends an event to a specific room which directs clients to delete a specific message; that is, unrender it from view and delete it from the client’s chat history. This event’s EventName is aws:DELETE_MESSAGE. This replicates the [ DeleteMessage](https://docs.aws.amazon.com/ivs/latest/chatmsgapireference/actions-deletemessage-publish.html) WebSocket operation in the Amazon IVS Chat Messaging API.
///
/// * [DisconnectUser] — Disconnects all connections using a specified user ID from a room. This replicates the [ DisconnectUser](https://docs.aws.amazon.com/ivs/latest/chatmsgapireference/actions-disconnectuser-publish.html) WebSocket operation in the Amazon IVS Chat Messaging API.
///
/// * [SendEvent] — Sends an event to a room. Use this within your application’s business logic to send events to clients of a room; e.g., to notify clients to change the way the chat UI is rendered.
///
///
/// Chat Token Endpoint
///
/// * [CreateChatToken] — Creates an encrypted token that is used by a chat participant to establish an individual WebSocket chat connection to a room. When the token is used to connect to chat, the connection is valid for the session duration specified in the request. The token becomes invalid at the token-expiration timestamp included in the response.
///
///
/// Room Endpoints
///
/// * [CreateRoom] — Creates a room that allows clients to connect and pass messages.
///
/// * [DeleteRoom] — Deletes the specified room.
///
/// * [GetRoom] — Gets the specified room.
///
/// * [ListRooms] — Gets summary information about all your rooms in the AWS region where the API request is processed.
///
/// * [UpdateRoom] — Updates a room’s configuration.
///
///
/// Logging Configuration Endpoints
///
/// * [CreateLoggingConfiguration] — Creates a logging configuration that allows clients to store and record sent messages.
///
/// * [DeleteLoggingConfiguration] — Deletes the specified logging configuration.
///
/// * [GetLoggingConfiguration] — Gets the specified logging configuration.
///
/// * [ListLoggingConfigurations] — Gets summary information about all your logging configurations in the AWS region where the API request is processed.
///
/// * [UpdateLoggingConfiguration] — Updates a specified logging configuration.
///
///
/// Tags Endpoints
///
/// * [ListTagsForResource] — Gets information about AWS tags for the specified ARN.
///
/// * [TagResource] — Adds or updates tags for the AWS resource with the specified ARN.
///
/// * [UntagResource] — Removes tags from the resource with the specified ARN.
///
///
/// All the above are HTTP operations. There is a separate messaging API for managing Chat resources; see the [ Amazon IVS Chat Messaging API Reference](https://docs.aws.amazon.com/ivs/latest/chatmsgapireference/chat-messaging-api.html).
public protocol IvschatClientProtocol {
    /// Creates an encrypted token that is used by a chat participant to establish an individual WebSocket chat connection to a room. When the token is used to connect to chat, the connection is valid for the session duration specified in the request. The token becomes invalid at the token-expiration timestamp included in the response. Use the capabilities field to permit an end user to send messages or moderate a room. The attributes field securely attaches structured data to the chat session; the data is included within each message sent by the end user and received by other participants in the room. Common use cases for attributes include passing end-user profile data like an icon, display name, colors, badges, and other display features. Encryption keys are owned by Amazon IVS Chat and never used directly by your application.
    func createChatToken(input: CreateChatTokenInput) async throws -> CreateChatTokenOutputResponse
    /// Creates a logging configuration that allows clients to store and record sent messages.
    func createLoggingConfiguration(input: CreateLoggingConfigurationInput) async throws -> CreateLoggingConfigurationOutputResponse
    /// Creates a room that allows clients to connect and pass messages.
    func createRoom(input: CreateRoomInput) async throws -> CreateRoomOutputResponse
    /// Deletes the specified logging configuration.
    func deleteLoggingConfiguration(input: DeleteLoggingConfigurationInput) async throws -> DeleteLoggingConfigurationOutputResponse
    /// Sends an event to a specific room which directs clients to delete a specific message; that is, unrender it from view and delete it from the client’s chat history. This event’s EventName is aws:DELETE_MESSAGE. This replicates the [ DeleteMessage](https://docs.aws.amazon.com/ivs/latest/chatmsgapireference/actions-deletemessage-publish.html) WebSocket operation in the Amazon IVS Chat Messaging API.
    func deleteMessage(input: DeleteMessageInput) async throws -> DeleteMessageOutputResponse
    /// Deletes the specified room.
    func deleteRoom(input: DeleteRoomInput) async throws -> DeleteRoomOutputResponse
    /// Disconnects all connections using a specified user ID from a room. This replicates the [ DisconnectUser](https://docs.aws.amazon.com/ivs/latest/chatmsgapireference/actions-disconnectuser-publish.html) WebSocket operation in the Amazon IVS Chat Messaging API.
    func disconnectUser(input: DisconnectUserInput) async throws -> DisconnectUserOutputResponse
    /// Gets the specified logging configuration.
    func getLoggingConfiguration(input: GetLoggingConfigurationInput) async throws -> GetLoggingConfigurationOutputResponse
    /// Gets the specified room.
    func getRoom(input: GetRoomInput) async throws -> GetRoomOutputResponse
    /// Gets summary information about all your logging configurations in the AWS region where the API request is processed.
    func listLoggingConfigurations(input: ListLoggingConfigurationsInput) async throws -> ListLoggingConfigurationsOutputResponse
    /// Gets summary information about all your rooms in the AWS region where the API request is processed. Results are sorted in descending order of updateTime.
    func listRooms(input: ListRoomsInput) async throws -> ListRoomsOutputResponse
    /// Gets information about AWS tags for the specified ARN.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Sends an event to a room. Use this within your application’s business logic to send events to clients of a room; e.g., to notify clients to change the way the chat UI is rendered.
    func sendEvent(input: SendEventInput) async throws -> SendEventOutputResponse
    /// Adds or updates tags for the AWS resource with the specified ARN.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Removes tags from the resource with the specified ARN.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// Updates a specified logging configuration.
    func updateLoggingConfiguration(input: UpdateLoggingConfigurationInput) async throws -> UpdateLoggingConfigurationOutputResponse
    /// Updates a room’s configuration.
    func updateRoom(input: UpdateRoomInput) async throws -> UpdateRoomOutputResponse
}

public protocol IvschatClientConfigurationProtocol : AWSClientRuntime.AWSClientConfiguration {
    var endpointResolver: EndpointResolver { get }
}

public enum IvschatClientTypes {}
