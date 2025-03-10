//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2021 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto-codegenerator.
// DO NOT EDIT.

@_exported import SotoCore

/// Service object for interacting with AWS TranscribeStreaming service.
///
/// Operations and objects for transcribing streaming speech to text.
public struct TranscribeStreaming: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the TranscribeStreaming client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - timeout: Timeout value for HTTP requests
    public init(
        client: AWSClient,
        region: SotoCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        timeout: TimeAmount? = nil,
        byteBufferAllocator: ByteBufferAllocator = ByteBufferAllocator(),
        options: AWSServiceConfig.Options = []
    ) {
        self.client = client
        self.config = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            service: "transcribestreaming",
            signingName: "transcribe",
            serviceProtocol: .restjson,
            apiVersion: "2017-10-26",
            endpoint: endpoint,
            errorType: TranscribeStreamingErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Starts a bidirectional HTTP/2 stream where audio is streamed to Amazon Transcribe Medical and the transcription results are streamed to your application.
    public func startMedicalStreamTranscription(_ input: StartMedicalStreamTranscriptionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartMedicalStreamTranscriptionResponse> {
        return self.client.execute(operation: "StartMedicalStreamTranscription", path: "/medical-stream-transcription", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts a bidirectional HTTP/2 stream where audio is streamed to Amazon Transcribe and the transcription results are streamed to your application. The following are encoded as HTTP/2 headers:   x-amzn-transcribe-language-code   x-amzn-transcribe-media-encoding   x-amzn-transcribe-sample-rate   x-amzn-transcribe-session-id   See the  SDK for Go API Reference for more detail.
    public func startStreamTranscription(_ input: StartStreamTranscriptionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartStreamTranscriptionResponse> {
        return self.client.execute(operation: "StartStreamTranscription", path: "/stream-transcription", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

extension TranscribeStreaming {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: TranscribeStreaming, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
