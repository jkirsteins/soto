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

#if compiler(>=5.5) && canImport(_Concurrency)

import SotoCore

// MARK: Waiters

@available(macOS 12.0, iOS 15.0, watchOS 8.0, tvOS 15.0, *)
extension Nimble {
    public func waitUntilLaunchProfileDeleted(
        _ input: GetLaunchProfileRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESPathMatcher("launchProfile.state", expected: "DELETED")),
                .init(state: .failure, matcher: try! JMESPathMatcher("launchProfile.state", expected: "DELETE_FAILED")),
            ],
            minDelayTime: .seconds(5),
            maxDelayTime: .seconds(750),
            command: getLaunchProfile
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilLaunchProfileReady(
        _ input: GetLaunchProfileRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESPathMatcher("launchProfile.state", expected: "READY")),
                .init(state: .failure, matcher: try! JMESPathMatcher("launchProfile.state", expected: "CREATE_FAILED")),
                .init(state: .failure, matcher: try! JMESPathMatcher("launchProfile.state", expected: "UPDATE_FAILED")),
            ],
            minDelayTime: .seconds(5),
            maxDelayTime: .seconds(750),
            command: getLaunchProfile
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilStreamingImageDeleted(
        _ input: GetStreamingImageRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESPathMatcher("streamingImage.state", expected: "DELETED")),
                .init(state: .failure, matcher: try! JMESPathMatcher("streamingImage.state", expected: "DELETE_FAILED")),
            ],
            command: getStreamingImage
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilStreamingImageReady(
        _ input: GetStreamingImageRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESPathMatcher("streamingImage.state", expected: "READY")),
                .init(state: .failure, matcher: try! JMESPathMatcher("streamingImage.state", expected: "CREATE_FAILED")),
                .init(state: .failure, matcher: try! JMESPathMatcher("streamingImage.state", expected: "UPDATE_FAILED")),
            ],
            command: getStreamingImage
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilStreamingSessionDeleted(
        _ input: GetStreamingSessionRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESPathMatcher("session.state", expected: "DELETED")),
                .init(state: .failure, matcher: try! JMESPathMatcher("session.state", expected: "DELETE_FAILED")),
            ],
            minDelayTime: .seconds(5),
            maxDelayTime: .seconds(900),
            command: getStreamingSession
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilStreamingSessionReady(
        _ input: GetStreamingSessionRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESPathMatcher("session.state", expected: "READY")),
                .init(state: .failure, matcher: try! JMESPathMatcher("session.state", expected: "CREATE_FAILED")),
                .init(state: .failure, matcher: try! JMESPathMatcher("session.state", expected: "START_FAILED")),
            ],
            minDelayTime: .seconds(10),
            maxDelayTime: .seconds(1800),
            command: getStreamingSession
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilStreamingSessionStopped(
        _ input: GetStreamingSessionRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESPathMatcher("session.state", expected: "STOPPED")),
                .init(state: .failure, matcher: try! JMESPathMatcher("session.state", expected: "STOP_FAILED")),
            ],
            minDelayTime: .seconds(5),
            maxDelayTime: .seconds(900),
            command: getStreamingSession
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilStreamingSessionStreamReady(
        _ input: GetStreamingSessionStreamRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESPathMatcher("stream.state", expected: "READY")),
                .init(state: .failure, matcher: try! JMESPathMatcher("stream.state", expected: "CREATE_FAILED")),
            ],
            minDelayTime: .seconds(5),
            maxDelayTime: .seconds(150),
            command: getStreamingSessionStream
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilStudioComponentDeleted(
        _ input: GetStudioComponentRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESPathMatcher("studioComponent.state", expected: "DELETED")),
                .init(state: .failure, matcher: try! JMESPathMatcher("studioComponent.state", expected: "DELETE_FAILED")),
            ],
            minDelayTime: .seconds(1),
            command: getStudioComponent
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilStudioComponentReady(
        _ input: GetStudioComponentRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESPathMatcher("studioComponent.state", expected: "READY")),
                .init(state: .failure, matcher: try! JMESPathMatcher("studioComponent.state", expected: "CREATE_FAILED")),
                .init(state: .failure, matcher: try! JMESPathMatcher("studioComponent.state", expected: "UPDATE_FAILED")),
            ],
            command: getStudioComponent
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilStudioDeleted(
        _ input: GetStudioRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESPathMatcher("studio.state", expected: "DELETED")),
                .init(state: .failure, matcher: try! JMESPathMatcher("studio.state", expected: "DELETE_FAILED")),
            ],
            command: getStudio
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilStudioReady(
        _ input: GetStudioRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESPathMatcher("studio.state", expected: "READY")),
                .init(state: .failure, matcher: try! JMESPathMatcher("studio.state", expected: "CREATE_FAILED")),
                .init(state: .failure, matcher: try! JMESPathMatcher("studio.state", expected: "UPDATE_FAILED")),
            ],
            command: getStudio
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
