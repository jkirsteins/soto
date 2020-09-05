//===----------------------------------------------------------------------===//
//
// This source file is part of the AWSSDKSwift open source project
//
// Copyright (c) 2017-2020 the AWSSDKSwift project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of AWSSDKSwift project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/main/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import AWSSDKSwiftCore

/*
Client object for interacting with AWS SecurityHub service.

Security Hub provides you with a comprehensive view of the security state of your AWS environment and resources. It also provides you with the readiness status of your environment based on controls from supported security standards. Security Hub collects security data from AWS accounts, services, and integrated third-party products and helps you analyze security trends in your environment to identify the highest priority security issues. For more information about Security Hub, see the  AWS Security Hub User Guide . When you use operations in the Security Hub API, the requests are executed only in the AWS Region that is currently active or in the specific AWS Region that you specify in your request. Any configuration or settings change that results from the operation is applied only to that Region. To make the same change in other Regions, execute the same command for each Region to apply the change to. For example, if your Region is set to us-west-2, when you use  CreateMembers  to add a member account to Security Hub, the association of the member account with the master account is created only in the us-west-2 Region. Security Hub must be enabled for the member account in the same Region that the invitation was sent from. The following throttling limits apply to using Security Hub API operations.     GetFindings  - RateLimit of 3 requests per second. BurstLimit of 6 requests per second.     UpdateFindings  - RateLimit of 1 request per second. BurstLimit of 5 requests per second.   All other operations - RateLimit of 10 requests per second. BurstLimit of 30 requests per second.  
*/
public struct SecurityHub: AWSService {

    // MARK: Member variables

    public let client: AWSClient
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the SecurityHub client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - timeout: Timeout value for HTTP requests
    public init(
        client: AWSClient,
        region: AWSSDKSwiftCore.Region? = nil,
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
            service: "securityhub",
            serviceProtocol: .restjson,
            apiVersion: "2018-10-26",
            endpoint: endpoint,
            possibleErrorTypes: [SecurityHubErrorType.self],
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }
    
    // MARK: API Calls

