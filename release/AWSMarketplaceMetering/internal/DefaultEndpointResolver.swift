// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime

struct DefaultEndpointResolver : AWSClientRuntime.EndpointResolver {
    func resolve(serviceId: String, region: String) throws -> AWSClientRuntime.AWSEndpoint {
        return try AWSClientRuntime.AWSEndpoint.resolveEndpoint(partitions: servicePartitions, region: region)
    }
}

private let servicePartitions = [
    AWSClientRuntime.Partition(
        id: "aws",
        regionRegex: "^(us|eu|ap|sa|ca|me|af)\\-\\w+\\-\\d+$",
        partitionEndpoint: "",
        isRegionalized: true,
        defaults: AWSClientRuntime.ServiceEndpointMetadata(
            hostName: "metering.marketplace.{region}.amazonaws.com",
            protocols: ["https"],
            credentialScope: AWSClientRuntime.CredentialScope(serviceId: "aws-marketplace"),
            signatureVersions: ["v4"]
        ),
        endpoints: [
            "af-south-1": AWSClientRuntime.ServiceEndpointMetadata(),
            "ap-east-1": AWSClientRuntime.ServiceEndpointMetadata(),
            "ap-northeast-1": AWSClientRuntime.ServiceEndpointMetadata(),
            "ap-northeast-2": AWSClientRuntime.ServiceEndpointMetadata(),
            "ap-south-1": AWSClientRuntime.ServiceEndpointMetadata(),
            "ap-southeast-1": AWSClientRuntime.ServiceEndpointMetadata(),
            "ap-southeast-2": AWSClientRuntime.ServiceEndpointMetadata(),
            "ca-central-1": AWSClientRuntime.ServiceEndpointMetadata(),
            "eu-central-1": AWSClientRuntime.ServiceEndpointMetadata(),
            "eu-north-1": AWSClientRuntime.ServiceEndpointMetadata(),
            "eu-south-1": AWSClientRuntime.ServiceEndpointMetadata(),
            "eu-west-1": AWSClientRuntime.ServiceEndpointMetadata(),
            "eu-west-2": AWSClientRuntime.ServiceEndpointMetadata(),
            "eu-west-3": AWSClientRuntime.ServiceEndpointMetadata(),
            "me-south-1": AWSClientRuntime.ServiceEndpointMetadata(),
            "sa-east-1": AWSClientRuntime.ServiceEndpointMetadata(),
            "us-east-1": AWSClientRuntime.ServiceEndpointMetadata(),
            "us-east-2": AWSClientRuntime.ServiceEndpointMetadata(),
            "us-west-1": AWSClientRuntime.ServiceEndpointMetadata(),
            "us-west-2": AWSClientRuntime.ServiceEndpointMetadata(),
        ]
    ),
    AWSClientRuntime.Partition(
        id: "aws-cn",
        regionRegex: "^cn\\-\\w+\\-\\d+$",
        partitionEndpoint: "",
        isRegionalized: true,
        defaults: AWSClientRuntime.ServiceEndpointMetadata(
            hostName: "metering.marketplace.{region}.amazonaws.com.cn",
            protocols: ["https"],
            signatureVersions: ["v4"]
        ),
        endpoints: [
            :
        ]
    ),
    AWSClientRuntime.Partition(
        id: "aws-iso",
        regionRegex: "^us\\-iso\\-\\w+\\-\\d+$",
        partitionEndpoint: "",
        isRegionalized: true,
        defaults: AWSClientRuntime.ServiceEndpointMetadata(
            hostName: "metering.marketplace.{region}.c2s.ic.gov",
            protocols: ["https"],
            signatureVersions: ["v4"]
        ),
        endpoints: [
            :
        ]
    ),
    AWSClientRuntime.Partition(
        id: "aws-iso-b",
        regionRegex: "^us\\-isob\\-\\w+\\-\\d+$",
        partitionEndpoint: "",
        isRegionalized: true,
        defaults: AWSClientRuntime.ServiceEndpointMetadata(
            hostName: "metering.marketplace.{region}.sc2s.sgov.gov",
            protocols: ["https"],
            signatureVersions: ["v4"]
        ),
        endpoints: [
            :
        ]
    ),
    AWSClientRuntime.Partition(
        id: "aws-us-gov",
        regionRegex: "^us\\-gov\\-\\w+\\-\\d+$",
        partitionEndpoint: "",
        isRegionalized: true,
        defaults: AWSClientRuntime.ServiceEndpointMetadata(
            hostName: "metering.marketplace.{region}.amazonaws.com",
            protocols: ["https"],
            credentialScope: AWSClientRuntime.CredentialScope(serviceId: "aws-marketplace"),
            signatureVersions: ["v4"]
        ),
        endpoints: [
            "us-gov-east-1": AWSClientRuntime.ServiceEndpointMetadata(),
            "us-gov-west-1": AWSClientRuntime.ServiceEndpointMetadata(),
        ]
    ),
]