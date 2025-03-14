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
extension Mgn {
    ///  Retrieves detailed Job log with paging.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeJobLogItemsPaginator(
        _ input: DescribeJobLogItemsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeJobLogItemsRequest, DescribeJobLogItemsResponse> {
        return .init(
            input: input,
            command: describeJobLogItems,
            inputKey: \DescribeJobLogItemsRequest.nextToken,
            outputKey: \DescribeJobLogItemsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of Jobs. Use the JobsID and fromDate and toData filters to limit which jobs are returned. The response is sorted by creationDataTime - latest date first. Jobs are normaly created by the StartTest, StartCutover, and TerminateTargetInstances APIs. Jobs are also created by DiagnosticLaunch and TerminateDiagnosticInstances, which are APIs available only to *Support* and only used in response to relevant support tickets.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeJobsPaginator(
        _ input: DescribeJobsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeJobsRequest, DescribeJobsResponse> {
        return .init(
            input: input,
            command: describeJobs,
            inputKey: \DescribeJobsRequest.nextToken,
            outputKey: \DescribeJobsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists all ReplicationConfigurationTemplates, filtered by Source Server IDs.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeReplicationConfigurationTemplatesPaginator(
        _ input: DescribeReplicationConfigurationTemplatesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeReplicationConfigurationTemplatesRequest, DescribeReplicationConfigurationTemplatesResponse> {
        return .init(
            input: input,
            command: describeReplicationConfigurationTemplates,
            inputKey: \DescribeReplicationConfigurationTemplatesRequest.nextToken,
            outputKey: \DescribeReplicationConfigurationTemplatesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves all SourceServers or multiple SourceServers by ID.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeSourceServersPaginator(
        _ input: DescribeSourceServersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeSourceServersRequest, DescribeSourceServersResponse> {
        return .init(
            input: input,
            command: describeSourceServers,
            inputKey: \DescribeSourceServersRequest.nextToken,
            outputKey: \DescribeSourceServersResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists all vCenter clients.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeVcenterClientsPaginator(
        _ input: DescribeVcenterClientsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeVcenterClientsRequest, DescribeVcenterClientsResponse> {
        return .init(
            input: input,
            command: describeVcenterClients,
            inputKey: \DescribeVcenterClientsRequest.nextToken,
            outputKey: \DescribeVcenterClientsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
