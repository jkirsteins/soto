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
extension Inspector {
    // MARK: Async API Calls

    /// Assigns attributes (key and value pairs) to the findings that are specified by the ARNs of the findings.
    public func addAttributesToFindings(_ input: AddAttributesToFindingsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddAttributesToFindingsResponse {
        return try await self.client.execute(operation: "AddAttributesToFindings", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new assessment target using the ARN of the resource group that is generated by CreateResourceGroup. If resourceGroupArn is not specified, all EC2 instances in the current AWS account and region are included in the assessment target. If the service-linked role isn’t already registered, this action also creates and registers a service-linked role to grant Amazon Inspector access to AWS Services needed to perform security assessments. You can create up to 50 assessment targets per AWS account. You can run up to 500 concurrent agents per AWS account. For more information, see  Amazon Inspector Assessment Targets.
    public func createAssessmentTarget(_ input: CreateAssessmentTargetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAssessmentTargetResponse {
        return try await self.client.execute(operation: "CreateAssessmentTarget", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates an assessment template for the assessment target that is specified by the ARN of the assessment target. If the service-linked role isn’t already registered, this action also creates and registers a service-linked role to grant Amazon Inspector access to AWS Services needed to perform security assessments.
    public func createAssessmentTemplate(_ input: CreateAssessmentTemplateRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAssessmentTemplateResponse {
        return try await self.client.execute(operation: "CreateAssessmentTemplate", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts the generation of an exclusions preview for the specified assessment template. The exclusions preview lists the potential exclusions (ExclusionPreview) that Inspector can detect before it runs the assessment.
    public func createExclusionsPreview(_ input: CreateExclusionsPreviewRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateExclusionsPreviewResponse {
        return try await self.client.execute(operation: "CreateExclusionsPreview", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a resource group using the specified set of tags (key and value pairs) that are used to select the EC2 instances to be included in an Amazon Inspector assessment target. The created resource group is then used to create an Amazon Inspector assessment target. For more information, see CreateAssessmentTarget.
    public func createResourceGroup(_ input: CreateResourceGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateResourceGroupResponse {
        return try await self.client.execute(operation: "CreateResourceGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the assessment run that is specified by the ARN of the assessment run.
    public func deleteAssessmentRun(_ input: DeleteAssessmentRunRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteAssessmentRun", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the assessment target that is specified by the ARN of the assessment target.
    public func deleteAssessmentTarget(_ input: DeleteAssessmentTargetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteAssessmentTarget", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the assessment template that is specified by the ARN of the assessment template.
    public func deleteAssessmentTemplate(_ input: DeleteAssessmentTemplateRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteAssessmentTemplate", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the assessment runs that are specified by the ARNs of the assessment runs.
    public func describeAssessmentRuns(_ input: DescribeAssessmentRunsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssessmentRunsResponse {
        return try await self.client.execute(operation: "DescribeAssessmentRuns", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the assessment targets that are specified by the ARNs of the assessment targets.
    public func describeAssessmentTargets(_ input: DescribeAssessmentTargetsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssessmentTargetsResponse {
        return try await self.client.execute(operation: "DescribeAssessmentTargets", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the assessment templates that are specified by the ARNs of the assessment templates.
    public func describeAssessmentTemplates(_ input: DescribeAssessmentTemplatesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssessmentTemplatesResponse {
        return try await self.client.execute(operation: "DescribeAssessmentTemplates", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the IAM role that enables Amazon Inspector to access your AWS account.
    public func describeCrossAccountAccessRole(logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCrossAccountAccessRoleResponse {
        return try await self.client.execute(operation: "DescribeCrossAccountAccessRole", path: "/", httpMethod: .POST, serviceConfig: self.config, logger: logger, on: eventLoop)
    }

    /// Describes the exclusions that are specified by the exclusions' ARNs.
    public func describeExclusions(_ input: DescribeExclusionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeExclusionsResponse {
        return try await self.client.execute(operation: "DescribeExclusions", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the findings that are specified by the ARNs of the findings.
    public func describeFindings(_ input: DescribeFindingsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFindingsResponse {
        return try await self.client.execute(operation: "DescribeFindings", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the resource groups that are specified by the ARNs of the resource groups.
    public func describeResourceGroups(_ input: DescribeResourceGroupsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeResourceGroupsResponse {
        return try await self.client.execute(operation: "DescribeResourceGroups", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the rules packages that are specified by the ARNs of the rules packages.
    public func describeRulesPackages(_ input: DescribeRulesPackagesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRulesPackagesResponse {
        return try await self.client.execute(operation: "DescribeRulesPackages", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Produces an assessment report that includes detailed and comprehensive results of a specified assessment run.
    public func getAssessmentReport(_ input: GetAssessmentReportRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetAssessmentReportResponse {
        return try await self.client.execute(operation: "GetAssessmentReport", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the exclusions preview (a list of ExclusionPreview objects) specified by the preview token. You can obtain the preview token by running the CreateExclusionsPreview API.
    public func getExclusionsPreview(_ input: GetExclusionsPreviewRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetExclusionsPreviewResponse {
        return try await self.client.execute(operation: "GetExclusionsPreview", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Information about the data that is collected for the specified assessment run.
    public func getTelemetryMetadata(_ input: GetTelemetryMetadataRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetTelemetryMetadataResponse {
        return try await self.client.execute(operation: "GetTelemetryMetadata", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the agents of the assessment runs that are specified by the ARNs of the assessment runs.
    public func listAssessmentRunAgents(_ input: ListAssessmentRunAgentsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAssessmentRunAgentsResponse {
        return try await self.client.execute(operation: "ListAssessmentRunAgents", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the assessment runs that correspond to the assessment templates that are specified by the ARNs of the assessment templates.
    public func listAssessmentRuns(_ input: ListAssessmentRunsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAssessmentRunsResponse {
        return try await self.client.execute(operation: "ListAssessmentRuns", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the ARNs of the assessment targets within this AWS account. For more information about assessment targets, see Amazon Inspector Assessment Targets.
    public func listAssessmentTargets(_ input: ListAssessmentTargetsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAssessmentTargetsResponse {
        return try await self.client.execute(operation: "ListAssessmentTargets", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the assessment templates that correspond to the assessment targets that are specified by the ARNs of the assessment targets.
    public func listAssessmentTemplates(_ input: ListAssessmentTemplatesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAssessmentTemplatesResponse {
        return try await self.client.execute(operation: "ListAssessmentTemplates", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all the event subscriptions for the assessment template that is specified by the ARN of the assessment template. For more information, see SubscribeToEvent and UnsubscribeFromEvent.
    public func listEventSubscriptions(_ input: ListEventSubscriptionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListEventSubscriptionsResponse {
        return try await self.client.execute(operation: "ListEventSubscriptions", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List exclusions that are generated by the assessment run.
    public func listExclusions(_ input: ListExclusionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListExclusionsResponse {
        return try await self.client.execute(operation: "ListExclusions", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists findings that are generated by the assessment runs that are specified by the ARNs of the assessment runs.
    public func listFindings(_ input: ListFindingsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListFindingsResponse {
        return try await self.client.execute(operation: "ListFindings", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all available Amazon Inspector rules packages.
    public func listRulesPackages(_ input: ListRulesPackagesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListRulesPackagesResponse {
        return try await self.client.execute(operation: "ListRulesPackages", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all tags associated with an assessment template.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Previews the agents installed on the EC2 instances that are part of the specified assessment target.
    public func previewAgents(_ input: PreviewAgentsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PreviewAgentsResponse {
        return try await self.client.execute(operation: "PreviewAgents", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Registers the IAM role that grants Amazon Inspector access to AWS Services needed to perform security assessments.
    public func registerCrossAccountAccessRole(_ input: RegisterCrossAccountAccessRoleRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "RegisterCrossAccountAccessRole", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes entire attributes (key and value pairs) from the findings that are specified by the ARNs of the findings where an attribute with the specified key exists.
    public func removeAttributesFromFindings(_ input: RemoveAttributesFromFindingsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RemoveAttributesFromFindingsResponse {
        return try await self.client.execute(operation: "RemoveAttributesFromFindings", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Sets tags (key and value pairs) to the assessment template that is specified by the ARN of the assessment template.
    public func setTagsForResource(_ input: SetTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "SetTagsForResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts the assessment run specified by the ARN of the assessment template. For this API to function properly, you must not exceed the limit of running up to 500 concurrent agents per AWS account.
    public func startAssessmentRun(_ input: StartAssessmentRunRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartAssessmentRunResponse {
        return try await self.client.execute(operation: "StartAssessmentRun", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Stops the assessment run that is specified by the ARN of the assessment run.
    public func stopAssessmentRun(_ input: StopAssessmentRunRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "StopAssessmentRun", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Enables the process of sending Amazon Simple Notification Service (SNS) notifications about a specified event to a specified SNS topic.
    public func subscribeToEvent(_ input: SubscribeToEventRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "SubscribeToEvent", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disables the process of sending Amazon Simple Notification Service (SNS) notifications about a specified event to a specified SNS topic.
    public func unsubscribeFromEvent(_ input: UnsubscribeFromEventRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "UnsubscribeFromEvent", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the assessment target that is specified by the ARN of the assessment target. If resourceGroupArn is not specified, all EC2 instances in the current AWS account and region are included in the assessment target.
    public func updateAssessmentTarget(_ input: UpdateAssessmentTargetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "UpdateAssessmentTarget", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
