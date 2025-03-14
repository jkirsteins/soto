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
extension DatabaseMigrationService {
    ///  Provides a list of individual assessments that you can specify for a new premigration assessment run, given one or more parameters. If you specify an existing migration task, this operation provides the default individual assessments you can specify for that task. Otherwise, the specified parameters model elements of a possible migration task on which to base a premigration assessment run. To use these migration task modeling parameters, you must specify an existing replication instance, a source database engine, a target database engine, and a migration type. This combination of parameters potentially limits the default individual assessments available for an assessment run created for a corresponding migration task. If you specify no parameters, this operation provides a list of all possible individual assessments that you can specify for an assessment run. If you specify any one of the task modeling parameters, you must specify all of them or the operation cannot provide a list of individual assessments. The only parameter that you can specify alone is for an existing migration task. The specified task definition then determines the default list of individual assessments that you can specify in an assessment run for the task.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeApplicableIndividualAssessmentsPaginator(
        _ input: DescribeApplicableIndividualAssessmentsMessage,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeApplicableIndividualAssessmentsMessage, DescribeApplicableIndividualAssessmentsResponse> {
        return .init(
            input: input,
            command: describeApplicableIndividualAssessments,
            inputKey: \DescribeApplicableIndividualAssessmentsMessage.marker,
            outputKey: \DescribeApplicableIndividualAssessmentsResponse.marker,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Provides a description of the certificate.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeCertificatesPaginator(
        _ input: DescribeCertificatesMessage,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeCertificatesMessage, DescribeCertificatesResponse> {
        return .init(
            input: input,
            command: describeCertificates,
            inputKey: \DescribeCertificatesMessage.marker,
            outputKey: \DescribeCertificatesResponse.marker,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Describes the status of the connections that have been made between the replication instance and an endpoint. Connections are created when you test an endpoint.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeConnectionsPaginator(
        _ input: DescribeConnectionsMessage,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeConnectionsMessage, DescribeConnectionsResponse> {
        return .init(
            input: input,
            command: describeConnections,
            inputKey: \DescribeConnectionsMessage.marker,
            outputKey: \DescribeConnectionsResponse.marker,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns information about the possible endpoint settings available  when you create an endpoint for a specific database engine.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeEndpointSettingsPaginator(
        _ input: DescribeEndpointSettingsMessage,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeEndpointSettingsMessage, DescribeEndpointSettingsResponse> {
        return .init(
            input: input,
            command: describeEndpointSettings,
            inputKey: \DescribeEndpointSettingsMessage.marker,
            outputKey: \DescribeEndpointSettingsResponse.marker,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns information about the type of endpoints available.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeEndpointTypesPaginator(
        _ input: DescribeEndpointTypesMessage,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeEndpointTypesMessage, DescribeEndpointTypesResponse> {
        return .init(
            input: input,
            command: describeEndpointTypes,
            inputKey: \DescribeEndpointTypesMessage.marker,
            outputKey: \DescribeEndpointTypesResponse.marker,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns information about the endpoints for your account in the current region.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeEndpointsPaginator(
        _ input: DescribeEndpointsMessage,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeEndpointsMessage, DescribeEndpointsResponse> {
        return .init(
            input: input,
            command: describeEndpoints,
            inputKey: \DescribeEndpointsMessage.marker,
            outputKey: \DescribeEndpointsResponse.marker,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists all the event subscriptions for a customer account. The description of a subscription includes SubscriptionName, SNSTopicARN, CustomerID, SourceType, SourceID, CreationTime, and Status.  If you specify SubscriptionName, this action lists the description for that subscription.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeEventSubscriptionsPaginator(
        _ input: DescribeEventSubscriptionsMessage,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeEventSubscriptionsMessage, DescribeEventSubscriptionsResponse> {
        return .init(
            input: input,
            command: describeEventSubscriptions,
            inputKey: \DescribeEventSubscriptionsMessage.marker,
            outputKey: \DescribeEventSubscriptionsResponse.marker,
            logger: logger,
            on: eventLoop
        )
    }

    ///   Lists events for a given source identifier and source type. You can also specify a start and end time. For more information on DMS events, see Working with Events and Notifications in the Database Migration Service User Guide.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeEventsPaginator(
        _ input: DescribeEventsMessage,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeEventsMessage, DescribeEventsResponse> {
        return .init(
            input: input,
            command: describeEvents,
            inputKey: \DescribeEventsMessage.marker,
            outputKey: \DescribeEventsResponse.marker,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns information about the replication instance types that can be created in the specified region.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeOrderableReplicationInstancesPaginator(
        _ input: DescribeOrderableReplicationInstancesMessage,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeOrderableReplicationInstancesMessage, DescribeOrderableReplicationInstancesResponse> {
        return .init(
            input: input,
            command: describeOrderableReplicationInstances,
            inputKey: \DescribeOrderableReplicationInstancesMessage.marker,
            outputKey: \DescribeOrderableReplicationInstancesResponse.marker,
            logger: logger,
            on: eventLoop
        )
    }

    ///  For internal use only
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describePendingMaintenanceActionsPaginator(
        _ input: DescribePendingMaintenanceActionsMessage,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribePendingMaintenanceActionsMessage, DescribePendingMaintenanceActionsResponse> {
        return .init(
            input: input,
            command: describePendingMaintenanceActions,
            inputKey: \DescribePendingMaintenanceActionsMessage.marker,
            outputKey: \DescribePendingMaintenanceActionsResponse.marker,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns information about the task logs for the specified task.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeReplicationInstanceTaskLogsPaginator(
        _ input: DescribeReplicationInstanceTaskLogsMessage,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeReplicationInstanceTaskLogsMessage, DescribeReplicationInstanceTaskLogsResponse> {
        return .init(
            input: input,
            command: describeReplicationInstanceTaskLogs,
            inputKey: \DescribeReplicationInstanceTaskLogsMessage.marker,
            outputKey: \DescribeReplicationInstanceTaskLogsResponse.marker,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns information about replication instances for your account in the current region.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeReplicationInstancesPaginator(
        _ input: DescribeReplicationInstancesMessage,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeReplicationInstancesMessage, DescribeReplicationInstancesResponse> {
        return .init(
            input: input,
            command: describeReplicationInstances,
            inputKey: \DescribeReplicationInstancesMessage.marker,
            outputKey: \DescribeReplicationInstancesResponse.marker,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns information about the replication subnet groups.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeReplicationSubnetGroupsPaginator(
        _ input: DescribeReplicationSubnetGroupsMessage,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeReplicationSubnetGroupsMessage, DescribeReplicationSubnetGroupsResponse> {
        return .init(
            input: input,
            command: describeReplicationSubnetGroups,
            inputKey: \DescribeReplicationSubnetGroupsMessage.marker,
            outputKey: \DescribeReplicationSubnetGroupsResponse.marker,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns the task assessment results from the Amazon S3 bucket that DMS creates in your Amazon Web Services account.  This action always returns the latest results. For more information about DMS task assessments, see   Creating a task assessment report in the Database Migration Service User Guide.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeReplicationTaskAssessmentResultsPaginator(
        _ input: DescribeReplicationTaskAssessmentResultsMessage,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeReplicationTaskAssessmentResultsMessage, DescribeReplicationTaskAssessmentResultsResponse> {
        return .init(
            input: input,
            command: describeReplicationTaskAssessmentResults,
            inputKey: \DescribeReplicationTaskAssessmentResultsMessage.marker,
            outputKey: \DescribeReplicationTaskAssessmentResultsResponse.marker,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a paginated list of premigration assessment runs based on filter settings. These filter settings can specify a combination of premigration assessment runs, migration tasks, replication instances, and assessment run status values.  This operation doesn't return information about individual assessments. For this information, see the DescribeReplicationTaskIndividualAssessments operation.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeReplicationTaskAssessmentRunsPaginator(
        _ input: DescribeReplicationTaskAssessmentRunsMessage,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeReplicationTaskAssessmentRunsMessage, DescribeReplicationTaskAssessmentRunsResponse> {
        return .init(
            input: input,
            command: describeReplicationTaskAssessmentRuns,
            inputKey: \DescribeReplicationTaskAssessmentRunsMessage.marker,
            outputKey: \DescribeReplicationTaskAssessmentRunsResponse.marker,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a paginated list of individual assessments based on filter settings. These filter settings can specify a combination of premigration assessment runs, migration tasks, and assessment status values.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeReplicationTaskIndividualAssessmentsPaginator(
        _ input: DescribeReplicationTaskIndividualAssessmentsMessage,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeReplicationTaskIndividualAssessmentsMessage, DescribeReplicationTaskIndividualAssessmentsResponse> {
        return .init(
            input: input,
            command: describeReplicationTaskIndividualAssessments,
            inputKey: \DescribeReplicationTaskIndividualAssessmentsMessage.marker,
            outputKey: \DescribeReplicationTaskIndividualAssessmentsResponse.marker,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns information about replication tasks for your account in the current region.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeReplicationTasksPaginator(
        _ input: DescribeReplicationTasksMessage,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeReplicationTasksMessage, DescribeReplicationTasksResponse> {
        return .init(
            input: input,
            command: describeReplicationTasks,
            inputKey: \DescribeReplicationTasksMessage.marker,
            outputKey: \DescribeReplicationTasksResponse.marker,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns information about the schema for the specified endpoint.
    ///
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeSchemasPaginator(
        _ input: DescribeSchemasMessage,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeSchemasMessage, DescribeSchemasResponse> {
        return .init(
            input: input,
            command: describeSchemas,
            inputKey: \DescribeSchemasMessage.marker,
            outputKey: \DescribeSchemasResponse.marker,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns table statistics on the database migration task, including table name, rows inserted, rows updated, and rows deleted. Note that the "last updated" column the DMS console only indicates the time that DMS last updated the table statistics record for a table. It does not indicate the time of the last update to the table.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeTableStatisticsPaginator(
        _ input: DescribeTableStatisticsMessage,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeTableStatisticsMessage, DescribeTableStatisticsResponse> {
        return .init(
            input: input,
            command: describeTableStatistics,
            inputKey: \DescribeTableStatisticsMessage.marker,
            outputKey: \DescribeTableStatisticsResponse.marker,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