    ///  Accepts the invitation to be a member account and be monitored by the Security Hub master account that the invitation was sent from. When the member account accepts the invitation, permission is granted to the master account to view findings generated in the member account.
    public func acceptInvitation(_ input: AcceptInvitationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<AcceptInvitationResponse> {
        return self.client.execute(operation: "AcceptInvitation", path: "/master", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Disables the standards specified by the provided StandardsSubscriptionArns. For more information, see Security Standards section of the AWS Security Hub User Guide.
    public func batchDisableStandards(_ input: BatchDisableStandardsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<BatchDisableStandardsResponse> {
        return self.client.execute(operation: "BatchDisableStandards", path: "/standards/deregister", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Enables the standards specified by the provided StandardsArn. To obtain the ARN for a standard, use the  DescribeStandards  operation. For more information, see the Security Standards section of the AWS Security Hub User Guide.
    public func batchEnableStandards(_ input: BatchEnableStandardsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<BatchEnableStandardsResponse> {
        return self.client.execute(operation: "BatchEnableStandards", path: "/standards/register", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Imports security findings generated from an integrated third-party product into Security Hub. This action is requested by the integrated product to import its findings into Security Hub. The maximum allowed size for a finding is 240 Kb. An error is returned for any finding larger than 240 Kb. After a finding is created, BatchImportFindings cannot be used to update the following finding fields and objects, which Security Hub customers use to manage their investigation workflow.    Confidence     Criticality     Note     RelatedFindings     Severity     Types     UserDefinedFields     VerificationState     Workflow   
    public func batchImportFindings(_ input: BatchImportFindingsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<BatchImportFindingsResponse> {
        return self.client.execute(operation: "BatchImportFindings", path: "/findings/import", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Used by Security Hub customers to update information about their investigation into a finding. Requested by master accounts or member accounts. Master accounts can update findings for their account and their member accounts. Member accounts can update findings for their account. Updates from BatchUpdateFindings do not affect the value of UpdatedAt for a finding. Master accounts can use BatchUpdateFindings to update the following finding fields and objects.    Confidence     Criticality     Note     RelatedFindings     Severity     Types     UserDefinedFields     VerificationState     Workflow    Member accounts can only use BatchUpdateFindings to update the Note object.
    public func batchUpdateFindings(_ input: BatchUpdateFindingsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<BatchUpdateFindingsResponse> {
        return self.client.execute(operation: "BatchUpdateFindings", path: "/findings/batchupdate", httpMethod: .PATCH, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a custom action target in Security Hub. You can use custom actions on findings and insights in Security Hub to trigger target actions in Amazon CloudWatch Events.
    public func createActionTarget(_ input: CreateActionTargetRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateActionTargetResponse> {
        return self.client.execute(operation: "CreateActionTarget", path: "/actionTargets", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a custom insight in Security Hub. An insight is a consolidation of findings that relate to a security issue that requires attention or remediation. To group the related findings in the insight, use the GroupByAttribute.
    public func createInsight(_ input: CreateInsightRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateInsightResponse> {
        return self.client.execute(operation: "CreateInsight", path: "/insights", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a member association in Security Hub between the specified accounts and the account used to make the request, which is the master account. To successfully create a member, you must use this action from an account that already has Security Hub enabled. To enable Security Hub, you can use the  EnableSecurityHub  operation. After you use CreateMembers to create member account associations in Security Hub, you must use the  InviteMembers  operation to invite the accounts to enable Security Hub and become member accounts in Security Hub. If the account owner accepts the invitation, the account becomes a member account in Security Hub. A permissions policy is added that permits the master account to view the findings generated in the member account. When Security Hub is enabled in the invited account, findings start to be sent to both the member and master accounts. To remove the association between the master and member accounts, use the  DisassociateFromMasterAccount  or  DisassociateMembers  operation.
    public func createMembers(_ input: CreateMembersRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateMembersResponse> {
        return self.client.execute(operation: "CreateMembers", path: "/members", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Declines invitations to become a member account.
    public func declineInvitations(_ input: DeclineInvitationsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeclineInvitationsResponse> {
        return self.client.execute(operation: "DeclineInvitations", path: "/invitations/decline", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes a custom action target from Security Hub. Deleting a custom action target does not affect any findings or insights that were already sent to Amazon CloudWatch Events using the custom action.
    public func deleteActionTarget(_ input: DeleteActionTargetRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteActionTargetResponse> {
        return self.client.execute(operation: "DeleteActionTarget", path: "/actionTargets/{ActionTargetArn+}", httpMethod: .DELETE, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes the insight specified by the InsightArn.
    public func deleteInsight(_ input: DeleteInsightRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteInsightResponse> {
        return self.client.execute(operation: "DeleteInsight", path: "/insights/{InsightArn+}", httpMethod: .DELETE, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes invitations received by the AWS account to become a member account.
    public func deleteInvitations(_ input: DeleteInvitationsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteInvitationsResponse> {
        return self.client.execute(operation: "DeleteInvitations", path: "/invitations/delete", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes the specified member accounts from Security Hub.
    public func deleteMembers(_ input: DeleteMembersRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteMembersResponse> {
        return self.client.execute(operation: "DeleteMembers", path: "/members/delete", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a list of the custom action targets in Security Hub in your account.
    public func describeActionTargets(_ input: DescribeActionTargetsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeActionTargetsResponse> {
        return self.client.execute(operation: "DescribeActionTargets", path: "/actionTargets/get", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns details about the Hub resource in your account, including the HubArn and the time when you enabled Security Hub.
    public func describeHub(_ input: DescribeHubRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeHubResponse> {
        return self.client.execute(operation: "DescribeHub", path: "/accounts", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns information about the available products that you can subscribe to and integrate with Security Hub in order to consolidate findings.
    public func describeProducts(_ input: DescribeProductsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeProductsResponse> {
        return self.client.execute(operation: "DescribeProducts", path: "/products", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a list of the available standards in Security Hub. For each standard, the results include the standard ARN, the name, and a description. 
    public func describeStandards(_ input: DescribeStandardsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeStandardsResponse> {
        return self.client.execute(operation: "DescribeStandards", path: "/standards", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a list of security standards controls. For each control, the results include information about whether it is currently enabled, the severity, and a link to remediation information.
    public func describeStandardsControls(_ input: DescribeStandardsControlsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeStandardsControlsResponse> {
        return self.client.execute(operation: "DescribeStandardsControls", path: "/standards/controls/{StandardsSubscriptionArn+}", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Disables the integration of the specified product with Security Hub. After the integration is disabled, findings from that product are no longer sent to Security Hub.
    public func disableImportFindingsForProduct(_ input: DisableImportFindingsForProductRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DisableImportFindingsForProductResponse> {
        return self.client.execute(operation: "DisableImportFindingsForProduct", path: "/productSubscriptions/{ProductSubscriptionArn+}", httpMethod: .DELETE, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Disables Security Hub in your account only in the current Region. To disable Security Hub in all Regions, you must submit one request per Region where you have enabled Security Hub. When you disable Security Hub for a master account, it doesn't disable Security Hub for any associated member accounts. When you disable Security Hub, your existing findings and insights and any Security Hub configuration settings are deleted after 90 days and cannot be recovered. Any standards that were enabled are disabled, and your master and member account associations are removed. If you want to save your existing findings, you must export them before you disable Security Hub.
    public func disableSecurityHub(_ input: DisableSecurityHubRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DisableSecurityHubResponse> {
        return self.client.execute(operation: "DisableSecurityHub", path: "/accounts", httpMethod: .DELETE, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Disassociates the current Security Hub member account from the associated master account.
    public func disassociateFromMasterAccount(_ input: DisassociateFromMasterAccountRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DisassociateFromMasterAccountResponse> {
        return self.client.execute(operation: "DisassociateFromMasterAccount", path: "/master/disassociate", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Disassociates the specified member accounts from the associated master account.
    public func disassociateMembers(_ input: DisassociateMembersRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DisassociateMembersResponse> {
        return self.client.execute(operation: "DisassociateMembers", path: "/members/disassociate", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Enables the integration of a partner product with Security Hub. Integrated products send findings to Security Hub. When you enable a product integration, a permissions policy that grants permission for the product to send findings to Security Hub is applied.
    public func enableImportFindingsForProduct(_ input: EnableImportFindingsForProductRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<EnableImportFindingsForProductResponse> {
        return self.client.execute(operation: "EnableImportFindingsForProduct", path: "/productSubscriptions", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Enables Security Hub for your account in the current Region or the Region you specify in the request. When you enable Security Hub, you grant to Security Hub the permissions necessary to gather findings from other services that are integrated with Security Hub. When you use the EnableSecurityHub operation to enable Security Hub, you also automatically enable the following standards.   CIS AWS Foundations   AWS Foundational Security Best Practices   You do not enable the Payment Card Industry Data Security Standard (PCI DSS) standard.  To not enable the automatically enabled standards, set EnableDefaultStandards to false. After you enable Security Hub, to enable a standard, use the  BatchEnableStandards  operation. To disable a standard, use the  BatchDisableStandards  operation. To learn more, see Setting Up AWS Security Hub in the AWS Security Hub User Guide.
    public func enableSecurityHub(_ input: EnableSecurityHubRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<EnableSecurityHubResponse> {
        return self.client.execute(operation: "EnableSecurityHub", path: "/accounts", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a list of the standards that are currently enabled.
    public func getEnabledStandards(_ input: GetEnabledStandardsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetEnabledStandardsResponse> {
        return self.client.execute(operation: "GetEnabledStandards", path: "/standards/get", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a list of findings that match the specified criteria.
    public func getFindings(_ input: GetFindingsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetFindingsResponse> {
        return self.client.execute(operation: "GetFindings", path: "/findings", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Lists the results of the Security Hub insight specified by the insight ARN.
    public func getInsightResults(_ input: GetInsightResultsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetInsightResultsResponse> {
        return self.client.execute(operation: "GetInsightResults", path: "/insights/results/{InsightArn+}", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Lists and describes insights for the specified insight ARNs.
    public func getInsights(_ input: GetInsightsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetInsightsResponse> {
        return self.client.execute(operation: "GetInsights", path: "/insights/get", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns the count of all Security Hub membership invitations that were sent to the current member account, not including the currently accepted invitation. 
    public func getInvitationsCount(_ input: GetInvitationsCountRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetInvitationsCountResponse> {
        return self.client.execute(operation: "GetInvitationsCount", path: "/invitations/count", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Provides the details for the Security Hub master account for the current member account. 
    public func getMasterAccount(_ input: GetMasterAccountRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetMasterAccountResponse> {
        return self.client.execute(operation: "GetMasterAccount", path: "/master", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns the details for the Security Hub member accounts for the specified account IDs.
    public func getMembers(_ input: GetMembersRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetMembersResponse> {
        return self.client.execute(operation: "GetMembers", path: "/members/get", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Invites other AWS accounts to become member accounts for the Security Hub master account that the invitation is sent from. Before you can use this action to invite a member, you must first use the  CreateMembers  action to create the member account in Security Hub. When the account owner accepts the invitation to become a member account and enables Security Hub, the master account can view the findings generated from the member account.
    public func inviteMembers(_ input: InviteMembersRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<InviteMembersResponse> {
        return self.client.execute(operation: "InviteMembers", path: "/members/invite", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Lists all findings-generating solutions (products) that you are subscribed to receive findings from in Security Hub.
    public func listEnabledProductsForImport(_ input: ListEnabledProductsForImportRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListEnabledProductsForImportResponse> {
        return self.client.execute(operation: "ListEnabledProductsForImport", path: "/productSubscriptions", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Lists all Security Hub membership invitations that were sent to the current AWS account. 
    public func listInvitations(_ input: ListInvitationsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListInvitationsResponse> {
        return self.client.execute(operation: "ListInvitations", path: "/invitations", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Lists details about all member accounts for the current Security Hub master account.
    public func listMembers(_ input: ListMembersRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListMembersResponse> {
        return self.client.execute(operation: "ListMembers", path: "/members", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a list of tags associated with a resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListTagsForResourceResponse> {
        return self.client.execute(operation: "ListTagsForResource", path: "/tags/{ResourceArn}", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Adds one or more tags to a resource.
    public func tagResource(_ input: TagResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<TagResourceResponse> {
        return self.client.execute(operation: "TagResource", path: "/tags/{ResourceArn}", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Removes one or more tags from a resource.
    public func untagResource(_ input: UntagResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UntagResourceResponse> {
        return self.client.execute(operation: "UntagResource", path: "/tags/{ResourceArn}", httpMethod: .DELETE, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates the name and description of a custom action target in Security Hub.
    public func updateActionTarget(_ input: UpdateActionTargetRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateActionTargetResponse> {
        return self.client.execute(operation: "UpdateActionTarget", path: "/actionTargets/{ActionTargetArn+}", httpMethod: .PATCH, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///   UpdateFindings is deprecated. Instead of UpdateFindings, use BatchUpdateFindings. Updates the Note and RecordState of the Security Hub-aggregated findings that the filter attributes specify. Any member account that can view the finding also sees the update to the finding.
    public func updateFindings(_ input: UpdateFindingsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateFindingsResponse> {
        return self.client.execute(operation: "UpdateFindings", path: "/findings", httpMethod: .PATCH, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates the Security Hub insight identified by the specified insight ARN.
    public func updateInsight(_ input: UpdateInsightRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateInsightResponse> {
        return self.client.execute(operation: "UpdateInsight", path: "/insights/{InsightArn+}", httpMethod: .PATCH, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates configuration options for Security Hub.
    public func updateSecurityHubConfiguration(_ input: UpdateSecurityHubConfigurationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateSecurityHubConfigurationResponse> {
        return self.client.execute(operation: "UpdateSecurityHubConfiguration", path: "/accounts", httpMethod: .PATCH, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Used to control whether an individual security standard control is enabled or disabled.
    public func updateStandardsControl(_ input: UpdateStandardsControlRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateStandardsControlResponse> {
        return self.client.execute(operation: "UpdateStandardsControl", path: "/standards/control/{StandardsControlArn+}", httpMethod: .PATCH, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }
}
