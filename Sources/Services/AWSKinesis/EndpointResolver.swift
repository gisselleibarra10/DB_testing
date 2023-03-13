// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime

public struct EndpointParams {
    /// The ARN of the Kinesis consumer
    public let consumerARN: Swift.String?
    /// Override the endpoint used to send this request
    public let endpoint: Swift.String?
    /// Internal parameter to distinguish between Control/Data plane API and accordingly generate control/data plane endpoint
    public let operationType: Swift.String?
    /// The AWS region used to dispatch the request.
    public let region: Swift.String?
    /// The ARN of the Kinesis stream
    public let streamARN: Swift.String?
    /// When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.
    public let useDualStack: Swift.Bool
    /// When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.
    public let useFIPS: Swift.Bool

    public init(
        consumerARN: Swift.String? = nil,
        endpoint: Swift.String? = nil,
        operationType: Swift.String? = nil,
        region: Swift.String? = nil,
        streamARN: Swift.String? = nil,
        useDualStack: Swift.Bool = false,
        useFIPS: Swift.Bool = false
    )
    {
        self.consumerARN = consumerARN
        self.endpoint = endpoint
        self.operationType = operationType
        self.region = region
        self.streamARN = streamARN
        self.useDualStack = useDualStack
        self.useFIPS = useFIPS
    }
}

public protocol EndpointResolver {
    func resolve(params: EndpointParams) throws -> ClientRuntime.Endpoint
}

public struct DefaultEndpointResolver: EndpointResolver  {

