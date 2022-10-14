// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension S3ClientTypes.LambdaFunctionConfiguration: Swift.Codable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case events = "Event"
        case filter = "Filter"
        case id = "Id"
        case lambdaFunctionArn = "CloudFunction"
    }

    public func encode(to encoder: Swift.Encoder) throws {
        var container = encoder.container(keyedBy: ClientRuntime.Key.self)
        if encoder.codingPath.isEmpty {
            try container.encode("http://s3.amazonaws.com/doc/2006-03-01/", forKey: ClientRuntime.Key("xmlns"))
        }
        if let events = events {
            if events.isEmpty {
                var eventsContainer = container.nestedUnkeyedContainer(forKey: ClientRuntime.Key("Event"))
                try eventsContainer.encodeNil()
            } else {
                for event0 in events {
                    var eventsContainer0 = container.nestedContainer(keyedBy: ClientRuntime.Key.self, forKey: ClientRuntime.Key("Event"))
                    try eventsContainer0.encode(event0, forKey: ClientRuntime.Key(""))
                }
            }
        }
        if let filter = filter {
            try container.encode(filter, forKey: ClientRuntime.Key("Filter"))
        }
        if let id = id {
            try container.encode(id, forKey: ClientRuntime.Key("Id"))
        }
        if let lambdaFunctionArn = lambdaFunctionArn {
            try container.encode(lambdaFunctionArn, forKey: ClientRuntime.Key("CloudFunction"))
        }
    }

    public init (from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let idDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .id)
        id = idDecoded
        let lambdaFunctionArnDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .lambdaFunctionArn)
        lambdaFunctionArn = lambdaFunctionArnDecoded
        if containerValues.contains(.events) {
            let eventsWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CodingKeys.self, forKey: .events)
            if eventsWrappedContainer != nil {
                let eventsContainer = try containerValues.decodeIfPresent([S3ClientTypes.Event].self, forKey: .events)
                var eventsBuffer:[S3ClientTypes.Event]? = nil
                if let eventsContainer = eventsContainer {
                    eventsBuffer = [S3ClientTypes.Event]()
                    for stringContainer0 in eventsContainer {
                        eventsBuffer?.append(stringContainer0)
                    }
                }
                events = eventsBuffer
            } else {
                events = []
            }
        } else {
            events = nil
        }
        let filterDecoded = try containerValues.decodeIfPresent(S3ClientTypes.NotificationConfigurationFilter.self, forKey: .filter)
        filter = filterDecoded
    }
}
