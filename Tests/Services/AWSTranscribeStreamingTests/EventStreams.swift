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
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.

//        let client = try TranscribeStreamingClient(region: "us-west-2")/
//        guard let path = Bundle.module.url(forResource: "hello-kotlin-8000", withExtension: ".wav") else {
//            XCTFail("Could not find file")
//            return
//        }
        SDKLoggingSystem.initialize(logLevel: .debug)

        let path = "/Users/jangirg/Projects/Amplify/SwiftSDK/aws-sdk-swift/Tests/Services/AWSTranscribeStreamingTests/Resources/hello-kotlin-8000.wav"

        let audio = FileManager.default.contents(atPath: path)!
        let fileStream = DataStreamReader()
        fileStream.write(buffer: .init(data: audio))

        let client = try TranscribeStreamingClient(region: "us-west-2")
        let framesPerChunk: UInt = 4096
        let stream = AsyncThrowingStream<TranscribeStreamingClientTypes.AudioStream, Error> { continuation in
            Task {
//                try await Task.sleep(nanoseconds: 1_000_000_000_000)
                while true {
                    let chunk = fileStream.read(maxBytes: framesPerChunk).getData()
                    if chunk.count == 0 {
                        break
                    }
                    let audioEvent =  TranscribeStreamingClientTypes.AudioStream.audioevent(.init(audioChunk: chunk))
                    continuation.yield(audioEvent)
                }
            }
        }
        let audioStream = AsyncRequestStream<TranscribeStreamingClientTypes.AudioStream>(stream)
        let input = StartStreamTranscriptionInput(audioStream: audioStream,
                                                  languageCode: TranscribeStreamingClientTypes.LanguageCode.enUs,
                                                  mediaEncoding: TranscribeStreamingClientTypes.MediaEncoding.pcm,
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
