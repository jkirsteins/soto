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

// MARK: Paginators

@available(macOS 12.0, iOS 15.0, watchOS 8.0, tvOS 15.0, *)
extension GlobalAccelerator {
    ///  List the accelerators for an AWS account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAcceleratorsPaginator(
        _ input: ListAcceleratorsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAcceleratorsRequest, ListAcceleratorsResponse> {
        return .init(
            input: input,
            command: listAccelerators,
            inputKey: \ListAcceleratorsRequest.nextToken,
            outputKey: \ListAcceleratorsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the IP address ranges that were specified in calls to ProvisionByoipCidr, including
    ///  			the current state and a history of state changes.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listByoipCidrsPaginator(
        _ input: ListByoipCidrsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListByoipCidrsRequest, ListByoipCidrsResponse> {
        return .init(
            input: input,
            command: listByoipCidrs,
            inputKey: \ListByoipCidrsRequest.nextToken,
            outputKey: \ListByoipCidrsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  List the custom routing accelerators for an AWS account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listCustomRoutingAcceleratorsPaginator(
        _ input: ListCustomRoutingAcceleratorsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListCustomRoutingAcceleratorsRequest, ListCustomRoutingAcceleratorsResponse> {
        return .init(
            input: input,
            command: listCustomRoutingAccelerators,
            inputKey: \ListCustomRoutingAcceleratorsRequest.nextToken,
            outputKey: \ListCustomRoutingAcceleratorsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  List the endpoint groups that are associated with a listener for a custom routing accelerator.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listCustomRoutingEndpointGroupsPaginator(
        _ input: ListCustomRoutingEndpointGroupsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListCustomRoutingEndpointGroupsRequest, ListCustomRoutingEndpointGroupsResponse> {
        return .init(
            input: input,
            command: listCustomRoutingEndpointGroups,
            inputKey: \ListCustomRoutingEndpointGroupsRequest.nextToken,
            outputKey: \ListCustomRoutingEndpointGroupsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  List the listeners for a custom routing accelerator.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listCustomRoutingListenersPaginator(
        _ input: ListCustomRoutingListenersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListCustomRoutingListenersRequest, ListCustomRoutingListenersResponse> {
        return .init(
            input: input,
            command: listCustomRoutingListeners,
            inputKey: \ListCustomRoutingListenersRequest.nextToken,
            outputKey: \ListCustomRoutingListenersResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Provides a complete mapping from the public accelerator IP address and port to destination EC2 instance
    ///  		IP addresses and ports in the virtual public cloud (VPC) subnet endpoint for a custom routing accelerator.
    ///  		For each subnet endpoint that you add, Global Accelerator creates a new static port mapping for the accelerator. The port
    ///  		mappings don't change after Global Accelerator generates them, so you can retrieve and cache the full mapping on your servers.
    ///  	        If you remove a subnet from your accelerator, Global Accelerator removes (reclaims) the port mappings. If you add a subnet to
    ///  		your accelerator, Global Accelerator creates new port mappings (the existing ones don't change). If you add or remove EC2 instances
    ///  		in your subnet, the port mappings don't change, because the mappings are created when you add the subnet to Global Accelerator.
    ///  	        The mappings also include a flag for each destination denoting which destination IP addresses and
    ///  		ports are allowed or denied traffic.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listCustomRoutingPortMappingsPaginator(
        _ input: ListCustomRoutingPortMappingsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListCustomRoutingPortMappingsRequest, ListCustomRoutingPortMappingsResponse> {
        return .init(
            input: input,
            command: listCustomRoutingPortMappings,
            inputKey: \ListCustomRoutingPortMappingsRequest.nextToken,
            outputKey: \ListCustomRoutingPortMappingsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  List the port mappings for a specific EC2 instance (destination) in a VPC subnet endpoint. The
    ///  			response is the mappings for one destination IP address. This is useful when your subnet endpoint has mappings that
    ///  			span multiple custom routing accelerators in your account, or for scenarios where you only want to
    ///  			list the port mappings for a specific destination instance.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listCustomRoutingPortMappingsByDestinationPaginator(
        _ input: ListCustomRoutingPortMappingsByDestinationRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListCustomRoutingPortMappingsByDestinationRequest, ListCustomRoutingPortMappingsByDestinationResponse> {
        return .init(
            input: input,
            command: listCustomRoutingPortMappingsByDestination,
            inputKey: \ListCustomRoutingPortMappingsByDestinationRequest.nextToken,
            outputKey: \ListCustomRoutingPortMappingsByDestinationResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  List the endpoint groups that are associated with a listener.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listEndpointGroupsPaginator(
        _ input: ListEndpointGroupsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListEndpointGroupsRequest, ListEndpointGroupsResponse> {
        return .init(
            input: input,
            command: listEndpointGroups,
            inputKey: \ListEndpointGroupsRequest.nextToken,
            outputKey: \ListEndpointGroupsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  List the listeners for an accelerator.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listListenersPaginator(
        _ input: ListListenersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListListenersRequest, ListListenersResponse> {
        return .init(
            input: input,
            command: listListeners,
            inputKey: \ListListenersRequest.nextToken,
            outputKey: \ListListenersResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
