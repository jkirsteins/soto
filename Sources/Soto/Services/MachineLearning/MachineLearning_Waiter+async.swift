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
extension MachineLearning {
    public func waitUntilBatchPredictionAvailable(
        _ input: DescribeBatchPredictionsInput,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESAllPathMatcher("results[].status", expected: "COMPLETED")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("results[].status", expected: "FAILED")),
            ],
            minDelayTime: .seconds(30),
            command: describeBatchPredictions
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilDataSourceAvailable(
        _ input: DescribeDataSourcesInput,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESAllPathMatcher("results[].status", expected: "COMPLETED")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("results[].status", expected: "FAILED")),
            ],
            minDelayTime: .seconds(30),
            command: describeDataSources
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilEvaluationAvailable(
        _ input: DescribeEvaluationsInput,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESAllPathMatcher("results[].status", expected: "COMPLETED")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("results[].status", expected: "FAILED")),
            ],
            minDelayTime: .seconds(30),
            command: describeEvaluations
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }

    public func waitUntilMLModelAvailable(
        _ input: DescribeMLModelsInput,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) async throws {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESAllPathMatcher("results[].status", expected: "COMPLETED")),
                .init(state: .failure, matcher: try! JMESAnyPathMatcher("results[].status", expected: "FAILED")),
            ],
            minDelayTime: .seconds(30),
            command: describeMLModels
        )
        return try await self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
