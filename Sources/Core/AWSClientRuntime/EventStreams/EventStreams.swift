//
//  File.swift
//
//
//  Created by Jangir, Ganesh on 1/26/23.
//

import ClientRuntime
import AwsCommonRuntimeKit

enum EventStreamError: Error {
    case decoding(Int32, String)
}

public struct AWSMessageEncoder : MessageEncoder {
    public init() {}

    public func encode(message: ClientRuntime.Message) throws -> ClientRuntime.Data {
        let crtMessage = message.toCRTMessage()
        return try crtMessage.getEncoded()
    }
}

public struct AWSMessageDecoder: MessageDecoder {
    static let messageLengthBytesCount: UInt = 4

    public init() {}

    public func decode(data: ClientRuntime.Data) async throws -> ClientRuntime.Message {
        return try await withCheckedThrowingContinuation { continuation in
            do {
                try decode { result in
                    switch result {
                    case .success(let value):
                        continuation.resume(returning: value)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                    }
                }
            } catch {
                continuation.resume(throwing: error)
            }
        }
    }

    func decode(completion: @escaping (Result<Message, Error>) -> Void) throws {
        var decodedPayload = Data()
        var headers: [EventStreamHeader] = []
        let decoder = EventStreamMessageDecoder(
            onPayloadSegment: { payload, finalSegment in
                decodedPayload.append(payload)
            },
            onPreludeReceived: { totalLength, headersLength in
            },
            onHeaderReceived: { header in
                headers.append(header)
            },
            onComplete: {
                let crtMessage = Message(headers: headers.toHeaders(), payload: decodedPayload)
                completion(.success(crtMessage))
            },
            onError: { code, message in
                completion(.failure(EventStreamError.decoding(code, message)))
            })
        try decoder.decode(data: decodedPayload)
    }
    
    public static func readMessage(streamReader: StreamReader) -> Data {
        let messageLengthBuffer = streamReader.read(maxBytes: messageLengthBytesCount, rewind: true).getData()
        let messageLength = messageLengthBuffer.reduce(0) { v, byte in
            return v << 8 | UInt(byte)
        }
        let messageBuffer = streamReader.read(maxBytes: messageLength, rewind: false).getData()
        return messageLengthBuffer + messageBuffer
    }
}

extension Message {
    func toCRTMessage() -> EventStreamMessage {
        let crtHeaders = headers.toCRTHeaders()
        return EventStreamMessage(headers: crtHeaders, payload: payload)
    }
}

extension Headers {
    func toCRTHeaders() -> [EventStreamHeader] {
        var crtHeaders: [EventStreamHeader] = []
        for header in headers {
            for value in header.value {
                crtHeaders.append(EventStreamHeader(name: header.name, value: .string(value: value)))
            }
        }
        return crtHeaders
    }
}

extension [EventStreamHeader] {
    func toHeaders() -> Headers {
        var headers = Headers()
        for hdr in self {
            headers.add(hdr.toHeader())
        }
        return headers
    }
}

extension EventStreamHeader {
    func toHeader() -> Header {
        let stringValue: String
        switch self.value {
        case .bool(value: let value):
            stringValue = String(value)
        case .byte(value: let value):
            stringValue = String(value)
        case .int16(value: let value):
            stringValue = String(value)
        case .int32(value: let value):
            stringValue = String(value)
        case .int64(value: let value):
            stringValue = String(value)
        case .byteBuf(value: let value):
            stringValue = value.base64EncodedString()
        case .string(value: let value):
            stringValue = value
        case .timestamp(value: let value):
            stringValue = String(value.timeIntervalSinceNow)
        case .uuid(value: let value):
            stringValue = value.uuidString
        }
        return Header(name: name, value: stringValue)
    }
}

public struct AWSMessageSigner: MessageSigner {
    public init() {}

    public func signEmpty() throws -> ClientRuntime.Message {
        fatalError()
    }

    public func sign(message: ClientRuntime.SignableMessage) throws -> ClientRuntime.Message {
        fatalError()
    }
}
