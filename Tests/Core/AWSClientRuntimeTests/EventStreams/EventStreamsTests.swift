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
}
