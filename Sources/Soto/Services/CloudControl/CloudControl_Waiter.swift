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

import SotoCore

// MARK: Waiters

extension CloudControl {
    /// Wait until resource operation request is successful
    public func waitUntilResourceRequestSuccess(
        _ input: GetResourceRequestStatusInput,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESPathMatcher("progressEvent.operationStatus", expected: "SUCCESS")),
                .init(state: .failure, matcher: try! JMESPathMatcher("progressEvent.operationStatus", expected: "FAILED")),
                .init(state: .failure, matcher: try! JMESPathMatcher("progressEvent.operationStatus", expected: "CANCEL_COMPLETE")),
            ],
            minDelayTime: .seconds(5),
            command: getResourceRequestStatus
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }
}
