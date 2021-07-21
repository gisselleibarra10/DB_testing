// Code generated by smithy-swift-codegen. DO NOT EDIT!
import AWSClientRuntime
import ClientRuntime

extension InternalFailure: CustomDebugStringConvertible {
    public var debugDescription: String {
        "InternalFailure(message: \(String(describing: message)))"}
}

extension InternalFailure: AWSHttpServiceError {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil, message: String? = nil, requestID: String? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: InternalFailureBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.message = output.message
        } else {
            self.message = nil
        }
        self._headers = httpResponse.headers
        self._statusCode = httpResponse.statusCode
        self._requestID = requestID
        self._message = message
    }
}

/// <p> An internal failure occurred. </p>
public struct InternalFailure: ClientRuntime.ServiceError, Equatable {
    public var _headers: ClientRuntime.Headers?
    public var _statusCode: HttpStatusCode?
    public var _message: String?
    public var _requestID: String?
    public var _retryable: Bool = false
    public var _isThrottling: Bool = false
    public var _type: ErrorType = .server
    public var message: String?

    public init (
        message: String? = nil
    )
    {
        self.message = message
    }
}

struct InternalFailureBody: Equatable {
    public let message: String?
}

extension InternalFailureBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case message = "Message"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let messageDecoded = try containerValues.decodeIfPresent(String.self, forKey: .message)
        message = messageDecoded
    }
}

public struct InvokeEndpointInputBodyMiddleware: Middleware {
    public let id: String = "InvokeEndpointInputBodyMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<InvokeEndpointInput>,
                  next: H) -> Swift.Result<OperationOutput<InvokeEndpointOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        if let body = input.operationInput.body {
            let bodydata = body
            let bodybody = HttpBody.data(bodydata)
            input.builder.withBody(bodybody)
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<InvokeEndpointInput>
    public typealias MOutput = OperationOutput<InvokeEndpointOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<InvokeEndpointOutputError>
}

extension InvokeEndpointInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "InvokeEndpointInput(accept: \(String(describing: accept)), body: \(String(describing: body)), contentType: \(String(describing: contentType)), customAttributes: \(String(describing: customAttributes)), endpointName: \(String(describing: endpointName)), inferenceId: \(String(describing: inferenceId)), targetContainerHostname: \(String(describing: targetContainerHostname)), targetModel: \(String(describing: targetModel)), targetVariant: \(String(describing: targetVariant)))"}
}

extension InvokeEndpointInput: Encodable, Reflection {
    enum CodingKeys: String, CodingKey {
        case body = "Body"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let body = body {
            try encodeContainer.encode(body.base64EncodedString(), forKey: .body)
        }
    }
}

public struct InvokeEndpointInputHeadersMiddleware: Middleware {
    public let id: String = "InvokeEndpointInputHeadersMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<InvokeEndpointInput>,
                  next: H) -> Swift.Result<OperationOutput<InvokeEndpointOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        if let accept = input.operationInput.accept {
            input.builder.withHeader(name: "Accept", value: String(accept))
        }
        if let contentType = input.operationInput.contentType {
            input.builder.withHeader(name: "Content-Type", value: String(contentType))
        }
        if let customAttributes = input.operationInput.customAttributes {
            input.builder.withHeader(name: "X-Amzn-SageMaker-Custom-Attributes", value: String(customAttributes))
        }
        if let inferenceId = input.operationInput.inferenceId {
            input.builder.withHeader(name: "X-Amzn-SageMaker-Inference-Id", value: String(inferenceId))
        }
        if let targetContainerHostname = input.operationInput.targetContainerHostname {
            input.builder.withHeader(name: "X-Amzn-SageMaker-Target-Container-Hostname", value: String(targetContainerHostname))
        }
        if let targetModel = input.operationInput.targetModel {
            input.builder.withHeader(name: "X-Amzn-SageMaker-Target-Model", value: String(targetModel))
        }
        if let targetVariant = input.operationInput.targetVariant {
            input.builder.withHeader(name: "X-Amzn-SageMaker-Target-Variant", value: String(targetVariant))
        }
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<InvokeEndpointInput>
    public typealias MOutput = OperationOutput<InvokeEndpointOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<InvokeEndpointOutputError>
}

public struct InvokeEndpointInputQueryItemMiddleware: Middleware {
    public let id: String = "InvokeEndpointInputQueryItemMiddleware"

    public init() {}

    public func handle<H>(context: Context,
                  input: SerializeStepInput<InvokeEndpointInput>,
                  next: H) -> Swift.Result<OperationOutput<InvokeEndpointOutputResponse>, MError>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context,
    Self.MError == H.MiddlewareError
    {
        return next.handle(context: context, input: input)
    }

