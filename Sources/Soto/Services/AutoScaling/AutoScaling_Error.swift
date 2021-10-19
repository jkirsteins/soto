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

/// Error enum for AutoScaling
public struct AutoScalingErrorType: AWSErrorType {
    enum Code: String {
        case activeInstanceRefreshNotFoundFault = "ActiveInstanceRefreshNotFound"
        case alreadyExistsFault = "AlreadyExists"
        case instanceRefreshInProgressFault = "InstanceRefreshInProgress"
        case invalidNextToken = "InvalidNextToken"
        case limitExceededFault = "LimitExceeded"
        case resourceContentionFault = "ResourceContention"
        case resourceInUseFault = "ResourceInUse"
        case scalingActivityInProgressFault = "ScalingActivityInProgress"
        case serviceLinkedRoleFailure = "ServiceLinkedRoleFailure"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize AutoScaling
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

    /// The request failed because an active instance refresh for the specified Auto Scaling group was not found.
    public static var activeInstanceRefreshNotFoundFault: Self { .init(.activeInstanceRefreshNotFoundFault) }
    /// You already have an Auto Scaling group or launch configuration with this name.
    public static var alreadyExistsFault: Self { .init(.alreadyExistsFault) }
    /// The request failed because an active instance refresh operation already exists for the specified Auto Scaling group.
    public static var instanceRefreshInProgressFault: Self { .init(.instanceRefreshInProgressFault) }
    /// The NextToken value is not valid.
    public static var invalidNextToken: Self { .init(.invalidNextToken) }
    /// You have already reached a limit for your Amazon EC2 Auto Scaling resources (for example, Auto Scaling groups, launch configurations, or lifecycle hooks). For more information, see DescribeAccountLimits in the Amazon EC2 Auto Scaling API Reference.
    public static var limitExceededFault: Self { .init(.limitExceededFault) }
    /// You already have a pending update to an Amazon EC2 Auto Scaling resource (for example, an Auto Scaling group, instance, or load balancer).
    public static var resourceContentionFault: Self { .init(.resourceContentionFault) }
    /// The operation can't be performed because the resource is in use.
    public static var resourceInUseFault: Self { .init(.resourceInUseFault) }
    /// The operation can't be performed because there are scaling activities in progress.
    public static var scalingActivityInProgressFault: Self { .init(.scalingActivityInProgressFault) }
    /// The service-linked role is not yet ready for use.
    public static var serviceLinkedRoleFailure: Self { .init(.serviceLinkedRoleFailure) }
}

extension AutoScalingErrorType: Equatable {
    public static func == (lhs: AutoScalingErrorType, rhs: AutoScalingErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension AutoScalingErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
