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
extension AppStream {
    public func waitUntilFleetStarted(
        _ input: DescribeFleetsRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESAllPathMatcher("fleets[].state", expected: "ACTIVE")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("fleets[].state", expected: "PENDING_DEACTIVATE")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("fleets[].state", expected: "INACTIVE")),
            ],
            minDelayTime: .seconds(30),
            command: describeFleets
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilFleetStopped(
        _ input: DescribeFleetsRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESAllPathMatcher("fleets[].state", expected: "INACTIVE")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("fleets[].state", expected: "PENDING_ACTIVATE")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("fleets[].state", expected: "ACTIVE")),
            ],
            minDelayTime: .seconds(30),
            command: describeFleets
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
