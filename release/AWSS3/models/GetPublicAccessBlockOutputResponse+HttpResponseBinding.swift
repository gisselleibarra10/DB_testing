// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension GetPublicAccessBlockOutputResponse: ClientRuntime.HttpResponseBinding {
    public init (httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil) throws {
        if case .stream(let reader) = httpResponse.body {
            let data = reader.toBytes().toData()
            if let responseDecoder = decoder {
                let output: S3ClientTypes.PublicAccessBlockConfiguration = try responseDecoder.decode(responseBody: data)
                self.publicAccessBlockConfiguration = output
            } else {
                self.publicAccessBlockConfiguration = nil
            }
        } else {
            self.publicAccessBlockConfiguration = nil
        }
    }
}
