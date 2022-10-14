// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension UploadPartCopyOutputResponse: ClientRuntime.HttpResponseBinding {
    public init (httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil) throws {
        if let bucketKeyEnabledHeaderValue = httpResponse.headers.value(for: "x-amz-server-side-encryption-bucket-key-enabled") {
            self.bucketKeyEnabled = Swift.Bool(bucketKeyEnabledHeaderValue) ?? false
        } else {
            self.bucketKeyEnabled = false
        }
        if let copySourceVersionIdHeaderValue = httpResponse.headers.value(for: "x-amz-copy-source-version-id") {
            self.copySourceVersionId = copySourceVersionIdHeaderValue
        } else {
            self.copySourceVersionId = nil
        }
        if let requestChargedHeaderValue = httpResponse.headers.value(for: "x-amz-request-charged") {
            self.requestCharged = S3ClientTypes.RequestCharged(rawValue: requestChargedHeaderValue)
        } else {
            self.requestCharged = nil
        }
        if let sSECustomerAlgorithmHeaderValue = httpResponse.headers.value(for: "x-amz-server-side-encryption-customer-algorithm") {
            self.sSECustomerAlgorithm = sSECustomerAlgorithmHeaderValue
        } else {
            self.sSECustomerAlgorithm = nil
        }
        if let sSECustomerKeyMD5HeaderValue = httpResponse.headers.value(for: "x-amz-server-side-encryption-customer-key-MD5") {
            self.sSECustomerKeyMD5 = sSECustomerKeyMD5HeaderValue
        } else {
            self.sSECustomerKeyMD5 = nil
        }
        if let sSEKMSKeyIdHeaderValue = httpResponse.headers.value(for: "x-amz-server-side-encryption-aws-kms-key-id") {
            self.sSEKMSKeyId = sSEKMSKeyIdHeaderValue
        } else {
            self.sSEKMSKeyId = nil
        }
        if let serverSideEncryptionHeaderValue = httpResponse.headers.value(for: "x-amz-server-side-encryption") {
            self.serverSideEncryption = S3ClientTypes.ServerSideEncryption(rawValue: serverSideEncryptionHeaderValue)
        } else {
            self.serverSideEncryption = nil
        }
        if case .stream(let reader) = httpResponse.body {
            let data = reader.toBytes().toData()
            if let responseDecoder = decoder {
                let output: S3ClientTypes.CopyPartResult = try responseDecoder.decode(responseBody: data)
                self.copyPartResult = output
            } else {
                self.copyPartResult = nil
            }
        } else {
            self.copyPartResult = nil
        }
    }
}
