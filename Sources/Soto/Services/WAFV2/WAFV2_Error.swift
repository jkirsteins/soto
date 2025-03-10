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

/// Error enum for WAFV2
public struct WAFV2ErrorType: AWSErrorType {
    enum Code: String {
        case wafAssociatedItemException = "WAFAssociatedItemException"
        case wafDuplicateItemException = "WAFDuplicateItemException"
        case wafExpiredManagedRuleGroupVersionException = "WAFExpiredManagedRuleGroupVersionException"
        case wafInternalErrorException = "WAFInternalErrorException"
        case wafInvalidOperationException = "WAFInvalidOperationException"
        case wafInvalidParameterException = "WAFInvalidParameterException"
        case wafInvalidPermissionPolicyException = "WAFInvalidPermissionPolicyException"
        case wafInvalidResourceException = "WAFInvalidResourceException"
        case wafLimitsExceededException = "WAFLimitsExceededException"
        case wafLogDestinationPermissionIssueException = "WAFLogDestinationPermissionIssueException"
        case wafNonexistentItemException = "WAFNonexistentItemException"
        case wafOptimisticLockException = "WAFOptimisticLockException"
        case wafServiceLinkedRoleErrorException = "WAFServiceLinkedRoleErrorException"
        case wafSubscriptionNotFoundException = "WAFSubscriptionNotFoundException"
        case wafTagOperationException = "WAFTagOperationException"
        case wafTagOperationInternalErrorException = "WAFTagOperationInternalErrorException"
        case wafUnavailableEntityException = "WAFUnavailableEntityException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize WAFV2
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

    /// WAF couldn’t perform the operation because your resource is being used by another resource or it’s associated with another resource.
    public static var wafAssociatedItemException: Self { .init(.wafAssociatedItemException) }
    /// WAF couldn’t perform the operation because the resource that you tried to save is a duplicate of an existing one.
    public static var wafDuplicateItemException: Self { .init(.wafDuplicateItemException) }
    /// The operation failed because the specified version for the managed rule group has expired. You can retrieve the available versions for the managed rule group by calling ListAvailableManagedRuleGroupVersions.
    public static var wafExpiredManagedRuleGroupVersionException: Self { .init(.wafExpiredManagedRuleGroupVersionException) }
    /// Your request is valid, but WAF couldn’t perform the operation because of a system problem. Retry your request.
    public static var wafInternalErrorException: Self { .init(.wafInternalErrorException) }
    /// The operation isn't valid.
    public static var wafInvalidOperationException: Self { .init(.wafInvalidOperationException) }
    /// The operation failed because WAF didn't recognize a parameter in the request. For example:    You specified a parameter name or value that isn't valid.   Your nested statement isn't valid. You might have tried to nest a statement that can’t be nested.    You tried to update a WebACL with a DefaultAction that isn't among the types available at DefaultAction.   Your request references an ARN that is malformed, or corresponds to a resource with which a web ACL can't be associated.
    public static var wafInvalidParameterException: Self { .init(.wafInvalidParameterException) }
    /// The operation failed because the specified policy isn't in the proper format.   The policy specifications must conform to the following:   The policy must be composed using IAM Policy version 2012-10-17 or version 2015-01-01.   The policy must include specifications for Effect, Action, and Principal.    Effect must specify Allow.    Action must specify wafv2:CreateWebACL, wafv2:UpdateWebACL, and wafv2:PutFirewallManagerRuleGroups. WAF rejects any extra actions or wildcard actions in the policy.   The policy must not include a Resource parameter.   For more information, see IAM Policies.
    public static var wafInvalidPermissionPolicyException: Self { .init(.wafInvalidPermissionPolicyException) }
    /// WAF couldn’t perform the operation because the resource that you requested isn’t valid. Check the resource, and try again.
    public static var wafInvalidResourceException: Self { .init(.wafInvalidResourceException) }
    /// WAF couldn’t perform the operation because you exceeded your resource limit. For example, the maximum number of WebACL objects that you can create for an Amazon Web Services account. For more information, see WAF quotas in the WAF Developer Guide.
    public static var wafLimitsExceededException: Self { .init(.wafLimitsExceededException) }
    /// The operation failed because you don't have the permissions that your logging configuration requires. For information, see  Logging web ACL traffic information  in the WAF Developer Guide.
    public static var wafLogDestinationPermissionIssueException: Self { .init(.wafLogDestinationPermissionIssueException) }
    /// WAF couldn’t perform the operation because your resource doesn’t exist.
    public static var wafNonexistentItemException: Self { .init(.wafNonexistentItemException) }
    /// WAF couldn’t save your changes because you tried to update or delete a resource that has changed since you last retrieved it. Get the resource again, make any changes you need to make to the new copy, and retry your operation.
    public static var wafOptimisticLockException: Self { .init(.wafOptimisticLockException) }
    /// WAF is not able to access the service linked role. This can be caused by a previous PutLoggingConfiguration request, which can lock the service linked role for about 20 seconds. Please try your request again. The service linked role can also be locked by a previous DeleteServiceLinkedRole request, which can lock the role for 15 minutes or more. If you recently made a call to DeleteServiceLinkedRole, wait at least 15 minutes and try the request again. If you receive this same exception again, you will have to wait additional time until the role is unlocked.
    public static var wafServiceLinkedRoleErrorException: Self { .init(.wafServiceLinkedRoleErrorException) }
    /// You tried to use a managed rule group that's available by subscription, but you aren't subscribed to it yet.
    public static var wafSubscriptionNotFoundException: Self { .init(.wafSubscriptionNotFoundException) }
    /// An error occurred during the tagging operation. Retry your request.
    public static var wafTagOperationException: Self { .init(.wafTagOperationException) }
    /// WAF couldn’t perform your tagging operation because of an internal error. Retry your request.
    public static var wafTagOperationInternalErrorException: Self { .init(.wafTagOperationInternalErrorException) }
    /// WAF couldn’t retrieve the resource that you requested. Retry your request.
    public static var wafUnavailableEntityException: Self { .init(.wafUnavailableEntityException) }
}

extension WAFV2ErrorType: Equatable {
    public static func == (lhs: WAFV2ErrorType, rhs: WAFV2ErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension WAFV2ErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
