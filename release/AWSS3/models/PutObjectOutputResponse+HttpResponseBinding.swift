// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension PutObjectOutputResponse: ClientRuntime.HttpResponseBinding {
    public init (httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil) throws {
        if let bucketKeyEnabledHeaderValue = httpResponse.headers.value(for: "x-amz-server-side-encryption-bucket-key-enabled") {
            self.bucketKeyEnabled = Swift.Bool(bucketKeyEnabledHeaderValue) ?? false
        } else {
            self.bucketKeyEnabled = false
        }
        if let checksumCRC32HeaderValue = httpResponse.headers.value(for: "x-amz-checksum-crc32") {
            self.checksumCRC32 = checksumCRC32HeaderValue
        } else {
            self.checksumCRC32 = nil
        }
        if let checksumCRC32CHeaderValue = httpResponse.headers.value(for: "x-amz-checksum-crc32c") {
            self.checksumCRC32C = checksumCRC32CHeaderValue
        } else {
            self.checksumCRC32C = nil
        }
        if let checksumSHA1HeaderValue = httpResponse.headers.value(for: "x-amz-checksum-sha1") {
            self.checksumSHA1 = checksumSHA1HeaderValue
        } else {
            self.checksumSHA1 = nil
        }
        if let checksumSHA256HeaderValue = httpResponse.headers.value(for: "x-amz-checksum-sha256") {
            self.checksumSHA256 = checksumSHA256HeaderValue
        } else {
            self.checksumSHA256 = nil
        }
        if let eTagHeaderValue = httpResponse.headers.value(for: "ETag") {
            self.eTag = eTagHeaderValue
        } else {
            self.eTag = nil
        }
        if let expirationHeaderValue = httpResponse.headers.value(for: "x-amz-expiration") {
            self.expiration = expirationHeaderValue
        } else {
            self.expiration = nil
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
        if let sSEKMSEncryptionContextHeaderValue = httpResponse.headers.value(for: "x-amz-server-side-encryption-context") {
            self.sSEKMSEncryptionContext = sSEKMSEncryptionContextHeaderValue
        } else {
            self.sSEKMSEncryptionContext = nil
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
        if let versionIdHeaderValue = httpResponse.headers.value(for: "x-amz-version-id") {
            self.versionId = versionIdHeaderValue
        } else {
            self.versionId = nil
        }
    }
}