    private let engine: AWSClientRuntime.AWSEndpointsRuleEngine
    private let partitions = "{\"version\":\"1.1\",\"partitions\":[{\"id\":\"aws\",\"regionRegex\":\"^(us|eu|ap|sa|ca|me|af)-\\\\w+-\\\\d+$\",\"regions\":{\"af-south-1\":{},\"ap-east-1\":{},\"ap-northeast-1\":{},\"ap-northeast-2\":{},\"ap-northeast-3\":{},\"ap-south-1\":{},\"ap-southeast-1\":{},\"ap-southeast-2\":{},\"ap-southeast-3\":{},\"ca-central-1\":{},\"eu-central-1\":{},\"eu-north-1\":{},\"eu-south-1\":{},\"eu-west-1\":{},\"eu-west-2\":{},\"eu-west-3\":{},\"me-central-1\":{},\"me-south-1\":{},\"sa-east-1\":{},\"us-east-1\":{},\"us-east-2\":{},\"us-west-1\":{},\"us-west-2\":{},\"aws-global\":{}},\"outputs\":{\"name\":\"aws\",\"dnsSuffix\":\"amazonaws.com\",\"dualStackDnsSuffix\":\"api.aws\",\"supportsFIPS\":true,\"supportsDualStack\":true}},{\"id\":\"aws-us-gov\",\"regionRegex\":\"^us\\\\-gov\\\\-\\\\w+\\\\-\\\\d+$\",\"regions\":{\"us-gov-west-1\":{},\"us-gov-east-1\":{},\"aws-us-gov-global\":{}},\"outputs\":{\"name\":\"aws-us-gov\",\"dnsSuffix\":\"amazonaws.com\",\"dualStackDnsSuffix\":\"api.aws\",\"supportsFIPS\":true,\"supportsDualStack\":true}},{\"id\":\"aws-cn\",\"regionRegex\":\"^cn\\\\-\\\\w+\\\\-\\\\d+$\",\"regions\":{\"cn-north-1\":{},\"cn-northwest-1\":{},\"aws-cn-global\":{}},\"outputs\":{\"name\":\"aws-cn\",\"dnsSuffix\":\"amazonaws.com.cn\",\"dualStackDnsSuffix\":\"api.amazonwebservices.com.cn\",\"supportsFIPS\":true,\"supportsDualStack\":true}},{\"id\":\"aws-iso\",\"regionRegex\":\"^us\\\\-iso\\\\-\\\\w+\\\\-\\\\d+$\",\"outputs\":{\"name\":\"aws-iso\",\"dnsSuffix\":\"c2s.ic.gov\",\"supportsFIPS\":true,\"supportsDualStack\":false,\"dualStackDnsSuffix\":\"c2s.ic.gov\"},\"regions\":{\"us-iso-east-1\":{},\"us-iso-west-1\":{},\"aws-iso-global\":{}}},{\"id\":\"aws-iso-b\",\"regionRegex\":\"^us\\\\-isob\\\\-\\\\w+\\\\-\\\\d+$\",\"outputs\":{\"name\":\"aws-iso-b\",\"dnsSuffix\":\"sc2s.sgov.gov\",\"supportsFIPS\":true,\"supportsDualStack\":false,\"dualStackDnsSuffix\":\"sc2s.sgov.gov\"},\"regions\":{\"us-isob-east-1\":{},\"aws-iso-b-global\":{}}}]}"
    private let ruleSet = "{\"version\":\"1.3\",\"parameters\":{\"Region\":{\"builtIn\":\"AWS::Region\",\"required\":false,\"documentation\":\"The AWS region used to dispatch the request.\",\"type\":\"String\"},\"UseDualStack\":{\"builtIn\":\"AWS::UseDualStack\",\"required\":true,\"default\":false,\"documentation\":\"When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.\",\"type\":\"Boolean\"},\"UseFIPS\":{\"builtIn\":\"AWS::UseFIPS\",\"required\":true,\"default\":false,\"documentation\":\"When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.\",\"type\":\"Boolean\"},\"Endpoint\":{\"builtIn\":\"SDK::Endpoint\",\"required\":false,\"documentation\":\"Override the endpoint used to send this request\",\"type\":\"String\"},\"StreamARN\":{\"required\":false,\"documentation\":\"The ARN of the Kinesis stream\",\"type\":\"String\"},\"OperationType\":{\"required\":false,\"documentation\":\"Internal parameter to distinguish between Control/Data plane API and accordingly generate control/data plane endpoint\",\"type\":\"String\"},\"ConsumerARN\":{\"required\":false,\"documentation\":\"The ARN of the Kinesis consumer\",\"type\":\"String\"}},\"rules\":[{\"conditions\":[{\"fn\":\"isSet\",\"argv\":[{\"ref\":\"StreamARN\"}]},{\"fn\":\"not\",\"argv\":[{\"fn\":\"isSet\",\"argv\":[{\"ref\":\"Endpoint\"}]}]},{\"fn\":\"isSet\",\"argv\":[{\"ref\":\"Region\"}]},{\"fn\":\"aws.partition\",\"argv\":[{\"ref\":\"Region\"}],\"assign\":\"PartitionResult\"},{\"fn\":\"not\",\"argv\":[{\"fn\":\"stringEquals\",\"argv\":[{\"fn\":\"getAttr\",\"argv\":[{\"ref\":\"PartitionResult\"},\"name\"]},\"aws-iso\"]}]},{\"fn\":\"not\",\"argv\":[{\"fn\":\"stringEquals\",\"argv\":[{\"fn\":\"getAttr\",\"argv\":[{\"ref\":\"PartitionResult\"},\"name\"]},\"aws-iso-b\"]}]}],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"aws.parseArn\",\"argv\":[{\"ref\":\"StreamARN\"}],\"assign\":\"arn\"}],\"type\":\"tree\",\"rules\":[{\"conditions\":[],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"isValidHostLabel\",\"argv\":[{\"fn\":\"getAttr\",\"argv\":[{\"ref\":\"arn\"},\"accountId\"]},false]}],\"type\":\"tree\",\"rules\":[{\"conditions\":[],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"isValidHostLabel\",\"argv\":[{\"fn\":\"getAttr\",\"argv\":[{\"ref\":\"arn\"},\"region\"]},false]}],\"type\":\"tree\",\"rules\":[{\"conditions\":[],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"stringEquals\",\"argv\":[{\"fn\":\"getAttr\",\"argv\":[{\"ref\":\"arn\"},\"service\"]},\"kinesis\"]}],\"type\":\"tree\",\"rules\":[{\"conditions\":[],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"getAttr\",\"argv\":[{\"ref\":\"arn\"},\"resourceId[0]\"],\"assign\":\"arnType\"},{\"fn\":\"not\",\"argv\":[{\"fn\":\"stringEquals\",\"argv\":[{\"ref\":\"arnType\"},\"\"]}]}],\"type\":\"tree\",\"rules\":[{\"conditions\":[],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"stringEquals\",\"argv\":[{\"ref\":\"arnType\"},\"stream\"]}],\"type\":\"tree\",\"rules\":[{\"conditions\":[],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"stringEquals\",\"argv\":[{\"fn\":\"getAttr\",\"argv\":[{\"ref\":\"PartitionResult\"},\"name\"]},\"{arn#partition}\"]}],\"type\":\"tree\",\"rules\":[{\"conditions\":[],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"isSet\",\"argv\":[{\"ref\":\"OperationType\"}]}],\"type\":\"tree\",\"rules\":[{\"conditions\":[],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"booleanEquals\",\"argv\":[{\"ref\":\"UseFIPS\"},true]},{\"fn\":\"booleanEquals\",\"argv\":[{\"ref\":\"UseDualStack\"},true]}],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"booleanEquals\",\"argv\":[{\"fn\":\"getAttr\",\"argv\":[{\"ref\":\"PartitionResult\"},\"supportsFIPS\"]},true]}],\"type\":\"tree\",\"rules\":[{\"conditions\":[],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"booleanEquals\",\"argv\":[{\"fn\":\"getAttr\",\"argv\":[{\"ref\":\"PartitionResult\"},\"supportsDualStack\"]},true]}],\"type\":\"tree\",\"rules\":[{\"conditions\":[],\"endpoint\":{\"url\":\"https://{arn#accountId}.{OperationType}-kinesis-fips.{Region}.{PartitionResult#dualStackDnsSuffix}\",\"properties\":{},\"headers\":{}},\"type\":\"endpoint\"}]},{\"conditions\":[],\"error\":\"DualStack is enabled, but this partition does not support DualStack.\",\"type\":\"error\"}]}]},{\"conditions\":[],\"error\":\"FIPS is enabled, but this partition does not support FIPS.\",\"type\":\"error\"}]},{\"conditions\":[{\"fn\":\"booleanEquals\",\"argv\":[{\"ref\":\"UseFIPS\"},true]}],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"booleanEquals\",\"argv\":[{\"fn\":\"getAttr\",\"argv\":[{\"ref\":\"PartitionResult\"},\"supportsFIPS\"]},true]}],\"type\":\"tree\",\"rules\":[{\"conditions\":[],\"endpoint\":{\"url\":\"https://{arn#accountId}.{OperationType}-kinesis-fips.{Region}.{PartitionResult#dnsSuffix}\",\"properties\":{},\"headers\":{}},\"type\":\"endpoint\"}]},{\"conditions\":[],\"error\":\"FIPS is enabled but this partition does not support FIPS\",\"type\":\"error\"}]},{\"conditions\":[{\"fn\":\"booleanEquals\",\"argv\":[{\"ref\":\"UseDualStack\"},true]}],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"booleanEquals\",\"argv\":[{\"fn\":\"getAttr\",\"argv\":[{\"ref\":\"PartitionResult\"},\"supportsDualStack\"]},true]}],\"type\":\"tree\",\"rules\":[{\"conditions\":[],\"endpoint\":{\"url\":\"https://{arn#accountId}.{OperationType}-kinesis.{Region}.{PartitionResult#dualStackDnsSuffix}\",\"properties\":{},\"headers\":{}},\"type\":\"endpoint\"}]},{\"conditions\":[],\"error\":\"DualStack is enabled but this partition does not support DualStack\",\"type\":\"error\"}]},{\"conditions\":[],\"endpoint\":{\"url\":\"https://{arn#accountId}.{OperationType}-kinesis.{Region}.{PartitionResult#dnsSuffix}\",\"properties\":{},\"headers\":{}},\"type\":\"endpoint\"}]}]},{\"conditions\":[],\"error\":\"Operation Type is not set. Please contact service team for resolution.\",\"type\":\"error\"}]}]},{\"conditions\":[],\"error\":\"Partition: {arn#partition} from ARN doesn't match with partition name: {PartitionResult#name}.\",\"type\":\"error\"}]}]},{\"conditions\":[],\"error\":\"Invalid ARN: Kinesis ARNs don't support `{arnType}` arn types.\",\"type\":\"error\"}]}]},{\"conditions\":[],\"error\":\"Invalid ARN: No ARN type specified\",\"type\":\"error\"}]}]},{\"conditions\":[],\"error\":\"Invalid ARN: The ARN was not for the Kinesis service, found: {arn#service}.\",\"type\":\"error\"}]}]},{\"conditions\":[],\"error\":\"Invalid ARN: Invalid region.\",\"type\":\"error\"}]}]},{\"conditions\":[],\"error\":\"Invalid ARN: Invalid account id.\",\"type\":\"error\"}]}]},{\"conditions\":[],\"error\":\"Invalid ARN: Failed to parse ARN.\",\"type\":\"error\"}]},{\"conditions\":[{\"fn\":\"isSet\",\"argv\":[{\"ref\":\"ConsumerARN\"}]},{\"fn\":\"not\",\"argv\":[{\"fn\":\"isSet\",\"argv\":[{\"ref\":\"Endpoint\"}]}]},{\"fn\":\"isSet\",\"argv\":[{\"ref\":\"Region\"}]},{\"fn\":\"aws.partition\",\"argv\":[{\"ref\":\"Region\"}],\"assign\":\"PartitionResult\"},{\"fn\":\"not\",\"argv\":[{\"fn\":\"stringEquals\",\"argv\":[{\"fn\":\"getAttr\",\"argv\":[{\"ref\":\"PartitionResult\"},\"name\"]},\"aws-iso\"]}]},{\"fn\":\"not\",\"argv\":[{\"fn\":\"stringEquals\",\"argv\":[{\"fn\":\"getAttr\",\"argv\":[{\"ref\":\"PartitionResult\"},\"name\"]},\"aws-iso-b\"]}]}],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"aws.parseArn\",\"argv\":[{\"ref\":\"ConsumerARN\"}],\"assign\":\"arn\"}],\"type\":\"tree\",\"rules\":[{\"conditions\":[],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"isValidHostLabel\",\"argv\":[{\"fn\":\"getAttr\",\"argv\":[{\"ref\":\"arn\"},\"accountId\"]},false]}],\"type\":\"tree\",\"rules\":[{\"conditions\":[],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"isValidHostLabel\",\"argv\":[{\"fn\":\"getAttr\",\"argv\":[{\"ref\":\"arn\"},\"region\"]},false]}],\"type\":\"tree\",\"rules\":[{\"conditions\":[],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"stringEquals\",\"argv\":[{\"fn\":\"getAttr\",\"argv\":[{\"ref\":\"arn\"},\"service\"]},\"kinesis\"]}],\"type\":\"tree\",\"rules\":[{\"conditions\":[],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"getAttr\",\"argv\":[{\"ref\":\"arn\"},\"resourceId[0]\"],\"assign\":\"arnType\"},{\"fn\":\"not\",\"argv\":[{\"fn\":\"stringEquals\",\"argv\":[{\"ref\":\"arnType\"},\"\"]}]}],\"type\":\"tree\",\"rules\":[{\"conditions\":[],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"stringEquals\",\"argv\":[{\"ref\":\"arnType\"},\"stream\"]}],\"type\":\"tree\",\"rules\":[{\"conditions\":[],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"stringEquals\",\"argv\":[{\"fn\":\"getAttr\",\"argv\":[{\"ref\":\"PartitionResult\"},\"name\"]},\"{arn#partition}\"]}],\"type\":\"tree\",\"rules\":[{\"conditions\":[],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"isSet\",\"argv\":[{\"ref\":\"OperationType\"}]}],\"type\":\"tree\",\"rules\":[{\"conditions\":[],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"booleanEquals\",\"argv\":[{\"ref\":\"UseFIPS\"},true]},{\"fn\":\"booleanEquals\",\"argv\":[{\"ref\":\"UseDualStack\"},true]}],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"booleanEquals\",\"argv\":[{\"fn\":\"getAttr\",\"argv\":[{\"ref\":\"PartitionResult\"},\"supportsFIPS\"]},true]}],\"type\":\"tree\",\"rules\":[{\"conditions\":[],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"booleanEquals\",\"argv\":[{\"fn\":\"getAttr\",\"argv\":[{\"ref\":\"PartitionResult\"},\"supportsDualStack\"]},true]}],\"type\":\"tree\",\"rules\":[{\"conditions\":[],\"endpoint\":{\"url\":\"https://{arn#accountId}.{OperationType}-kinesis-fips.{Region}.{PartitionResult#dualStackDnsSuffix}\",\"properties\":{},\"headers\":{}},\"type\":\"endpoint\"}]},{\"conditions\":[],\"error\":\"DualStack is enabled, but this partition does not support DualStack.\",\"type\":\"error\"}]}]},{\"conditions\":[],\"error\":\"FIPS is enabled, but this partition does not support FIPS.\",\"type\":\"error\"}]},{\"conditions\":[{\"fn\":\"booleanEquals\",\"argv\":[{\"ref\":\"UseFIPS\"},true]}],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"booleanEquals\",\"argv\":[{\"fn\":\"getAttr\",\"argv\":[{\"ref\":\"PartitionResult\"},\"supportsFIPS\"]},true]}],\"type\":\"tree\",\"rules\":[{\"conditions\":[],\"endpoint\":{\"url\":\"https://{arn#accountId}.{OperationType}-kinesis-fips.{Region}.{PartitionResult#dnsSuffix}\",\"properties\":{},\"headers\":{}},\"type\":\"endpoint\"}]},{\"conditions\":[],\"error\":\"FIPS is enabled but this partition does not support FIPS\",\"type\":\"error\"}]},{\"conditions\":[{\"fn\":\"booleanEquals\",\"argv\":[{\"ref\":\"UseDualStack\"},true]}],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"booleanEquals\",\"argv\":[{\"fn\":\"getAttr\",\"argv\":[{\"ref\":\"PartitionResult\"},\"supportsDualStack\"]},true]}],\"type\":\"tree\",\"rules\":[{\"conditions\":[],\"endpoint\":{\"url\":\"https://{arn#accountId}.{OperationType}-kinesis.{Region}.{PartitionResult#dualStackDnsSuffix}\",\"properties\":{},\"headers\":{}},\"type\":\"endpoint\"}]},{\"conditions\":[],\"error\":\"DualStack is enabled but this partition does not support DualStack\",\"type\":\"error\"}]},{\"conditions\":[],\"endpoint\":{\"url\":\"https://{arn#accountId}.{OperationType}-kinesis.{Region}.{PartitionResult#dnsSuffix}\",\"properties\":{},\"headers\":{}},\"type\":\"endpoint\"}]}]},{\"conditions\":[],\"error\":\"Operation Type is not set. Please contact service team for resolution.\",\"type\":\"error\"}]}]},{\"conditions\":[],\"error\":\"Partition: {arn#partition} from ARN doesn't match with partition name: {PartitionResult#name}.\",\"type\":\"error\"}]}]},{\"conditions\":[],\"error\":\"Invalid ARN: Kinesis ARNs don't support `{arnType}` arn types.\",\"type\":\"error\"}]}]},{\"conditions\":[],\"error\":\"Invalid ARN: No ARN type specified\",\"type\":\"error\"}]}]},{\"conditions\":[],\"error\":\"Invalid ARN: The ARN was not for the Kinesis service, found: {arn#service}.\",\"type\":\"error\"}]}]},{\"conditions\":[],\"error\":\"Invalid ARN: Invalid region.\",\"type\":\"error\"}]}]},{\"conditions\":[],\"error\":\"Invalid ARN: Invalid account id.\",\"type\":\"error\"}]}]},{\"conditions\":[],\"error\":\"Invalid ARN: Failed to parse ARN.\",\"type\":\"error\"}]},{\"conditions\":[{\"fn\":\"isSet\",\"argv\":[{\"ref\":\"Endpoint\"}]}],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"booleanEquals\",\"argv\":[{\"ref\":\"UseFIPS\"},true]}],\"error\":\"Invalid Configuration: FIPS and custom endpoint are not supported\",\"type\":\"error\"},{\"conditions\":[],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"booleanEquals\",\"argv\":[{\"ref\":\"UseDualStack\"},true]}],\"error\":\"Invalid Configuration: Dualstack and custom endpoint are not supported\",\"type\":\"error\"},{\"conditions\":[],\"endpoint\":{\"url\":{\"ref\":\"Endpoint\"},\"properties\":{},\"headers\":{}},\"type\":\"endpoint\"}]}]},{\"conditions\":[],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"isSet\",\"argv\":[{\"ref\":\"Region\"}]}],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"aws.partition\",\"argv\":[{\"ref\":\"Region\"}],\"assign\":\"PartitionResult\"}],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"booleanEquals\",\"argv\":[{\"ref\":\"UseFIPS\"},true]},{\"fn\":\"booleanEquals\",\"argv\":[{\"ref\":\"UseDualStack\"},true]}],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"booleanEquals\",\"argv\":[true,{\"fn\":\"getAttr\",\"argv\":[{\"ref\":\"PartitionResult\"},\"supportsFIPS\"]}]},{\"fn\":\"booleanEquals\",\"argv\":[true,{\"fn\":\"getAttr\",\"argv\":[{\"ref\":\"PartitionResult\"},\"supportsDualStack\"]}]}],\"type\":\"tree\",\"rules\":[{\"conditions\":[],\"type\":\"tree\",\"rules\":[{\"conditions\":[],\"endpoint\":{\"url\":\"https://kinesis-fips.{Region}.{PartitionResult#dualStackDnsSuffix}\",\"properties\":{},\"headers\":{}},\"type\":\"endpoint\"}]}]},{\"conditions\":[],\"error\":\"FIPS and DualStack are enabled, but this partition does not support one or both\",\"type\":\"error\"}]},{\"conditions\":[{\"fn\":\"booleanEquals\",\"argv\":[{\"ref\":\"UseFIPS\"},true]}],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"booleanEquals\",\"argv\":[true,{\"fn\":\"getAttr\",\"argv\":[{\"ref\":\"PartitionResult\"},\"supportsFIPS\"]}]}],\"type\":\"tree\",\"rules\":[{\"conditions\":[],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"stringEquals\",\"argv\":[\"aws-us-gov\",{\"fn\":\"getAttr\",\"argv\":[{\"ref\":\"PartitionResult\"},\"name\"]}]}],\"endpoint\":{\"url\":\"https://kinesis.{Region}.amazonaws.com\",\"properties\":{},\"headers\":{}},\"type\":\"endpoint\"},{\"conditions\":[],\"endpoint\":{\"url\":\"https://kinesis-fips.{Region}.{PartitionResult#dnsSuffix}\",\"properties\":{},\"headers\":{}},\"type\":\"endpoint\"}]}]},{\"conditions\":[],\"error\":\"FIPS is enabled but this partition does not support FIPS\",\"type\":\"error\"}]},{\"conditions\":[{\"fn\":\"booleanEquals\",\"argv\":[{\"ref\":\"UseDualStack\"},true]}],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"booleanEquals\",\"argv\":[true,{\"fn\":\"getAttr\",\"argv\":[{\"ref\":\"PartitionResult\"},\"supportsDualStack\"]}]}],\"type\":\"tree\",\"rules\":[{\"conditions\":[],\"type\":\"tree\",\"rules\":[{\"conditions\":[],\"endpoint\":{\"url\":\"https://kinesis.{Region}.{PartitionResult#dualStackDnsSuffix}\",\"properties\":{},\"headers\":{}},\"type\":\"endpoint\"}]}]},{\"conditions\":[],\"error\":\"DualStack is enabled but this partition does not support DualStack\",\"type\":\"error\"}]},{\"conditions\":[],\"type\":\"tree\",\"rules\":[{\"conditions\":[{\"fn\":\"stringEquals\",\"argv\":[{\"ref\":\"Region\"},\"us-gov-east-1\"]}],\"endpoint\":{\"url\":\"https://kinesis.us-gov-east-1.amazonaws.com\",\"properties\":{},\"headers\":{}},\"type\":\"endpoint\"},{\"conditions\":[{\"fn\":\"stringEquals\",\"argv\":[{\"ref\":\"Region\"},\"us-gov-west-1\"]}],\"endpoint\":{\"url\":\"https://kinesis.us-gov-west-1.amazonaws.com\",\"properties\":{},\"headers\":{}},\"type\":\"endpoint\"},{\"conditions\":[],\"endpoint\":{\"url\":\"https://kinesis.{Region}.{PartitionResult#dnsSuffix}\",\"properties\":{},\"headers\":{}},\"type\":\"endpoint\"}]}]}]},{\"conditions\":[],\"error\":\"Invalid Configuration: Missing Region\",\"type\":\"error\"}]}]}"

