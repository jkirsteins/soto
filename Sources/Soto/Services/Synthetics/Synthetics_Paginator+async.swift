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
extension Synthetics {
    ///  This operation returns a list of the canaries in your account, along with full details about each canary. This operation does not have resource-level authorization, so if a user is able to use DescribeCanaries, the user can see all of the canaries in the account. A deny policy can only be used to restrict access to all canaries. It cannot be used on specific resources.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeCanariesPaginator(
        _ input: DescribeCanariesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeCanariesRequest, DescribeCanariesResponse> {
        return .init(
            input: input,
            command: describeCanaries,
            inputKey: \DescribeCanariesRequest.nextToken,
            outputKey: \DescribeCanariesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Use this operation to see information from the most recent run of each canary that you have created.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeCanariesLastRunPaginator(
        _ input: DescribeCanariesLastRunRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeCanariesLastRunRequest, DescribeCanariesLastRunResponse> {
        return .init(
            input: input,
            command: describeCanariesLastRun,
            inputKey: \DescribeCanariesLastRunRequest.nextToken,
            outputKey: \DescribeCanariesLastRunResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of Synthetics canary runtime versions. For more information,  see  Canary Runtime Versions.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeRuntimeVersionsPaginator(
        _ input: DescribeRuntimeVersionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeRuntimeVersionsRequest, DescribeRuntimeVersionsResponse> {
        return .init(
            input: input,
            command: describeRuntimeVersions,
            inputKey: \DescribeRuntimeVersionsRequest.nextToken,
            outputKey: \DescribeRuntimeVersionsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves a list of runs for a specified canary.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getCanaryRunsPaginator(
        _ input: GetCanaryRunsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetCanaryRunsRequest, GetCanaryRunsResponse> {
        return .init(
            input: input,
            command: getCanaryRuns,
            inputKey: \GetCanaryRunsRequest.nextToken,
            outputKey: \GetCanaryRunsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
