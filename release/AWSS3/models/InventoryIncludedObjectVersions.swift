// Code generated by smithy-swift-codegen. DO NOT EDIT!



extension S3ClientTypes {
    public enum InventoryIncludedObjectVersions: Swift.Equatable, Swift.RawRepresentable, Swift.CaseIterable, Swift.Codable, Swift.Hashable {
        case all
        case current
        case sdkUnknown(Swift.String)

        public static var allCases: [InventoryIncludedObjectVersions] {
            return [
                .all,
                .current,
                .sdkUnknown("")
            ]
        }
        public init?(rawValue: Swift.String) {
            let value = Self.allCases.first(where: { $0.rawValue == rawValue })
            self = value ?? Self.sdkUnknown(rawValue)
        }
        public var rawValue: Swift.String {
            switch self {
            case .all: return "All"
            case .current: return "Current"
            case let .sdkUnknown(s): return s
            }
        }
        public init(from decoder: Swift.Decoder) throws {
            let container = try decoder.singleValueContainer()
            let rawValue = try container.decode(RawValue.self)
            self = InventoryIncludedObjectVersions(rawValue: rawValue) ?? InventoryIncludedObjectVersions.sdkUnknown(rawValue)
        }
    }
}
