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
extension Route53 {
    ///  Retrieve a list of the health checks that are associated with the current Amazon Web Services account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listHealthChecksPaginator(
        _ input: ListHealthChecksRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListHealthChecksRequest, ListHealthChecksResponse> {
        return .init(
            input: input,
            command: listHealthChecks,
            inputKey: \ListHealthChecksRequest.marker,
            outputKey: \ListHealthChecksResponse.nextMarker,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves a list of the public and private hosted zones that are associated with the current Amazon Web Services account. The response
    ///  			includes a HostedZones child element for each hosted zone.
    ///  		       Amazon Route 53 returns a maximum of 100 items in each response. If you have a lot of hosted zones, you can use the
    ///  			maxitems parameter to list them in groups of up to 100.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listHostedZonesPaginator(
        _ input: ListHostedZonesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListHostedZonesRequest, ListHostedZonesResponse> {
        return .init(
            input: input,
            command: listHostedZones,
            inputKey: \ListHostedZonesRequest.marker,
            outputKey: \ListHostedZonesResponse.nextMarker,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the configurations for DNS query logging that are associated with the current Amazon Web Services account or the configuration
    ///  			that is associated with a specified hosted zone.
    ///  		       For more information about DNS query logs, see
    ///  			CreateQueryLoggingConfig.
    ///  			Additional information, including the format of DNS query logs, appears in
    ///  			Logging DNS Queries
    ///  			in the Amazon Route 53 Developer Guide.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listQueryLoggingConfigsPaginator(
        _ input: ListQueryLoggingConfigsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListQueryLoggingConfigsRequest, ListQueryLoggingConfigsResponse> {
        return .init(
            input: input,
            command: listQueryLoggingConfigs,
            inputKey: \ListQueryLoggingConfigsRequest.nextToken,
            outputKey: \ListQueryLoggingConfigsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
