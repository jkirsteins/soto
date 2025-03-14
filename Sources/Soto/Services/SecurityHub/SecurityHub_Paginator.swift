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

extension SecurityHub {
    ///  Returns a list of the custom action targets in Security Hub in your account.
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
    public func describeActionTargetsPaginator<Result>(
        _ input: DescribeActionTargetsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, DescribeActionTargetsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: describeActionTargets,
            inputKey: \DescribeActionTargetsRequest.nextToken,
            outputKey: \DescribeActionTargetsResponse.nextToken,
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
    public func describeActionTargetsPaginator(
        _ input: DescribeActionTargetsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (DescribeActionTargetsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeActionTargets,
            inputKey: \DescribeActionTargetsRequest.nextToken,
            outputKey: \DescribeActionTargetsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns information about product integrations in Security Hub. You can optionally provide an integration ARN. If you provide an integration ARN, then the results only include that integration. If you do not provide an integration ARN, then the results include all of the available product integrations.
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
    public func describeProductsPaginator<Result>(
        _ input: DescribeProductsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, DescribeProductsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: describeProducts,
            inputKey: \DescribeProductsRequest.nextToken,
            outputKey: \DescribeProductsResponse.nextToken,
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
    public func describeProductsPaginator(
        _ input: DescribeProductsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (DescribeProductsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeProducts,
            inputKey: \DescribeProductsRequest.nextToken,
            outputKey: \DescribeProductsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a list of the available standards in Security Hub. For each standard, the results include the standard ARN, the name, and a description.
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
    public func describeStandardsPaginator<Result>(
        _ input: DescribeStandardsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, DescribeStandardsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: describeStandards,
            inputKey: \DescribeStandardsRequest.nextToken,
            outputKey: \DescribeStandardsResponse.nextToken,
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
    public func describeStandardsPaginator(
        _ input: DescribeStandardsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (DescribeStandardsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeStandards,
            inputKey: \DescribeStandardsRequest.nextToken,
            outputKey: \DescribeStandardsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a list of security standards controls. For each control, the results include information about whether it is currently enabled, the severity, and a link to remediation information.
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
    public func describeStandardsControlsPaginator<Result>(
        _ input: DescribeStandardsControlsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, DescribeStandardsControlsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: describeStandardsControls,
            inputKey: \DescribeStandardsControlsRequest.nextToken,
            outputKey: \DescribeStandardsControlsResponse.nextToken,
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
    public func describeStandardsControlsPaginator(
        _ input: DescribeStandardsControlsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (DescribeStandardsControlsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeStandardsControls,
            inputKey: \DescribeStandardsControlsRequest.nextToken,
            outputKey: \DescribeStandardsControlsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a list of the standards that are currently enabled.
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
    public func getEnabledStandardsPaginator<Result>(
        _ input: GetEnabledStandardsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, GetEnabledStandardsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: getEnabledStandards,
            inputKey: \GetEnabledStandardsRequest.nextToken,
            outputKey: \GetEnabledStandardsResponse.nextToken,
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
    public func getEnabledStandardsPaginator(
        _ input: GetEnabledStandardsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (GetEnabledStandardsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getEnabledStandards,
            inputKey: \GetEnabledStandardsRequest.nextToken,
            outputKey: \GetEnabledStandardsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a list of findings that match the specified criteria. If finding aggregation is enabled, then when you call GetFindings from the aggregation Region, the results include all of the matching findings from both the aggregation Region and the linked Regions.
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
    public func getFindingsPaginator<Result>(
        _ input: GetFindingsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, GetFindingsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: getFindings,
            inputKey: \GetFindingsRequest.nextToken,
            outputKey: \GetFindingsResponse.nextToken,
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
    public func getFindingsPaginator(
        _ input: GetFindingsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (GetFindingsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getFindings,
            inputKey: \GetFindingsRequest.nextToken,
            outputKey: \GetFindingsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists and describes insights for the specified insight ARNs.
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
    public func getInsightsPaginator<Result>(
        _ input: GetInsightsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, GetInsightsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: getInsights,
            inputKey: \GetInsightsRequest.nextToken,
            outputKey: \GetInsightsResponse.nextToken,
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
    public func getInsightsPaginator(
        _ input: GetInsightsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (GetInsightsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getInsights,
            inputKey: \GetInsightsRequest.nextToken,
            outputKey: \GetInsightsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists all findings-generating solutions (products) that you are subscribed to receive findings from in Security Hub.
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
    public func listEnabledProductsForImportPaginator<Result>(
        _ input: ListEnabledProductsForImportRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListEnabledProductsForImportResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listEnabledProductsForImport,
            inputKey: \ListEnabledProductsForImportRequest.nextToken,
            outputKey: \ListEnabledProductsForImportResponse.nextToken,
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
    public func listEnabledProductsForImportPaginator(
        _ input: ListEnabledProductsForImportRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListEnabledProductsForImportResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listEnabledProductsForImport,
            inputKey: \ListEnabledProductsForImportRequest.nextToken,
            outputKey: \ListEnabledProductsForImportResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  If finding aggregation is enabled, then ListFindingAggregators returns the ARN of the finding aggregator. You can run this operation from any Region.
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
    public func listFindingAggregatorsPaginator<Result>(
        _ input: ListFindingAggregatorsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListFindingAggregatorsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listFindingAggregators,
            inputKey: \ListFindingAggregatorsRequest.nextToken,
            outputKey: \ListFindingAggregatorsResponse.nextToken,
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
    public func listFindingAggregatorsPaginator(
        _ input: ListFindingAggregatorsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListFindingAggregatorsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listFindingAggregators,
            inputKey: \ListFindingAggregatorsRequest.nextToken,
            outputKey: \ListFindingAggregatorsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists all Security Hub membership invitations that were sent to the current Amazon Web Services account. This operation is only used by accounts that are managed by invitation. Accounts that are managed using the integration with Organizations do not receive invitations.
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
    public func listInvitationsPaginator<Result>(
        _ input: ListInvitationsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListInvitationsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listInvitations,
            inputKey: \ListInvitationsRequest.nextToken,
            outputKey: \ListInvitationsResponse.nextToken,
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
    public func listInvitationsPaginator(
        _ input: ListInvitationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListInvitationsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listInvitations,
            inputKey: \ListInvitationsRequest.nextToken,
            outputKey: \ListInvitationsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists details about all member accounts for the current Security Hub administrator account. The results include both member accounts that belong to an organization and member accounts that were invited manually.
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
    public func listMembersPaginator<Result>(
        _ input: ListMembersRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListMembersResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listMembers,
            inputKey: \ListMembersRequest.nextToken,
            outputKey: \ListMembersResponse.nextToken,
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
    public func listMembersPaginator(
        _ input: ListMembersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListMembersResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listMembers,
            inputKey: \ListMembersRequest.nextToken,
            outputKey: \ListMembersResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists the Security Hub administrator accounts. Can only be called by the organization management account.
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
    public func listOrganizationAdminAccountsPaginator<Result>(
        _ input: ListOrganizationAdminAccountsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListOrganizationAdminAccountsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listOrganizationAdminAccounts,
            inputKey: \ListOrganizationAdminAccountsRequest.nextToken,
            outputKey: \ListOrganizationAdminAccountsResponse.nextToken,
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
    public func listOrganizationAdminAccountsPaginator(
        _ input: ListOrganizationAdminAccountsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListOrganizationAdminAccountsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listOrganizationAdminAccounts,
            inputKey: \ListOrganizationAdminAccountsRequest.nextToken,
            outputKey: \ListOrganizationAdminAccountsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension SecurityHub.DescribeActionTargetsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SecurityHub.DescribeActionTargetsRequest {
        return .init(
            actionTargetArns: self.actionTargetArns,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension SecurityHub.DescribeProductsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SecurityHub.DescribeProductsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            productArn: self.productArn
        )
    }
}

extension SecurityHub.DescribeStandardsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SecurityHub.DescribeStandardsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension SecurityHub.DescribeStandardsControlsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SecurityHub.DescribeStandardsControlsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            standardsSubscriptionArn: self.standardsSubscriptionArn
        )
    }
}

extension SecurityHub.GetEnabledStandardsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SecurityHub.GetEnabledStandardsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            standardsSubscriptionArns: self.standardsSubscriptionArns
        )
    }
}

extension SecurityHub.GetFindingsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SecurityHub.GetFindingsRequest {
        return .init(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            sortCriteria: self.sortCriteria
        )
    }
}

extension SecurityHub.GetInsightsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SecurityHub.GetInsightsRequest {
        return .init(
            insightArns: self.insightArns,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension SecurityHub.ListEnabledProductsForImportRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SecurityHub.ListEnabledProductsForImportRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension SecurityHub.ListFindingAggregatorsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SecurityHub.ListFindingAggregatorsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension SecurityHub.ListInvitationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SecurityHub.ListInvitationsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension SecurityHub.ListMembersRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SecurityHub.ListMembersRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            onlyAssociated: self.onlyAssociated
        )
    }
}

extension SecurityHub.ListOrganizationAdminAccountsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SecurityHub.ListOrganizationAdminAccountsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
