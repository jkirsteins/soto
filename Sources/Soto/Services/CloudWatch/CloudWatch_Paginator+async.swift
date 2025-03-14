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
extension CloudWatch {
    ///  Retrieves the history for the specified alarm. You can filter the results by date range or item type.
    ///  			If an alarm name is not specified, the histories for either all metric alarms or all composite alarms are returned.
    ///  		       CloudWatch retains the history of an alarm even if you delete the alarm.
    ///  		       To use this operation and return information about a composite alarm, you must be signed on with
    ///  			the cloudwatch:DescribeAlarmHistory permission that is scoped to *. You can't return information
    ///  			about composite alarms if your cloudwatch:DescribeAlarmHistory permission has a narrower scope.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeAlarmHistoryPaginator(
        _ input: DescribeAlarmHistoryInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeAlarmHistoryInput, DescribeAlarmHistoryOutput> {
        return .init(
            input: input,
            command: describeAlarmHistory,
            inputKey: \DescribeAlarmHistoryInput.nextToken,
            outputKey: \DescribeAlarmHistoryOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves the specified alarms. You can filter the results by specifying a prefix for the alarm
    ///  			name, the alarm state, or a prefix for any action.
    ///  		       To use this operation and return information about composite alarms, you must be signed on with
    ///  		the cloudwatch:DescribeAlarms permission that is scoped to *. You can't return information
    ///  			about composite alarms if your cloudwatch:DescribeAlarms permission has a narrower scope.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeAlarmsPaginator(
        _ input: DescribeAlarmsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeAlarmsInput, DescribeAlarmsOutput> {
        return .init(
            input: input,
            command: describeAlarms,
            inputKey: \DescribeAlarmsInput.nextToken,
            outputKey: \DescribeAlarmsOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of all the Contributor Insights rules in your account.
    ///
    ///  		       For more information about Contributor Insights, see
    ///  		Using Contributor Insights to Analyze High-Cardinality Data.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeInsightRulesPaginator(
        _ input: DescribeInsightRulesInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeInsightRulesInput, DescribeInsightRulesOutput> {
        return .init(
            input: input,
            command: describeInsightRules,
            inputKey: \DescribeInsightRulesInput.nextToken,
            outputKey: \DescribeInsightRulesOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  You can use the GetMetricData API to retrieve as many as 500 different
    ///  			metrics in a single request, with a total of as many as 100,800 data points. You can also
    ///  			optionally perform math expressions on the values of the returned statistics, to create
    ///  			new time series that represent new insights into your data. For example, using Lambda
    ///  			metrics, you could divide the Errors metric by the Invocations metric to get an error
    ///  			rate time series. For more information about metric math expressions, see Metric Math Syntax and Functions in the Amazon CloudWatch User
    ///  				Guide.
    ///
    ///  		       Calls to the GetMetricData API have a different pricing structure than
    ///  			calls to GetMetricStatistics. For more information about pricing, see
    ///  			Amazon CloudWatch Pricing.
    ///  		       Amazon CloudWatch retains metric data as follows:
    ///  		         Data points with a period of less than 60 seconds are available for 3 hours. These data points are high-resolution
    ///  				metrics and are available only for custom metrics that have been defined with a StorageResolution of 1.   Data points with a period of 60 seconds (1-minute) are available for 15 days.   Data points with a period of 300 seconds (5-minute) are available for 63 days.   Data points with a period of 3600 seconds (1 hour) are available for 455 days (15 months).
    ///  		       Data points that are initially published with a shorter period are aggregated together for long-term storage. For example, if you collect
    ///  			data using a period of 1 minute, the data remains available for 15 days with 1-minute resolution. After 15 days, this data is still available,
    ///  			but is aggregated and retrievable only with a resolution of 5 minutes. After 63 days, the data is further aggregated and is available with
    ///  			a resolution of 1 hour.
    ///
    ///  		       If you omit Unit in your request, all data that was collected with any unit is returned, along with the corresponding units that were specified
    ///  			when the data was reported to CloudWatch. If you specify a unit, the operation returns only data that was collected with that unit specified.
    ///  			If you specify a unit that does not match the data collected, the results of the operation are null. CloudWatch does not perform unit conversions.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getMetricDataPaginator(
        _ input: GetMetricDataInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetMetricDataInput, GetMetricDataOutput> {
        return .init(
            input: input,
            command: getMetricData,
            inputKey: \GetMetricDataInput.nextToken,
            outputKey: \GetMetricDataOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of the dashboards for your account. If you include DashboardNamePrefix, only
    ///  			those dashboards with names starting with the prefix are listed. Otherwise, all dashboards in your account are
    ///  			listed.
    ///
    ///  		        ListDashboards returns up to 1000 results on one page. If there
    ///  			are more than 1000 dashboards, you can call ListDashboards again and
    ///  		include the value you received for NextToken in the first call, to receive
    ///  		the next 1000 results.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listDashboardsPaginator(
        _ input: ListDashboardsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListDashboardsInput, ListDashboardsOutput> {
        return .init(
            input: input,
            command: listDashboards,
            inputKey: \ListDashboardsInput.nextToken,
            outputKey: \ListDashboardsOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of metric streams in this account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listMetricStreamsPaginator(
        _ input: ListMetricStreamsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListMetricStreamsInput, ListMetricStreamsOutput> {
        return .init(
            input: input,
            command: listMetricStreams,
            inputKey: \ListMetricStreamsInput.nextToken,
            outputKey: \ListMetricStreamsOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  List the specified metrics. You can use the returned metrics with
    ///  			GetMetricData or
    ///  			GetMetricStatistics to obtain statistical data.
    ///  		       Up to 500 results are returned for any one call. To retrieve additional results,
    ///  			use the returned token with subsequent calls.
    ///  		       After you create a metric, allow up to 15 minutes before the metric appears.
    ///  			You can see statistics about the metric sooner by using GetMetricData or
    ///  			GetMetricStatistics.
    ///  	         ListMetrics doesn't return information about metrics if those metrics haven't
    ///  	reported data in the past two weeks. To retrieve those metrics, use
    ///  		GetMetricData or
    ///  		GetMetricStatistics.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listMetricsPaginator(
        _ input: ListMetricsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListMetricsInput, ListMetricsOutput> {
        return .init(
            input: input,
            command: listMetrics,
            inputKey: \ListMetricsInput.nextToken,
            outputKey: \ListMetricsOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
