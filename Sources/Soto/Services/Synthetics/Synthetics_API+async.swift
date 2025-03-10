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
extension Synthetics {
    // MARK: Async API Calls

    /// Creates a canary. Canaries are scripts that monitor your endpoints and APIs from the outside-in. Canaries help you check the availability and latency of your web services and troubleshoot anomalies by investigating load time data, screenshots of the UI, logs, and metrics. You can set up a canary to run continuously or just once.  Do not use CreateCanary to modify an existing canary. Use UpdateCanary instead. To create canaries, you must have the CloudWatchSyntheticsFullAccess policy. If you are creating a new IAM role for the canary, you also need the the iam:CreateRole, iam:CreatePolicy and iam:AttachRolePolicy permissions. For more information, see Necessary Roles and Permissions. Do not include secrets or proprietary information in your canary names. The canary name makes up part of the Amazon Resource Name (ARN) for the canary, and the ARN is included in outbound calls over the internet. For more information, see Security Considerations for Synthetics Canaries.
    public func createCanary(_ input: CreateCanaryRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCanaryResponse {
        return try await self.client.execute(operation: "CreateCanary", path: "/canary", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Permanently deletes the specified canary. When you delete a canary, resources used and created by the canary are not automatically deleted. After you delete a canary that you do not intend to use again, you should also delete the following:   The Lambda functions and layers used by this canary. These have the prefix cwsyn-MyCanaryName .   The CloudWatch alarms created for this canary. These alarms have a name of Synthetics-SharpDrop-Alarm-MyCanaryName .   Amazon S3 objects and buckets, such as the canary's artifact location.   IAM roles created for the canary. If they were created in the console, these roles have the name  role/service-role/CloudWatchSyntheticsRole-MyCanaryName .   CloudWatch Logs log groups created for the canary. These logs groups have the name /aws/lambda/cwsyn-MyCanaryName .     Before you delete a canary, you might want to use GetCanary to display the information about this canary. Make note of the information returned by this operation so that you can delete these resources after you delete the canary.
    public func deleteCanary(_ input: DeleteCanaryRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteCanaryResponse {
        return try await self.client.execute(operation: "DeleteCanary", path: "/canary/{Name}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// This operation returns a list of the canaries in your account, along with full details about each canary. This operation does not have resource-level authorization, so if a user is able to use DescribeCanaries, the user can see all of the canaries in the account. A deny policy can only be used to restrict access to all canaries. It cannot be used on specific resources.
    public func describeCanaries(_ input: DescribeCanariesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCanariesResponse {
        return try await self.client.execute(operation: "DescribeCanaries", path: "/canaries", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Use this operation to see information from the most recent run of each canary that you have created.
    public func describeCanariesLastRun(_ input: DescribeCanariesLastRunRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCanariesLastRunResponse {
        return try await self.client.execute(operation: "DescribeCanariesLastRun", path: "/canaries/last-run", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of Synthetics canary runtime versions. For more information,  see  Canary Runtime Versions.
    public func describeRuntimeVersions(_ input: DescribeRuntimeVersionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRuntimeVersionsResponse {
        return try await self.client.execute(operation: "DescribeRuntimeVersions", path: "/runtime-versions", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves complete information about one canary. You must specify the name of the canary that you want. To get a list of canaries and their names, use DescribeCanaries.
    public func getCanary(_ input: GetCanaryRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetCanaryResponse {
        return try await self.client.execute(operation: "GetCanary", path: "/canary/{Name}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a list of runs for a specified canary.
    public func getCanaryRuns(_ input: GetCanaryRunsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetCanaryRunsResponse {
        return try await self.client.execute(operation: "GetCanaryRuns", path: "/canary/{Name}/runs", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Displays the tags associated with a canary.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/tags/{ResourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Use this operation to run a canary that has already been created.   The frequency of the canary runs is determined by the value of the canary's Schedule. To see a canary's schedule,  use GetCanary.
    public func startCanary(_ input: StartCanaryRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartCanaryResponse {
        return try await self.client.execute(operation: "StartCanary", path: "/canary/{Name}/start", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Stops the canary to prevent all future runs. If the canary is currently running, Synthetics stops waiting for the current run of the specified canary to complete. The run that is in progress completes on its own, publishes metrics, and uploads artifacts, but it is not recorded in Synthetics as a completed run. You can use StartCanary to start it running again  with the canary’s current schedule at any point in the future.
    public func stopCanary(_ input: StopCanaryRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopCanaryResponse {
        return try await self.client.execute(operation: "StopCanary", path: "/canary/{Name}/stop", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Assigns one or more tags (key-value pairs) to the specified canary.  Tags can help you organize and categorize your resources. You can also use them to scope user permissions, by granting a user permission to access or change only resources with certain tag values. Tags don't have any semantic meaning to Amazon Web Services and are interpreted strictly as strings of characters. You can use the TagResource action with a canary that already has tags. If you specify a new tag key for the alarm,  this tag is appended to the list of tags associated with the alarm. If you specify a tag key that is already associated with the alarm, the new tag value that you specify replaces the previous value for that tag. You can associate as many as 50 tags with a canary.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/tags/{ResourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes one or more tags from the specified canary.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/tags/{ResourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Use this operation to change the settings of a canary that has  already been created. You can't use this operation to update the tags of an existing canary. To  change the tags of an existing canary, use TagResource.
    public func updateCanary(_ input: UpdateCanaryRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateCanaryResponse {
        return try await self.client.execute(operation: "UpdateCanary", path: "/canary/{Name}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
