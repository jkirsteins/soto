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
extension ApplicationAutoScaling {
    // MARK: Async API Calls

    /// Deletes the specified scaling policy for an Application Auto Scaling scalable target. Deleting a step scaling policy deletes the underlying alarm action, but does not delete the CloudWatch alarm associated with the scaling policy, even if it no longer has an associated action. For more information, see Delete a step scaling policy and Delete a target tracking scaling policy in the Application Auto Scaling User Guide.
    public func deleteScalingPolicy(_ input: DeleteScalingPolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteScalingPolicyResponse {
        return try await self.client.execute(operation: "DeleteScalingPolicy", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified scheduled action for an Application Auto Scaling scalable target. For more information, see Delete a scheduled action in the Application Auto Scaling User Guide.
    public func deleteScheduledAction(_ input: DeleteScheduledActionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteScheduledActionResponse {
        return try await self.client.execute(operation: "DeleteScheduledAction", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deregisters an Application Auto Scaling scalable target when you have finished using it. To see which resources have been registered, use DescribeScalableTargets.   Deregistering a scalable target deletes the scaling policies and the scheduled actions that are associated with it.
    public func deregisterScalableTarget(_ input: DeregisterScalableTargetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeregisterScalableTargetResponse {
        return try await self.client.execute(operation: "DeregisterScalableTarget", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about the scalable targets in the specified namespace. You can filter the results using ResourceIds and ScalableDimension.
    public func describeScalableTargets(_ input: DescribeScalableTargetsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeScalableTargetsResponse {
        return try await self.client.execute(operation: "DescribeScalableTargets", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Provides descriptive information about the scaling activities in the specified namespace from the previous six weeks. You can filter the results using ResourceId and ScalableDimension.
    public func describeScalingActivities(_ input: DescribeScalingActivitiesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeScalingActivitiesResponse {
        return try await self.client.execute(operation: "DescribeScalingActivities", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the Application Auto Scaling scaling policies for the specified service namespace. You can filter the results using ResourceId, ScalableDimension, and PolicyNames. For more information, see Target tracking scaling policies and Step scaling policies in the Application Auto Scaling User Guide.
    public func describeScalingPolicies(_ input: DescribeScalingPoliciesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeScalingPoliciesResponse {
        return try await self.client.execute(operation: "DescribeScalingPolicies", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the Application Auto Scaling scheduled actions for the specified service namespace. You can filter the results using the ResourceId, ScalableDimension, and ScheduledActionNames parameters. For more information, see Scheduled scaling and Managing scheduled scaling in the Application Auto Scaling User Guide.
    public func describeScheduledActions(_ input: DescribeScheduledActionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeScheduledActionsResponse {
        return try await self.client.execute(operation: "DescribeScheduledActions", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates or updates a scaling policy for an Application Auto Scaling scalable target. Each scalable target is identified by a service namespace, resource ID, and scalable dimension. A scaling policy applies to the scalable target identified by those three attributes. You cannot create a scaling policy until you have registered the resource as a scalable target. Multiple scaling policies can be in force at the same time for the same scalable target. You can have one or more target tracking scaling policies, one or more step scaling policies, or both. However, there is a chance that multiple policies could conflict, instructing the scalable target to scale out or in at the same time. Application Auto Scaling gives precedence to the policy that provides the largest capacity for both scale out and scale in. For example, if one policy increases capacity by 3, another policy increases capacity by 200 percent, and the current capacity is 10, Application Auto Scaling uses the policy with the highest calculated capacity (200% of 10 = 20) and scales out to 30.  We recommend caution, however, when using target tracking scaling policies with step scaling policies because conflicts between these policies can cause undesirable behavior. For example, if the step scaling policy initiates a scale-in activity before the target tracking policy is ready to scale in, the scale-in activity will not be blocked. After the scale-in activity completes, the target tracking policy could instruct the scalable target to scale out again.  For more information, see Target tracking scaling policies and Step scaling policies in the Application Auto Scaling User Guide.  If a scalable target is deregistered, the scalable target is no longer available to execute scaling policies. Any scaling policies that were specified for the scalable target are deleted.
    public func putScalingPolicy(_ input: PutScalingPolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutScalingPolicyResponse {
        return try await self.client.execute(operation: "PutScalingPolicy", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates or updates a scheduled action for an Application Auto Scaling scalable target.  Each scalable target is identified by a service namespace, resource ID, and scalable dimension. A scheduled action applies to the scalable target identified by those three attributes. You cannot create a scheduled action until you have registered the resource as a scalable target. When start and end times are specified with a recurring schedule using a cron expression or rates, they form the boundaries for when the recurring action starts and stops. To update a scheduled action, specify the parameters that you want to change. If you don't specify start and end times, the old values are deleted. For more information, see Scheduled scaling in the Application Auto Scaling User Guide.  If a scalable target is deregistered, the scalable target is no longer available to run scheduled actions. Any scheduled actions that were specified for the scalable target are deleted.
    public func putScheduledAction(_ input: PutScheduledActionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutScheduledActionResponse {
        return try await self.client.execute(operation: "PutScheduledAction", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Registers or updates a scalable target.  A scalable target is a resource that Application Auto Scaling can scale out and scale in. Scalable targets are uniquely identified by the combination of resource ID, scalable dimension, and namespace.  When you register a new scalable target, you must specify values for minimum and maximum capacity. Current capacity will be adjusted within the specified range when scaling starts. Application Auto Scaling scaling policies will not scale capacity to values that are outside of this range. After you register a scalable target, you do not need to register it again to use other Application Auto Scaling operations. To see which resources have been registered, use DescribeScalableTargets. You can also view the scaling policies for a service namespace by using DescribeScalableTargets. If you no longer need a scalable target, you can deregister it by using DeregisterScalableTarget. To update a scalable target, specify the parameters that you want to change. Include the parameters that identify the scalable target: resource ID, scalable dimension, and namespace. Any parameters that you don't specify are not changed by this update request.   If you call the RegisterScalableTarget API to update an existing scalable target, Application Auto Scaling retrieves the current capacity of the resource. If it is below the minimum capacity or above the maximum capacity, Application Auto Scaling adjusts the capacity of the scalable target to place it within these bounds, even if you don't include the MinCapacity or MaxCapacity request parameters.
    public func registerScalableTarget(_ input: RegisterScalableTargetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RegisterScalableTargetResponse {
        return try await self.client.execute(operation: "RegisterScalableTarget", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
