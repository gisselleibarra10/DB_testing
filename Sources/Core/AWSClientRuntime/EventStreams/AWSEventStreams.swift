//
//  File.swift
//
//
//  Created by Jangir, Ganesh on 1/26/23.
//

import ClientRuntime
import AwsCommonRuntimeKit

struct AWSEventStreams {
    
}

extension AWSEventStreams {
    public struct AWSMessageSigner: MessageSigner {
        public func sign(message: ClientRuntime.SignableMessage, previousSignature: String) async throws -> String {
            fatalError()
        }

        let signingConfig: AWSSigningConfig
        
        public init(signingConfig: AWSSigningConfig) {
            self.signingConfig = signingConfig
        }

        public func signEmpty() throws -> EventStreams.Message {
            fatalError()
        }

        public func sign(message: ClientRuntime.SignableMessage) throws -> EventStreams.Message {
            fatalError()
        }
    }
}

import Foundation
import CryptoKit
import CommonCrypto

public struct SigningConfigV2 {
    let signingDate: Date
    let signatureType: SignatureType
    let region: String
    let service: String
    
    public init(signingDate: Date, signatureType: SignatureType, region: String, service: String) {
        self.signingDate = signingDate
        self.signatureType = signatureType
        self.region = region
        self.service = service
    }
    
    var credentialScope: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyyMMdd"
        formatter.timeZone = TimeZone(secondsFromGMT: 0)
        let date = formatter.string(from: signingDate)
        return "\(date)/\(region)/\(service)/aws4_request"
    }
}

public  protocol SignatureCalculator {
    func calculate(signingKey: Data, stringToSign: String) -> String
    func chunkStringToSign(chunkBody: Data, prevSignature: Data, config: SigningConfigV2) throws -> String
    func signingKey(config: SigningConfigV2, credentials: CredentialsV2) -> Data
    func stringToSign(canonicalRequest: String, config: SigningConfigV2) throws -> String
    func chunkTrailerStringToSign(trailingHeaders: Data, prevSignature: Data, config: SigningConfigV2) -> String
}

public struct DefaultSignatureCalculator: SignatureCalculator {

    private let sha256Provider: HashFunction

    public init(sha256Provider: HashFunction) {
        self.sha256Provider = sha256Provider
    }

    public func calculate(signingKey: Data, stringToSign: String) -> String {
        let hash = hmac(signingKey, Data(stringToSign.utf8), sha256Provider)
        return hash.encodeToHex()
    }

