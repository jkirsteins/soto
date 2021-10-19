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
extension WorkMail {
    // MARK: Async API Calls

    /// Adds a member (user or group) to the resource's set of delegates.
    public func associateDelegateToResource(_ input: AssociateDelegateToResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssociateDelegateToResourceResponse {
        return try await self.client.execute(operation: "AssociateDelegateToResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds a member (user or group) to the group's set.
    public func associateMemberToGroup(_ input: AssociateMemberToGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssociateMemberToGroupResponse {
        return try await self.client.execute(operation: "AssociateMemberToGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Cancels a mailbox export job.  If the mailbox export job is near completion, it might not be possible to cancel it.
    public func cancelMailboxExportJob(_ input: CancelMailboxExportJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CancelMailboxExportJobResponse {
        return try await self.client.execute(operation: "CancelMailboxExportJob", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds an alias to the set of a given member (user or group) of Amazon WorkMail.
    public func createAlias(_ input: CreateAliasRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAliasResponse {
        return try await self.client.execute(operation: "CreateAlias", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a group that can be used in Amazon WorkMail by calling the RegisterToWorkMail operation.
    public func createGroup(_ input: CreateGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateGroupResponse {
        return try await self.client.execute(operation: "CreateGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new mobile device access rule for the specified Amazon WorkMail organization.
    public func createMobileDeviceAccessRule(_ input: CreateMobileDeviceAccessRuleRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateMobileDeviceAccessRuleResponse {
        return try await self.client.execute(operation: "CreateMobileDeviceAccessRule", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new Amazon WorkMail organization. Optionally, you can choose to associate an existing AWS Directory Service directory with your organization. If an AWS Directory Service directory ID is specified, the organization alias must match the directory alias. If you choose not to associate an existing directory with your organization, then we create a new Amazon WorkMail directory for you. For more information, see Adding an organization in the Amazon WorkMail Administrator Guide. You can associate multiple email domains with an organization, then set your default email domain from the Amazon WorkMail console. You can also associate a domain that is managed in an Amazon Route 53 public hosted zone. For more information, see Adding a domain and Choosing the default domain in the Amazon WorkMail Administrator Guide. Optionally, you can use a customer managed master key from AWS Key Management Service (AWS KMS) to encrypt email for your organization. If you don't associate an AWS KMS key, Amazon WorkMail creates a default AWS managed master key for you.
    public func createOrganization(_ input: CreateOrganizationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateOrganizationResponse {
        return try await self.client.execute(operation: "CreateOrganization", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new Amazon WorkMail resource.
    public func createResource(_ input: CreateResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateResourceResponse {
        return try await self.client.execute(operation: "CreateResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a user who can be used in Amazon WorkMail by calling the RegisterToWorkMail operation.
    public func createUser(_ input: CreateUserRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateUserResponse {
        return try await self.client.execute(operation: "CreateUser", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an access control rule for the specified WorkMail organization.
    public func deleteAccessControlRule(_ input: DeleteAccessControlRuleRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAccessControlRuleResponse {
        return try await self.client.execute(operation: "DeleteAccessControlRule", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Remove one or more specified aliases from a set of aliases for a given user.
    public func deleteAlias(_ input: DeleteAliasRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAliasResponse {
        return try await self.client.execute(operation: "DeleteAlias", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a group from Amazon WorkMail.
    public func deleteGroup(_ input: DeleteGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteGroupResponse {
        return try await self.client.execute(operation: "DeleteGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes permissions granted to a member (user or group).
    public func deleteMailboxPermissions(_ input: DeleteMailboxPermissionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteMailboxPermissionsResponse {
        return try await self.client.execute(operation: "DeleteMailboxPermissions", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the mobile device access override for the given WorkMail organization, user, and device.
    public func deleteMobileDeviceAccessOverride(_ input: DeleteMobileDeviceAccessOverrideRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteMobileDeviceAccessOverrideResponse {
        return try await self.client.execute(operation: "DeleteMobileDeviceAccessOverride", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a mobile device access rule for the specified Amazon WorkMail organization.
    public func deleteMobileDeviceAccessRule(_ input: DeleteMobileDeviceAccessRuleRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteMobileDeviceAccessRuleResponse {
        return try await self.client.execute(operation: "DeleteMobileDeviceAccessRule", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an Amazon WorkMail organization and all underlying AWS resources managed by Amazon WorkMail as part of the organization. You can choose whether to delete the associated directory. For more information, see Removing an organization in the Amazon WorkMail Administrator Guide.
    public func deleteOrganization(_ input: DeleteOrganizationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteOrganizationResponse {
        return try await self.client.execute(operation: "DeleteOrganization", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified resource.
    public func deleteResource(_ input: DeleteResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteResourceResponse {
        return try await self.client.execute(operation: "DeleteResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified retention policy from the specified organization.
    public func deleteRetentionPolicy(_ input: DeleteRetentionPolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRetentionPolicyResponse {
        return try await self.client.execute(operation: "DeleteRetentionPolicy", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a user from Amazon WorkMail and all subsequent systems. Before you can delete a user, the user state must be DISABLED. Use the DescribeUser action to confirm the user state. Deleting a user is permanent and cannot be undone. WorkMail archives user mailboxes for 30 days before they are permanently removed.
    public func deleteUser(_ input: DeleteUserRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteUserResponse {
        return try await self.client.execute(operation: "DeleteUser", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Mark a user, group, or resource as no longer used in Amazon WorkMail. This action disassociates the mailbox and schedules it for clean-up. WorkMail keeps mailboxes for 30 days before they are permanently removed. The functionality in the console is Disable.
    public func deregisterFromWorkMail(_ input: DeregisterFromWorkMailRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeregisterFromWorkMailResponse {
        return try await self.client.execute(operation: "DeregisterFromWorkMail", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the data available for the group.
    public func describeGroup(_ input: DescribeGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGroupResponse {
        return try await self.client.execute(operation: "DescribeGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the current status of a mailbox export job.
    public func describeMailboxExportJob(_ input: DescribeMailboxExportJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMailboxExportJobResponse {
        return try await self.client.execute(operation: "DescribeMailboxExportJob", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Provides more information regarding a given organization based on its identifier.
    public func describeOrganization(_ input: DescribeOrganizationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOrganizationResponse {
        return try await self.client.execute(operation: "DescribeOrganization", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the data available for the resource.
    public func describeResource(_ input: DescribeResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeResourceResponse {
        return try await self.client.execute(operation: "DescribeResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Provides information regarding the user.
    public func describeUser(_ input: DescribeUserRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUserResponse {
        return try await self.client.execute(operation: "DescribeUser", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes a member from the resource's set of delegates.
    public func disassociateDelegateFromResource(_ input: DisassociateDelegateFromResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisassociateDelegateFromResourceResponse {
        return try await self.client.execute(operation: "DisassociateDelegateFromResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes a member from a group.
    public func disassociateMemberFromGroup(_ input: DisassociateMemberFromGroupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisassociateMemberFromGroupResponse {
        return try await self.client.execute(operation: "DisassociateMemberFromGroup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the effects of an organization's access control rules as they apply to a specified IPv4 address, access protocol action, or user ID.
    public func getAccessControlEffect(_ input: GetAccessControlEffectRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetAccessControlEffectResponse {
        return try await self.client.execute(operation: "GetAccessControlEffect", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the default retention policy details for the specified organization.
    public func getDefaultRetentionPolicy(_ input: GetDefaultRetentionPolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDefaultRetentionPolicyResponse {
        return try await self.client.execute(operation: "GetDefaultRetentionPolicy", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Requests a user's mailbox details for a specified organization and user.
    public func getMailboxDetails(_ input: GetMailboxDetailsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetMailboxDetailsResponse {
        return try await self.client.execute(operation: "GetMailboxDetails", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Simulates the effect of the mobile device access rules for the given attributes of a sample access event. Use this method to test the effects of the current set of mobile device access  rules for the Amazon WorkMail organization for a particular user's attributes.
    public func getMobileDeviceAccessEffect(_ input: GetMobileDeviceAccessEffectRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetMobileDeviceAccessEffectResponse {
        return try await self.client.execute(operation: "GetMobileDeviceAccessEffect", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the mobile device access override for the given WorkMail organization, user, and device.
    public func getMobileDeviceAccessOverride(_ input: GetMobileDeviceAccessOverrideRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetMobileDeviceAccessOverrideResponse {
        return try await self.client.execute(operation: "GetMobileDeviceAccessOverride", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the access control rules for the specified organization.
    public func listAccessControlRules(_ input: ListAccessControlRulesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAccessControlRulesResponse {
        return try await self.client.execute(operation: "ListAccessControlRules", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a paginated call to list the aliases associated with a given entity.
    public func listAliases(_ input: ListAliasesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAliasesResponse {
        return try await self.client.execute(operation: "ListAliases", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns an overview of the members of a group. Users and groups can be members of a group.
    public func listGroupMembers(_ input: ListGroupMembersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListGroupMembersResponse {
        return try await self.client.execute(operation: "ListGroupMembers", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns summaries of the organization's groups.
    public func listGroups(_ input: ListGroupsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListGroupsResponse {
        return try await self.client.execute(operation: "ListGroups", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the mailbox export jobs started for the specified organization within the last seven days.
    public func listMailboxExportJobs(_ input: ListMailboxExportJobsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListMailboxExportJobsResponse {
        return try await self.client.execute(operation: "ListMailboxExportJobs", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the mailbox permissions associated with a user, group, or resource mailbox.
    public func listMailboxPermissions(_ input: ListMailboxPermissionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListMailboxPermissionsResponse {
        return try await self.client.execute(operation: "ListMailboxPermissions", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all the mobile device access overrides for any given combination of WorkMail organization, user, or device.
    public func listMobileDeviceAccessOverrides(_ input: ListMobileDeviceAccessOverridesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListMobileDeviceAccessOverridesResponse {
        return try await self.client.execute(operation: "ListMobileDeviceAccessOverrides", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the mobile device access rules for the specified Amazon WorkMail organization.
    public func listMobileDeviceAccessRules(_ input: ListMobileDeviceAccessRulesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListMobileDeviceAccessRulesResponse {
        return try await self.client.execute(operation: "ListMobileDeviceAccessRules", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns summaries of the customer's organizations.
    public func listOrganizations(_ input: ListOrganizationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListOrganizationsResponse {
        return try await self.client.execute(operation: "ListOrganizations", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the delegates associated with a resource. Users and groups can be resource delegates and answer requests on behalf of the resource.
    public func listResourceDelegates(_ input: ListResourceDelegatesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListResourceDelegatesResponse {
        return try await self.client.execute(operation: "ListResourceDelegates", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns summaries of the organization's resources.
    public func listResources(_ input: ListResourcesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListResourcesResponse {
        return try await self.client.execute(operation: "ListResources", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the tags applied to an Amazon WorkMail organization resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns summaries of the organization's users.
    public func listUsers(_ input: ListUsersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListUsersResponse {
        return try await self.client.execute(operation: "ListUsers", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds a new access control rule for the specified organization. The rule allows or denies access to the organization for the specified IPv4 addresses, access protocol actions, and user IDs. Adding a new rule with the same name as an existing rule replaces the older rule.
    public func putAccessControlRule(_ input: PutAccessControlRuleRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutAccessControlRuleResponse {
        return try await self.client.execute(operation: "PutAccessControlRule", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Sets permissions for a user, group, or resource. This replaces any pre-existing permissions.
    public func putMailboxPermissions(_ input: PutMailboxPermissionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutMailboxPermissionsResponse {
        return try await self.client.execute(operation: "PutMailboxPermissions", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates or updates a mobile device access override for the given WorkMail organization, user, and device.
    public func putMobileDeviceAccessOverride(_ input: PutMobileDeviceAccessOverrideRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutMobileDeviceAccessOverrideResponse {
        return try await self.client.execute(operation: "PutMobileDeviceAccessOverride", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Puts a retention policy to the specified organization.
    public func putRetentionPolicy(_ input: PutRetentionPolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutRetentionPolicyResponse {
        return try await self.client.execute(operation: "PutRetentionPolicy", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Registers an existing and disabled user, group, or resource for Amazon WorkMail use by associating a mailbox and calendaring capabilities. It performs no change if the user, group, or resource is enabled and fails if the user, group, or resource is deleted. This operation results in the accumulation of costs. For more information, see Pricing. The equivalent console functionality for this operation is Enable.  Users can either be created by calling the CreateUser API operation or they can be synchronized from your directory. For more information, see DeregisterFromWorkMail.
    public func registerToWorkMail(_ input: RegisterToWorkMailRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RegisterToWorkMailResponse {
        return try await self.client.execute(operation: "RegisterToWorkMail", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Allows the administrator to reset the password for a user.
    public func resetPassword(_ input: ResetPasswordRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResetPasswordResponse {
        return try await self.client.execute(operation: "ResetPassword", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts a mailbox export job to export MIME-format email messages and calendar items from the specified mailbox to the specified Amazon Simple Storage Service (Amazon S3) bucket. For more information, see Exporting mailbox content in the Amazon WorkMail Administrator Guide.
    public func startMailboxExportJob(_ input: StartMailboxExportJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartMailboxExportJobResponse {
        return try await self.client.execute(operation: "StartMailboxExportJob", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Applies the specified tags to the specified Amazon WorkMail organization resource.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Untags the specified tags from the specified Amazon WorkMail organization resource.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a user's current mailbox quota for a specified organization and user.
    public func updateMailboxQuota(_ input: UpdateMailboxQuotaRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateMailboxQuotaResponse {
        return try await self.client.execute(operation: "UpdateMailboxQuota", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a mobile device access rule for the specified Amazon WorkMail organization.
    public func updateMobileDeviceAccessRule(_ input: UpdateMobileDeviceAccessRuleRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateMobileDeviceAccessRuleResponse {
        return try await self.client.execute(operation: "UpdateMobileDeviceAccessRule", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the primary email for a user, group, or resource. The current email is moved into the list of aliases (or swapped between an existing alias and the current primary email), and the email provided in the input is promoted as the primary.
    public func updatePrimaryEmailAddress(_ input: UpdatePrimaryEmailAddressRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdatePrimaryEmailAddressResponse {
        return try await self.client.execute(operation: "UpdatePrimaryEmailAddress", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates data for the resource. To have the latest information, it must be preceded by a DescribeResource call. The dataset in the request should be the one expected when performing another DescribeResource call.
    public func updateResource(_ input: UpdateResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateResourceResponse {
        return try await self.client.execute(operation: "UpdateResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
