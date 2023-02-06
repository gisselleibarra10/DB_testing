import XCTest
import ClientRuntime
@testable import AWSClientRuntime
import AwsCommonRuntimeKit

class EventStreamsTests: XCTestCase {

    func testReadMessage() {
        let buffer: [UInt8] = [0, 0, 0, 0x0E, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 0x0F]
        let streamReader = DataStreamReader()
        streamReader.write(buffer: .init(bytes: buffer))
        let message = AWSMessageDecoder.readMessage(streamReader: streamReader)
        XCTAssertEqual(message.bytes(), [0, 0, 0, 0x0E, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E])
    }
    
//    func testSerializeMessageWithByteBuffer() async {
//        let message = EventStreams.Message(
//            headers: [
//                .init(name: ":message-type", value: .string("event")),
//                .init(name: ":event-type", value: .string("MessageWithBlob")),
//                .init(name: ":content-type", value: .string("application/octet-stream"))
//            ],
//            payload: Data("hello from Kotlin".utf8)
//        )
//
//        let region = "us-east-2"
//        let service = "test"
//        let encoder = AWSMessageEncoder()
//        let encoded = Data(try! encoder.encode(message: message))
//
//        let signingDate = Date(timeIntervalSince1970: 10)
//
//        let priorSignature = "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
//
//        let stringToSign = try! cannonicalString(date: signingDate,
//                                                 priorSignature: priorSignature,
//                                                 nonSignatureHeaders: try! nonSignatureHeaders(date: signingDate),
//                                                 payload: encoded,
//                                                 region: region,
//                                                 service: service)
//
//        let chunkToSign = Data(stringToSign.utf8)
//
//        let signingConfig = try! makeTrailingSigningConfig(date: signingDate, region: region, service: service)
//        let signature = try! await Signer.signChunk(chunk: chunkToSign, previousSignature: .init(), config: signingConfig)
//
//        XCTAssertEqual("0fb4bcfcff3e94c4b103d0f053bf5f65333def853dfc42dee55b74d77cb2b825", signature)
//
//        let signedMessage = EventStreams.Message(
//            headers: [
//                .init(name: ":date", value: .timestamp(signingDate)),
//                .init(name: ":chunk-signature", value: .byteBuffer(signature.hexaData)),
//                .init(name: ":content-type", value: .string("application/octet-stream")),
//                .init(name: ":signature", value: .string(signature))
//            ],
//            payload: encoded
//        )
//
//        let finalMessage = try! encoder.encode(message: signedMessage)
//    }
    
    func makeTrailingSigningConfig(date: Date, region: String, service: String) throws -> SigningConfig {
        SigningConfig(
            algorithm: .signingV4,
            signatureType: .requestChunk,
            service: service,
            region: region,
            date: date,
            credentials: try Credentials(accessKey: "fake-access-key", secret: "fake-secret-key"),
            useDoubleURIEncode: false)
    }
    
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
        let credentials = try! CredentialsV2(accessKeyId: "", secretAccessKey: "wJalrXUtnFEMI/K7MDENG+bPxRfiCYEXAMPLEKEY", sessionToken: nil)
        let signingDate = Date(timeIntervalSince1970: 1440892800)
        let config = SigningConfigV2(signingDate: signingDate, signatureType: .requestEvent, region: "us-east-1", service: "iam")
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
        let config = SigningConfigV2(signingDate: signingDate, signatureType: .requestEvent, region: "us-east-1", service: "iam")
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
            let config = SigningConfigV2(signingDate: epoch,
                                       signatureType: test.signatureType,
                                       region: "us-east-1",
                                       service: "testservice")
            
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
        let signatureType: SignatureType
        let expectedNonSignatureHeaderHash: String
    }

    func testSerializeMessageWithBlob() {
        let event = TestStream.messageWithBlob(.init(data: "hello from Kotlin".data(using: .utf8)!))

        let message = try! serializeMessage(event: event)
    }

    func serializeMessage(event: TestStream) throws -> Data {
        let body = try serilizeTestStreamOpOperationBody(event)
        return body
    }

    func serilizeTestStreamOpOperationBody(_ event: TestStream) throws -> Data {
        let previousMessageSignature = "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855".data(using: .utf8)
        let region = "us-east-2"
        let signingService = "test"
        let credentials = try CredentialsV2(accessKeyId: "fake-access-key", secretAccessKey: "fake-secret-key", sessionToken: nil)
        let message = encodeTestStreamOpTestStreamEventMessage(event)
        
        let signatureCalculator = DefaultSignatureCalculator(sha256Provider: Sha256HashFunction())
        
        let messageEncoder = AWSMessageEncoder()
        let encodedMessage = try messageEncoder.encode(message: message)

        let now = Date()
        let signingConfig = SigningConfigV2(signingDate: now, signatureType: .requestEvent, region: region, service: signingService)
        let stringToSign = try signatureCalculator.chunkStringToSign(chunkBody: encodedMessage, prevSignature: previousMessageSignature!, config: signingConfig)
        print(stringToSign)
        
        let signingKey = signatureCalculator.signingKey(config: signingConfig, credentials: credentials)
        let signature =  signatureCalculator.calculate(signingKey: signingKey, stringToSign: stringToSign)
        var signHeaders: [EventStreams.Header] = []
        signHeaders.append(.init(name: ":chunk-signature", value: .byteBuffer(signature.hexaData)))
        
        signHeaders.append(.init(name: ":date", value: .timestamp(now)))
        let messageWithSig = EventStreams.Message(headers: signHeaders, payload: encodedMessage)
        
        let encodedMessageWithSig = try messageEncoder.encode(message: messageWithSig)
        return encodedMessageWithSig
    }
    
    func encodeTestStreamOpTestStreamEventMessage(_ event: TestStream) -> EventStreams.Message {
        var headers: [EventStreams.Header] = []
        let payload: Data

        switch event {
        case .messageWithBlob(let message):
            headers.append(.init(name: "message-type", value: .string("event")))
            headers.append(.init(name: "event-type", value: .string("MessageWithBlob")))
            headers.append(.init(name: "content-type", value: .string("application/octet-stream")))
            payload = message.data
        }

        return EventStreams.Message(headers: headers, payload: payload)
    }
}


enum TestStream {
    case messageWithBlob(MessageWithBlob)
}

struct MessageWithBlob {
    let data: Data
}
