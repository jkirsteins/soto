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
extension ElasticsearchService {
    // MARK: Async API Calls

    /// Allows the destination domain owner to accept an inbound cross-cluster search connection request.
    public func acceptInboundCrossClusterSearchConnection(_ input: AcceptInboundCrossClusterSearchConnectionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AcceptInboundCrossClusterSearchConnectionResponse {
        return try await self.client.execute(operation: "AcceptInboundCrossClusterSearchConnection", path: "/2015-01-01/es/ccs/inboundConnection/{CrossClusterSearchConnectionId}/accept", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Attaches tags to an existing Elasticsearch domain. Tags are a set of case-sensitive key value pairs. An Elasticsearch domain may have up to 10 tags.  See  Tagging Amazon Elasticsearch Service Domains for more information.
    public func addTags(_ input: AddTagsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "AddTags", path: "/2015-01-01/tags", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Associates a package with an Amazon ES domain.
    public func associatePackage(_ input: AssociatePackageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssociatePackageResponse {
        return try await self.client.execute(operation: "AssociatePackage", path: "/2015-01-01/packages/associate/{PackageID}/{DomainName}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Cancels a scheduled service software update for an Amazon ES domain. You can only perform this operation before the AutomatedUpdateDate and when the UpdateStatus is in the PENDING_UPDATE state.
    public func cancelElasticsearchServiceSoftwareUpdate(_ input: CancelElasticsearchServiceSoftwareUpdateRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CancelElasticsearchServiceSoftwareUpdateResponse {
        return try await self.client.execute(operation: "CancelElasticsearchServiceSoftwareUpdate", path: "/2015-01-01/es/serviceSoftwareUpdate/cancel", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new Elasticsearch domain. For more information, see Creating Elasticsearch Domains in the Amazon Elasticsearch Service Developer Guide.
    public func createElasticsearchDomain(_ input: CreateElasticsearchDomainRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateElasticsearchDomainResponse {
        return try await self.client.execute(operation: "CreateElasticsearchDomain", path: "/2015-01-01/es/domain", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new cross-cluster search connection from a source domain to a destination domain.
    public func createOutboundCrossClusterSearchConnection(_ input: CreateOutboundCrossClusterSearchConnectionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateOutboundCrossClusterSearchConnectionResponse {
        return try await self.client.execute(operation: "CreateOutboundCrossClusterSearchConnection", path: "/2015-01-01/es/ccs/outboundConnection", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Create a package for use with Amazon ES domains.
    public func createPackage(_ input: CreatePackageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePackageResponse {
        return try await self.client.execute(operation: "CreatePackage", path: "/2015-01-01/packages", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Permanently deletes the specified Elasticsearch domain and all of its data. Once a domain is deleted, it cannot be recovered.
    public func deleteElasticsearchDomain(_ input: DeleteElasticsearchDomainRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteElasticsearchDomainResponse {
        return try await self.client.execute(operation: "DeleteElasticsearchDomain", path: "/2015-01-01/es/domain/{DomainName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the service-linked role that Elasticsearch Service uses to manage and maintain VPC domains. Role deletion will fail if any existing VPC domains use the role. You must delete any such Elasticsearch domains before deleting the role. See Deleting Elasticsearch Service Role in VPC Endpoints for Amazon Elasticsearch Service Domains.
    public func deleteElasticsearchServiceRole(logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteElasticsearchServiceRole", path: "/2015-01-01/es/role", httpMethod: .DELETE, serviceConfig: self.config, logger: logger, on: eventLoop)
    }

    /// Allows the destination domain owner to delete an existing inbound cross-cluster search connection.
    public func deleteInboundCrossClusterSearchConnection(_ input: DeleteInboundCrossClusterSearchConnectionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteInboundCrossClusterSearchConnectionResponse {
        return try await self.client.execute(operation: "DeleteInboundCrossClusterSearchConnection", path: "/2015-01-01/es/ccs/inboundConnection/{CrossClusterSearchConnectionId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Allows the source domain owner to delete an existing outbound cross-cluster search connection.
    public func deleteOutboundCrossClusterSearchConnection(_ input: DeleteOutboundCrossClusterSearchConnectionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteOutboundCrossClusterSearchConnectionResponse {
        return try await self.client.execute(operation: "DeleteOutboundCrossClusterSearchConnection", path: "/2015-01-01/es/ccs/outboundConnection/{CrossClusterSearchConnectionId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Delete the package.
    public func deletePackage(_ input: DeletePackageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeletePackageResponse {
        return try await self.client.execute(operation: "DeletePackage", path: "/2015-01-01/packages/{PackageID}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Provides scheduled Auto-Tune action details for the Elasticsearch domain, such as Auto-Tune action type, description, severity, and scheduled date.
    public func describeDomainAutoTunes(_ input: DescribeDomainAutoTunesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDomainAutoTunesResponse {
        return try await self.client.execute(operation: "DescribeDomainAutoTunes", path: "/2015-01-01/es/domain/{DomainName}/autoTunes", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns domain configuration information about the specified Elasticsearch domain, including the domain ID, domain endpoint, and domain ARN.
    public func describeElasticsearchDomain(_ input: DescribeElasticsearchDomainRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeElasticsearchDomainResponse {
        return try await self.client.execute(operation: "DescribeElasticsearchDomain", path: "/2015-01-01/es/domain/{DomainName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Provides cluster configuration information about the specified Elasticsearch domain, such as the state, creation date, update version, and update date for cluster options.
    public func describeElasticsearchDomainConfig(_ input: DescribeElasticsearchDomainConfigRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeElasticsearchDomainConfigResponse {
        return try await self.client.execute(operation: "DescribeElasticsearchDomainConfig", path: "/2015-01-01/es/domain/{DomainName}/config", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns domain configuration information about the specified Elasticsearch domains, including the domain ID, domain endpoint, and domain ARN.
    public func describeElasticsearchDomains(_ input: DescribeElasticsearchDomainsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeElasticsearchDomainsResponse {
        return try await self.client.execute(operation: "DescribeElasticsearchDomains", path: "/2015-01-01/es/domain-info", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Describe Elasticsearch Limits for a given InstanceType and ElasticsearchVersion. When modifying existing Domain, specify the  DomainName  to know what Limits are supported for modifying.
    public func describeElasticsearchInstanceTypeLimits(_ input: DescribeElasticsearchInstanceTypeLimitsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeElasticsearchInstanceTypeLimitsResponse {
        return try await self.client.execute(operation: "DescribeElasticsearchInstanceTypeLimits", path: "/2015-01-01/es/instanceTypeLimits/{ElasticsearchVersion}/{InstanceType}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all the inbound cross-cluster search connections for a destination domain.
    public func describeInboundCrossClusterSearchConnections(_ input: DescribeInboundCrossClusterSearchConnectionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInboundCrossClusterSearchConnectionsResponse {
        return try await self.client.execute(operation: "DescribeInboundCrossClusterSearchConnections", path: "/2015-01-01/es/ccs/inboundConnection/search", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all the outbound cross-cluster search connections for a source domain.
    public func describeOutboundCrossClusterSearchConnections(_ input: DescribeOutboundCrossClusterSearchConnectionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOutboundCrossClusterSearchConnectionsResponse {
        return try await self.client.execute(operation: "DescribeOutboundCrossClusterSearchConnections", path: "/2015-01-01/es/ccs/outboundConnection/search", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes all packages available to Amazon ES. Includes options for filtering, limiting the number of results, and pagination.
    public func describePackages(_ input: DescribePackagesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePackagesResponse {
        return try await self.client.execute(operation: "DescribePackages", path: "/2015-01-01/packages/describe", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists available reserved Elasticsearch instance offerings.
    public func describeReservedElasticsearchInstanceOfferings(_ input: DescribeReservedElasticsearchInstanceOfferingsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeReservedElasticsearchInstanceOfferingsResponse {
        return try await self.client.execute(operation: "DescribeReservedElasticsearchInstanceOfferings", path: "/2015-01-01/es/reservedInstanceOfferings", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about reserved Elasticsearch instances for this account.
    public func describeReservedElasticsearchInstances(_ input: DescribeReservedElasticsearchInstancesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeReservedElasticsearchInstancesResponse {
        return try await self.client.execute(operation: "DescribeReservedElasticsearchInstances", path: "/2015-01-01/es/reservedInstances", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Dissociates a package from the Amazon ES domain.
    public func dissociatePackage(_ input: DissociatePackageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DissociatePackageResponse {
        return try await self.client.execute(operation: "DissociatePackage", path: "/2015-01-01/packages/dissociate/{PackageID}/{DomainName}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns a list of upgrade compatible Elastisearch versions. You can optionally pass a  DomainName  to get all upgrade compatible Elasticsearch versions for that specific domain.
    public func getCompatibleElasticsearchVersions(_ input: GetCompatibleElasticsearchVersionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetCompatibleElasticsearchVersionsResponse {
        return try await self.client.execute(operation: "GetCompatibleElasticsearchVersions", path: "/2015-01-01/es/compatibleVersions", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of versions of the package, along with their creation time and commit message.
    public func getPackageVersionHistory(_ input: GetPackageVersionHistoryRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetPackageVersionHistoryResponse {
        return try await self.client.execute(operation: "GetPackageVersionHistory", path: "/2015-01-01/packages/{PackageID}/history", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the complete history of the last 10 upgrades that were performed on the domain.
    public func getUpgradeHistory(_ input: GetUpgradeHistoryRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetUpgradeHistoryResponse {
        return try await self.client.execute(operation: "GetUpgradeHistory", path: "/2015-01-01/es/upgradeDomain/{DomainName}/history", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the latest status of the last upgrade or upgrade eligibility check that was performed on the domain.
    public func getUpgradeStatus(_ input: GetUpgradeStatusRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetUpgradeStatusResponse {
        return try await self.client.execute(operation: "GetUpgradeStatus", path: "/2015-01-01/es/upgradeDomain/{DomainName}/status", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the name of all Elasticsearch domains owned by the current user's account.
    public func listDomainNames(_ input: ListDomainNamesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListDomainNamesResponse {
        return try await self.client.execute(operation: "ListDomainNames", path: "/2015-01-01/domain", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all Amazon ES domains associated with the package.
    public func listDomainsForPackage(_ input: ListDomainsForPackageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListDomainsForPackageResponse {
        return try await self.client.execute(operation: "ListDomainsForPackage", path: "/2015-01-01/packages/{PackageID}/domains", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List all Elasticsearch instance types that are supported for given ElasticsearchVersion
    public func listElasticsearchInstanceTypes(_ input: ListElasticsearchInstanceTypesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListElasticsearchInstanceTypesResponse {
        return try await self.client.execute(operation: "ListElasticsearchInstanceTypes", path: "/2015-01-01/es/instanceTypes/{ElasticsearchVersion}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List all supported Elasticsearch versions
    public func listElasticsearchVersions(_ input: ListElasticsearchVersionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListElasticsearchVersionsResponse {
        return try await self.client.execute(operation: "ListElasticsearchVersions", path: "/2015-01-01/es/versions", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all packages associated with the Amazon ES domain.
    public func listPackagesForDomain(_ input: ListPackagesForDomainRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListPackagesForDomainResponse {
        return try await self.client.execute(operation: "ListPackagesForDomain", path: "/2015-01-01/domain/{DomainName}/packages", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns all tags for the given Elasticsearch domain.
    public func listTags(_ input: ListTagsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsResponse {
        return try await self.client.execute(operation: "ListTags", path: "/2015-01-01/tags", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Allows you to purchase reserved Elasticsearch instances.
    public func purchaseReservedElasticsearchInstanceOffering(_ input: PurchaseReservedElasticsearchInstanceOfferingRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PurchaseReservedElasticsearchInstanceOfferingResponse {
        return try await self.client.execute(operation: "PurchaseReservedElasticsearchInstanceOffering", path: "/2015-01-01/es/purchaseReservedInstanceOffering", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Allows the destination domain owner to reject an inbound cross-cluster search connection request.
    public func rejectInboundCrossClusterSearchConnection(_ input: RejectInboundCrossClusterSearchConnectionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RejectInboundCrossClusterSearchConnectionResponse {
        return try await self.client.execute(operation: "RejectInboundCrossClusterSearchConnection", path: "/2015-01-01/es/ccs/inboundConnection/{CrossClusterSearchConnectionId}/reject", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes the specified set of tags from the specified Elasticsearch domain.
    public func removeTags(_ input: RemoveTagsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "RemoveTags", path: "/2015-01-01/tags-removal", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Schedules a service software update for an Amazon ES domain.
    public func startElasticsearchServiceSoftwareUpdate(_ input: StartElasticsearchServiceSoftwareUpdateRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartElasticsearchServiceSoftwareUpdateResponse {
        return try await self.client.execute(operation: "StartElasticsearchServiceSoftwareUpdate", path: "/2015-01-01/es/serviceSoftwareUpdate/start", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Modifies the cluster configuration of the specified Elasticsearch domain, setting as setting the instance type and the number of instances.
    public func updateElasticsearchDomainConfig(_ input: UpdateElasticsearchDomainConfigRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateElasticsearchDomainConfigResponse {
        return try await self.client.execute(operation: "UpdateElasticsearchDomainConfig", path: "/2015-01-01/es/domain/{DomainName}/config", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a package for use with Amazon ES domains.
    public func updatePackage(_ input: UpdatePackageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdatePackageResponse {
        return try await self.client.execute(operation: "UpdatePackage", path: "/2015-01-01/packages/update", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Allows you to either upgrade your domain or perform an Upgrade eligibility check to a compatible Elasticsearch version.
    public func upgradeElasticsearchDomain(_ input: UpgradeElasticsearchDomainRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpgradeElasticsearchDomainResponse {
        return try await self.client.execute(operation: "UpgradeElasticsearchDomain", path: "/2015-01-01/es/upgradeDomain", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
