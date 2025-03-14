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

extension Health {
    ///  Returns a list of accounts in the organization from Organizations that are affected by the provided event. For more information about the different types of Health events, see Event.  Before you can call this operation, you must first enable Health to work with Organizations. To do this, call the EnableHealthServiceAccessForOrganization operation from your organization's management account.  This API operation uses pagination. Specify the nextToken parameter in the next request to return more results.
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
    public func describeAffectedAccountsForOrganizationPaginator<Result>(
        _ input: DescribeAffectedAccountsForOrganizationRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, DescribeAffectedAccountsForOrganizationResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: describeAffectedAccountsForOrganization,
            inputKey: \DescribeAffectedAccountsForOrganizationRequest.nextToken,
            outputKey: \DescribeAffectedAccountsForOrganizationResponse.nextToken,
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
    public func describeAffectedAccountsForOrganizationPaginator(
        _ input: DescribeAffectedAccountsForOrganizationRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (DescribeAffectedAccountsForOrganizationResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeAffectedAccountsForOrganization,
            inputKey: \DescribeAffectedAccountsForOrganizationRequest.nextToken,
            outputKey: \DescribeAffectedAccountsForOrganizationResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a list of entities that have been affected by the specified events, based on the specified filter criteria. Entities can refer to individual customer resources, groups of customer resources, or any other construct, depending on the Amazon Web Services service. Events that have impact beyond that of the affected entities, or where the extent of impact is unknown, include at least one entity indicating this. At least one event ARN is required.     This API operation uses pagination. Specify the nextToken parameter in the next request to return more results.   This operation supports resource-level permissions. You can use this operation to allow or deny access to specific Health events. For more information, see Resource- and action-based conditions in the Health User Guide.
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
    public func describeAffectedEntitiesPaginator<Result>(
        _ input: DescribeAffectedEntitiesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, DescribeAffectedEntitiesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: describeAffectedEntities,
            inputKey: \DescribeAffectedEntitiesRequest.nextToken,
            outputKey: \DescribeAffectedEntitiesResponse.nextToken,
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
    public func describeAffectedEntitiesPaginator(
        _ input: DescribeAffectedEntitiesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (DescribeAffectedEntitiesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeAffectedEntities,
            inputKey: \DescribeAffectedEntitiesRequest.nextToken,
            outputKey: \DescribeAffectedEntitiesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a list of entities that have been affected by one or more events for one or more accounts in your organization in Organizations, based on the filter criteria. Entities can refer to individual customer resources, groups of customer resources, or any other construct, depending on the Amazon Web Services service. At least one event Amazon Resource Name (ARN) and account ID are required. Before you can call this operation, you must first enable Health to work with Organizations. To do this, call the EnableHealthServiceAccessForOrganization operation from your organization's management account.    This API operation uses pagination. Specify the nextToken parameter in the next request to return more results.   This operation doesn't support resource-level permissions. You can't use this operation to allow or deny access to specific Health events. For more information, see Resource- and action-based conditions in the Health User Guide.
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
    public func describeAffectedEntitiesForOrganizationPaginator<Result>(
        _ input: DescribeAffectedEntitiesForOrganizationRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, DescribeAffectedEntitiesForOrganizationResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: describeAffectedEntitiesForOrganization,
            inputKey: \DescribeAffectedEntitiesForOrganizationRequest.nextToken,
            outputKey: \DescribeAffectedEntitiesForOrganizationResponse.nextToken,
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
    public func describeAffectedEntitiesForOrganizationPaginator(
        _ input: DescribeAffectedEntitiesForOrganizationRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (DescribeAffectedEntitiesForOrganizationResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeAffectedEntitiesForOrganization,
            inputKey: \DescribeAffectedEntitiesForOrganizationRequest.nextToken,
            outputKey: \DescribeAffectedEntitiesForOrganizationResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns the number of events of each event type (issue, scheduled change, and account notification). If no filter is specified, the counts of all events in each category are returned.  This API operation uses pagination. Specify the nextToken parameter in the next request to return more results.
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
    public func describeEventAggregatesPaginator<Result>(
        _ input: DescribeEventAggregatesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, DescribeEventAggregatesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: describeEventAggregates,
            inputKey: \DescribeEventAggregatesRequest.nextToken,
            outputKey: \DescribeEventAggregatesResponse.nextToken,
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
    public func describeEventAggregatesPaginator(
        _ input: DescribeEventAggregatesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (DescribeEventAggregatesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeEventAggregates,
            inputKey: \DescribeEventAggregatesRequest.nextToken,
            outputKey: \DescribeEventAggregatesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns the event types that meet the specified filter criteria. You can use this API operation to find information about the Health event, such as the category, Amazon Web Services service, and event code. The metadata for each event appears in the EventType object.  If you don't specify a filter criteria, the API operation returns all event types, in no particular order.    This API operation uses pagination. Specify the nextToken parameter in the next request to return more results.
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
    public func describeEventTypesPaginator<Result>(
        _ input: DescribeEventTypesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, DescribeEventTypesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: describeEventTypes,
            inputKey: \DescribeEventTypesRequest.nextToken,
            outputKey: \DescribeEventTypesResponse.nextToken,
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
    public func describeEventTypesPaginator(
        _ input: DescribeEventTypesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (DescribeEventTypesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeEventTypes,
            inputKey: \DescribeEventTypesRequest.nextToken,
            outputKey: \DescribeEventTypesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///   Returns information about events that meet the specified filter criteria. Events are returned in a summary form and do not include the detailed description, any additional metadata that depends on the event type, or any affected resources. To retrieve that information, use the DescribeEventDetails and DescribeAffectedEntities operations. If no filter criteria are specified, all events are returned. Results are sorted by lastModifiedTime, starting with the most recent event.    When you call the DescribeEvents operation and specify an entity for the entityValues parameter, Health might return public events that aren't specific to that resource. For example, if you call DescribeEvents and specify an ID for an Amazon Elastic Compute Cloud (Amazon EC2) instance, Health might return events that aren't specific to that resource or service. To get events that are specific to a service, use the services parameter in the filter object. For more information, see Event.   This API operation uses pagination. Specify the nextToken parameter in the next request to return more results.
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
    public func describeEventsPaginator<Result>(
        _ input: DescribeEventsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, DescribeEventsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: describeEvents,
            inputKey: \DescribeEventsRequest.nextToken,
            outputKey: \DescribeEventsResponse.nextToken,
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
    public func describeEventsPaginator(
        _ input: DescribeEventsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (DescribeEventsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeEvents,
            inputKey: \DescribeEventsRequest.nextToken,
            outputKey: \DescribeEventsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns information about events across your organization in Organizations. You can use thefilters parameter to specify the events that you want to return. Events are returned in a summary form and don't include the affected accounts, detailed description, any additional metadata that depends on the event type, or any affected resources. To retrieve that information, use the following operations:    DescribeAffectedAccountsForOrganization     DescribeEventDetailsForOrganization     DescribeAffectedEntitiesForOrganization    If you don't specify a filter, the DescribeEventsForOrganizations returns all events across your organization. Results are sorted by lastModifiedTime, starting with the most recent event.  For more information about the different types of Health events, see Event. Before you can call this operation, you must first enable Health to work with Organizations. To do this, call the EnableHealthServiceAccessForOrganization operation from your organization's management account.  This API operation uses pagination. Specify the nextToken parameter in the next request to return more results.
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
    public func describeEventsForOrganizationPaginator<Result>(
        _ input: DescribeEventsForOrganizationRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, DescribeEventsForOrganizationResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: describeEventsForOrganization,
            inputKey: \DescribeEventsForOrganizationRequest.nextToken,
            outputKey: \DescribeEventsForOrganizationResponse.nextToken,
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
    public func describeEventsForOrganizationPaginator(
        _ input: DescribeEventsForOrganizationRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (DescribeEventsForOrganizationResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeEventsForOrganization,
            inputKey: \DescribeEventsForOrganizationRequest.nextToken,
            outputKey: \DescribeEventsForOrganizationResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension Health.DescribeAffectedAccountsForOrganizationRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Health.DescribeAffectedAccountsForOrganizationRequest {
        return .init(
            eventArn: self.eventArn,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Health.DescribeAffectedEntitiesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Health.DescribeAffectedEntitiesRequest {
        return .init(
            filter: self.filter,
            locale: self.locale,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Health.DescribeAffectedEntitiesForOrganizationRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Health.DescribeAffectedEntitiesForOrganizationRequest {
        return .init(
            locale: self.locale,
            maxResults: self.maxResults,
            nextToken: token,
            organizationEntityFilters: self.organizationEntityFilters
        )
    }
}

extension Health.DescribeEventAggregatesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Health.DescribeEventAggregatesRequest {
        return .init(
            aggregateField: self.aggregateField,
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Health.DescribeEventTypesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Health.DescribeEventTypesRequest {
        return .init(
            filter: self.filter,
            locale: self.locale,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Health.DescribeEventsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Health.DescribeEventsRequest {
        return .init(
            filter: self.filter,
            locale: self.locale,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Health.DescribeEventsForOrganizationRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Health.DescribeEventsForOrganizationRequest {
        return .init(
            filter: self.filter,
            locale: self.locale,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
