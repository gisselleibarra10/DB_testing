// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension S3ClientTypes.InventoryConfiguration: Swift.Codable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case destination = "Destination"
        case filter = "Filter"
        case id = "Id"
        case includedObjectVersions = "IncludedObjectVersions"
        case isEnabled = "IsEnabled"
        case optionalFields = "OptionalFields"
        case schedule = "Schedule"
    }

    public func encode(to encoder: Swift.Encoder) throws {
        var container = encoder.container(keyedBy: ClientRuntime.Key.self)
        if encoder.codingPath.isEmpty {
            try container.encode("http://s3.amazonaws.com/doc/2006-03-01/", forKey: ClientRuntime.Key("xmlns"))
        }
        if let destination = destination {
            try container.encode(destination, forKey: ClientRuntime.Key("Destination"))
        }
        if let filter = filter {
            try container.encode(filter, forKey: ClientRuntime.Key("Filter"))
        }
        if let id = id {
            try container.encode(id, forKey: ClientRuntime.Key("Id"))
        }
        if let includedObjectVersions = includedObjectVersions {
            try container.encode(includedObjectVersions, forKey: ClientRuntime.Key("IncludedObjectVersions"))
        }
        if isEnabled != false {
            try container.encode(isEnabled, forKey: ClientRuntime.Key("IsEnabled"))
        }
        if let optionalFields = optionalFields {
            var optionalFieldsContainer = container.nestedContainer(keyedBy: ClientRuntime.Key.self, forKey: ClientRuntime.Key("OptionalFields"))
            for inventoryoptionalfield0 in optionalFields {
                try optionalFieldsContainer.encode(inventoryoptionalfield0, forKey: ClientRuntime.Key("Field"))
            }
        }
        if let schedule = schedule {
            try container.encode(schedule, forKey: ClientRuntime.Key("Schedule"))
        }
    }

    public init (from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let destinationDecoded = try containerValues.decodeIfPresent(S3ClientTypes.InventoryDestination.self, forKey: .destination)
        destination = destinationDecoded
        let isEnabledDecoded = try containerValues.decode(Swift.Bool.self, forKey: .isEnabled)
        isEnabled = isEnabledDecoded
        let filterDecoded = try containerValues.decodeIfPresent(S3ClientTypes.InventoryFilter.self, forKey: .filter)
        filter = filterDecoded
        let idDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .id)
        id = idDecoded
        let includedObjectVersionsDecoded = try containerValues.decodeIfPresent(S3ClientTypes.InventoryIncludedObjectVersions.self, forKey: .includedObjectVersions)
        includedObjectVersions = includedObjectVersionsDecoded
        if containerValues.contains(.optionalFields) {
            struct KeyVal0{struct Field{}}
            let optionalFieldsWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CollectionMemberCodingKey<KeyVal0.Field>.CodingKeys.self, forKey: .optionalFields)
            if let optionalFieldsWrappedContainer = optionalFieldsWrappedContainer {
                let optionalFieldsContainer = try optionalFieldsWrappedContainer.decodeIfPresent([S3ClientTypes.InventoryOptionalField].self, forKey: .member)
                var optionalFieldsBuffer:[S3ClientTypes.InventoryOptionalField]? = nil
                if let optionalFieldsContainer = optionalFieldsContainer {
                    optionalFieldsBuffer = [S3ClientTypes.InventoryOptionalField]()
                    for stringContainer0 in optionalFieldsContainer {
                        optionalFieldsBuffer?.append(stringContainer0)
                    }
                }
                optionalFields = optionalFieldsBuffer
            } else {
                optionalFields = []
            }
        } else {
            optionalFields = nil
        }
        let scheduleDecoded = try containerValues.decodeIfPresent(S3ClientTypes.InventorySchedule.self, forKey: .schedule)
        schedule = scheduleDecoded
    }
}
