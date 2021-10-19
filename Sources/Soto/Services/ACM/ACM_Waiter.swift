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

extension ACM {
    public func waitUntilCertificateValidated(
        _ input: DescribeCertificateRequest,
        maxWaitTime: TimeAmount? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> EventLoopFuture<Void> {
        let waiter = AWSClient.Waiter(
            acceptors: [
                .init(state: .success, matcher: try! JMESAllPathMatcher("certificate.domainValidationOptions[].validationStatus", expected: "SUCCESS")),
                .init(state: .retry, matcher: try! JMESAnyPathMatcher("certificate.domainValidationOptions[].validationStatus", expected: "PENDING_VALIDATION")),
                .init(state: .failure, matcher: try! JMESPathMatcher("certificate.status", expected: "FAILED")),
                .init(state: .failure, matcher: AWSErrorCodeMatcher("ResourceNotFoundException")),
            ],
            minDelayTime: .seconds(60),
            command: describeCertificate
        )
        return self.client.waitUntil(input, waiter: waiter, maxWaitTime: maxWaitTime, logger: logger, on: eventLoop)
    }
}
