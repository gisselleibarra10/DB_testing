import XCTest
import ClientRuntime
@testable import AWSClientRuntime
import AwsCommonRuntimeKit

class DefaultSignatureCalculatorTests: XCTestCase {
    
    let config = AWSSigningConfig(credentials: nil,
                                         signedBodyValue: .emptySha256,
                                         flags: .init(useDoubleURIEncode: false, shouldNormalizeURIPath: false, omitSessionToken: false),
                                         date: Date(),
                                         service: "testservice",
                                         region: "us-east-1",
                                         signatureType: .requestEvent,
                                         signingAlgorithm: .sigv4)
    
    func testCalculate() {
        let signingKey = "c4afb1cc5771d871763a393e44b703571b55cc28424d1a5e86da6ed3c154a4b9".decodeHexBytes()
        let stringToSign = """
        AWS4-HMAC-SHA256
        20150830T123600Z
        20150830/us-east-1/iam/aws4_request
        f536975d06c0309214f805bb90ccff089219ecd68b2577efef23edd43b7e1a59
        """

        let expected = "5d672d79c15b13162d9279b0855cfba6789a8edb4c82c400e06b5924a6f2b5d7"
        let calculator = DefaultSignatureCalculator(sha256Provider: Sha256HashFunction())
        let actual = calculator.calculate(signingKey: signingKey, stringToSign: stringToSign)
        XCTAssertEqual(expected, actual)
    }

    func testHmacSha256() {
        let key = "key".data(using: .utf8)!
        let message = "The quick brown fox jumps over the lazy dog".data(using: .utf8)!
        let expected = "f7bc83f430538424b13298e6aa6fb143ef4d59a14946175997479dbc2d1a3cd8"
        let actual = hmac(key, message, Sha256HashFunction())
        let actualString = try! actual.encodeToHexString()
        XCTAssertEqual(expected, actualString)
    }
    
    func testSingingKey() {
        let credentials = AWSCredentials(accessKey: "", secret: "wJalrXUtnFEMI/K7MDENG+bPxRfiCYEXAMPLEKEY", sessionToken: nil)
        let signingDate = Date(timeIntervalSince1970: 1440892800)
//        let config = SigningConfigV2(signingDate: signingDate, signatureType: .requestEvent, region: "us-east-1", service: "iam")
        let config = AWSSigningConfig(credentials: nil,
                                             signedBodyValue: .emptySha256,
                                             flags: .init(useDoubleURIEncode: false, shouldNormalizeURIPath: false, omitSessionToken: false),
                                             date: signingDate,
                                             service: "iam",
                                             region: "us-east-1",
                                             signatureType: .requestEvent,
                                             signingAlgorithm: .sigv4)
        let expected = "c4afb1cc5771d871763a393e44b703571b55cc28424d1a5e86da6ed3c154a4b9"
        let calculator = DefaultSignatureCalculator(sha256Provider: Sha256HashFunction())
        let actual = try! calculator.signingKey(config: config, credentials: credentials).encodeToHexString()
        XCTAssertEqual(expected, actual)
    }
    
    func testStringToSign() {
        let canonicalRequest = """
        GET
        /
        Action=ListUsers&Version=2010-05-08
        content-type:application/x-www-form-urlencoded; charset=utf-8
        host:iam.amazonaws.com
        x-amz-date:20150830T123600Z

        content-type;host;x-amz-date
        e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
        """
        
        let signingDate = Date(timeIntervalSince1970: 1440938160)
//        let config = SigningConfigV2(signingDate: signingDate, signatureType: .requestEvent, region: "us-east-1", service: "iam")
        let config = AWSSigningConfig(credentials: nil,
                                             signedBodyValue: .emptySha256,
                                             flags: .init(useDoubleURIEncode: false, shouldNormalizeURIPath: false, omitSessionToken: false),
                                             date: signingDate,
                                             service: "iam",
                                             region: "us-east-1",
                                             signatureType: .requestEvent,
                                             signingAlgorithm: .sigv4)
        let calculator = DefaultSignatureCalculator(sha256Provider: Sha256HashFunction())
        
        let expected = """
        AWS4-HMAC-SHA256
        20150830T123600Z
        20150830/us-east-1/iam/aws4_request
        f536975d06c0309214f805bb90ccff089219ecd68b2577efef23edd43b7e1a59
        """
        let actual = try! calculator.stringToSign(canonicalRequest: canonicalRequest, config: config)
        XCTAssertEqual(expected, actual)
    }
    
    func testChunkStringToSign() {
        let tests: [ChunkStringToSignTest] = [
            .init(signatureType: .requestChunk, expectedNonSignatureHeaderHash: "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"),
            .init(signatureType: .requestEvent, expectedNonSignatureHeaderHash: "0c0e3b3bf66b59b976181bd7d401927bbd624107303c713fd1e5f3d3c8dd1b1e")
        ]
        
        let epoch = Date(timeIntervalSince1970: 123456789)
        let prevSignature = "last message sts".data(using: .utf8)!.sha256().encodeToHex().data(using: .utf8)!
        let chunkBody =  "test payload".data(using: .utf8)!
        
        let calculator = DefaultSignatureCalculator(sha256Provider: Sha256HashFunction())

        for test in tests {
//            let config = SigningConfigV2(signingDate: epoch,
//                                       signatureType: test.signatureType,
//                                       region: "us-east-1",
//                                       service: "testservice")
            
            let config = AWSSigningConfig(credentials: nil,
                                          signedBodyValue: .emptySha256,
                                          flags: .init(useDoubleURIEncode: false, shouldNormalizeURIPath: false, omitSessionToken: false),
                                          date: epoch,
                                          service: "testservice",
                                          region: "us-east-1",
                                          signatureType: test.signatureType,
                                          signingAlgorithm: .sigv4)
            
            let expected = """
            AWS4-HMAC-SHA256-PAYLOAD
            19731129T213309Z
            19731129/us-east-1/testservice/aws4_request
            be1f8c7d79ef8e1abc5254a2c70e4da3bfaf4f07328f527444e1fc6ea67273e2
            \(test.expectedNonSignatureHeaderHash)
            813ca5285c28ccee5cab8b10ebda9c908fd6d78ed9dc94cc65ea6cb67a7f13ae
            """
            
            let actual = try! calculator.chunkStringToSign(chunkBody: chunkBody, prevSignature: prevSignature, config: config)
            XCTAssertEqual(expected, actual)
        }
    }
    
    struct ChunkStringToSignTest {
        let signatureType: AWSSignatureType
        let expectedNonSignatureHeaderHash: String
    }
}