    public typealias MInput = SerializeStepInput<InvokeEndpointInput>
    public typealias MOutput = OperationOutput<InvokeEndpointOutputResponse>
    public typealias Context = ClientRuntime.HttpContext
    public typealias MError = SdkError<InvokeEndpointOutputError>
}

public struct InvokeEndpointInput: Equatable {
    /// <p>The desired MIME type of the inference in the response.</p>
    public let accept: String?
    /// <p>Provides input data, in the format specified in the <code>ContentType</code>
    ///             request header. Amazon SageMaker passes all of the data in the body to the model. </p>
    ///         <p>For information about the format of the request body, see <a href="https://docs.aws.amazon.com/sagemaker/latest/dg/cdf-inference.html">Common Data
    ///                 Formats-Inference</a>.</p>
    public let body: Data?
    /// <p>The MIME type of the input data in the request body.</p>
    public let contentType: String?
    /// <p>Provides additional information about a request for an inference submitted to a model
    ///             hosted at an Amazon SageMaker endpoint. The information is an opaque value that is
    ///             forwarded verbatim. You could use this value, for example, to provide an ID that you can
    ///             use to track a request or to provide other metadata that a service endpoint was
    ///             programmed to process. The value must consist of no more than 1024 visible US-ASCII
    ///             characters as specified in <a href="https://tools.ietf.org/html/rfc7230#section-3.2.6">Section 3.3.6. Field Value
    ///                 Components</a> of the Hypertext Transfer Protocol (HTTP/1.1). </p>
    ///         <p>The code in your model is responsible for setting or updating any custom attributes in
    ///             the response. If your code does not set this value in the response, an empty value is
    ///             returned. For example, if a custom attribute represents the trace ID, your model can
    ///             prepend the custom attribute with <code>Trace ID:</code> in your post-processing
    ///             function.</p>
    ///
    ///         <p>This feature is currently supported in the AWS SDKs but not in the Amazon SageMaker Python
    ///             SDK.</p>
    public let customAttributes: String?
    /// <p>The name of the endpoint that you specified when you created the endpoint using the
    ///                 <a href="https://docs.aws.amazon.com/sagemaker/latest/dg/API_CreateEndpoint.html">CreateEndpoint</a> API. </p>
    public let endpointName: String?
    /// <p>If you provide a value, it is added to the captured data when you enable data capture
    ///             on the endpoint. For information about data capture, see <a href="https://docs.aws.amazon.com/sagemaker/latest/dg/model-monitor-data-capture.html">Capture
    ///             Data</a>.</p>
    public let inferenceId: String?
    /// <p>If the endpoint hosts multiple containers and is configured to use direct invocation,
    ///             this parameter specifies the host name of the container to invoke.</p>
    public let targetContainerHostname: String?
    /// <p>The model to request for inference when invoking a multi-model endpoint.</p>
    public let targetModel: String?
    /// <p>Specify the production variant to send the inference request to when invoking an
    ///             endpoint that is running two or more variants. Note that this parameter overrides the
    ///             default behavior for the endpoint, which is to distribute the invocation traffic based
    ///             on the variant weights.</p>
    ///         <p>For information about how to use variant targeting to perform a/b testing, see <a href="https://docs.aws.amazon.com/sagemaker/latest/dg/model-ab-testing.html">Test models in
    ///                 production</a>
    ///          </p>
    public let targetVariant: String?

    public init (
        accept: String? = nil,
        body: Data? = nil,
        contentType: String? = nil,
        customAttributes: String? = nil,
        endpointName: String? = nil,
        inferenceId: String? = nil,
        targetContainerHostname: String? = nil,
        targetModel: String? = nil,
        targetVariant: String? = nil
    )
    {
        self.accept = accept
        self.body = body
        self.contentType = contentType
        self.customAttributes = customAttributes
        self.endpointName = endpointName
        self.inferenceId = inferenceId
        self.targetContainerHostname = targetContainerHostname
        self.targetModel = targetModel
        self.targetVariant = targetVariant
    }
}

struct InvokeEndpointInputBody: Equatable {
    public let body: Data?
}

extension InvokeEndpointInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case body = "Body"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let bodyDecoded = try containerValues.decodeIfPresent(Data.self, forKey: .body)
        body = bodyDecoded
    }
}

extension InvokeEndpointOutputError: HttpResponseBinding {
    public init(httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        let errorDetails = try RestJSONError(httpResponse: httpResponse)
        let requestID = httpResponse.headers.value(for: X_AMZN_REQUEST_ID_HEADER)
        try self.init(errorType: errorDetails.errorType, httpResponse: httpResponse, decoder: decoder, message: errorDetails.errorMessage, requestID: requestID)
    }
}

