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
extension PinpointEmail {
    ///  List the dedicated IP addresses that are associated with your Amazon Pinpoint account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getDedicatedIpsPaginator(
        _ input: GetDedicatedIpsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetDedicatedIpsRequest, GetDedicatedIpsResponse> {
        return .init(
            input: input,
            command: getDedicatedIps,
            inputKey: \GetDedicatedIpsRequest.nextToken,
            outputKey: \GetDedicatedIpsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  List all of the configuration sets associated with your Amazon Pinpoint account in the current region. In Amazon Pinpoint, configuration sets are groups of rules that you can apply to the emails you send. You apply a configuration set to an email by including a reference to the configuration set in the headers of the email. When you apply a configuration set to an email, all of the rules in that configuration set are applied to the email.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listConfigurationSetsPaginator(
        _ input: ListConfigurationSetsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListConfigurationSetsRequest, ListConfigurationSetsResponse> {
        return .init(
            input: input,
            command: listConfigurationSets,
            inputKey: \ListConfigurationSetsRequest.nextToken,
            outputKey: \ListConfigurationSetsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  List all of the dedicated IP pools that exist in your Amazon Pinpoint account in the current AWS Region.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listDedicatedIpPoolsPaginator(
        _ input: ListDedicatedIpPoolsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListDedicatedIpPoolsRequest, ListDedicatedIpPoolsResponse> {
        return .init(
            input: input,
            command: listDedicatedIpPools,
            inputKey: \ListDedicatedIpPoolsRequest.nextToken,
            outputKey: \ListDedicatedIpPoolsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Show a list of the predictive inbox placement tests that you've performed, regardless of their statuses. For predictive inbox placement tests that are complete, you can use the GetDeliverabilityTestReport operation to view the results.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listDeliverabilityTestReportsPaginator(
        _ input: ListDeliverabilityTestReportsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListDeliverabilityTestReportsRequest, ListDeliverabilityTestReportsResponse> {
        return .init(
            input: input,
            command: listDeliverabilityTestReports,
            inputKey: \ListDeliverabilityTestReportsRequest.nextToken,
            outputKey: \ListDeliverabilityTestReportsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieve deliverability data for all the campaigns that used a specific domain to send email during a specified time range. This data is available for a domain only if you enabled the Deliverability dashboard (PutDeliverabilityDashboardOption operation) for the domain.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listDomainDeliverabilityCampaignsPaginator(
        _ input: ListDomainDeliverabilityCampaignsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListDomainDeliverabilityCampaignsRequest, ListDomainDeliverabilityCampaignsResponse> {
        return .init(
            input: input,
            command: listDomainDeliverabilityCampaigns,
            inputKey: \ListDomainDeliverabilityCampaignsRequest.nextToken,
            outputKey: \ListDomainDeliverabilityCampaignsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of all of the email identities that are associated with your Amazon Pinpoint account. An identity can be either an email address or a domain. This operation returns identities that are verified as well as those that aren't.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listEmailIdentitiesPaginator(
        _ input: ListEmailIdentitiesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListEmailIdentitiesRequest, ListEmailIdentitiesResponse> {
        return .init(
            input: input,
            command: listEmailIdentities,
            inputKey: \ListEmailIdentitiesRequest.nextToken,
            outputKey: \ListEmailIdentitiesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
