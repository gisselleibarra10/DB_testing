// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension S3ClientTypes.OwnershipControls: Swift.Codable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case rules = "Rule"
    }

    public func encode(to encoder: Swift.Encoder) throws {
        var container = encoder.container(keyedBy: ClientRuntime.Key.self)
        if encoder.codingPath.isEmpty {
            try container.encode("http://s3.amazonaws.com/doc/2006-03-01/", forKey: ClientRuntime.Key("xmlns"))
        }
        if let rules = rules {
            if rules.isEmpty {
                var rulesContainer = container.nestedUnkeyedContainer(forKey: ClientRuntime.Key("Rule"))
                try rulesContainer.encodeNil()
            } else {
                for ownershipcontrolsrule0 in rules {
                    var rulesContainer0 = container.nestedContainer(keyedBy: ClientRuntime.Key.self, forKey: ClientRuntime.Key("Rule"))
                    try rulesContainer0.encode(ownershipcontrolsrule0, forKey: ClientRuntime.Key(""))
                }
            }
        }
    }

    public init (from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        if containerValues.contains(.rules) {
            let rulesWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CodingKeys.self, forKey: .rules)
            if rulesWrappedContainer != nil {
                let rulesContainer = try containerValues.decodeIfPresent([S3ClientTypes.OwnershipControlsRule].self, forKey: .rules)
                var rulesBuffer:[S3ClientTypes.OwnershipControlsRule]? = nil
                if let rulesContainer = rulesContainer {
                    rulesBuffer = [S3ClientTypes.OwnershipControlsRule]()
                    for structureContainer0 in rulesContainer {
                        rulesBuffer?.append(structureContainer0)
                    }
                }
                rules = rulesBuffer
            } else {
                rules = []
            }
        } else {
            rules = nil
        }
    }
}