    public init() throws {
        engine = try AWSClientRuntime.AWSEndpointsRuleEngine(partitions: partitions, ruleSet: ruleSet)
    }

    public func resolve(params: EndpointParams) throws -> ClientRuntime.Endpoint {
        let context = try AWSClientRuntime.AWSEndpointsRequestContext()
        try context.add(name: "ConsumerARN", value: params.consumerARN)
        try context.add(name: "Endpoint", value: params.endpoint)
        try context.add(name: "OperationType", value: params.operationType)
        try context.add(name: "Region", value: params.region)
        try context.add(name: "StreamARN", value: params.streamARN)
        try context.add(name: "UseDualStack", value: params.useDualStack)
        try context.add(name: "UseFIPS", value: params.useFIPS)

        guard let crtResolvedEndpoint = try engine.resolve(context: context) else {
            throw EndpointError.unresolved("Failed to resolved endpoint")
        }

        if crtResolvedEndpoint.getType() == .error {
            let error = crtResolvedEndpoint.getError()
            throw EndpointError.unresolved(error)
        }

        guard let url = crtResolvedEndpoint.getURL() else {
            assertionFailure("This must be a bug in either CRT or the rule engine, if the endpoint is not an error, it must have a url")
            throw EndpointError.unresolved("Failed to resolved endpoint")
        }

        let headers = crtResolvedEndpoint.getHeaders() ?? [:]
        let properties = crtResolvedEndpoint.getProperties() ?? [:]
        return try Endpoint(urlString: url, headers: Headers(headers), properties: properties)
    }
}

