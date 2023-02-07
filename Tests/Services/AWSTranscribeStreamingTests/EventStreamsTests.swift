//
//  EventStreams.swift
//
//
//  Created by Jangir, Ganesh on 1/30/23.
//

import XCTest
@testable import AWSTranscribeStreaming
import ClientRuntime
import AWSClientRuntime
import AwsCommonRuntimeKit
import AVFoundation

extension AudioBuffer {
    func array() -> [Float] {
        return Array(UnsafeBufferPointer(self))
    }
}

extension AVAudioPCMBuffer {
    func array() -> [Float] {
        return self.audioBufferList.pointee.mBuffers.array()
    }
}

extension Array where Element: FloatingPoint {
    mutating func buffer() -> AudioBuffer {
        return AudioBuffer(mNumberChannels: 1, mDataByteSize: UInt32(self.count * MemoryLayout<Element>.size), mData: &self)
    }
}

extension Data {
    public func toString() -> String {
        return self.map { "\($0) " }.joined()
    }
}

extension AVAudioPCMBuffer {
    func toData() -> Data {
        let channelCount = 1  // given PCMBuffer channel count is 1
        let channels = UnsafeBufferPointer(start: self.floatChannelData, count: channelCount)
        let ch0Data = NSData(bytes: channels[0], length:Int(self.frameCapacity * self.format.streamDescription.pointee.mBytesPerFrame))
        return ch0Data as Data
    }
}

final class EventStreams: XCTestCase {
    
    internal let allocator = TracingAllocator(tracingStacksOf: defaultAllocator)
    let logging = Logger(pipe: stdout, level: .trace, allocator: defaultAllocator)

    override func setUp() {
        super.setUp()

        CommonRuntimeKit.initialize(allocator: self.allocator)
    }

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() async throws {
        SDKLoggingSystem.initialize(logLevel: .debug)

        let audioPath = "/Users/jangirg/Projects/Amplify/SwiftSDK/aws-sdk-swift/Tests/Services/AWSTranscribeStreamingTests/Resources/hello_world.wav"
        let audioURL = URL(fileURLWithPath: audioPath)
        let audioData = try Data(contentsOf: audioURL)

        let chunkSize = 4096
        let audioDataSize = audioData.count

        let client = try TranscribeStreamingClient(region: "us-west-2")

        let stream = AsyncThrowingStream<TranscribeStreamingClientTypes.AudioStream, Error> { continuation in
            Task {
                var currentStart = 0
                var currentEnd = min(chunkSize, audioDataSize - currentStart)

                while currentStart < audioDataSize {
                    let dataChunk = audioData[currentStart ..< currentEnd]
                    
                    let audioEvent =  TranscribeStreamingClientTypes.AudioStream.audioevent(.init(audioChunk: dataChunk))
                    continuation.yield(audioEvent)
                    
                    currentStart = currentEnd
                    currentEnd = min(currentStart + chunkSize, audioDataSize)
                }

                continuation.finish()
            }
        }
        let audioStream = AsyncRequestStream<TranscribeStreamingClientTypes.AudioStream>(stream)
        let input = StartStreamTranscriptionInput(audioStream: audioStream,
                                                  languageCode: .enUs,
                                                  mediaEncoding: .pcm,
                                                  mediaSampleRateHertz: 8000)
        let output = try await client.startStreamTranscription(input: input)
        var fullMessage = ""
        for try await event in output.transcriptResultStream! {
            switch event {
            case .transcriptevent(let event):
                for result in event.transcript?.results ?? [] {
                    guard let transcript = result.alternatives?.first?.transcript else {
                        continue
                    }
                    print("received TranscriptEvent: isPartial = \(result.isPartial), transcript = \(transcript)")
                    if !result.isPartial {
                        fullMessage.append(transcript)
                    }
                }
            case .badrequestexception(_):
                fatalError()
            case .limitexceededexception(_):
                fatalError()
            case .internalfailureexception(_):
                fatalError()
            case .conflictexception(_):
                fatalError()
            case .serviceunavailableexception(_):
                fatalError()
            case .sdkUnknown(_):
                fatalError()
            }
        }

        print(fullMessage)

    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
