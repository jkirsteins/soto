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
extension SSMIncidents {
    ///  Retrieves the resource policies attached to the specified response plan.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getResourcePoliciesPaginator(
        _ input: GetResourcePoliciesInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetResourcePoliciesInput, GetResourcePoliciesOutput> {
        return .init(
            input: input,
            command: getResourcePolicies,
            inputKey: \GetResourcePoliciesInput.nextToken,
            outputKey: \GetResourcePoliciesOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists all incident records in your account. Use this command to retrieve the Amazon Resource Name (ARN) of the incident record you want to update.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listIncidentRecordsPaginator(
        _ input: ListIncidentRecordsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListIncidentRecordsInput, ListIncidentRecordsOutput> {
        return .init(
            input: input,
            command: listIncidentRecords,
            inputKey: \ListIncidentRecordsInput.nextToken,
            outputKey: \ListIncidentRecordsOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  List all related items for an incident record.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listRelatedItemsPaginator(
        _ input: ListRelatedItemsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListRelatedItemsInput, ListRelatedItemsOutput> {
        return .init(
            input: input,
            command: listRelatedItems,
            inputKey: \ListRelatedItemsInput.nextToken,
            outputKey: \ListRelatedItemsOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists details about the replication set configured in your account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listReplicationSetsPaginator(
        _ input: ListReplicationSetsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListReplicationSetsInput, ListReplicationSetsOutput> {
        return .init(
            input: input,
            command: listReplicationSets,
            inputKey: \ListReplicationSetsInput.nextToken,
            outputKey: \ListReplicationSetsOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists all response plans in your account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listResponsePlansPaginator(
        _ input: ListResponsePlansInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListResponsePlansInput, ListResponsePlansOutput> {
        return .init(
            input: input,
            command: listResponsePlans,
            inputKey: \ListResponsePlansInput.nextToken,
            outputKey: \ListResponsePlansOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists timeline events for the specified incident record.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listTimelineEventsPaginator(
        _ input: ListTimelineEventsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListTimelineEventsInput, ListTimelineEventsOutput> {
        return .init(
            input: input,
            command: listTimelineEvents,
            inputKey: \ListTimelineEventsInput.nextToken,
            outputKey: \ListTimelineEventsOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