extension InvokeEndpointOutputError {
    public init(errorType: String?, httpResponse: HttpResponse, decoder: ResponseDecoder? = nil, message: String? = nil, requestID: String? = nil) throws {
        switch errorType {
        case "InternalFailure" : self = .internalFailure(try InternalFailure(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "ModelError" : self = .modelError(try ModelError(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "ServiceUnavailable" : self = .serviceUnavailable(try ServiceUnavailable(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        case "ValidationError" : self = .validationError(try ValidationError(httpResponse: httpResponse, decoder: decoder, message: message, requestID: requestID))
        default : self = .unknown(UnknownAWSHttpServiceError(httpResponse: httpResponse, message: message, requestID: requestID))
        }
    }
}

public enum InvokeEndpointOutputError: Swift.Error, Equatable {
    case internalFailure(InternalFailure)
    case modelError(ModelError)
    case serviceUnavailable(ServiceUnavailable)
    case validationError(ValidationError)
    case unknown(UnknownAWSHttpServiceError)
}

extension InvokeEndpointOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "InvokeEndpointOutputResponse(body: \(String(describing: body)), contentType: \(String(describing: contentType)), customAttributes: \(String(describing: customAttributes)), invokedProductionVariant: \(String(describing: invokedProductionVariant)))"}
}

extension InvokeEndpointOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if let contentTypeHeaderValue = httpResponse.headers.value(for: "Content-Type") {
            self.contentType = contentTypeHeaderValue
        } else {
            self.contentType = nil
        }
        if let customAttributesHeaderValue = httpResponse.headers.value(for: "X-Amzn-SageMaker-Custom-Attributes") {
            self.customAttributes = customAttributesHeaderValue
        } else {
            self.customAttributes = nil
        }
        if let invokedProductionVariantHeaderValue = httpResponse.headers.value(for: "x-Amzn-Invoked-Production-Variant") {
            self.invokedProductionVariant = invokedProductionVariantHeaderValue
        } else {
            self.invokedProductionVariant = nil
        }
        if case .data(let data) = httpResponse.body,
            let data = data {
            self.body = data
        } else {
            self.body = nil
        }
    }
}

public struct InvokeEndpointOutputResponse: Equatable {
    /// <p>Includes the inference provided by the model.</p>
    ///         <p>For information about the format of the response body, see <a href="https://docs.aws.amazon.com/sagemaker/latest/dg/cdf-inference.html">Common Data
    ///                 Formats-Inference</a>.</p>
    public let body: Data?
    /// <p>The MIME type of the inference returned in the response body.</p>
    public let contentType: String?
    /// <p>Provides additional information in the response about the inference returned by a
    ///             model hosted at an Amazon SageMaker endpoint. The information is an opaque value that is
    ///             forwarded verbatim. You could use this value, for example, to return an ID received in
    ///             the <code>CustomAttributes</code> header of a request or other metadata that a service
    ///             endpoint was programmed to produce. The value must consist of no more than 1024 visible
    ///             US-ASCII characters as specified in <a href="https://tools.ietf.org/html/rfc7230#section-3.2.6">Section 3.3.6. Field Value
    ///                 Components</a> of the Hypertext Transfer Protocol (HTTP/1.1). If the customer
    ///             wants the custom attribute returned, the model must set the custom attribute to be
    ///             included on the way back. </p>
    ///         <p>The code in your model is responsible for setting or updating any custom attributes in
    ///             the response. If your code does not set this value in the response, an empty value is
    ///             returned. For example, if a custom attribute represents the trace ID, your model can
    ///             prepend the custom attribute with <code>Trace ID:</code> in your post-processing
    ///             function.</p>
    ///         <p>This feature is currently supported in the AWS SDKs but not in the Amazon SageMaker Python
    ///             SDK.</p>
    public let customAttributes: String?
    /// <p>Identifies the production variant that was invoked.</p>
    public let invokedProductionVariant: String?

    public init (
        body: Data? = nil,
        contentType: String? = nil,
        customAttributes: String? = nil,
        invokedProductionVariant: String? = nil
    )
    {
        self.body = body
        self.contentType = contentType
        self.customAttributes = customAttributes
        self.invokedProductionVariant = invokedProductionVariant
    }
}

struct InvokeEndpointOutputResponseBody: Equatable {
    public let body: Data?
}

extension InvokeEndpointOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case body = "Body"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let bodyDecoded = try containerValues.decodeIfPresent(Data.self, forKey: .body)
        body = bodyDecoded
    }
}

extension ModelError: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ModelError(logStreamArn: \(String(describing: logStreamArn)), message: \(String(describing: message)), originalMessage: \(String(describing: originalMessage)), originalStatusCode: \(String(describing: originalStatusCode)))"}
}

