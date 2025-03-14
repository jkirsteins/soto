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

extension CloudWatchLogs {
    ///  Lists all your destinations. The results are ASCII-sorted by destination name.
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
    public func describeDestinationsPaginator<Result>(
        _ input: DescribeDestinationsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, DescribeDestinationsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: describeDestinations,
            inputKey: \DescribeDestinationsRequest.nextToken,
            outputKey: \DescribeDestinationsResponse.nextToken,
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
    public func describeDestinationsPaginator(
        _ input: DescribeDestinationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (DescribeDestinationsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeDestinations,
            inputKey: \DescribeDestinationsRequest.nextToken,
            outputKey: \DescribeDestinationsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists the specified log groups. You can list all your log groups or filter the results by prefix. The results are ASCII-sorted by log group name. CloudWatch Logs doesn’t support IAM policies that control access to the DescribeLogGroups action by using the  aws:ResourceTag/key-name condition key. Other CloudWatch Logs actions do support the use of the aws:ResourceTag/key-name condition key to control access. For more information about using tags to control access, see  Controlling access to Amazon Web Services resources using tags.
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
    public func describeLogGroupsPaginator<Result>(
        _ input: DescribeLogGroupsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, DescribeLogGroupsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: describeLogGroups,
            inputKey: \DescribeLogGroupsRequest.nextToken,
            outputKey: \DescribeLogGroupsResponse.nextToken,
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
    public func describeLogGroupsPaginator(
        _ input: DescribeLogGroupsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (DescribeLogGroupsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeLogGroups,
            inputKey: \DescribeLogGroupsRequest.nextToken,
            outputKey: \DescribeLogGroupsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists the log streams for the specified log group.  You can list all the log streams or filter the results by prefix. You can also control how the results are ordered. This operation has a limit of five transactions per second, after which transactions are throttled.
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
    public func describeLogStreamsPaginator<Result>(
        _ input: DescribeLogStreamsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, DescribeLogStreamsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: describeLogStreams,
            inputKey: \DescribeLogStreamsRequest.nextToken,
            outputKey: \DescribeLogStreamsResponse.nextToken,
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
    public func describeLogStreamsPaginator(
        _ input: DescribeLogStreamsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (DescribeLogStreamsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeLogStreams,
            inputKey: \DescribeLogStreamsRequest.nextToken,
            outputKey: \DescribeLogStreamsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists the specified metric filters. You can list all of the metric filters or filter the results by log name, prefix, metric name, or metric namespace. The results are ASCII-sorted by filter name.
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
    public func describeMetricFiltersPaginator<Result>(
        _ input: DescribeMetricFiltersRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, DescribeMetricFiltersResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: describeMetricFilters,
            inputKey: \DescribeMetricFiltersRequest.nextToken,
            outputKey: \DescribeMetricFiltersResponse.nextToken,
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
    public func describeMetricFiltersPaginator(
        _ input: DescribeMetricFiltersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (DescribeMetricFiltersResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeMetricFilters,
            inputKey: \DescribeMetricFiltersRequest.nextToken,
            outputKey: \DescribeMetricFiltersResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists the subscription filters for the specified log group. You can list all the subscription filters or filter the results by prefix. The results are ASCII-sorted by filter name.
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
    public func describeSubscriptionFiltersPaginator<Result>(
        _ input: DescribeSubscriptionFiltersRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, DescribeSubscriptionFiltersResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: describeSubscriptionFilters,
            inputKey: \DescribeSubscriptionFiltersRequest.nextToken,
            outputKey: \DescribeSubscriptionFiltersResponse.nextToken,
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
    public func describeSubscriptionFiltersPaginator(
        _ input: DescribeSubscriptionFiltersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (DescribeSubscriptionFiltersResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeSubscriptionFilters,
            inputKey: \DescribeSubscriptionFiltersRequest.nextToken,
            outputKey: \DescribeSubscriptionFiltersResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists log events from the specified log group. You can list all the log events or filter the results using a filter pattern, a time range, and the name of the log stream. By default, this operation returns as many log events as can fit in 1 MB (up to 10,000 log events) or all the events found within the time range that you specify. If the results include a token, then there are more log events available, and you can get additional results by specifying the token in a subsequent call. This operation can return empty results while there are more log events available through the token. The returned log events are sorted by event timestamp, the timestamp when the event was ingested by CloudWatch Logs, and the ID of the PutLogEvents request.
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
    public func filterLogEventsPaginator<Result>(
        _ input: FilterLogEventsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, FilterLogEventsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: filterLogEvents,
            inputKey: \FilterLogEventsRequest.nextToken,
            outputKey: \FilterLogEventsResponse.nextToken,
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
    public func filterLogEventsPaginator(
        _ input: FilterLogEventsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (FilterLogEventsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: filterLogEvents,
            inputKey: \FilterLogEventsRequest.nextToken,
            outputKey: \FilterLogEventsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists log events from the specified log stream. You can list all of the log events or filter using a time range.
    ///   By default, this operation returns as many log events as can fit in a response size of 1MB (up to 10,000 log events).  You can get additional log events by specifying one of the tokens in a subsequent call. This operation can return empty results while there are more log events available through the token.
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
    public func getLogEventsPaginator<Result>(
        _ input: GetLogEventsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, GetLogEventsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: getLogEvents,
            inputKey: \GetLogEventsRequest.nextToken,
            outputKey: \GetLogEventsResponse.nextForwardToken,
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
    public func getLogEventsPaginator(
        _ input: GetLogEventsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (GetLogEventsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: getLogEvents,
            inputKey: \GetLogEventsRequest.nextToken,
            outputKey: \GetLogEventsResponse.nextForwardToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension CloudWatchLogs.DescribeDestinationsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CloudWatchLogs.DescribeDestinationsRequest {
        return .init(
            destinationNamePrefix: self.destinationNamePrefix,
            limit: self.limit,
            nextToken: token
        )
    }
}

extension CloudWatchLogs.DescribeLogGroupsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CloudWatchLogs.DescribeLogGroupsRequest {
        return .init(
            limit: self.limit,
            logGroupNamePrefix: self.logGroupNamePrefix,
            nextToken: token
        )
    }
}

extension CloudWatchLogs.DescribeLogStreamsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CloudWatchLogs.DescribeLogStreamsRequest {
        return .init(
            descending: self.descending,
            limit: self.limit,
            logGroupName: self.logGroupName,
            logStreamNamePrefix: self.logStreamNamePrefix,
            nextToken: token,
            orderBy: self.orderBy
        )
    }
}

extension CloudWatchLogs.DescribeMetricFiltersRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CloudWatchLogs.DescribeMetricFiltersRequest {
        return .init(
            filterNamePrefix: self.filterNamePrefix,
            limit: self.limit,
            logGroupName: self.logGroupName,
            metricName: self.metricName,
            metricNamespace: self.metricNamespace,
            nextToken: token
        )
    }
}

extension CloudWatchLogs.DescribeSubscriptionFiltersRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CloudWatchLogs.DescribeSubscriptionFiltersRequest {
        return .init(
            filterNamePrefix: self.filterNamePrefix,
            limit: self.limit,
            logGroupName: self.logGroupName,
            nextToken: token
        )
    }
}

extension CloudWatchLogs.FilterLogEventsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CloudWatchLogs.FilterLogEventsRequest {
        return .init(
            endTime: self.endTime,
            filterPattern: self.filterPattern,
            limit: self.limit,
            logGroupName: self.logGroupName,
            logStreamNamePrefix: self.logStreamNamePrefix,
            logStreamNames: self.logStreamNames,
            nextToken: token,
            startTime: self.startTime
        )
    }
}

extension CloudWatchLogs.GetLogEventsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> CloudWatchLogs.GetLogEventsRequest {
        return .init(
            endTime: self.endTime,
            limit: self.limit,
            logGroupName: self.logGroupName,
            logStreamName: self.logStreamName,
            nextToken: token,
            startFromHead: self.startFromHead,
            startTime: self.startTime
        )
    }
}
