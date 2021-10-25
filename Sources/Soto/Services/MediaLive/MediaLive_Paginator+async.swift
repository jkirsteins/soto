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
extension MediaLive {
    ///  Get a channel schedule
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeSchedulePaginator(
        _ input: DescribeScheduleRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeScheduleRequest, DescribeScheduleResponse> {
        return .init(
            input: input,
            command: describeSchedule,
            inputKey: \DescribeScheduleRequest.nextToken,
            outputKey: \DescribeScheduleResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Produces list of channels that have been created
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listChannelsPaginator(
        _ input: ListChannelsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListChannelsRequest, ListChannelsResponse> {
        return .init(
            input: input,
            command: listChannels,
            inputKey: \ListChannelsRequest.nextToken,
            outputKey: \ListChannelsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  List input devices that are currently being transferred. List input devices that you are transferring from your AWS account or input devices that another AWS account is transferring to you.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listInputDeviceTransfersPaginator(
        _ input: ListInputDeviceTransfersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListInputDeviceTransfersRequest, ListInputDeviceTransfersResponse> {
        return .init(
            input: input,
            command: listInputDeviceTransfers,
            inputKey: \ListInputDeviceTransfersRequest.nextToken,
            outputKey: \ListInputDeviceTransfersResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  List input devices
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listInputDevicesPaginator(
        _ input: ListInputDevicesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListInputDevicesRequest, ListInputDevicesResponse> {
        return .init(
            input: input,
            command: listInputDevices,
            inputKey: \ListInputDevicesRequest.nextToken,
            outputKey: \ListInputDevicesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Produces a list of Input Security Groups for an account
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listInputSecurityGroupsPaginator(
        _ input: ListInputSecurityGroupsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListInputSecurityGroupsRequest, ListInputSecurityGroupsResponse> {
        return .init(
            input: input,
            command: listInputSecurityGroups,
            inputKey: \ListInputSecurityGroupsRequest.nextToken,
            outputKey: \ListInputSecurityGroupsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Produces list of inputs that have been created
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listInputsPaginator(
        _ input: ListInputsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListInputsRequest, ListInputsResponse> {
        return .init(
            input: input,
            command: listInputs,
            inputKey: \ListInputsRequest.nextToken,
            outputKey: \ListInputsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  List the programs that currently exist for a specific multiplex.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listMultiplexProgramsPaginator(
        _ input: ListMultiplexProgramsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListMultiplexProgramsRequest, ListMultiplexProgramsResponse> {
        return .init(
            input: input,
            command: listMultiplexPrograms,
            inputKey: \ListMultiplexProgramsRequest.nextToken,
            outputKey: \ListMultiplexProgramsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieve a list of the existing multiplexes.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listMultiplexesPaginator(
        _ input: ListMultiplexesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListMultiplexesRequest, ListMultiplexesResponse> {
        return .init(
            input: input,
            command: listMultiplexes,
            inputKey: \ListMultiplexesRequest.nextToken,
            outputKey: \ListMultiplexesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  List offerings available for purchase.
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

    ///  List purchased reservations.
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
