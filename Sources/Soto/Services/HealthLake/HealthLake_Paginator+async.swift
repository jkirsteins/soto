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
extension HealthLake {
    ///  Lists all FHIR Data Stores that are in the user’s account, regardless of Data Store status.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listFHIRDatastoresPaginator(
        _ input: ListFHIRDatastoresRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListFHIRDatastoresRequest, ListFHIRDatastoresResponse> {
        return .init(
            input: input,
            command: listFHIRDatastores,
            inputKey: \ListFHIRDatastoresRequest.nextToken,
            outputKey: \ListFHIRDatastoresResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///   Lists all FHIR export jobs associated with an account and their statuses.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listFHIRExportJobsPaginator(
        _ input: ListFHIRExportJobsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListFHIRExportJobsRequest, ListFHIRExportJobsResponse> {
        return .init(
            input: input,
            command: listFHIRExportJobs,
            inputKey: \ListFHIRExportJobsRequest.nextToken,
            outputKey: \ListFHIRExportJobsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///   Lists all FHIR import jobs associated with an account and their statuses.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listFHIRImportJobsPaginator(
        _ input: ListFHIRImportJobsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListFHIRImportJobsRequest, ListFHIRImportJobsResponse> {
        return .init(
            input: input,
            command: listFHIRImportJobs,
            inputKey: \ListFHIRImportJobsRequest.nextToken,
            outputKey: \ListFHIRImportJobsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
