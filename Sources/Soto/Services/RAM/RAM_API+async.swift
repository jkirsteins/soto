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
extension RAM {
    // MARK: Async API Calls

    /// Accepts an invitation to a resource share from another Amazon Web Services account.
    public func acceptResourceShareInvitation(_ input: AcceptResourceShareInvitationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AcceptResourceShareInvitationResponse {
        return try await self.client.execute(operation: "AcceptResourceShareInvitation", path: "/acceptresourceshareinvitation", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Associates the specified resource share with the specified principals and resources.
    public func associateResourceShare(_ input: AssociateResourceShareRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssociateResourceShareResponse {
        return try await self.client.execute(operation: "AssociateResourceShare", path: "/associateresourceshare", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Associates a permission with a resource share.
    public func associateResourceSharePermission(_ input: AssociateResourceSharePermissionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssociateResourceSharePermissionResponse {
        return try await self.client.execute(operation: "AssociateResourceSharePermission", path: "/associateresourcesharepermission", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a resource share. You must provide a list of the Amazon Resource Names (ARNs) for the resources you want to share. You must also specify who you want to share the resources with, and the permissions that you grant them.  Sharing a resource makes it available for use by principals outside of the Amazon Web Services account that created the resource. Sharing doesn't change any permissions or quotas that apply to the resource in the account that created it.
    public func createResourceShare(_ input: CreateResourceShareRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateResourceShareResponse {
        return try await self.client.execute(operation: "CreateResourceShare", path: "/createresourceshare", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified resource share.
    public func deleteResourceShare(_ input: DeleteResourceShareRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteResourceShareResponse {
        return try await self.client.execute(operation: "DeleteResourceShare", path: "/deleteresourceshare", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disassociates the specified principals or resources from the specified resource share.
    public func disassociateResourceShare(_ input: DisassociateResourceShareRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisassociateResourceShareResponse {
        return try await self.client.execute(operation: "DisassociateResourceShare", path: "/disassociateresourceshare", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disassociates an RAM permission from a resource share.
    public func disassociateResourceSharePermission(_ input: DisassociateResourceSharePermissionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisassociateResourceSharePermissionResponse {
        return try await self.client.execute(operation: "DisassociateResourceSharePermission", path: "/disassociateresourcesharepermission", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Enables resource sharing within your organization in Organizations. The caller must be the master account for the organization.
    public func enableSharingWithAwsOrganization(_ input: EnableSharingWithAwsOrganizationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EnableSharingWithAwsOrganizationResponse {
        return try await self.client.execute(operation: "EnableSharingWithAwsOrganization", path: "/enablesharingwithawsorganization", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the contents of an RAM permission in JSON format.
    public func getPermission(_ input: GetPermissionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetPermissionResponse {
        return try await self.client.execute(operation: "GetPermission", path: "/getpermission", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the policies for the specified resources that you own and have shared.
    public func getResourcePolicies(_ input: GetResourcePoliciesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetResourcePoliciesResponse {
        return try await self.client.execute(operation: "GetResourcePolicies", path: "/getresourcepolicies", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the resources or principals for the resource shares that you own.
    public func getResourceShareAssociations(_ input: GetResourceShareAssociationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetResourceShareAssociationsResponse {
        return try await self.client.execute(operation: "GetResourceShareAssociations", path: "/getresourceshareassociations", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the invitations that you have received for resource shares.
    public func getResourceShareInvitations(_ input: GetResourceShareInvitationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetResourceShareInvitationsResponse {
        return try await self.client.execute(operation: "GetResourceShareInvitations", path: "/getresourceshareinvitations", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the resource shares that you own or the resource shares that are shared with you.
    public func getResourceShares(_ input: GetResourceSharesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetResourceSharesResponse {
        return try await self.client.execute(operation: "GetResourceShares", path: "/getresourceshares", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the resources in a resource share that is shared with you but that the invitation is still pending for.
    public func listPendingInvitationResources(_ input: ListPendingInvitationResourcesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListPendingInvitationResourcesResponse {
        return try await self.client.execute(operation: "ListPendingInvitationResources", path: "/listpendinginvitationresources", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the RAM permissions.
    public func listPermissions(_ input: ListPermissionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListPermissionsResponse {
        return try await self.client.execute(operation: "ListPermissions", path: "/listpermissions", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the principals that you have shared resources with or that have shared resources with you.
    public func listPrincipals(_ input: ListPrincipalsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListPrincipalsResponse {
        return try await self.client.execute(operation: "ListPrincipals", path: "/listprincipals", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the RAM permissions that are associated with a resource share.
    public func listResourceSharePermissions(_ input: ListResourceSharePermissionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListResourceSharePermissionsResponse {
        return try await self.client.execute(operation: "ListResourceSharePermissions", path: "/listresourcesharepermissions", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the shareable resource types supported by RAM.
    public func listResourceTypes(_ input: ListResourceTypesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListResourceTypesResponse {
        return try await self.client.execute(operation: "ListResourceTypes", path: "/listresourcetypes", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the resources that you added to a resource shares or the resources that are shared with you.
    public func listResources(_ input: ListResourcesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListResourcesResponse {
        return try await self.client.execute(operation: "ListResources", path: "/listresources", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Resource shares that were created by attaching a policy to a resource are visible only to the resource share owner, and the resource share cannot be modified in RAM.
    ///  Use this API action to promote the resource share. When you promote the resource share, it becomes:   Visible to all principals that it is shared with.   Modifiable in RAM.
    public func promoteResourceShareCreatedFromPolicy(_ input: PromoteResourceShareCreatedFromPolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PromoteResourceShareCreatedFromPolicyResponse {
        return try await self.client.execute(operation: "PromoteResourceShareCreatedFromPolicy", path: "/promoteresourcesharecreatedfrompolicy", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Rejects an invitation to a resource share from another Amazon Web Services account.
    public func rejectResourceShareInvitation(_ input: RejectResourceShareInvitationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RejectResourceShareInvitationResponse {
        return try await self.client.execute(operation: "RejectResourceShareInvitation", path: "/rejectresourceshareinvitation", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds the specified tags to the specified resource share that you own.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/tagresource", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes the specified tags from the specified resource share that you own.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/untagresource", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the specified resource share that you own.
    public func updateResourceShare(_ input: UpdateResourceShareRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateResourceShareResponse {
        return try await self.client.execute(operation: "UpdateResourceShare", path: "/updateresourceshare", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
