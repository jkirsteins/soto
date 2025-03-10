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
extension Braket {
    ///  Searches for devices using the specified filters.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func searchDevicesPaginator(
        _ input: SearchDevicesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<SearchDevicesRequest, SearchDevicesResponse> {
        return .init(
            input: input,
            command: searchDevices,
            inputKey: \SearchDevicesRequest.nextToken,
            outputKey: \SearchDevicesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Searches for Amazon Braket jobs that match the specified filter values.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func searchJobsPaginator(
        _ input: SearchJobsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<SearchJobsRequest, SearchJobsResponse> {
        return .init(
            input: input,
            command: searchJobs,
            inputKey: \SearchJobsRequest.nextToken,
            outputKey: \SearchJobsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Searches for tasks that match the specified filter values.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func searchQuantumTasksPaginator(
        _ input: SearchQuantumTasksRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<SearchQuantumTasksRequest, SearchQuantumTasksResponse> {
        return .init(
            input: input,
            command: searchQuantumTasks,
            inputKey: \SearchQuantumTasksRequest.nextToken,
            outputKey: \SearchQuantumTasksResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
