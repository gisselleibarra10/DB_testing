// Code generated by smithy-swift-codegen. DO NOT EDIT!



extension S3ClientTypes {
    public enum MetadataDirective: Swift.Equatable, Swift.RawRepresentable, Swift.CaseIterable, Swift.Codable, Swift.Hashable {
        case copy
        case replace
        case sdkUnknown(Swift.String)

        public static var allCases: [MetadataDirective] {
            return [
                .copy,
                .replace,
                .sdkUnknown("")
            ]
        }
        public init?(rawValue: Swift.String) {
            let value = Self.allCases.first(where: { $0.rawValue == rawValue })
            self = value ?? Self.sdkUnknown(rawValue)
        }
        public var rawValue: Swift.String {
            switch self {
            case .copy: return "COPY"
            case .replace: return "REPLACE"
            case let .sdkUnknown(s): return s
            }
        }
        public init(from decoder: Swift.Decoder) throws {
            let container = try decoder.singleValueContainer()
            let rawValue = try container.decode(RawValue.self)
            self = MetadataDirective(rawValue: rawValue) ?? MetadataDirective.sdkUnknown(rawValue)
        }
    }
}
