// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime

///
public protocol KinesisVideoWebRTCStorageClientProtocol {
    /// Join the ongoing one way-video and/or multi-way audio WebRTC session as a video producing device for an input channel. If there’s no existing session for the channel, a new streaming session needs to be created, and the Amazon Resource Name (ARN) of the signaling channel must be provided. Currently for the SINGLE_MASTER type, a video producing device is able to ingest both audio and video media into a stream, while viewers can only ingest audio. Both a video producing device and viewers can join the session first, and wait for other participants. While participants are having peer to peer conversations through webRTC, the ingested media session will be stored into the Kinesis Video Stream. Multiple viewers are able to playback real-time media. Customers can also use existing Kinesis Video Streams features like HLS or DASH playback, Image generation, and more with ingested WebRTC media. Assume that only one video producing device client can be associated with a session for the channel. If more than one client joins the session of a specific channel as a video producing device, the most recent client request takes precedence.
    func joinStorageSession(input: JoinStorageSessionInput) async throws -> JoinStorageSessionOutputResponse
}

public protocol KinesisVideoWebRTCStorageClientConfigurationProtocol : AWSClientRuntime.AWSClientConfiguration {
    var endpointResolver: EndpointResolver { get }
}

public enum KinesisVideoWebRTCStorageClientTypes {}