    public func chunkStringToSign(chunkBody: Data, prevSignature: Data, config: SigningConfigV2) throws -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyyMMdd'T'HHmmss'Z'"
        dateFormatter.timeZone = TimeZone(secondsFromGMT: 0)
        let date = dateFormatter.string(from: config.signingDate)
        let nonSignatureHeadersHash: String
        switch config.signatureType {
        case .requestEvent:
            nonSignatureHeadersHash = try eventStreamNonSingatureHeaders(date: config.signingDate)
        default:
            nonSignatureHeadersHash = "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
        }
        let chunkBodyHash = try chunkBody.hash(hashFunction: sha256Provider).encodeToHexString()
        return """
        AWS4-HMAC-SHA256-PAYLOAD
        \(date)
        \(config.credentialScope)
        \(String(data: prevSignature, encoding: .utf8)!)
        \(nonSignatureHeadersHash)
        \(chunkBodyHash)
        """
    }

    func eventStreamNonSingatureHeaders(date: Date) throws -> String{
        var bytes = Data(repeating: 0, count: 15)
        let name = ":date".data(using: .utf8)
        var offset = 0
        // size
        bytes[offset] = UInt8(name!.count)
        offset += 1
        
        // copy name to bytes
        for byte in name! {
            bytes[offset] = byte
            offset += 1
        }

        // copy type to bytes ie 8
        bytes[offset] = 8
        offset += 1

        // copy epoch milliseconds to bytes with big endian
        let epoch = date.millisecondsSince1970
        for i in stride(from: 7, through: 0, by: -1) {
            bytes[offset] = UInt8((epoch >> (i * 8)) & 0xff)
            offset += 1
        }
        return try bytes.sha256().encodeToHexString()
    }

    public func signingKey(config: SigningConfigV2, credentials: CredentialsV2) -> Data {
        let initialKey = ("AWS4" + credentials.secretAccessKey).data(using: .utf8)!

        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyyMMdd"
        dateFormatter.timeZone = TimeZone(secondsFromGMT: 0)
        let date = dateFormatter.string(from: config.signingDate)
        let kDate = hmac(initialKey, date.data(using: .utf8)!, sha256Provider)

        let kRegion = hmac(kDate, config.region.data(using: .utf8)!, sha256Provider)

        let kService = hmac(kRegion, config.service.data(using: .utf8)!, sha256Provider)

        return hmac(kService, "aws4_request".data(using: .utf8)!, sha256Provider)
    }

    public func chunkTrailerStringToSign(trailingHeaders: Data, prevSignature: Data, config: SigningConfigV2) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyyMMdd'T'HHmmss'Z'"
        dateFormatter.timeZone = TimeZone(secondsFromGMT: 0)
        let date = dateFormatter.string(from: config.signingDate)
        let trailingHeadersHash = try! trailingHeaders.hash(hashFunction: sha256Provider).encodeToHexString()
        return """
        AWS4-HMAC-SHA256-TRAILER
        \(date)
        \(config.credentialScope)
        \(String(data: prevSignature, encoding: .utf8)!)
        \(trailingHeadersHash)
        """
    }
    
    public func stringToSign(canonicalRequest: String, config: SigningConfigV2) throws -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyyMMdd'T'HHmmss'Z'"
        dateFormatter.timeZone = TimeZone(secondsFromGMT: 0)
        let date = dateFormatter.string(from: config.signingDate)
        let requestHash = try canonicalRequest.data(using: .utf8)!.hash(hashFunction: sha256Provider).encodeToHexString()
        return """
        AWS4-HMAC-SHA256
        \(date)
        \(config.credentialScope)
        \(requestHash)
        """
    }
}

extension Date {
    public var millisecondsSince1970: Int64 {
        Int64((self.timeIntervalSince1970 * 1000.0).rounded())
    }

    public init(millisecondsSince1970: Int64) {
        self = Date(timeIntervalSince1970: TimeInterval(millisecondsSince1970) / 1000)
    }
}

enum HMACAlgorithm {
    case MD5, SHA1, SHA224, SHA256, SHA384, SHA512

    func toCCHmacAlgorithm() -> CCHmacAlgorithm {
        var result: Int = 0
        switch self {
        case .MD5:
            result = kCCHmacAlgMD5
        case .SHA1:
            result = kCCHmacAlgSHA1
        case .SHA224:
            result = kCCHmacAlgSHA224
        case .SHA256:
            result = kCCHmacAlgSHA256
        case .SHA384:
            result = kCCHmacAlgSHA384
        case .SHA512:
            result = kCCHmacAlgSHA512
        }
        return CCHmacAlgorithm(result)
    }

    func digestLength() -> Int {
        var result: CInt = 0
        switch self {
        case .MD5:
            result = CC_MD5_DIGEST_LENGTH
        case .SHA1:
            result = CC_SHA1_DIGEST_LENGTH
        case .SHA224:
            result = CC_SHA224_DIGEST_LENGTH
        case .SHA256:
            result = CC_SHA256_DIGEST_LENGTH
        case .SHA384:
            result = CC_SHA384_DIGEST_LENGTH
        case .SHA512:
            result = CC_SHA512_DIGEST_LENGTH
        }
        return Int(result)
    }
}

extension String {
    func hmac(algorithm: HMACAlgorithm, key: String) -> String {
        let cKey = key.cString(using: String.Encoding.utf8)
        let cData = self.cString(using: String.Encoding.utf8)
        var result = [CUnsignedChar](repeating: 0, count: Int(algorithm.digestLength()))
        CCHmac(algorithm.toCCHmacAlgorithm(), cKey!, Int(strlen(cKey!)), cData!, Int(strlen(cData!)), &result)
        let hmacData:NSData = NSData(bytes: result, length: (Int(algorithm.digestLength())))
        let hmacBase64 = hmacData.base64EncodedString(options: NSData.Base64EncodingOptions.lineLength76Characters)
        return String(hmacBase64)
    }
}

