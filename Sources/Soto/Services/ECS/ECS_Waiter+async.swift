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
extension ECS {
    public func waitUntilServicesInactive(
        _ input: DescribeServicesRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("failures[].reason", expected: "MISSING")),
                .init(state: .success, matcher: try! JMESAnyPathMatcher("services[].status", expected: "INACTIVE")),
            ],
            minDelayTime: .seconds(15),
            command: describeServices
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilTasksRunning(
        _ input: DescribeTasksRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("tasks[].lastStatus", expected: "STOPPED")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("failures[].reason", expected: "MISSING")),
                .init(state: .success, matcher: try! JMESAllPathMatcher("tasks[].lastStatus", expected: "RUNNING")),
            ],
            minDelayTime: .seconds(6),
            command: describeTasks
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilTasksStopped(
        _ input: DescribeTasksRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESAllPathMatcher("tasks[].lastStatus", expected: "STOPPED")),
            ],
            minDelayTime: .seconds(6),
            command: describeTasks
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
