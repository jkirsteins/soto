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

/// Service object for interacting with AWS AutoScalingPlans service.
///
/// AWS Auto Scaling
///   Use AWS Auto Scaling to create scaling plans for your applications to automatically scale your scalable AWS resources.   API Summary  You can use the AWS Auto Scaling service API to accomplish the following tasks:   Create and manage scaling plans   Define target tracking scaling policies to dynamically scale your resources based on utilization   Scale Amazon EC2 Auto Scaling groups using predictive scaling and dynamic scaling to scale your Amazon EC2 capacity faster   Set minimum and maximum capacity limits   Retrieve information on existing scaling plans   Access current forecast data and historical forecast data for up to 56 days previous    To learn more about AWS Auto Scaling, including information about granting IAM users required permissions for AWS Auto Scaling actions, see the AWS Auto Scaling User Guide.
public struct AutoScalingPlans: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the AutoScalingPlans client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - timeout: Timeout value for HTTP requests
    public init(
        client: AWSClient,
        region: SotoCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        timeout: TimeAmount? = nil,
        byteBufferAllocator: ByteBufferAllocator = ByteBufferAllocator(),
        options: AWSServiceConfig.Options = []
    ) {
        self.client = client
        self.config = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            amzTarget: "AnyScaleScalingPlannerFrontendService",
            service: "autoscaling-plans",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2018-01-06",
            endpoint: endpoint,
            errorType: AutoScalingPlansErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Creates a scaling plan.
    public func createScalingPlan(_ input: CreateScalingPlanRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateScalingPlanResponse> {
        return self.client.execute(operation: "CreateScalingPlan", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified scaling plan. Deleting a scaling plan deletes the underlying ScalingInstruction for all of the scalable resources that are covered by the plan. If the plan has launched resources or has scaling activities in progress, you must delete those resources separately.
    public func deleteScalingPlan(_ input: DeleteScalingPlanRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteScalingPlanResponse> {
        return self.client.execute(operation: "DeleteScalingPlan", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the scalable resources in the specified scaling plan.
    public func describeScalingPlanResources(_ input: DescribeScalingPlanResourcesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeScalingPlanResourcesResponse> {
        return self.client.execute(operation: "DescribeScalingPlanResources", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes one or more of your scaling plans.
    public func describeScalingPlans(_ input: DescribeScalingPlansRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeScalingPlansResponse> {
        return self.client.execute(operation: "DescribeScalingPlans", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the forecast data for a scalable resource. Capacity forecasts are represented as predicted values, or data points, that are calculated using historical data points from a specified CloudWatch load metric. Data points are available for up to 56 days.
    public func getScalingPlanResourceForecastData(_ input: GetScalingPlanResourceForecastDataRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetScalingPlanResourceForecastDataResponse> {
        return self.client.execute(operation: "GetScalingPlanResourceForecastData", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the specified scaling plan. You cannot update a scaling plan if it is in the process of being created, updated, or deleted.
    public func updateScalingPlan(_ input: UpdateScalingPlanRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateScalingPlanResponse> {
        return self.client.execute(operation: "UpdateScalingPlan", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

extension AutoScalingPlans {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: AutoScalingPlans, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