public func hmac(_ key: Data, _ message: Data, _ hashFunction: HashFunction) -> Data {
    let key = SymmetricKey(data: key)

    let signature = HMAC<SHA256>.authenticationCode(for: message, using: key)
    return Data(signature)
}

func hash(hashFunction: HashFunction, input: Data) -> Data {
    var hashFunction = hashFunction
    hashFunction.update(input: input, offset: 0, length: input.count - 0)
    return hashFunction.digest()
}

extension Data {
    func resizeToBlock(_ hashFunction: HashFunction) -> Data {
        let blockSize = hashFunction.blockSizeInBytes
        let truncated = self.count > blockSize ? AWSClientRuntime.hash(hashFunction: hashFunction, input: self) : self
        return truncated.count < blockSize ? truncated.copyOf(blockSize) : truncated
    }

    func copyOf(_ size: Int) -> Data {
        var copy = Data(repeating: 0, count: size)
        for i in 0..<self.count {
            copy[i] = self[i]
        }
        return copy
    }

    func encodeToHex() -> String {
        return self.map { String(format: "%02hhx", $0) }.joined()
    }

    func sha256(truncate: Int = 0) -> Data {
        return AWSClientRuntime.hash(hashFunction: Sha256HashFunction(), input: self)
    }

//    func encodeToHexString() throws -> String {
//        let hexString = self.map { String(format: "%02hhx", $0) }.joined()
//        return hexString
//    }
    
    func hash(hashFunction: HashFunction) -> Data {
        AWSClientRuntime.hash(hashFunction: hashFunction, input: self)
    }
    
//    func bytes() -> [Int8] {
//        return self.map { Int8(bitPattern: $0) }
//    }
}

public  struct CredentialsV2 {
    let accessKeyId: String
    let secretAccessKey: String
    let sessionToken: String?
    
    public init(accessKeyId: String, secretAccessKey: String, sessionToken: String?) {
        self.accessKeyId = accessKeyId
        self.secretAccessKey = secretAccessKey
        self.sessionToken = sessionToken
    }
}

public protocol HashFunction {
    var blockSizeInBytes: Int { get }
    var digestSizeInBytes: Int { get }

    // offset = 0
    // length = input.count - offset
    mutating func update(input: Data, offset: Int, length: Int)
    func digest() -> Data
    mutating func reset()
}

public struct Sha256HashFunction: HashFunction {
    private var md: SHA256

    public init() {
        self.md = SHA256()
    }

    mutating public func update(input: Data, offset: Int, length: Int) {
        md.update(data: input)
    }

    public func digest() -> Data {
        return Data(md.finalize())
    }

    mutating public func reset() {
        md = SHA256()
    }

    public var blockSizeInBytes: Int = 64

    public var digestSizeInBytes: Int = 32
}

extension DataProtocol {
    var sha256Digest: SHA256Digest { SHA256.hash(data: self) }
    var sha256Data: Data { .init(sha256Digest) }
    var sha256Hexa: String { sha256Digest.map(\.hexa).joined() }
}

func getId<D: DataProtocol>(data: D) -> String {
    data.sha256Hexa
}

extension UnsignedInteger where Self: CVarArg {
    var hexa: String { .init(format: "%ll*0x", bitWidth / 4, self) }
}


extension String {
    func decodeHexBytes() -> Data {
        AWSClientRuntime.decodeHex(self)
    }
}

func decodeHex(_ s: String) -> Data {
    var result = Data(repeating: 0, count: (s.count + 1) / 2)
    var start = 0
    var writeIdx = 0

    // if the buffer isn't even prepand 0
    if s.count % 2 != 0 {
        result[writeIdx] = UInt8(String(s[s.startIndex]), radix: 16) ?? 0
        start = 1
        writeIdx += 1
    }

    for i in stride(from: start, to: s.count, by: 2) {
        let byte = UInt8(String(s[s.index(s.startIndex, offsetBy: i)..<s.index(s.startIndex, offsetBy: i + 2)]), radix: 16) ?? 0
        result[writeIdx] = byte
        writeIdx += 1
    }

    return result
}
