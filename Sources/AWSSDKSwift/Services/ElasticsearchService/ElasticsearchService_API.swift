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
Client object for interacting with AWS ElasticsearchService service.

Amazon Elasticsearch Configuration Service Use the Amazon Elasticsearch Configuration API to create, configure, and manage Elasticsearch domains. For sample code that uses the Configuration API, see the Amazon Elasticsearch Service Developer Guide. The guide also contains sample code for sending signed HTTP requests to the Elasticsearch APIs. The endpoint for configuration service requests is region-specific: es.region.amazonaws.com. For example, es.us-east-1.amazonaws.com. For a current list of supported regions and endpoints, see Regions and Endpoints.
*/
public struct ElasticsearchService: AWSService {

    // MARK: Member variables

    public let client: AWSClient
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the ElasticsearchService client
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
            service: "es",
            serviceProtocol: .restjson,
            apiVersion: "2015-01-01",
            endpoint: endpoint,
            possibleErrorTypes: [ElasticsearchServiceErrorType.self],
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }
    
    // MARK: API Calls

    ///  Allows the destination domain owner to accept an inbound cross-cluster search connection request.
    public func acceptInboundCrossClusterSearchConnection(_ input: AcceptInboundCrossClusterSearchConnectionRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<AcceptInboundCrossClusterSearchConnectionResponse> {
        return self.client.execute(operation: "AcceptInboundCrossClusterSearchConnection", path: "/2015-01-01/es/ccs/inboundConnection/{ConnectionId}/accept", httpMethod: .PUT, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Attaches tags to an existing Elasticsearch domain. Tags are a set of case-sensitive key value pairs. An Elasticsearch domain may have up to 10 tags. See  Tagging Amazon Elasticsearch Service Domains for more information.
    @discardableResult public func addTags(_ input: AddTagsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "AddTags", path: "/2015-01-01/tags", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Associates a package with an Amazon ES domain.
    public func associatePackage(_ input: AssociatePackageRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<AssociatePackageResponse> {
        return self.client.execute(operation: "AssociatePackage", path: "/2015-01-01/packages/associate/{PackageID}/{DomainName}", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Cancels a scheduled service software update for an Amazon ES domain. You can only perform this operation before the AutomatedUpdateDate and when the UpdateStatus is in the PENDING_UPDATE state.
    public func cancelElasticsearchServiceSoftwareUpdate(_ input: CancelElasticsearchServiceSoftwareUpdateRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CancelElasticsearchServiceSoftwareUpdateResponse> {
        return self.client.execute(operation: "CancelElasticsearchServiceSoftwareUpdate", path: "/2015-01-01/es/serviceSoftwareUpdate/cancel", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a new Elasticsearch domain. For more information, see Creating Elasticsearch Domains in the Amazon Elasticsearch Service Developer Guide.
    public func createElasticsearchDomain(_ input: CreateElasticsearchDomainRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateElasticsearchDomainResponse> {
        return self.client.execute(operation: "CreateElasticsearchDomain", path: "/2015-01-01/es/domain", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a new cross-cluster search connection from a source domain to a destination domain.
    public func createOutboundCrossClusterSearchConnection(_ input: CreateOutboundCrossClusterSearchConnectionRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateOutboundCrossClusterSearchConnectionResponse> {
        return self.client.execute(operation: "CreateOutboundCrossClusterSearchConnection", path: "/2015-01-01/es/ccs/outboundConnection", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Create a package for use with Amazon ES domains.
    public func createPackage(_ input: CreatePackageRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreatePackageResponse> {
        return self.client.execute(operation: "CreatePackage", path: "/2015-01-01/packages", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Permanently deletes the specified Elasticsearch domain and all of its data. Once a domain is deleted, it cannot be recovered.
    public func deleteElasticsearchDomain(_ input: DeleteElasticsearchDomainRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteElasticsearchDomainResponse> {
        return self.client.execute(operation: "DeleteElasticsearchDomain", path: "/2015-01-01/es/domain/{DomainName}", httpMethod: .DELETE, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes the service-linked role that Elasticsearch Service uses to manage and maintain VPC domains. Role deletion will fail if any existing VPC domains use the role. You must delete any such Elasticsearch domains before deleting the role. See Deleting Elasticsearch Service Role in VPC Endpoints for Amazon Elasticsearch Service Domains.
    @discardableResult public func deleteElasticsearchServiceRole(on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteElasticsearchServiceRole", path: "/2015-01-01/es/role", httpMethod: .DELETE, serviceConfig: config, on: eventLoop, logger: logger)
    }

    ///  Allows the destination domain owner to delete an existing inbound cross-cluster search connection.
    public func deleteInboundCrossClusterSearchConnection(_ input: DeleteInboundCrossClusterSearchConnectionRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteInboundCrossClusterSearchConnectionResponse> {
        return self.client.execute(operation: "DeleteInboundCrossClusterSearchConnection", path: "/2015-01-01/es/ccs/inboundConnection/{ConnectionId}", httpMethod: .DELETE, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Allows the source domain owner to delete an existing outbound cross-cluster search connection.
    public func deleteOutboundCrossClusterSearchConnection(_ input: DeleteOutboundCrossClusterSearchConnectionRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteOutboundCrossClusterSearchConnectionResponse> {
        return self.client.execute(operation: "DeleteOutboundCrossClusterSearchConnection", path: "/2015-01-01/es/ccs/outboundConnection/{ConnectionId}", httpMethod: .DELETE, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Delete the package.
    public func deletePackage(_ input: DeletePackageRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeletePackageResponse> {
        return self.client.execute(operation: "DeletePackage", path: "/2015-01-01/packages/{PackageID}", httpMethod: .DELETE, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns domain configuration information about the specified Elasticsearch domain, including the domain ID, domain endpoint, and domain ARN.
    public func describeElasticsearchDomain(_ input: DescribeElasticsearchDomainRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeElasticsearchDomainResponse> {
        return self.client.execute(operation: "DescribeElasticsearchDomain", path: "/2015-01-01/es/domain/{DomainName}", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Provides cluster configuration information about the specified Elasticsearch domain, such as the state, creation date, update version, and update date for cluster options.
    public func describeElasticsearchDomainConfig(_ input: DescribeElasticsearchDomainConfigRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeElasticsearchDomainConfigResponse> {
        return self.client.execute(operation: "DescribeElasticsearchDomainConfig", path: "/2015-01-01/es/domain/{DomainName}/config", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns domain configuration information about the specified Elasticsearch domains, including the domain ID, domain endpoint, and domain ARN.
    public func describeElasticsearchDomains(_ input: DescribeElasticsearchDomainsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeElasticsearchDomainsResponse> {
        return self.client.execute(operation: "DescribeElasticsearchDomains", path: "/2015-01-01/es/domain-info", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///   Describe Elasticsearch Limits for a given InstanceType and ElasticsearchVersion. When modifying existing Domain, specify the  DomainName  to know what Limits are supported for modifying. 
    public func describeElasticsearchInstanceTypeLimits(_ input: DescribeElasticsearchInstanceTypeLimitsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeElasticsearchInstanceTypeLimitsResponse> {
        return self.client.execute(operation: "DescribeElasticsearchInstanceTypeLimits", path: "/2015-01-01/es/instanceTypeLimits/{ElasticsearchVersion}/{InstanceType}", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Lists all the inbound cross-cluster search connections for a destination domain.
    public func describeInboundCrossClusterSearchConnections(_ input: DescribeInboundCrossClusterSearchConnectionsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeInboundCrossClusterSearchConnectionsResponse> {
        return self.client.execute(operation: "DescribeInboundCrossClusterSearchConnections", path: "/2015-01-01/es/ccs/inboundConnection/search", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Lists all the outbound cross-cluster search connections for a source domain.
    public func describeOutboundCrossClusterSearchConnections(_ input: DescribeOutboundCrossClusterSearchConnectionsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeOutboundCrossClusterSearchConnectionsResponse> {
        return self.client.execute(operation: "DescribeOutboundCrossClusterSearchConnections", path: "/2015-01-01/es/ccs/outboundConnection/search", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Describes all packages available to Amazon ES. Includes options for filtering, limiting the number of results, and pagination.
    public func describePackages(_ input: DescribePackagesRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribePackagesResponse> {
        return self.client.execute(operation: "DescribePackages", path: "/2015-01-01/packages/describe", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Lists available reserved Elasticsearch instance offerings.
    public func describeReservedElasticsearchInstanceOfferings(_ input: DescribeReservedElasticsearchInstanceOfferingsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeReservedElasticsearchInstanceOfferingsResponse> {
        return self.client.execute(operation: "DescribeReservedElasticsearchInstanceOfferings", path: "/2015-01-01/es/reservedInstanceOfferings", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns information about reserved Elasticsearch instances for this account.
    public func describeReservedElasticsearchInstances(_ input: DescribeReservedElasticsearchInstancesRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeReservedElasticsearchInstancesResponse> {
        return self.client.execute(operation: "DescribeReservedElasticsearchInstances", path: "/2015-01-01/es/reservedInstances", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Dissociates a package from the Amazon ES domain.
    public func dissociatePackage(_ input: DissociatePackageRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DissociatePackageResponse> {
        return self.client.execute(operation: "DissociatePackage", path: "/2015-01-01/packages/dissociate/{PackageID}/{DomainName}", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///   Returns a list of upgrade compatible Elastisearch versions. You can optionally pass a  DomainName  to get all upgrade compatible Elasticsearch versions for that specific domain. 
    public func getCompatibleElasticsearchVersions(_ input: GetCompatibleElasticsearchVersionsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetCompatibleElasticsearchVersionsResponse> {
        return self.client.execute(operation: "GetCompatibleElasticsearchVersions", path: "/2015-01-01/es/compatibleVersions", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Retrieves the complete history of the last 10 upgrades that were performed on the domain.
    public func getUpgradeHistory(_ input: GetUpgradeHistoryRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetUpgradeHistoryResponse> {
        return self.client.execute(operation: "GetUpgradeHistory", path: "/2015-01-01/es/upgradeDomain/{DomainName}/history", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Retrieves the latest status of the last upgrade or upgrade eligibility check that was performed on the domain.
    public func getUpgradeStatus(_ input: GetUpgradeStatusRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetUpgradeStatusResponse> {
        return self.client.execute(operation: "GetUpgradeStatus", path: "/2015-01-01/es/upgradeDomain/{DomainName}/status", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns the name of all Elasticsearch domains owned by the current user's account. 
    public func listDomainNames(on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListDomainNamesResponse> {
        return self.client.execute(operation: "ListDomainNames", path: "/2015-01-01/domain", httpMethod: .GET, serviceConfig: config, on: eventLoop, logger: logger)
    }

    ///  Lists all Amazon ES domains associated with the package.
    public func listDomainsForPackage(_ input: ListDomainsForPackageRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListDomainsForPackageResponse> {
        return self.client.execute(operation: "ListDomainsForPackage", path: "/2015-01-01/packages/{PackageID}/domains", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  List all Elasticsearch instance types that are supported for given ElasticsearchVersion
    public func listElasticsearchInstanceTypes(_ input: ListElasticsearchInstanceTypesRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListElasticsearchInstanceTypesResponse> {
        return self.client.execute(operation: "ListElasticsearchInstanceTypes", path: "/2015-01-01/es/instanceTypes/{ElasticsearchVersion}", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  List all supported Elasticsearch versions
    public func listElasticsearchVersions(_ input: ListElasticsearchVersionsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListElasticsearchVersionsResponse> {
        return self.client.execute(operation: "ListElasticsearchVersions", path: "/2015-01-01/es/versions", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Lists all packages associated with the Amazon ES domain.
    public func listPackagesForDomain(_ input: ListPackagesForDomainRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListPackagesForDomainResponse> {
        return self.client.execute(operation: "ListPackagesForDomain", path: "/2015-01-01/domain/{DomainName}/packages", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns all tags for the given Elasticsearch domain.
    public func listTags(_ input: ListTagsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListTagsResponse> {
        return self.client.execute(operation: "ListTags", path: "/2015-01-01/tags/", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Allows you to purchase reserved Elasticsearch instances.
    public func purchaseReservedElasticsearchInstanceOffering(_ input: PurchaseReservedElasticsearchInstanceOfferingRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<PurchaseReservedElasticsearchInstanceOfferingResponse> {
        return self.client.execute(operation: "PurchaseReservedElasticsearchInstanceOffering", path: "/2015-01-01/es/purchaseReservedInstanceOffering", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Allows the destination domain owner to reject an inbound cross-cluster search connection request.
    public func rejectInboundCrossClusterSearchConnection(_ input: RejectInboundCrossClusterSearchConnectionRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<RejectInboundCrossClusterSearchConnectionResponse> {
        return self.client.execute(operation: "RejectInboundCrossClusterSearchConnection", path: "/2015-01-01/es/ccs/inboundConnection/{ConnectionId}/reject", httpMethod: .PUT, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Removes the specified set of tags from the specified Elasticsearch domain.
    @discardableResult public func removeTags(_ input: RemoveTagsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "RemoveTags", path: "/2015-01-01/tags-removal", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Schedules a service software update for an Amazon ES domain.
    public func startElasticsearchServiceSoftwareUpdate(_ input: StartElasticsearchServiceSoftwareUpdateRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<StartElasticsearchServiceSoftwareUpdateResponse> {
        return self.client.execute(operation: "StartElasticsearchServiceSoftwareUpdate", path: "/2015-01-01/es/serviceSoftwareUpdate/start", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Modifies the cluster configuration of the specified Elasticsearch domain, setting as setting the instance type and the number of instances. 
    public func updateElasticsearchDomainConfig(_ input: UpdateElasticsearchDomainConfigRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateElasticsearchDomainConfigResponse> {
        return self.client.execute(operation: "UpdateElasticsearchDomainConfig", path: "/2015-01-01/es/domain/{DomainName}/config", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Allows you to either upgrade your domain or perform an Upgrade eligibility check to a compatible Elasticsearch version.
    public func upgradeElasticsearchDomain(_ input: UpgradeElasticsearchDomainRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpgradeElasticsearchDomainResponse> {
        return self.client.execute(operation: "UpgradeElasticsearchDomain", path: "/2015-01-01/es/upgradeDomain", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }
}
