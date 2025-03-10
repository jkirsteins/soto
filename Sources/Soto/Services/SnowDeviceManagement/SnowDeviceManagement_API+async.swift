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
extension SnowDeviceManagement {
    // MARK: Async API Calls

    /// Sends a cancel request for a specified task. You can cancel a task only if it's still in a QUEUED state. Tasks that are already running can't be cancelled.  A task might still run if it's processed from the queue before the CancelTask operation changes the task's state.
    public func cancelTask(_ input: CancelTaskInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CancelTaskOutput {
        return try await self.client.execute(operation: "CancelTask", path: "/task/{taskId}/cancel", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Instructs one or more devices to start a task, such as unlocking or rebooting.
    public func createTask(_ input: CreateTaskInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTaskOutput {
        return try await self.client.execute(operation: "CreateTask", path: "/task", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Checks device-specific information, such as the device type, software version, IP addresses, and lock status.
    public func describeDevice(_ input: DescribeDeviceInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDeviceOutput {
        return try await self.client.execute(operation: "DescribeDevice", path: "/managed-device/{managedDeviceId}/describe", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Checks the current state of the Amazon EC2 instances. The output is similar to describeDevice, but the results are sourced from the device cache in the Amazon Web Services Cloud and include a subset of the available fields.
    public func describeDeviceEc2Instances(_ input: DescribeDeviceEc2Input, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDeviceEc2Output {
        return try await self.client.execute(operation: "DescribeDeviceEc2Instances", path: "/managed-device/{managedDeviceId}/resources/ec2/describe", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Checks the status of a remote task running on one or more target devices.
    public func describeExecution(_ input: DescribeExecutionInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeExecutionOutput {
        return try await self.client.execute(operation: "DescribeExecution", path: "/task/{taskId}/execution/{managedDeviceId}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Checks the metadata for a given task on a device.
    public func describeTask(_ input: DescribeTaskInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTaskOutput {
        return try await self.client.execute(operation: "DescribeTask", path: "/task/{taskId}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of the Amazon Web Services resources available for a device. Currently, Amazon EC2 instances are the only supported resource type.
    public func listDeviceResources(_ input: ListDeviceResourcesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListDeviceResourcesOutput {
        return try await self.client.execute(operation: "ListDeviceResources", path: "/managed-device/{managedDeviceId}/resources", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of all devices on your Amazon Web Services account that have Amazon Web Services Snow Device Management enabled in the Amazon Web Services Region where the command is run.
    public func listDevices(_ input: ListDevicesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListDevicesOutput {
        return try await self.client.execute(operation: "ListDevices", path: "/managed-devices", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the status of tasks for one or more target devices.
    public func listExecutions(_ input: ListExecutionsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListExecutionsOutput {
        return try await self.client.execute(operation: "ListExecutions", path: "/executions", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of tags for a managed device or task.
    public func listTagsForResource(_ input: ListTagsForResourceInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceOutput {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of tasks that can be filtered by state.
    public func listTasks(_ input: ListTasksInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTasksOutput {
        return try await self.client.execute(operation: "ListTasks", path: "/tasks", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds or replaces tags on a device or task.
    public func tagResource(_ input: TagResourceInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes a tag from a device or task.
    public func untagResource(_ input: UntagResourceInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
