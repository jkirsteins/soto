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
extension ElasticBeanstalk {
    ///  Lists an environment's completed and failed managed actions.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeEnvironmentManagedActionHistoryPaginator(
        _ input: DescribeEnvironmentManagedActionHistoryRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeEnvironmentManagedActionHistoryRequest, DescribeEnvironmentManagedActionHistoryResult> {
        return .init(
            input: input,
            command: describeEnvironmentManagedActionHistory,
            inputKey: \DescribeEnvironmentManagedActionHistoryRequest.nextToken,
            outputKey: \DescribeEnvironmentManagedActionHistoryResult.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns list of event descriptions matching criteria up to the last 6 weeks.  This action returns the most recent 1,000 events from the specified NextToken.
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
    ) -> AWSClient.PaginatorSequence<DescribeEventsMessage, EventDescriptionsMessage> {
        return .init(
            input: input,
            command: describeEvents,
            inputKey: \DescribeEventsMessage.nextToken,
            outputKey: \EventDescriptionsMessage.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the platform branches available for your account in an AWS Region. Provides summary information about each platform branch. For definitions of platform branch and other platform-related terms, see AWS Elastic Beanstalk Platforms Glossary.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listPlatformBranchesPaginator(
        _ input: ListPlatformBranchesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListPlatformBranchesRequest, ListPlatformBranchesResult> {
        return .init(
            input: input,
            command: listPlatformBranches,
            inputKey: \ListPlatformBranchesRequest.nextToken,
            outputKey: \ListPlatformBranchesResult.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the platform versions available for your account in an AWS Region. Provides summary information about each platform version. Compare to DescribePlatformVersion, which provides full details about a single platform version. For definitions of platform version and other platform-related terms, see AWS Elastic Beanstalk Platforms Glossary.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listPlatformVersionsPaginator(
        _ input: ListPlatformVersionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListPlatformVersionsRequest, ListPlatformVersionsResult> {
        return .init(
            input: input,
            command: listPlatformVersions,
            inputKey: \ListPlatformVersionsRequest.nextToken,
            outputKey: \ListPlatformVersionsResult.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