extension ModelError: AWSHttpServiceError {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil, message: String? = nil, requestID: String? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ModelErrorBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.logStreamArn = output.logStreamArn
            self.message = output.message
            self.originalMessage = output.originalMessage
            self.originalStatusCode = output.originalStatusCode
        } else {
            self.logStreamArn = nil
            self.message = nil
            self.originalMessage = nil
            self.originalStatusCode = nil
        }
        self._headers = httpResponse.headers
        self._statusCode = httpResponse.statusCode
        self._requestID = requestID
        self._message = message
    }
}

/// <p> Model (owned by the customer in the container) returned 4xx or 5xx error code.
///         </p>
public struct ModelError: ClientRuntime.ServiceError, Equatable {
    public var _headers: ClientRuntime.Headers?
    public var _statusCode: HttpStatusCode?
    public var _message: String?
    public var _requestID: String?
    public var _retryable: Bool = false
    public var _isThrottling: Bool = false
    public var _type: ErrorType = .client
    /// <p> The Amazon Resource Name (ARN) of the log stream. </p>
    public var logStreamArn: String?
    public var message: String?
    /// <p> Original message. </p>
    public var originalMessage: String?
    /// <p> Original status code. </p>
    public var originalStatusCode: Int?

    public init (
        logStreamArn: String? = nil,
        message: String? = nil,
        originalMessage: String? = nil,
        originalStatusCode: Int? = nil
    )
    {
        self.logStreamArn = logStreamArn
        self.message = message
        self.originalMessage = originalMessage
        self.originalStatusCode = originalStatusCode
    }
}

struct ModelErrorBody: Equatable {
    public let message: String?
    public let originalStatusCode: Int?
    public let originalMessage: String?
    public let logStreamArn: String?
}

extension ModelErrorBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case logStreamArn = "LogStreamArn"
        case message = "Message"
        case originalMessage = "OriginalMessage"
        case originalStatusCode = "OriginalStatusCode"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let messageDecoded = try containerValues.decodeIfPresent(String.self, forKey: .message)
        message = messageDecoded
        let originalStatusCodeDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .originalStatusCode)
        originalStatusCode = originalStatusCodeDecoded
        let originalMessageDecoded = try containerValues.decodeIfPresent(String.self, forKey: .originalMessage)
        originalMessage = originalMessageDecoded
        let logStreamArnDecoded = try containerValues.decodeIfPresent(String.self, forKey: .logStreamArn)
        logStreamArn = logStreamArnDecoded
    }
}

extension ServiceUnavailable: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ServiceUnavailable(message: \(String(describing: message)))"}
}

extension ServiceUnavailable: AWSHttpServiceError {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil, message: String? = nil, requestID: String? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ServiceUnavailableBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.message = output.message
        } else {
            self.message = nil
        }
        self._headers = httpResponse.headers
        self._statusCode = httpResponse.statusCode
        self._requestID = requestID
        self._message = message
    }
}

/// <p> The service is unavailable. Try your call again. </p>
public struct ServiceUnavailable: ClientRuntime.ServiceError, Equatable {
    public var _headers: ClientRuntime.Headers?
    public var _statusCode: HttpStatusCode?
    public var _message: String?
    public var _requestID: String?
    public var _retryable: Bool = false
    public var _isThrottling: Bool = false
    public var _type: ErrorType = .server
    public var message: String?

    public init (
        message: String? = nil
    )
    {
        self.message = message
    }
}

struct ServiceUnavailableBody: Equatable {
    public let message: String?
}

extension ServiceUnavailableBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case message = "Message"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let messageDecoded = try containerValues.decodeIfPresent(String.self, forKey: .message)
        message = messageDecoded
    }
}

extension ValidationError: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ValidationError(message: \(String(describing: message)))"}
}

extension ValidationError: AWSHttpServiceError {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil, message: String? = nil, requestID: String? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ValidationErrorBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.message = output.message
        } else {
            self.message = nil
        }
        self._headers = httpResponse.headers
        self._statusCode = httpResponse.statusCode
        self._requestID = requestID
        self._message = message
    }
}

/// <p> Inspect your request and try again. </p>
public struct ValidationError: ClientRuntime.ServiceError, Equatable {
    public var _headers: ClientRuntime.Headers?
    public var _statusCode: HttpStatusCode?
    public var _message: String?
    public var _requestID: String?
    public var _retryable: Bool = false
    public var _isThrottling: Bool = false
    public var _type: ErrorType = .client
    public var message: String?

    public init (
        message: String? = nil
    )
    {
        self.message = message
    }
}

struct ValidationErrorBody: Equatable {
    public let message: String?
}

extension ValidationErrorBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case message = "Message"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let messageDecoded = try containerValues.decodeIfPresent(String.self, forKey: .message)
        message = messageDecoded
    }
}
