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
extension WorkSpacesWeb {
    // MARK: Async API Calls

    /// Associates a browser settings resource with a web portal.
    public func associateBrowserSettings(_ input: AssociateBrowserSettingsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssociateBrowserSettingsResponse {
        return try await self.client.execute(operation: "AssociateBrowserSettings", path: "/portals/{portalArn+}/browserSettings", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Associates a network settings resource with a web portal.
    public func associateNetworkSettings(_ input: AssociateNetworkSettingsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssociateNetworkSettingsResponse {
        return try await self.client.execute(operation: "AssociateNetworkSettings", path: "/portals/{portalArn+}/networkSettings", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Associates a trust store with a web portal.
    public func associateTrustStore(_ input: AssociateTrustStoreRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssociateTrustStoreResponse {
        return try await self.client.execute(operation: "AssociateTrustStore", path: "/portals/{portalArn+}/trustStores", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Associates a user settings resource with a web portal.
    public func associateUserSettings(_ input: AssociateUserSettingsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssociateUserSettingsResponse {
        return try await self.client.execute(operation: "AssociateUserSettings", path: "/portals/{portalArn+}/userSettings", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a browser settings resource that can be associated with a web portal. Once associated with a web portal, browser settings control how the browser will behave once a user starts a streaming session for the web portal.
    public func createBrowserSettings(_ input: CreateBrowserSettingsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBrowserSettingsResponse {
        return try await self.client.execute(operation: "CreateBrowserSettings", path: "/browserSettings", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates an identity provider resource that is then associated with a web portal.
    public func createIdentityProvider(_ input: CreateIdentityProviderRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateIdentityProviderResponse {
        return try await self.client.execute(operation: "CreateIdentityProvider", path: "/identityProviders", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a network settings resource that can be associated with a web portal. Once associated with a web portal, network settings define how streaming instances will connect with your specified VPC.
    public func createNetworkSettings(_ input: CreateNetworkSettingsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateNetworkSettingsResponse {
        return try await self.client.execute(operation: "CreateNetworkSettings", path: "/networkSettings", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a web portal.
    public func createPortal(_ input: CreatePortalRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePortalResponse {
        return try await self.client.execute(operation: "CreatePortal", path: "/portals", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a trust store that can be associated with a web portal. A trust store contains certificate authority (CA) certificates. Once associated with a web portal, the browser in a streaming session will recognize certificates that have been issued using any of the CAs in the trust store. If your organization has internal websites that use certificates issued by private CAs, you should add the private CA certificate to the trust store.
    public func createTrustStore(_ input: CreateTrustStoreRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTrustStoreResponse {
        return try await self.client.execute(operation: "CreateTrustStore", path: "/trustStores", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a user settings resource that can be associated with a web portal. Once associated with a web portal, user settings control how users can transfer data between a streaming session and the their local devices.
    public func createUserSettings(_ input: CreateUserSettingsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateUserSettingsResponse {
        return try await self.client.execute(operation: "CreateUserSettings", path: "/userSettings", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes browser settings.
    public func deleteBrowserSettings(_ input: DeleteBrowserSettingsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteBrowserSettingsResponse {
        return try await self.client.execute(operation: "DeleteBrowserSettings", path: "/browserSettings/{browserSettingsArn+}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the identity provider.
    public func deleteIdentityProvider(_ input: DeleteIdentityProviderRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteIdentityProviderResponse {
        return try await self.client.execute(operation: "DeleteIdentityProvider", path: "/identityProviders/{identityProviderArn+}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes network settings.
    public func deleteNetworkSettings(_ input: DeleteNetworkSettingsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteNetworkSettingsResponse {
        return try await self.client.execute(operation: "DeleteNetworkSettings", path: "/networkSettings/{networkSettingsArn+}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a web portal.
    public func deletePortal(_ input: DeletePortalRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeletePortalResponse {
        return try await self.client.execute(operation: "DeletePortal", path: "/portals/{portalArn+}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the trust store.
    public func deleteTrustStore(_ input: DeleteTrustStoreRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteTrustStoreResponse {
        return try await self.client.execute(operation: "DeleteTrustStore", path: "/trustStores/{trustStoreArn+}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes user settings.
    public func deleteUserSettings(_ input: DeleteUserSettingsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteUserSettingsResponse {
        return try await self.client.execute(operation: "DeleteUserSettings", path: "/userSettings/{userSettingsArn+}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disassociates browser settings from a web portal.
    public func disassociateBrowserSettings(_ input: DisassociateBrowserSettingsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisassociateBrowserSettingsResponse {
        return try await self.client.execute(operation: "DisassociateBrowserSettings", path: "/portals/{portalArn+}/browserSettings", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disassociates network settings from a web portal.
    public func disassociateNetworkSettings(_ input: DisassociateNetworkSettingsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisassociateNetworkSettingsResponse {
        return try await self.client.execute(operation: "DisassociateNetworkSettings", path: "/portals/{portalArn+}/networkSettings", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disassociates a trust store from a web portal.
    public func disassociateTrustStore(_ input: DisassociateTrustStoreRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisassociateTrustStoreResponse {
        return try await self.client.execute(operation: "DisassociateTrustStore", path: "/portals/{portalArn+}/trustStores", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disassociates user settings from a web portal.
    public func disassociateUserSettings(_ input: DisassociateUserSettingsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisassociateUserSettingsResponse {
        return try await self.client.execute(operation: "DisassociateUserSettings", path: "/portals/{portalArn+}/userSettings", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets browser settings.
    public func getBrowserSettings(_ input: GetBrowserSettingsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetBrowserSettingsResponse {
        return try await self.client.execute(operation: "GetBrowserSettings", path: "/browserSettings/{browserSettingsArn+}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the identity provider.
    public func getIdentityProvider(_ input: GetIdentityProviderRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetIdentityProviderResponse {
        return try await self.client.execute(operation: "GetIdentityProvider", path: "/identityProviders/{identityProviderArn+}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the network settings.
    public func getNetworkSettings(_ input: GetNetworkSettingsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetNetworkSettingsResponse {
        return try await self.client.execute(operation: "GetNetworkSettings", path: "/networkSettings/{networkSettingsArn+}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the web portal.
    public func getPortal(_ input: GetPortalRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetPortalResponse {
        return try await self.client.execute(operation: "GetPortal", path: "/portals/{portalArn+}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the service provider metadata.
    public func getPortalServiceProviderMetadata(_ input: GetPortalServiceProviderMetadataRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetPortalServiceProviderMetadataResponse {
        return try await self.client.execute(operation: "GetPortalServiceProviderMetadata", path: "/portalIdp/{portalArn+}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the trust store.
    public func getTrustStore(_ input: GetTrustStoreRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetTrustStoreResponse {
        return try await self.client.execute(operation: "GetTrustStore", path: "/trustStores/{trustStoreArn+}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the trust store certificate.
    public func getTrustStoreCertificate(_ input: GetTrustStoreCertificateRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetTrustStoreCertificateResponse {
        return try await self.client.execute(operation: "GetTrustStoreCertificate", path: "/trustStores/{trustStoreArn+}/certificate", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets user settings.
    public func getUserSettings(_ input: GetUserSettingsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetUserSettingsResponse {
        return try await self.client.execute(operation: "GetUserSettings", path: "/userSettings/{userSettingsArn+}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a list of browser settings.
    public func listBrowserSettings(_ input: ListBrowserSettingsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListBrowserSettingsResponse {
        return try await self.client.execute(operation: "ListBrowserSettings", path: "/browserSettings", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a list of identity providers for a specific web portal.
    public func listIdentityProviders(_ input: ListIdentityProvidersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListIdentityProvidersResponse {
        return try await self.client.execute(operation: "ListIdentityProviders", path: "/portals/{portalArn+}/identityProviders", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a list of network settings.
    public func listNetworkSettings(_ input: ListNetworkSettingsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListNetworkSettingsResponse {
        return try await self.client.execute(operation: "ListNetworkSettings", path: "/networkSettings", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a list or web portals.
    public func listPortals(_ input: ListPortalsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListPortalsResponse {
        return try await self.client.execute(operation: "ListPortals", path: "/portals", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a list of tags for a resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/tags/{resourceArn+}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a list of trust store certificates.
    public func listTrustStoreCertificates(_ input: ListTrustStoreCertificatesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTrustStoreCertificatesResponse {
        return try await self.client.execute(operation: "ListTrustStoreCertificates", path: "/trustStores/{trustStoreArn+}/certificates", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a list of trust stores.
    public func listTrustStores(_ input: ListTrustStoresRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTrustStoresResponse {
        return try await self.client.execute(operation: "ListTrustStores", path: "/trustStores", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a list of user settings.
    public func listUserSettings(_ input: ListUserSettingsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListUserSettingsResponse {
        return try await self.client.execute(operation: "ListUserSettings", path: "/userSettings", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds or overwrites one or more tags for the specified resource.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/tags/{resourceArn+}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes one or more tags from the specified resource.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/tags/{resourceArn+}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates browser settings.
    public func updateBrowserSettings(_ input: UpdateBrowserSettingsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateBrowserSettingsResponse {
        return try await self.client.execute(operation: "UpdateBrowserSettings", path: "/browserSettings/{browserSettingsArn+}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the identity provider.
    public func updateIdentityProvider(_ input: UpdateIdentityProviderRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateIdentityProviderResponse {
        return try await self.client.execute(operation: "UpdateIdentityProvider", path: "/identityProviders/{identityProviderArn+}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates network settings.
    public func updateNetworkSettings(_ input: UpdateNetworkSettingsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateNetworkSettingsResponse {
        return try await self.client.execute(operation: "UpdateNetworkSettings", path: "/networkSettings/{networkSettingsArn+}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a web portal.
    public func updatePortal(_ input: UpdatePortalRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdatePortalResponse {
        return try await self.client.execute(operation: "UpdatePortal", path: "/portals/{portalArn+}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the trust store.
    public func updateTrustStore(_ input: UpdateTrustStoreRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateTrustStoreResponse {
        return try await self.client.execute(operation: "UpdateTrustStore", path: "/trustStores/{trustStoreArn+}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the user settings.
    public func updateUserSettings(_ input: UpdateUserSettingsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateUserSettingsResponse {
        return try await self.client.execute(operation: "UpdateUserSettings", path: "/userSettings/{userSettingsArn+}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