public struct EndpointResolverMiddleware<OperationStackOutput: ClientRuntime.HttpResponseBinding, OperationStackError: ClientRuntime.HttpResponseBinding>: ClientRuntime.Middleware {
    public let id: Swift.String = "EndpointResolverMiddleware"

    let endpointResolver: EndpointResolver

    let endpointParams: EndpointParams

    let authSchemeResolver: AWSClientRuntime.AuthSchemeResolver

    public init(endpointResolver: EndpointResolver, endpointParams: EndpointParams, authSchemeResolver: AWSClientRuntime.AuthSchemeResolver = AWSClientRuntime.DefaultAuthSchemeResolver()) {
        self.endpointResolver = endpointResolver
        self.endpointParams = endpointParams
        self.authSchemeResolver = authSchemeResolver
    }

    public func handle<H>(context: Context,
                  input: ClientRuntime.SdkHttpRequestBuilder,
                  next: H) async throws -> ClientRuntime.OperationOutput<OperationStackOutput>
    where H: Handler,
    Self.MInput == H.Input,
    Self.MOutput == H.Output,
    Self.Context == H.Context
    {
        let endpoint = try endpointResolver.resolve(params: endpointParams)

        var signingName: String? = nil
        var signingRegion: String? = nil
        var signingAlgorithm: String? = nil
        if let authSchemes = endpoint.authSchemes() {
            let schemes = try authSchemes.map { try AuthScheme(from: $0) }
            let authScheme = try authSchemeResolver.resolve(authSchemes: schemes)
            signingAlgorithm = authScheme.name
            switch authScheme {
            case .sigV4(let param):
                signingName = param.signingName
                signingRegion = param.signingRegion
            case .sigV4A(let param):
                signingName = param.signingName
                signingRegion = param.signingRegionSet?.first
            case .none:
                break
            }
        }

        let awsEndpoint = AWSEndpoint(endpoint: endpoint, signingName: signingName, signingRegion: signingRegion)

        var host = ""
        if let hostOverride = context.getHost() {
            host = hostOverride
        } else {
            host = "\(context.getHostPrefix() ?? "")\(awsEndpoint.endpoint.host)"
        }

        if let protocolType = awsEndpoint.endpoint.protocolType {
            input.withProtocol(protocolType)
        }

        var updatedContext = context
        if let signingRegion = signingRegion {
            updatedContext.attributes.set(key: HttpContext.signingRegion, value: signingRegion)
        }
        if let signingName = signingName {
            updatedContext.attributes.set(key: HttpContext.signingName, value: signingName)
        }
        if let signingAlgorithm = signingAlgorithm {
            updatedContext.attributes.set(key: HttpContext.signingAlgorithm, value: signingAlgorithm)
        }

        if let headers = endpoint.headers {
            input.withHeaders(headers)
        }

        input.withMethod(context.getMethod())
            .withHost(host)
            .withPort(awsEndpoint.endpoint.port)
            .withPath(awsEndpoint.endpoint.path.appendingPathComponent(context.getPath()))
            .withHeader(name: "Host", value: host)

        return try await next.handle(context: updatedContext, input: input)
    }

    public typealias MInput = ClientRuntime.SdkHttpRequestBuilder
    public typealias MOutput = ClientRuntime.OperationOutput<OperationStackOutput>
    public typealias Context = ClientRuntime.HttpContext
}
