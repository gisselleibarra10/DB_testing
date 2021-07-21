// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p></p>
public protocol LexRuntimeV2ClientProtocol {
    /// <p>Removes session information for a specified bot, alias, and user ID. </p>
    ///          <p>You can use this operation to restart a conversation with a bot.
    ///          When you remove a session, the entire history of the session is removed
    ///          so that you can start again.</p>
    ///          <p>You don't need to delete a session. Sessions have a time limit and
    ///          will expire. Set the session time limit when you create the bot. The
    ///          default is 5 minutes, but you can specify anything between 1 minute and
    ///          24 hours.</p>
    ///          <p>If you specify a bot or alias ID that doesn't exist, you receive a
    ///             <code>BadRequestException.</code>
    ///          </p>
    ///          <p>If the locale doesn't exist in the bot, or if the locale hasn't been
    ///          enables for the alias, you receive a
    ///          <code>BadRequestException</code>.</p>
    func deleteSession(input: DeleteSessionInput, completion: @escaping (SdkResult<DeleteSessionOutputResponse, DeleteSessionOutputError>) -> Void)
    /// <p>Returns session information for a specified bot, alias, and
    ///          user.</p>
    ///          <p>For example, you can use this operation to retrieve session
    ///          information for a user that has left a long-running session in
    ///          use.</p>
    ///          <p>If the bot, alias, or session identifier doesn't exist, Amazon Lex
    ///          returns a <code>BadRequestException</code>. If the locale doesn't exist
    ///          or is not enabled for the alias, you receive a
    ///             <code>BadRequestException</code>.</p>
    func getSession(input: GetSessionInput, completion: @escaping (SdkResult<GetSessionOutputResponse, GetSessionOutputError>) -> Void)
    /// <p>Creates a new session or modifies an existing session with an Amazon Lex
    ///          bot. Use this operation to enable your application to set the state of
    ///          the bot.</p>
    func putSession(input: PutSessionInput, completion: @escaping (SdkResult<PutSessionOutputResponse, PutSessionOutputError>) -> Void)
    /// <p>Sends user input to Amazon Lex. Client applications use this API to send
    ///          requests to Amazon Lex at runtime. Amazon Lex then interprets the user input
    ///          using the machine learning model that it build for the bot.</p>
    ///          <p>In response, Amazon Lex returns the next message to convey to the user
    ///          and an optional response card to display.</p>
    func recognizeText(input: RecognizeTextInput, completion: @escaping (SdkResult<RecognizeTextOutputResponse, RecognizeTextOutputError>) -> Void)
    /// <p>Sends user input to Amazon Lex. You can send text or speech. Clients use
    ///          this API to send text and audio requests to Amazon Lex at runtime. Amazon Lex
    ///          interprets the user input using the machine learning model built for
    ///          the bot.</p>
    func recognizeUtterance(input: RecognizeUtteranceInput, completion: @escaping (SdkResult<RecognizeUtteranceOutputResponse, RecognizeUtteranceOutputError>) -> Void)
    /// <p>Starts an HTTP/2 bidirectional event stream that enables you to send
    ///          audio, text, or DTMF input in real time. After your application starts
    ///          a conversation, users send input to Amazon Lex as a stream of events. Amazon Lex
    ///          processes the incoming events and responds with streaming text or audio
    ///          events.
    ///       </p>
    ///          <p></p>
    func startConversation(input: StartConversationInput, completion: @escaping (SdkResult<StartConversationOutputResponse, StartConversationOutputError>) -> Void)
}
