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
Client object for interacting with AWS Route53Resolver service.

Here's how you set up to query an Amazon Route 53 private hosted zone from your network:   Connect your network to a VPC using AWS Direct Connect or a VPN.   Run the following AWS CLI command to create a Resolver endpoint:  create-resolver-endpoint --name [endpoint_name] --direction INBOUND --creator-request-id [unique_string] --security-group-ids [security_group_with_inbound_rules] --ip-addresses SubnetId=[subnet_id] SubnetId=[subnet_id_in_different_AZ]  Note the resolver endpoint ID that appears in the response. You'll use it in step 3.   Get the IP addresses for the Resolver endpoints:  get-resolver-endpoint --resolver-endpoint-id [resolver_endpoint_id]    In your network configuration, define the IP addresses that you got in step 3 as DNS servers. You can now query instance names in your VPCs and the names of records in your private hosted zone.   You can also perform the following operations using the AWS CLI:    list-resolver-endpoints: List all endpoints. The syntax includes options for pagination and filtering.    update-resolver-endpoints: Add IP addresses to an endpoint or remove IP addresses from an endpoint.    To delete an endpoint, use the following AWS CLI command:  delete-resolver-endpoint --resolver-endpoint-id [resolver_endpoint_id] 
*/
public struct Route53Resolver: AWSService {

    // MARK: Member variables

