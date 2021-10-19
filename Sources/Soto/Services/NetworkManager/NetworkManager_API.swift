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

/// Service object for interacting with AWS NetworkManager service.
///
/// Transit Gateway Network Manager (Network Manager) enables you to create a global network, in which you can monitor your AWS and on-premises networks that are built around transit gateways. The Network Manager APIs are supported in the US West (Oregon) Region only. You must specify the us-west-2 Region in all requests made to Network Manager.
public struct NetworkManager: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the NetworkManager client
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
            service: "networkmanager",
            serviceProtocol: .restjson,
            apiVersion: "2019-07-05",
            endpoint: endpoint,
            errorType: NetworkManagerErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Associates a customer gateway with a device and optionally, with a link. If you specify a link, it must be associated with the specified device.  You can only associate customer gateways that are connected to a VPN attachment on a transit gateway. The transit gateway must be registered in your global network. When you register a transit gateway, customer gateways that are connected to the transit gateway are automatically included in the global network. To list customer gateways that are connected to a transit gateway, use the DescribeVpnConnections EC2 API and filter by transit-gateway-id. You cannot associate a customer gateway with more than one device and link.
    public func associateCustomerGateway(_ input: AssociateCustomerGatewayRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssociateCustomerGatewayResponse> {
        return self.client.execute(operation: "AssociateCustomerGateway", path: "/global-networks/{GlobalNetworkId}/customer-gateway-associations", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Associates a link to a device. A device can be associated to multiple links and a link can be associated to multiple devices. The device and link must be in the same global network and the same site.
    public func associateLink(_ input: AssociateLinkRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssociateLinkResponse> {
        return self.client.execute(operation: "AssociateLink", path: "/global-networks/{GlobalNetworkId}/link-associations", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Associates a transit gateway Connect peer with a device, and optionally, with a link. If you specify a link, it must be associated with the specified device.  You can only associate transit gateway Connect peers that have been created on a transit gateway that's registered in your global network. You cannot associate a transit gateway Connect peer with more than one device and link.
    public func associateTransitGatewayConnectPeer(_ input: AssociateTransitGatewayConnectPeerRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AssociateTransitGatewayConnectPeerResponse> {
        return self.client.execute(operation: "AssociateTransitGatewayConnectPeer", path: "/global-networks/{GlobalNetworkId}/transit-gateway-connect-peer-associations", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a connection between two devices. The devices can be a physical or virtual appliance that connects to a third-party appliance in a VPC, or a physical appliance that connects to another physical appliance in an on-premises network.
    public func createConnection(_ input: CreateConnectionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateConnectionResponse> {
        return self.client.execute(operation: "CreateConnection", path: "/global-networks/{GlobalNetworkId}/connections", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new device in a global network. If you specify both a site ID and a location, the location of the site is used for visualization in the Network Manager console.
    public func createDevice(_ input: CreateDeviceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDeviceResponse> {
        return self.client.execute(operation: "CreateDevice", path: "/global-networks/{GlobalNetworkId}/devices", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new, empty global network.
    public func createGlobalNetwork(_ input: CreateGlobalNetworkRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateGlobalNetworkResponse> {
        return self.client.execute(operation: "CreateGlobalNetwork", path: "/global-networks", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new link for a specified site.
    public func createLink(_ input: CreateLinkRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateLinkResponse> {
        return self.client.execute(operation: "CreateLink", path: "/global-networks/{GlobalNetworkId}/links", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new site in a global network.
    public func createSite(_ input: CreateSiteRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSiteResponse> {
        return self.client.execute(operation: "CreateSite", path: "/global-networks/{GlobalNetworkId}/sites", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified connection in your global network.
    public func deleteConnection(_ input: DeleteConnectionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteConnectionResponse> {
        return self.client.execute(operation: "DeleteConnection", path: "/global-networks/{GlobalNetworkId}/connections/{ConnectionId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an existing device. You must first disassociate the device from any links and customer gateways.
    public func deleteDevice(_ input: DeleteDeviceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDeviceResponse> {
        return self.client.execute(operation: "DeleteDevice", path: "/global-networks/{GlobalNetworkId}/devices/{DeviceId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an existing global network. You must first delete all global network objects (devices, links, and sites) and deregister all transit gateways.
    public func deleteGlobalNetwork(_ input: DeleteGlobalNetworkRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteGlobalNetworkResponse> {
        return self.client.execute(operation: "DeleteGlobalNetwork", path: "/global-networks/{GlobalNetworkId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an existing link. You must first disassociate the link from any devices and customer gateways.
    public func deleteLink(_ input: DeleteLinkRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteLinkResponse> {
        return self.client.execute(operation: "DeleteLink", path: "/global-networks/{GlobalNetworkId}/links/{LinkId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an existing site. The site cannot be associated with any device or link.
    public func deleteSite(_ input: DeleteSiteRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteSiteResponse> {
        return self.client.execute(operation: "DeleteSite", path: "/global-networks/{GlobalNetworkId}/sites/{SiteId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deregisters a transit gateway from your global network. This action does not delete your transit gateway, or modify any of its attachments. This action removes any customer gateway associations.
    public func deregisterTransitGateway(_ input: DeregisterTransitGatewayRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeregisterTransitGatewayResponse> {
        return self.client.execute(operation: "DeregisterTransitGateway", path: "/global-networks/{GlobalNetworkId}/transit-gateway-registrations/{TransitGatewayArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes one or more global networks. By default, all global networks are described. To describe the objects in your global network, you must use the appropriate Get* action. For example, to list the transit gateways in your global network, use GetTransitGatewayRegistrations.
    public func describeGlobalNetworks(_ input: DescribeGlobalNetworksRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGlobalNetworksResponse> {
        return self.client.execute(operation: "DescribeGlobalNetworks", path: "/global-networks", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disassociates a customer gateway from a device and a link.
    public func disassociateCustomerGateway(_ input: DisassociateCustomerGatewayRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociateCustomerGatewayResponse> {
        return self.client.execute(operation: "DisassociateCustomerGateway", path: "/global-networks/{GlobalNetworkId}/customer-gateway-associations/{CustomerGatewayArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disassociates an existing device from a link. You must first disassociate any customer gateways that are associated with the link.
    public func disassociateLink(_ input: DisassociateLinkRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociateLinkResponse> {
        return self.client.execute(operation: "DisassociateLink", path: "/global-networks/{GlobalNetworkId}/link-associations", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disassociates a transit gateway Connect peer from a device and link.
    public func disassociateTransitGatewayConnectPeer(_ input: DisassociateTransitGatewayConnectPeerRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisassociateTransitGatewayConnectPeerResponse> {
        return self.client.execute(operation: "DisassociateTransitGatewayConnectPeer", path: "/global-networks/{GlobalNetworkId}/transit-gateway-connect-peer-associations/{TransitGatewayConnectPeerArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about one or more of your connections in a global network.
    public func getConnections(_ input: GetConnectionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetConnectionsResponse> {
        return self.client.execute(operation: "GetConnections", path: "/global-networks/{GlobalNetworkId}/connections", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the association information for customer gateways that are associated with devices and links in your global network.
    public func getCustomerGatewayAssociations(_ input: GetCustomerGatewayAssociationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetCustomerGatewayAssociationsResponse> {
        return self.client.execute(operation: "GetCustomerGatewayAssociations", path: "/global-networks/{GlobalNetworkId}/customer-gateway-associations", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about one or more of your devices in a global network.
    public func getDevices(_ input: GetDevicesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDevicesResponse> {
        return self.client.execute(operation: "GetDevices", path: "/global-networks/{GlobalNetworkId}/devices", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the link associations for a device or a link. Either the device ID or the link ID must be specified.
    public func getLinkAssociations(_ input: GetLinkAssociationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetLinkAssociationsResponse> {
        return self.client.execute(operation: "GetLinkAssociations", path: "/global-networks/{GlobalNetworkId}/link-associations", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about one or more links in a specified global network. If you specify the site ID, you cannot specify the type or provider in the same request. You can specify the type and provider in the same request.
    public func getLinks(_ input: GetLinksRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetLinksResponse> {
        return self.client.execute(operation: "GetLinks", path: "/global-networks/{GlobalNetworkId}/links", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about one or more of your sites in a global network.
    public func getSites(_ input: GetSitesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetSitesResponse> {
        return self.client.execute(operation: "GetSites", path: "/global-networks/{GlobalNetworkId}/sites", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about one or more of your transit gateway Connect peer associations in a global network.
    public func getTransitGatewayConnectPeerAssociations(_ input: GetTransitGatewayConnectPeerAssociationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetTransitGatewayConnectPeerAssociationsResponse> {
        return self.client.execute(operation: "GetTransitGatewayConnectPeerAssociations", path: "/global-networks/{GlobalNetworkId}/transit-gateway-connect-peer-associations", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about the transit gateway registrations in a specified global network.
    public func getTransitGatewayRegistrations(_ input: GetTransitGatewayRegistrationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetTransitGatewayRegistrationsResponse> {
        return self.client.execute(operation: "GetTransitGatewayRegistrations", path: "/global-networks/{GlobalNetworkId}/transit-gateway-registrations", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the tags for a specified resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return self.client.execute(operation: "ListTagsForResource", path: "/tags/{ResourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Registers a transit gateway in your global network. The transit gateway can be in any AWS Region, but it must be owned by the same AWS account that owns the global network. You cannot register a transit gateway in more than one global network.
    public func registerTransitGateway(_ input: RegisterTransitGatewayRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RegisterTransitGatewayResponse> {
        return self.client.execute(operation: "RegisterTransitGateway", path: "/global-networks/{GlobalNetworkId}/transit-gateway-registrations", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Tags a specified resource.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceResponse> {
        return self.client.execute(operation: "TagResource", path: "/tags/{ResourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes tags from a specified resource.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceResponse> {
        return self.client.execute(operation: "UntagResource", path: "/tags/{ResourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the information for an existing connection. To remove information for any of the parameters, specify an empty string.
    public func updateConnection(_ input: UpdateConnectionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateConnectionResponse> {
        return self.client.execute(operation: "UpdateConnection", path: "/global-networks/{GlobalNetworkId}/connections/{ConnectionId}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the details for an existing device. To remove information for any of the parameters, specify an empty string.
    public func updateDevice(_ input: UpdateDeviceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateDeviceResponse> {
        return self.client.execute(operation: "UpdateDevice", path: "/global-networks/{GlobalNetworkId}/devices/{DeviceId}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates an existing global network. To remove information for any of the parameters, specify an empty string.
    public func updateGlobalNetwork(_ input: UpdateGlobalNetworkRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateGlobalNetworkResponse> {
        return self.client.execute(operation: "UpdateGlobalNetwork", path: "/global-networks/{GlobalNetworkId}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the details for an existing link. To remove information for any of the parameters, specify an empty string.
    public func updateLink(_ input: UpdateLinkRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateLinkResponse> {
        return self.client.execute(operation: "UpdateLink", path: "/global-networks/{GlobalNetworkId}/links/{LinkId}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the information for an existing site. To remove information for any of the parameters, specify an empty string.
    public func updateSite(_ input: UpdateSiteRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateSiteResponse> {
        return self.client.execute(operation: "UpdateSite", path: "/global-networks/{GlobalNetworkId}/sites/{SiteId}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

extension NetworkManager {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: NetworkManager, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
