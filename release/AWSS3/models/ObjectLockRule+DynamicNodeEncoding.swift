// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension S3ClientTypes.ObjectLockRule: ClientRuntime.DynamicNodeEncoding {
    public static func nodeEncoding(for key: Swift.CodingKey) -> ClientRuntime.NodeEncoding {
        let xmlNamespaceValues = [
            "xmlns"
        ]
        if let key = key as? ClientRuntime.Key {
            if xmlNamespaceValues.contains(key.stringValue) {
                return .attribute
            }
        }
        return .element
    }
}