    public let client: AWSClient
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the Route53Resolver client
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
            amzTarget: "Route53Resolver",
            service: "route53resolver",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2018-04-01",
            endpoint: endpoint,
            possibleErrorTypes: [Route53ResolverErrorType.self],
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }
    
    // MARK: API Calls

    ///  Adds IP addresses to an inbound or an outbound resolver endpoint. If you want to adding more than one IP address, submit one AssociateResolverEndpointIpAddress request for each IP address. To remove an IP address from an endpoint, see DisassociateResolverEndpointIpAddress.
    public func associateResolverEndpointIpAddress(_ input: AssociateResolverEndpointIpAddressRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<AssociateResolverEndpointIpAddressResponse> {
        return self.client.execute(operation: "AssociateResolverEndpointIpAddress", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Associates a resolver rule with a VPC. When you associate a rule with a VPC, Resolver forwards all DNS queries for the domain name that is specified in the rule and that originate in the VPC. The queries are forwarded to the IP addresses for the DNS resolvers that are specified in the rule. For more information about rules, see CreateResolverRule. 
    public func associateResolverRule(_ input: AssociateResolverRuleRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<AssociateResolverRuleResponse> {
        return self.client.execute(operation: "AssociateResolverRule", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a resolver endpoint. There are two types of resolver endpoints, inbound and outbound:   An inbound resolver endpoint forwards DNS queries to the DNS service for a VPC from your network or another VPC.   An outbound resolver endpoint forwards DNS queries from the DNS service for a VPC to your network or another VPC.  
    public func createResolverEndpoint(_ input: CreateResolverEndpointRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateResolverEndpointResponse> {
        return self.client.execute(operation: "CreateResolverEndpoint", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  For DNS queries that originate in your VPCs, specifies which resolver endpoint the queries pass through, one domain name that you want to forward to your network, and the IP addresses of the DNS resolvers in your network.
    public func createResolverRule(_ input: CreateResolverRuleRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateResolverRuleResponse> {
        return self.client.execute(operation: "CreateResolverRule", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes a resolver endpoint. The effect of deleting a resolver endpoint depends on whether it's an inbound or an outbound resolver endpoint:    Inbound: DNS queries from your network or another VPC are no longer routed to the DNS service for the specified VPC.    Outbound: DNS queries from a VPC are no longer routed to your network or to another VPC.  
    public func deleteResolverEndpoint(_ input: DeleteResolverEndpointRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteResolverEndpointResponse> {
        return self.client.execute(operation: "DeleteResolverEndpoint", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes a resolver rule. Before you can delete a resolver rule, you must disassociate it from all the VPCs that you associated the resolver rule with. For more infomation, see DisassociateResolverRule.
    public func deleteResolverRule(_ input: DeleteResolverRuleRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteResolverRuleResponse> {
        return self.client.execute(operation: "DeleteResolverRule", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Removes IP addresses from an inbound or an outbound resolver endpoint. If you want to remove more than one IP address, submit one DisassociateResolverEndpointIpAddress request for each IP address. To add an IP address to an endpoint, see AssociateResolverEndpointIpAddress.
    public func disassociateResolverEndpointIpAddress(_ input: DisassociateResolverEndpointIpAddressRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DisassociateResolverEndpointIpAddressResponse> {
        return self.client.execute(operation: "DisassociateResolverEndpointIpAddress", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Removes the association between a specified resolver rule and a specified VPC.  If you disassociate a resolver rule from a VPC, Resolver stops forwarding DNS queries for the domain name that you specified in the resolver rule.  
    public func disassociateResolverRule(_ input: DisassociateResolverRuleRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DisassociateResolverRuleResponse> {
        return self.client.execute(operation: "DisassociateResolverRule", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets information about a specified resolver endpoint, such as whether it's an inbound or an outbound resolver endpoint, and the current status of the endpoint.
    public func getResolverEndpoint(_ input: GetResolverEndpointRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetResolverEndpointResponse> {
        return self.client.execute(operation: "GetResolverEndpoint", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets information about a specified resolver rule, such as the domain name that the rule forwards DNS queries for and the ID of the outbound resolver endpoint that the rule is associated with.
    public func getResolverRule(_ input: GetResolverRuleRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetResolverRuleResponse> {
        return self.client.execute(operation: "GetResolverRule", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets information about an association between a specified resolver rule and a VPC. You associate a resolver rule and a VPC using AssociateResolverRule. 
    public func getResolverRuleAssociation(_ input: GetResolverRuleAssociationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetResolverRuleAssociationResponse> {
        return self.client.execute(operation: "GetResolverRuleAssociation", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets information about a resolver rule policy. A resolver rule policy specifies the Resolver operations and resources that you want to allow another AWS account to be able to use. 
    public func getResolverRulePolicy(_ input: GetResolverRulePolicyRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetResolverRulePolicyResponse> {
        return self.client.execute(operation: "GetResolverRulePolicy", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets the IP addresses for a specified resolver endpoint.
    public func listResolverEndpointIpAddresses(_ input: ListResolverEndpointIpAddressesRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListResolverEndpointIpAddressesResponse> {
        return self.client.execute(operation: "ListResolverEndpointIpAddresses", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Lists all the resolver endpoints that were created using the current AWS account.
    public func listResolverEndpoints(_ input: ListResolverEndpointsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListResolverEndpointsResponse> {
        return self.client.execute(operation: "ListResolverEndpoints", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Lists the associations that were created between resolver rules and VPCs using the current AWS account.
    public func listResolverRuleAssociations(_ input: ListResolverRuleAssociationsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListResolverRuleAssociationsResponse> {
        return self.client.execute(operation: "ListResolverRuleAssociations", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Lists the resolver rules that were created using the current AWS account.
    public func listResolverRules(_ input: ListResolverRulesRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListResolverRulesResponse> {
        return self.client.execute(operation: "ListResolverRules", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Lists the tags that you associated with the specified resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListTagsForResourceResponse> {
        return self.client.execute(operation: "ListTagsForResource", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Specifies the Resolver operations and resources that you want to allow another AWS account to be able to use.
    public func putResolverRulePolicy(_ input: PutResolverRulePolicyRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<PutResolverRulePolicyResponse> {
        return self.client.execute(operation: "PutResolverRulePolicy", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Adds one or more tags to a specified resource.
    public func tagResource(_ input: TagResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<TagResourceResponse> {
        return self.client.execute(operation: "TagResource", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Removes one or more tags from a specified resource.
    public func untagResource(_ input: UntagResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UntagResourceResponse> {
        return self.client.execute(operation: "UntagResource", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates the name of an inbound or an outbound resolver endpoint. 
    public func updateResolverEndpoint(_ input: UpdateResolverEndpointRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateResolverEndpointResponse> {
        return self.client.execute(operation: "UpdateResolverEndpoint", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates settings for a specified resolver rule. ResolverRuleId is required, and all other parameters are optional. If you don't specify a parameter, it retains its current value.
    public func updateResolverRule(_ input: UpdateResolverRuleRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateResolverRuleResponse> {
        return self.client.execute(operation: "UpdateResolverRule", path: "/", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }
}
