// swift-tools-version:5.5

//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

// This manifest is auto-generated.  Do not commit edits to this file;
// they will be overwritten.

import Foundation
import PackageDescription

let smithyTestUtil = PackageDescription.Target.Dependency.product(name: "SmithyTestUtil", package: "smithy-swift")
let clientRuntime = PackageDescription.Target.Dependency.product(name: "ClientRuntime", package: "smithy-swift")
let awsCommonRuntimeKit = PackageDescription.Target.Dependency.product(name: "AwsCommonRuntimeKit", package: "aws-crt-swift")

let package = Package(
    name: "aws-sdk-swift",
    platforms: [
        .macOS(.v10_15),
        .iOS(.v13)
    ],
    products: [
        .library(name: "AWSClientRuntime", targets: ["AWSClientRuntime"]),
        .library(name: "AWSDynamoDB", targets: ["AWSDynamoDB"]),
        .library(name: "AWSSTS", targets: ["AWSSTS"]),
    ],
    dependencies: [
        .package(url: "https://github.com/awslabs/aws-crt-swift", .exact("0.6.1"))
    ],
    targets: [
        // MARK: - Core Targets
        .target(name: "AWSClientRuntime", dependencies: [awsCommonRuntimeKit, clientRuntime], path: "./Sources/Core/AWSClientRuntime"),

        // MARK: - Core Test Targets
        .testTarget(name: "AWSClientRuntimeTests", dependencies: [clientRuntime, "AWSClientRuntime", smithyTestUtil], path: "./Tests/Core/AWSClientRuntimeTests"),

        // MARK: - Service Targets
        .target(name: "AWSDynamoDB", dependencies: [clientRuntime, "AWSClientRuntime"], path: "./Sources/Services/AWSDynamoDB"),
        .target(name: "AWSSTS", dependencies: [clientRuntime, "AWSClientRuntime"], path: "./Sources/Services/AWSSTS"),

        // MARK: - Service Test Targets
        // TODO: enable test targets for all services https://github.com/awslabs/aws-sdk-swift/issues/814
        // .testTarget(name: "AWSDynamoDBTests", dependencies: [awsCommonRuntimeKit, clientRuntime, "AWSClientRuntime", "AWSDynamoDB", smithyTestUtil], path: "./Tests/Services/AWSDynamoDBTests"),
        // .testTarget(name: "AWSSTSTests", dependencies: [awsCommonRuntimeKit, clientRuntime, "AWSClientRuntime", "AWSSTS", smithyTestUtil], path: "./Tests/Services/AWSSTSTests"),
    ]
)

let useLocalDeps = ProcessInfo.processInfo.environment["AWS_SWIFT_SDK_USE_LOCAL_DEPS"] != nil
let useMainDeps = ProcessInfo.processInfo.environment["AWS_SWIFT_SDK_USE_MAIN_DEPS"] != nil

switch (useLocalDeps, useMainDeps) {
case (true, true):
    fatalError("Unable to determine which dependencies to use. Please only specify one of AWS_SWIFT_SDK_USE_LOCAL_DEPS or AWS_SWIFT_SDK_USE_MAIN_DEPS.")
case (true, false):
    package.dependencies += [
        .package(path: "../smithy-swift")
    ]
case (false, true):
    package.dependencies += [
        .package(url: "https://github.com/awslabs/smithy-swift", branch: "main")
    ]
case (false, false):
    package.dependencies += [
        .package(url: "https://github.com/awslabs/smithy-swift", .exact("0.12.0"))
    ]
}
