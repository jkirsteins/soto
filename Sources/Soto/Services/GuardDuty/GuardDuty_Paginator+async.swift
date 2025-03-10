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
extension GuardDuty {
    ///  Lists Amazon GuardDuty usage statistics over the last 30 days for the specified detector ID. For newly enabled detectors or data sources the cost returned will include only the usage so far under 30 days, this may differ from the cost metrics in the console, which projects usage over 30 days to provide a monthly cost estimate. For more information see Understanding How Usage Costs are Calculated.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getUsageStatisticsPaginator(
        _ input: GetUsageStatisticsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetUsageStatisticsRequest, GetUsageStatisticsResponse> {
        return .init(
            input: input,
            command: getUsageStatistics,
            inputKey: \GetUsageStatisticsRequest.nextToken,
            outputKey: \GetUsageStatisticsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists detectorIds of all the existing Amazon GuardDuty detector resources.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listDetectorsPaginator(
        _ input: ListDetectorsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListDetectorsRequest, ListDetectorsResponse> {
        return .init(
            input: input,
            command: listDetectors,
            inputKey: \ListDetectorsRequest.nextToken,
            outputKey: \ListDetectorsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a paginated list of the current filters.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listFiltersPaginator(
        _ input: ListFiltersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListFiltersRequest, ListFiltersResponse> {
        return .init(
            input: input,
            command: listFilters,
            inputKey: \ListFiltersRequest.nextToken,
            outputKey: \ListFiltersResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists Amazon GuardDuty findings for the specified detector ID.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listFindingsPaginator(
        _ input: ListFindingsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListFindingsRequest, ListFindingsResponse> {
        return .init(
            input: input,
            command: listFindings,
            inputKey: \ListFindingsRequest.nextToken,
            outputKey: \ListFindingsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the IPSets of the GuardDuty service specified by the detector ID. If you use this operation from a member account, the IPSets returned are the IPSets from the associated administrator account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listIPSetsPaginator(
        _ input: ListIPSetsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListIPSetsRequest, ListIPSetsResponse> {
        return .init(
            input: input,
            command: listIPSets,
            inputKey: \ListIPSetsRequest.nextToken,
            outputKey: \ListIPSetsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists all GuardDuty membership invitations that were sent to the current AWS account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listInvitationsPaginator(
        _ input: ListInvitationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListInvitationsRequest, ListInvitationsResponse> {
        return .init(
            input: input,
            command: listInvitations,
            inputKey: \ListInvitationsRequest.nextToken,
            outputKey: \ListInvitationsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists details about all member accounts for the current GuardDuty administrator account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listMembersPaginator(
        _ input: ListMembersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListMembersRequest, ListMembersResponse> {
        return .init(
            input: input,
            command: listMembers,
            inputKey: \ListMembersRequest.nextToken,
            outputKey: \ListMembersResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the accounts configured as GuardDuty delegated administrators.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listOrganizationAdminAccountsPaginator(
        _ input: ListOrganizationAdminAccountsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListOrganizationAdminAccountsRequest, ListOrganizationAdminAccountsResponse> {
        return .init(
            input: input,
            command: listOrganizationAdminAccounts,
            inputKey: \ListOrganizationAdminAccountsRequest.nextToken,
            outputKey: \ListOrganizationAdminAccountsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of publishing destinations associated with the specified dectectorId.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listPublishingDestinationsPaginator(
        _ input: ListPublishingDestinationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListPublishingDestinationsRequest, ListPublishingDestinationsResponse> {
        return .init(
            input: input,
            command: listPublishingDestinations,
            inputKey: \ListPublishingDestinationsRequest.nextToken,
            outputKey: \ListPublishingDestinationsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the ThreatIntelSets of the GuardDuty service specified by the detector ID. If you use this operation from a member account, the ThreatIntelSets associated with the administrator account are returned.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listThreatIntelSetsPaginator(
        _ input: ListThreatIntelSetsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListThreatIntelSetsRequest, ListThreatIntelSetsResponse> {
        return .init(
            input: input,
            command: listThreatIntelSets,
            inputKey: \ListThreatIntelSetsRequest.nextToken,
            outputKey: \ListThreatIntelSetsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
