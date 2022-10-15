// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension WriteGetObjectResponseInput: ClientRuntime.HeaderProvider {
    public var headers: ClientRuntime.Headers {
        var items = ClientRuntime.Headers()
        if let acceptRanges = acceptRanges {
            items.add(Header(name: "x-amz-fwd-header-accept-ranges", value: Swift.String(acceptRanges)))
        }
        if bucketKeyEnabled != false {
            items.add(Header(name: "x-amz-fwd-header-x-amz-server-side-encryption-bucket-key-enabled", value: Swift.String(bucketKeyEnabled)))
        }
        if let cacheControl = cacheControl {
            items.add(Header(name: "x-amz-fwd-header-Cache-Control", value: Swift.String(cacheControl)))
        }
        if let checksumCRC32 = checksumCRC32 {
            items.add(Header(name: "x-amz-fwd-header-x-amz-checksum-crc32", value: Swift.String(checksumCRC32)))
        }
        if let checksumCRC32C = checksumCRC32C {
            items.add(Header(name: "x-amz-fwd-header-x-amz-checksum-crc32c", value: Swift.String(checksumCRC32C)))
        }
        if let checksumSHA1 = checksumSHA1 {
            items.add(Header(name: "x-amz-fwd-header-x-amz-checksum-sha1", value: Swift.String(checksumSHA1)))
        }
        if let checksumSHA256 = checksumSHA256 {
            items.add(Header(name: "x-amz-fwd-header-x-amz-checksum-sha256", value: Swift.String(checksumSHA256)))
        }
        if let contentDisposition = contentDisposition {
            items.add(Header(name: "x-amz-fwd-header-Content-Disposition", value: Swift.String(contentDisposition)))
        }
        if let contentEncoding = contentEncoding {
            items.add(Header(name: "x-amz-fwd-header-Content-Encoding", value: Swift.String(contentEncoding)))
        }
        if let contentLanguage = contentLanguage {
            items.add(Header(name: "x-amz-fwd-header-Content-Language", value: Swift.String(contentLanguage)))
        }
        if contentLength != 0 {
            items.add(Header(name: "Content-Length", value: Swift.String(contentLength)))
        }
        if let contentRange = contentRange {
            items.add(Header(name: "x-amz-fwd-header-Content-Range", value: Swift.String(contentRange)))
        }
        if let contentType = contentType {
            items.add(Header(name: "x-amz-fwd-header-Content-Type", value: Swift.String(contentType)))
        }
        if deleteMarker != false {
            items.add(Header(name: "x-amz-fwd-header-x-amz-delete-marker", value: Swift.String(deleteMarker)))
        }
        if let eTag = eTag {
            items.add(Header(name: "x-amz-fwd-header-ETag", value: Swift.String(eTag)))
        }
        if let errorCode = errorCode {
            items.add(Header(name: "x-amz-fwd-error-code", value: Swift.String(errorCode)))
        }
        if let errorMessage = errorMessage {
            items.add(Header(name: "x-amz-fwd-error-message", value: Swift.String(errorMessage)))
        }
        if let expiration = expiration {
            items.add(Header(name: "x-amz-fwd-header-x-amz-expiration", value: Swift.String(expiration)))
        }
        if let expires = expires {
            items.add(Header(name: "x-amz-fwd-header-Expires", value: Swift.String(expires.rfc5322())))
        }
        if let lastModified = lastModified {
            items.add(Header(name: "x-amz-fwd-header-Last-Modified", value: Swift.String(lastModified.rfc5322())))
        }
        if missingMeta != 0 {
            items.add(Header(name: "x-amz-fwd-header-x-amz-missing-meta", value: Swift.String(missingMeta)))
        }
        if let objectLockLegalHoldStatus = objectLockLegalHoldStatus {
            items.add(Header(name: "x-amz-fwd-header-x-amz-object-lock-legal-hold", value: Swift.String(objectLockLegalHoldStatus.rawValue)))
        }
        if let objectLockMode = objectLockMode {
            items.add(Header(name: "x-amz-fwd-header-x-amz-object-lock-mode", value: Swift.String(objectLockMode.rawValue)))
        }
        if let objectLockRetainUntilDate = objectLockRetainUntilDate {
            items.add(Header(name: "x-amz-fwd-header-x-amz-object-lock-retain-until-date", value: Swift.String(objectLockRetainUntilDate.iso8601WithoutFractionalSeconds())))
        }
        if partsCount != 0 {
            items.add(Header(name: "x-amz-fwd-header-x-amz-mp-parts-count", value: Swift.String(partsCount)))
        }
        if let replicationStatus = replicationStatus {
            items.add(Header(name: "x-amz-fwd-header-x-amz-replication-status", value: Swift.String(replicationStatus.rawValue)))
        }
        if let requestCharged = requestCharged {
            items.add(Header(name: "x-amz-fwd-header-x-amz-request-charged", value: Swift.String(requestCharged.rawValue)))
        }
        if let requestRoute = requestRoute {
            items.add(Header(name: "x-amz-request-route", value: Swift.String(requestRoute)))
        }
        if let requestToken = requestToken {
            items.add(Header(name: "x-amz-request-token", value: Swift.String(requestToken)))
        }
        if let restore = restore {
            items.add(Header(name: "x-amz-fwd-header-x-amz-restore", value: Swift.String(restore)))
        }
        if let sSECustomerAlgorithm = sSECustomerAlgorithm {
            items.add(Header(name: "x-amz-fwd-header-x-amz-server-side-encryption-customer-algorithm", value: Swift.String(sSECustomerAlgorithm)))
        }
        if let sSECustomerKeyMD5 = sSECustomerKeyMD5 {
            items.add(Header(name: "x-amz-fwd-header-x-amz-server-side-encryption-customer-key-MD5", value: Swift.String(sSECustomerKeyMD5)))
        }
        if let sSEKMSKeyId = sSEKMSKeyId {
            items.add(Header(name: "x-amz-fwd-header-x-amz-server-side-encryption-aws-kms-key-id", value: Swift.String(sSEKMSKeyId)))
        }
        if let serverSideEncryption = serverSideEncryption {
            items.add(Header(name: "x-amz-fwd-header-x-amz-server-side-encryption", value: Swift.String(serverSideEncryption.rawValue)))
        }
        if statusCode != 0 {
            items.add(Header(name: "x-amz-fwd-status", value: Swift.String(statusCode)))
        }
        if let storageClass = storageClass {
            items.add(Header(name: "x-amz-fwd-header-x-amz-storage-class", value: Swift.String(storageClass.rawValue)))
        }
        if tagCount != 0 {
            items.add(Header(name: "x-amz-fwd-header-x-amz-tagging-count", value: Swift.String(tagCount)))
        }
        if let versionId = versionId {
            items.add(Header(name: "x-amz-fwd-header-x-amz-version-id", value: Swift.String(versionId)))
        }
        if let metadata = metadata {
            for (prefixHeaderMapKey, prefixHeaderMapValue) in metadata {
                items.add(Header(name: "x-amz-meta-\(prefixHeaderMapKey)", value: Swift.String(prefixHeaderMapValue)))
            }
        }
        return items
    }
}