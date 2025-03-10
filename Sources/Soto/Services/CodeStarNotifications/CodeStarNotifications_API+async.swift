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

@available(macOS 12.0, iOS 15.0, watchOS 8.0, tvOS 15.0, *)
extension CodeStarNotifications {
    // MARK: Async API Calls

    /// Creates a notification rule for a resource. The rule specifies the events you want notifications about and the targets (such as SNS topics) where you want to receive them.
    public func createNotificationRule(_ input: CreateNotificationRuleRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateNotificationRuleResult {
        return try await self.client.execute(operation: "CreateNotificationRule", path: "/createNotificationRule", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a notification rule for a resource.
    public func deleteNotificationRule(_ input: DeleteNotificationRuleRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteNotificationRuleResult {
        return try await self.client.execute(operation: "DeleteNotificationRule", path: "/deleteNotificationRule", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a specified target for notifications.
    public func deleteTarget(_ input: DeleteTargetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteTargetResult {
        return try await self.client.execute(operation: "DeleteTarget", path: "/deleteTarget", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about a specified notification rule.
    public func describeNotificationRule(_ input: DescribeNotificationRuleRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNotificationRuleResult {
        return try await self.client.execute(operation: "DescribeNotificationRule", path: "/describeNotificationRule", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about the event types available for configuring notifications.
    public func listEventTypes(_ input: ListEventTypesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListEventTypesResult {
        return try await self.client.execute(operation: "ListEventTypes", path: "/listEventTypes", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of the notification rules for an AWS account.
    public func listNotificationRules(_ input: ListNotificationRulesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListNotificationRulesResult {
        return try await self.client.execute(operation: "ListNotificationRules", path: "/listNotificationRules", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of the tags associated with a notification rule.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResult {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/listTagsForResource", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of the notification rule targets for an AWS account.
    public func listTargets(_ input: ListTargetsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTargetsResult {
        return try await self.client.execute(operation: "ListTargets", path: "/listTargets", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates an association between a notification rule and an SNS topic so that the associated target can receive notifications when the events described in the rule are triggered.
    public func subscribe(_ input: SubscribeRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SubscribeResult {
        return try await self.client.execute(operation: "Subscribe", path: "/subscribe", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Associates a set of provided tags with a notification rule.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResult {
        return try await self.client.execute(operation: "TagResource", path: "/tagResource", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes an association between a notification rule and an Amazon SNS topic so that subscribers to that topic stop receiving notifications when the events described in the rule are triggered.
    public func unsubscribe(_ input: UnsubscribeRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UnsubscribeResult {
        return try await self.client.execute(operation: "Unsubscribe", path: "/unsubscribe", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes the association between one or more provided tags and a notification rule.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResult {
        return try await self.client.execute(operation: "UntagResource", path: "/untagResource", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a notification rule for a resource. You can change the events that trigger the notification rule, the status of the rule, and the targets that receive the notifications.  To add or remove tags for a notification rule, you must use TagResource and UntagResource.
    public func updateNotificationRule(_ input: UpdateNotificationRuleRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateNotificationRuleResult {
        return try await self.client.execute(operation: "UpdateNotificationRule", path: "/updateNotificationRule", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
