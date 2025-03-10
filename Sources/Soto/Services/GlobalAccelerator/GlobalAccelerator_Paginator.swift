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

import SotoCore

// MARK: Paginators

extension GlobalAccelerator {
    ///  List the accelerators for an AWS account.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listAcceleratorsPaginator<Result>(
        _ input: ListAcceleratorsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListAcceleratorsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listAccelerators,
            inputKey: \ListAcceleratorsRequest.nextToken,
            outputKey: \ListAcceleratorsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listAcceleratorsPaginator(
        _ input: ListAcceleratorsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListAcceleratorsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listAccelerators,
            inputKey: \ListAcceleratorsRequest.nextToken,
            outputKey: \ListAcceleratorsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists the IP address ranges that were specified in calls to ProvisionByoipCidr, including
    ///  			the current state and a history of state changes.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listByoipCidrsPaginator<Result>(
        _ input: ListByoipCidrsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListByoipCidrsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listByoipCidrs,
            inputKey: \ListByoipCidrsRequest.nextToken,
            outputKey: \ListByoipCidrsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listByoipCidrsPaginator(
        _ input: ListByoipCidrsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListByoipCidrsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listByoipCidrs,
            inputKey: \ListByoipCidrsRequest.nextToken,
            outputKey: \ListByoipCidrsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  List the custom routing accelerators for an AWS account.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listCustomRoutingAcceleratorsPaginator<Result>(
        _ input: ListCustomRoutingAcceleratorsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListCustomRoutingAcceleratorsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listCustomRoutingAccelerators,
            inputKey: \ListCustomRoutingAcceleratorsRequest.nextToken,
            outputKey: \ListCustomRoutingAcceleratorsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listCustomRoutingAcceleratorsPaginator(
        _ input: ListCustomRoutingAcceleratorsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListCustomRoutingAcceleratorsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listCustomRoutingAccelerators,
            inputKey: \ListCustomRoutingAcceleratorsRequest.nextToken,
            outputKey: \ListCustomRoutingAcceleratorsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  List the endpoint groups that are associated with a listener for a custom routing accelerator.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listCustomRoutingEndpointGroupsPaginator<Result>(
        _ input: ListCustomRoutingEndpointGroupsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListCustomRoutingEndpointGroupsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listCustomRoutingEndpointGroups,
            inputKey: \ListCustomRoutingEndpointGroupsRequest.nextToken,
            outputKey: \ListCustomRoutingEndpointGroupsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listCustomRoutingEndpointGroupsPaginator(
        _ input: ListCustomRoutingEndpointGroupsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListCustomRoutingEndpointGroupsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listCustomRoutingEndpointGroups,
            inputKey: \ListCustomRoutingEndpointGroupsRequest.nextToken,
            outputKey: \ListCustomRoutingEndpointGroupsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  List the listeners for a custom routing accelerator.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listCustomRoutingListenersPaginator<Result>(
        _ input: ListCustomRoutingListenersRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListCustomRoutingListenersResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listCustomRoutingListeners,
            inputKey: \ListCustomRoutingListenersRequest.nextToken,
            outputKey: \ListCustomRoutingListenersResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listCustomRoutingListenersPaginator(
        _ input: ListCustomRoutingListenersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListCustomRoutingListenersResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listCustomRoutingListeners,
            inputKey: \ListCustomRoutingListenersRequest.nextToken,
            outputKey: \ListCustomRoutingListenersResponse.nextToken,
            on: eventLoop,
            onPage: onPage
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
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listCustomRoutingPortMappingsPaginator<Result>(
        _ input: ListCustomRoutingPortMappingsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListCustomRoutingPortMappingsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listCustomRoutingPortMappings,
            inputKey: \ListCustomRoutingPortMappingsRequest.nextToken,
            outputKey: \ListCustomRoutingPortMappingsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listCustomRoutingPortMappingsPaginator(
        _ input: ListCustomRoutingPortMappingsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListCustomRoutingPortMappingsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listCustomRoutingPortMappings,
            inputKey: \ListCustomRoutingPortMappingsRequest.nextToken,
            outputKey: \ListCustomRoutingPortMappingsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  List the port mappings for a specific EC2 instance (destination) in a VPC subnet endpoint. The
    ///  			response is the mappings for one destination IP address. This is useful when your subnet endpoint has mappings that
    ///  			span multiple custom routing accelerators in your account, or for scenarios where you only want to
    ///  			list the port mappings for a specific destination instance.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listCustomRoutingPortMappingsByDestinationPaginator<Result>(
        _ input: ListCustomRoutingPortMappingsByDestinationRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListCustomRoutingPortMappingsByDestinationResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listCustomRoutingPortMappingsByDestination,
            inputKey: \ListCustomRoutingPortMappingsByDestinationRequest.nextToken,
            outputKey: \ListCustomRoutingPortMappingsByDestinationResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listCustomRoutingPortMappingsByDestinationPaginator(
        _ input: ListCustomRoutingPortMappingsByDestinationRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListCustomRoutingPortMappingsByDestinationResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listCustomRoutingPortMappingsByDestination,
            inputKey: \ListCustomRoutingPortMappingsByDestinationRequest.nextToken,
            outputKey: \ListCustomRoutingPortMappingsByDestinationResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  List the endpoint groups that are associated with a listener.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listEndpointGroupsPaginator<Result>(
        _ input: ListEndpointGroupsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListEndpointGroupsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listEndpointGroups,
            inputKey: \ListEndpointGroupsRequest.nextToken,
            outputKey: \ListEndpointGroupsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listEndpointGroupsPaginator(
        _ input: ListEndpointGroupsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListEndpointGroupsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listEndpointGroups,
            inputKey: \ListEndpointGroupsRequest.nextToken,
            outputKey: \ListEndpointGroupsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  List the listeners for an accelerator.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listListenersPaginator<Result>(
        _ input: ListListenersRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListListenersResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listListeners,
            inputKey: \ListListenersRequest.nextToken,
            outputKey: \ListListenersResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listListenersPaginator(
        _ input: ListListenersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListListenersResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listListeners,
            inputKey: \ListListenersRequest.nextToken,
            outputKey: \ListListenersResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension GlobalAccelerator.ListAcceleratorsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> GlobalAccelerator.ListAcceleratorsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension GlobalAccelerator.ListByoipCidrsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> GlobalAccelerator.ListByoipCidrsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension GlobalAccelerator.ListCustomRoutingAcceleratorsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> GlobalAccelerator.ListCustomRoutingAcceleratorsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension GlobalAccelerator.ListCustomRoutingEndpointGroupsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> GlobalAccelerator.ListCustomRoutingEndpointGroupsRequest {
        return .init(
            listenerArn: self.listenerArn,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension GlobalAccelerator.ListCustomRoutingListenersRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> GlobalAccelerator.ListCustomRoutingListenersRequest {
        return .init(
            acceleratorArn: self.acceleratorArn,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension GlobalAccelerator.ListCustomRoutingPortMappingsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> GlobalAccelerator.ListCustomRoutingPortMappingsRequest {
        return .init(
            acceleratorArn: self.acceleratorArn,
            endpointGroupArn: self.endpointGroupArn,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension GlobalAccelerator.ListCustomRoutingPortMappingsByDestinationRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> GlobalAccelerator.ListCustomRoutingPortMappingsByDestinationRequest {
        return .init(
            destinationAddress: self.destinationAddress,
            endpointId: self.endpointId,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension GlobalAccelerator.ListEndpointGroupsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> GlobalAccelerator.ListEndpointGroupsRequest {
        return .init(
            listenerArn: self.listenerArn,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension GlobalAccelerator.ListListenersRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> GlobalAccelerator.ListListenersRequest {
        return .init(
            acceleratorArn: self.acceleratorArn,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
