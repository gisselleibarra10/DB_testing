// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension S3ClientTypes.LifecycleRule: Swift.Codable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case abortIncompleteMultipartUpload = "AbortIncompleteMultipartUpload"
        case expiration = "Expiration"
        case filter = "Filter"
        case iD = "ID"
        case noncurrentVersionExpiration = "NoncurrentVersionExpiration"
        case noncurrentVersionTransitions = "NoncurrentVersionTransition"
        case `prefix` = "Prefix"
        case status = "Status"
        case transitions = "Transition"
    }

    public func encode(to encoder: Swift.Encoder) throws {
        var container = encoder.container(keyedBy: ClientRuntime.Key.self)
        if encoder.codingPath.isEmpty {
            try container.encode("http://s3.amazonaws.com/doc/2006-03-01/", forKey: ClientRuntime.Key("xmlns"))
        }
        if let abortIncompleteMultipartUpload = abortIncompleteMultipartUpload {
            try container.encode(abortIncompleteMultipartUpload, forKey: ClientRuntime.Key("AbortIncompleteMultipartUpload"))
        }
        if let expiration = expiration {
            try container.encode(expiration, forKey: ClientRuntime.Key("Expiration"))
        }
        if let filter = filter {
            try container.encode(filter, forKey: ClientRuntime.Key("Filter"))
        }
        if let iD = iD {
            try container.encode(iD, forKey: ClientRuntime.Key("ID"))
        }
        if let noncurrentVersionExpiration = noncurrentVersionExpiration {
            try container.encode(noncurrentVersionExpiration, forKey: ClientRuntime.Key("NoncurrentVersionExpiration"))
        }
        if let noncurrentVersionTransitions = noncurrentVersionTransitions {
            if noncurrentVersionTransitions.isEmpty {
                var noncurrentVersionTransitionsContainer = container.nestedUnkeyedContainer(forKey: ClientRuntime.Key("NoncurrentVersionTransition"))
                try noncurrentVersionTransitionsContainer.encodeNil()
            } else {
                for noncurrentversiontransition0 in noncurrentVersionTransitions {
                    var noncurrentVersionTransitionsContainer0 = container.nestedContainer(keyedBy: ClientRuntime.Key.self, forKey: ClientRuntime.Key("NoncurrentVersionTransition"))
                    try noncurrentVersionTransitionsContainer0.encode(noncurrentversiontransition0, forKey: ClientRuntime.Key(""))
                }
            }
        }
        if let `prefix` = `prefix` {
            try container.encode(`prefix`, forKey: ClientRuntime.Key("Prefix"))
        }
        if let status = status {
            try container.encode(status, forKey: ClientRuntime.Key("Status"))
        }
        if let transitions = transitions {
            if transitions.isEmpty {
                var transitionsContainer = container.nestedUnkeyedContainer(forKey: ClientRuntime.Key("Transition"))
                try transitionsContainer.encodeNil()
            } else {
                for transition0 in transitions {
                    var transitionsContainer0 = container.nestedContainer(keyedBy: ClientRuntime.Key.self, forKey: ClientRuntime.Key("Transition"))
                    try transitionsContainer0.encode(transition0, forKey: ClientRuntime.Key(""))
                }
            }
        }
    }

    public init (from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let expirationDecoded = try containerValues.decodeIfPresent(S3ClientTypes.LifecycleExpiration.self, forKey: .expiration)
        expiration = expirationDecoded
        let iDDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .iD)
        iD = iDDecoded
        let prefixDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .prefix)
        `prefix` = prefixDecoded
        let filterDecoded = try containerValues.decodeIfPresent(S3ClientTypes.LifecycleRuleFilter.self, forKey: .filter)
        filter = filterDecoded
        let statusDecoded = try containerValues.decodeIfPresent(S3ClientTypes.ExpirationStatus.self, forKey: .status)
        status = statusDecoded
        if containerValues.contains(.transitions) {
            let transitionsWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CodingKeys.self, forKey: .transitions)
            if transitionsWrappedContainer != nil {
                let transitionsContainer = try containerValues.decodeIfPresent([S3ClientTypes.Transition].self, forKey: .transitions)
                var transitionsBuffer:[S3ClientTypes.Transition]? = nil
                if let transitionsContainer = transitionsContainer {
                    transitionsBuffer = [S3ClientTypes.Transition]()
                    for structureContainer0 in transitionsContainer {
                        transitionsBuffer?.append(structureContainer0)
                    }
                }
                transitions = transitionsBuffer
            } else {
                transitions = []
            }
        } else {
            transitions = nil
        }
        if containerValues.contains(.noncurrentVersionTransitions) {
            let noncurrentVersionTransitionsWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CodingKeys.self, forKey: .noncurrentVersionTransitions)
            if noncurrentVersionTransitionsWrappedContainer != nil {
                let noncurrentVersionTransitionsContainer = try containerValues.decodeIfPresent([S3ClientTypes.NoncurrentVersionTransition].self, forKey: .noncurrentVersionTransitions)
                var noncurrentVersionTransitionsBuffer:[S3ClientTypes.NoncurrentVersionTransition]? = nil
                if let noncurrentVersionTransitionsContainer = noncurrentVersionTransitionsContainer {
                    noncurrentVersionTransitionsBuffer = [S3ClientTypes.NoncurrentVersionTransition]()
                    for structureContainer0 in noncurrentVersionTransitionsContainer {
                        noncurrentVersionTransitionsBuffer?.append(structureContainer0)
                    }
                }
                noncurrentVersionTransitions = noncurrentVersionTransitionsBuffer
            } else {
                noncurrentVersionTransitions = []
            }
        } else {
            noncurrentVersionTransitions = nil
        }
        let noncurrentVersionExpirationDecoded = try containerValues.decodeIfPresent(S3ClientTypes.NoncurrentVersionExpiration.self, forKey: .noncurrentVersionExpiration)
        noncurrentVersionExpiration = noncurrentVersionExpirationDecoded
        let abortIncompleteMultipartUploadDecoded = try containerValues.decodeIfPresent(S3ClientTypes.AbortIncompleteMultipartUpload.self, forKey: .abortIncompleteMultipartUpload)
        abortIncompleteMultipartUpload = abortIncompleteMultipartUploadDecoded
    }
}
