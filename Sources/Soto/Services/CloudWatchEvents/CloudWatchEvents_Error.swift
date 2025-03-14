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

import SotoCore

/// Error enum for CloudWatchEvents
public struct CloudWatchEventsErrorType: AWSErrorType {
    enum Code: String {
        case concurrentModificationException = "ConcurrentModificationException"
        case illegalStatusException = "IllegalStatusException"
        case internalException = "InternalException"
        case invalidEventPatternException = "InvalidEventPatternException"
        case invalidStateException = "InvalidStateException"
        case limitExceededException = "LimitExceededException"
        case managedRuleException = "ManagedRuleException"
        case operationDisabledException = "OperationDisabledException"
        case policyLengthExceededException = "PolicyLengthExceededException"
        case resourceAlreadyExistsException = "ResourceAlreadyExistsException"
        case resourceNotFoundException = "ResourceNotFoundException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize CloudWatchEvents
    public init?(errorCode: String, context: AWSErrorContext) {
        guard let error = Code(rawValue: errorCode) else { return nil }
        self.error = error
        self.context = context
    }

    internal init(_ error: Code) {
        self.error = error
        self.context = nil
    }

    /// return error code string
    public var errorCode: String { self.error.rawValue }

    /// There is concurrent modification on a rule, target, archive, or replay.
    public static var concurrentModificationException: Self { .init(.concurrentModificationException) }
    /// An error occurred because a replay can be canceled only when the state is Running or Starting.
    public static var illegalStatusException: Self { .init(.illegalStatusException) }
    /// This exception occurs due to unexpected causes.
    public static var internalException: Self { .init(.internalException) }
    /// The event pattern is not valid.
    public static var invalidEventPatternException: Self { .init(.invalidEventPatternException) }
    /// The specified state is not a valid state for an event source.
    public static var invalidStateException: Self { .init(.invalidStateException) }
    /// The request failed because it attempted to create resource beyond the allowed service quota.
    public static var limitExceededException: Self { .init(.limitExceededException) }
    /// This rule was created by an Amazon Web Services service on behalf of your account. It is managed by that service. If you see this error in response to DeleteRule or RemoveTargets, you can use the Force parameter in those calls to delete the rule or remove targets from the rule. You cannot modify these managed rules by using DisableRule, EnableRule, PutTargets, PutRule, TagResource, or UntagResource.
    public static var managedRuleException: Self { .init(.managedRuleException) }
    /// The operation you are attempting is not available in this region.
    public static var operationDisabledException: Self { .init(.operationDisabledException) }
    /// The event bus policy is too long. For more information, see the limits.
    public static var policyLengthExceededException: Self { .init(.policyLengthExceededException) }
    /// The resource you are trying to create already exists.
    public static var resourceAlreadyExistsException: Self { .init(.resourceAlreadyExistsException) }
    /// An entity that you specified does not exist.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
}

extension CloudWatchEventsErrorType: Equatable {
    public static func == (lhs: CloudWatchEventsErrorType, rhs: CloudWatchEventsErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension CloudWatchEventsErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
