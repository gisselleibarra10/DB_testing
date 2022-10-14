// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension GetBucketReplicationOutputResponse: ClientRuntime.HttpResponseBinding {
    public init (httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil) throws {
        if case .stream(let reader) = httpResponse.body {
            let data = reader.toBytes().toData()
            if let responseDecoder = decoder {
                let output: S3ClientTypes.ReplicationConfiguration = try responseDecoder.decode(responseBody: data)
                self.replicationConfiguration = output
            } else {
                self.replicationConfiguration = nil
            }
        } else {
            self.replicationConfiguration = nil
        }
    }
}
