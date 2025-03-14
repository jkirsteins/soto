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
extension MediaConnect {
    ///  Displays a list of all entitlements that have been granted to this account. This request returns 20 results per page.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listEntitlementsPaginator(
        _ input: ListEntitlementsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListEntitlementsRequest, ListEntitlementsResponse> {
        return .init(
            input: input,
            command: listEntitlements,
            inputKey: \ListEntitlementsRequest.nextToken,
            outputKey: \ListEntitlementsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Displays a list of flows that are associated with this account. This request returns a paginated result.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listFlowsPaginator(
        _ input: ListFlowsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListFlowsRequest, ListFlowsResponse> {
        return .init(
            input: input,
            command: listFlows,
            inputKey: \ListFlowsRequest.nextToken,
            outputKey: \ListFlowsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Displays a list of all offerings that are available to this account in the current AWS Region. If you have an active reservation (which means you've purchased an offering that has already started and hasn't expired yet), your account isn't eligible for other offerings.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listOfferingsPaginator(
        _ input: ListOfferingsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListOfferingsRequest, ListOfferingsResponse> {
        return .init(
            input: input,
            command: listOfferings,
            inputKey: \ListOfferingsRequest.nextToken,
            outputKey: \ListOfferingsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Displays a list of all reservations that have been purchased by this account in the current AWS Region. This list includes all reservations in all states (such as active and expired).
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listReservationsPaginator(
        _ input: ListReservationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListReservationsRequest, ListReservationsResponse> {
        return .init(
            input: input,
            command: listReservations,
            inputKey: \ListReservationsRequest.nextToken,
            outputKey: \ListReservationsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
