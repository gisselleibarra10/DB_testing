// Code generated by smithy-swift-codegen. DO NOT EDIT!

@testable import AWSSupport
import AWSClientRuntime
import ClientRuntime
import SmithyTestUtil
import XCTest

class EndpointResolverTest: CrtXCBaseTestCase {
    /// For region aws-global with FIPS disabled and DualStack disabled
    func testResolve1() throws {
        let endpointParams = EndpointParams(
            region: "aws-global",
            useDualStack: false,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [
                "authSchemes": [
                    [
                        "signingName": "support",
                        "name": "sigv4",
                        "signingRegion": "us-east-1"
                    ] as [String: AnyHashable]
                ] as [AnyHashable]
            ]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://support.us-east-1.amazonaws.com", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region us-east-1 with FIPS enabled and DualStack enabled
    func testResolve2() throws {
        let endpointParams = EndpointParams(
            region: "us-east-1",
            useDualStack: true,
            useFIPS: true
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://support-fips.us-east-1.api.aws", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region us-east-1 with FIPS enabled and DualStack disabled
    func testResolve3() throws {
        let endpointParams = EndpointParams(
            region: "us-east-1",
            useDualStack: false,
            useFIPS: true
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://support-fips.us-east-1.amazonaws.com", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region us-east-1 with FIPS disabled and DualStack enabled
    func testResolve4() throws {
        let endpointParams = EndpointParams(
            region: "us-east-1",
            useDualStack: true,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://support.us-east-1.api.aws", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region us-east-1 with FIPS disabled and DualStack disabled
    func testResolve5() throws {
        let endpointParams = EndpointParams(
            region: "us-east-1",
            useDualStack: false,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://support.us-east-1.amazonaws.com", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region aws-us-gov-global with FIPS disabled and DualStack disabled
    func testResolve6() throws {
        let endpointParams = EndpointParams(
            region: "aws-us-gov-global",
            useDualStack: false,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [
                "authSchemes": [
                    [
                        "signingName": "support",
                        "name": "sigv4",
                        "signingRegion": "us-gov-west-1"
                    ] as [String: AnyHashable]
                ] as [AnyHashable]
            ]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://support.us-gov-west-1.amazonaws.com", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region us-gov-east-1 with FIPS enabled and DualStack enabled
    func testResolve7() throws {
        let endpointParams = EndpointParams(
            region: "us-gov-east-1",
            useDualStack: true,
            useFIPS: true
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://support-fips.us-gov-east-1.api.aws", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region us-gov-east-1 with FIPS enabled and DualStack disabled
    func testResolve8() throws {
        let endpointParams = EndpointParams(
            region: "us-gov-east-1",
            useDualStack: false,
            useFIPS: true
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://support-fips.us-gov-east-1.amazonaws.com", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region us-gov-east-1 with FIPS disabled and DualStack enabled
    func testResolve9() throws {
        let endpointParams = EndpointParams(
            region: "us-gov-east-1",
            useDualStack: true,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://support.us-gov-east-1.api.aws", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region us-gov-east-1 with FIPS disabled and DualStack disabled
    func testResolve10() throws {
        let endpointParams = EndpointParams(
            region: "us-gov-east-1",
            useDualStack: false,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://support.us-gov-east-1.amazonaws.com", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region aws-iso-b-global with FIPS disabled and DualStack disabled
    func testResolve11() throws {
        let endpointParams = EndpointParams(
            region: "aws-iso-b-global",
            useDualStack: false,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [
                "authSchemes": [
                    [
                        "signingName": "support",
                        "name": "sigv4",
                        "signingRegion": "us-isob-east-1"
                    ] as [String: AnyHashable]
                ] as [AnyHashable]
            ]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://support.us-isob-east-1.sc2s.sgov.gov", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region us-isob-east-1 with FIPS enabled and DualStack disabled
    func testResolve12() throws {
        let endpointParams = EndpointParams(
            region: "us-isob-east-1",
            useDualStack: false,
            useFIPS: true
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://support-fips.us-isob-east-1.sc2s.sgov.gov", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region us-isob-east-1 with FIPS disabled and DualStack disabled
    func testResolve13() throws {
        let endpointParams = EndpointParams(
            region: "us-isob-east-1",
            useDualStack: false,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://support.us-isob-east-1.sc2s.sgov.gov", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region aws-cn-global with FIPS disabled and DualStack disabled
    func testResolve14() throws {
        let endpointParams = EndpointParams(
            region: "aws-cn-global",
            useDualStack: false,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [
                "authSchemes": [
                    [
                        "signingName": "support",
                        "name": "sigv4",
                        "signingRegion": "cn-north-1"
                    ] as [String: AnyHashable]
                ] as [AnyHashable]
            ]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://support.cn-north-1.amazonaws.com.cn", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region cn-north-1 with FIPS enabled and DualStack enabled
    func testResolve15() throws {
        let endpointParams = EndpointParams(
            region: "cn-north-1",
            useDualStack: true,
            useFIPS: true
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://support-fips.cn-north-1.api.amazonwebservices.com.cn", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region cn-north-1 with FIPS enabled and DualStack disabled
    func testResolve16() throws {
        let endpointParams = EndpointParams(
            region: "cn-north-1",
            useDualStack: false,
            useFIPS: true
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://support-fips.cn-north-1.amazonaws.com.cn", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region cn-north-1 with FIPS disabled and DualStack enabled
    func testResolve17() throws {
        let endpointParams = EndpointParams(
            region: "cn-north-1",
            useDualStack: true,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://support.cn-north-1.api.amazonwebservices.com.cn", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region cn-north-1 with FIPS disabled and DualStack disabled
    func testResolve18() throws {
        let endpointParams = EndpointParams(
            region: "cn-north-1",
            useDualStack: false,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://support.cn-north-1.amazonaws.com.cn", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region aws-iso-global with FIPS disabled and DualStack disabled
    func testResolve19() throws {
        let endpointParams = EndpointParams(
            region: "aws-iso-global",
            useDualStack: false,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [
                "authSchemes": [
                    [
                        "signingName": "support",
                        "name": "sigv4",
                        "signingRegion": "us-iso-east-1"
                    ] as [String: AnyHashable]
                ] as [AnyHashable]
            ]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://support.us-iso-east-1.c2s.ic.gov", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region us-iso-east-1 with FIPS enabled and DualStack disabled
    func testResolve20() throws {
        let endpointParams = EndpointParams(
            region: "us-iso-east-1",
            useDualStack: false,
            useFIPS: true
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://support-fips.us-iso-east-1.c2s.ic.gov", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For region us-iso-east-1 with FIPS disabled and DualStack disabled
    func testResolve21() throws {
        let endpointParams = EndpointParams(
            region: "us-iso-east-1",
            useDualStack: false,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://support.us-iso-east-1.c2s.ic.gov", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For custom endpoint with fips disabled and dualstack disabled
    func testResolve22() throws {
        let endpointParams = EndpointParams(
            endpoint: "https://example.com",
            region: "us-east-1",
            useDualStack: false,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        let actual = try resolver.resolve(params: endpointParams)

        let properties: [String: AnyHashable] =
            [:]

        let headers = Headers()
        let expected = try ClientRuntime.Endpoint(urlString: "https://example.com", headers: headers, properties: properties)

        XCTAssertEqual(expected, actual)
    }

    /// For custom endpoint with fips enabled and dualstack disabled
    func testResolve23() throws {
        let endpointParams = EndpointParams(
            endpoint: "https://example.com",
            region: "us-east-1",
            useDualStack: false,
            useFIPS: true
        )
        let resolver = try DefaultEndpointResolver()

        XCTAssertThrowsError(try resolver.resolve(params: endpointParams)) { error in
            switch error {
            case EndpointError.unresolved(let message):
                XCTAssertEqual("Invalid Configuration: FIPS and custom endpoint are not supported", message)
            default:
                XCTFail()
            }
        }
    }

    /// For custom endpoint with fips disabled and dualstack enabled
    func testResolve24() throws {
        let endpointParams = EndpointParams(
            endpoint: "https://example.com",
            region: "us-east-1",
            useDualStack: true,
            useFIPS: false
        )
        let resolver = try DefaultEndpointResolver()

        XCTAssertThrowsError(try resolver.resolve(params: endpointParams)) { error in
            switch error {
            case EndpointError.unresolved(let message):
                XCTAssertEqual("Invalid Configuration: Dualstack and custom endpoint are not supported", message)
            default:
                XCTFail()
            }
        }
    }

}
