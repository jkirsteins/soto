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
extension LookoutEquipment {
    ///  Provides a list of all data ingestion jobs, including dataset name and ARN, S3 location of the input data, status, and so on.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listDataIngestionJobsPaginator(
        _ input: ListDataIngestionJobsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListDataIngestionJobsRequest, ListDataIngestionJobsResponse> {
        return .init(
            input: input,
            command: listDataIngestionJobs,
            inputKey: \ListDataIngestionJobsRequest.nextToken,
            outputKey: \ListDataIngestionJobsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists all datasets currently available in your account, filtering on the dataset name.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listDatasetsPaginator(
        _ input: ListDatasetsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListDatasetsRequest, ListDatasetsResponse> {
        return .init(
            input: input,
            command: listDatasets,
            inputKey: \ListDatasetsRequest.nextToken,
            outputKey: \ListDatasetsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///   Lists all inference executions that have been performed by the specified inference scheduler.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listInferenceExecutionsPaginator(
        _ input: ListInferenceExecutionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListInferenceExecutionsRequest, ListInferenceExecutionsResponse> {
        return .init(
            input: input,
            command: listInferenceExecutions,
            inputKey: \ListInferenceExecutionsRequest.nextToken,
            outputKey: \ListInferenceExecutionsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves a list of all inference schedulers currently available for your account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listInferenceSchedulersPaginator(
        _ input: ListInferenceSchedulersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListInferenceSchedulersRequest, ListInferenceSchedulersResponse> {
        return .init(
            input: input,
            command: listInferenceSchedulers,
            inputKey: \ListInferenceSchedulersRequest.nextToken,
            outputKey: \ListInferenceSchedulersResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Generates a list of all models in the account, including model name and ARN, dataset, and status.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listModelsPaginator(
        _ input: ListModelsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListModelsRequest, ListModelsResponse> {
        return .init(
            input: input,
            command: listModels,
            inputKey: \ListModelsRequest.nextToken,
            outputKey: \ListModelsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
