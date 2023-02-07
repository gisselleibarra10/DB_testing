import XCTest
import ClientRuntime
@testable import AWSClientRuntime
import AwsCommonRuntimeKit

class EventStreamSigningTests: XCTestCase {
    
    func testSignPayload() async {
        let message = EventStreams.Message(
            headers: [
                .init(name: "some-header", value: .string("value")),
            ],
            payload: "test payload".data(using: .utf8)!
        )

        let formatter = ISO8601DateFormatter()
        formatter.timeZone = TimeZone(identifier: "UTC")
        formatter.formatOptions = [.withInternetDateTime, .withFractionalSeconds]
        let epoch = formatter.date(from: "1973-11-29T21:33:09.000001234Z")!
        print(epoch.timeIntervalSince1970)
        let calculator = DefaultSignatureCalculator(sha256Provider: Sha256HashFunction())

        let signingConfig = AWSSigningConfig(credentialsProvider: try! AWSCredentialsProvider.fromCustom(MyCustomCredentialsProvider()),
                                             signedBodyValue: .emptySha256,
                                             flags: .init(useDoubleURIEncode: false, shouldNormalizeURIPath: false, omitSessionToken: false),
                                             date: Date(),
                                             service: "testservice",
                                             region: "us-east-1",
                                             signatureType: .requestEvent,
                                             signingAlgorithm: .sigv4)

        let prevSignature = "last message sts".data(using: .utf8)!.sha256Data.encodeToHexString().data(using: .utf8)
        
        let encoder = AWSMessageEncoder()
        let messagePayload = try! encoder.encode(message: message)
        
        let result = try! await AWSSigV4Signer.signPayload(payload: messagePayload, prevSignture: prevSignature!, config: signingConfig)
        XCTAssertEqual(":date", result.output.headers[0].name)
        
        guard case let .timestamp(dateHeaderValue) = result.output.headers[0].value else {
            fatalError()
        }
        
        XCTAssertEqual(epoch.timeIntervalSince1970, dateHeaderValue.timeIntervalSince1970)
        
        XCTAssertEqual(":chunk-signature", result.output.headers[1].name)
        let expectedSignature = String(data: result.signature, encoding: .utf8)!
        guard case let .byteBuffer(actualSignatureBuffer) = result.output.headers[1].value else {
            fatalError()
        }
        let actualSignature = actualSignatureBuffer.encodeToHex()
        XCTAssertEqual(expectedSignature, actualSignature)
        
        let expected = "1ea04a4f6becd85ae3e38e379ffaf4bb95042603f209512476cc6416868b31ee"
        XCTAssertEqual(expected, actualSignature)
    }
}
