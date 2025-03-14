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
extension DeviceFarm {
    ///  Gets the current status and future status of all offerings purchased by an AWS account. The response indicates how many offerings are currently available and the offerings that will be available in the next period. The API returns a NotEligible error if the user is not permitted to invoke the operation. If you must be able to invoke this operation, contact aws-devicefarm-support@amazon.com.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getOfferingStatusPaginator(
        _ input: GetOfferingStatusRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetOfferingStatusRequest, GetOfferingStatusResult> {
        return .init(
            input: input,
            command: getOfferingStatus,
            inputKey: \GetOfferingStatusRequest.nextToken,
            outputKey: \GetOfferingStatusResult.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets information about artifacts.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listArtifactsPaginator(
        _ input: ListArtifactsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListArtifactsRequest, ListArtifactsResult> {
        return .init(
            input: input,
            command: listArtifacts,
            inputKey: \ListArtifactsRequest.nextToken,
            outputKey: \ListArtifactsResult.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets information about device pools.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listDevicePoolsPaginator(
        _ input: ListDevicePoolsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListDevicePoolsRequest, ListDevicePoolsResult> {
        return .init(
            input: input,
            command: listDevicePools,
            inputKey: \ListDevicePoolsRequest.nextToken,
            outputKey: \ListDevicePoolsResult.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets information about unique device types.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listDevicesPaginator(
        _ input: ListDevicesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListDevicesRequest, ListDevicesResult> {
        return .init(
            input: input,
            command: listDevices,
            inputKey: \ListDevicesRequest.nextToken,
            outputKey: \ListDevicesResult.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets information about jobs for a given test run.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listJobsPaginator(
        _ input: ListJobsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListJobsRequest, ListJobsResult> {
        return .init(
            input: input,
            command: listJobs,
            inputKey: \ListJobsRequest.nextToken,
            outputKey: \ListJobsResult.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of all historical purchases, renewals, and system renewal transactions for an AWS account. The list is paginated and ordered by a descending timestamp (most recent transactions are first). The API returns a NotEligible error if the user is not permitted to invoke the operation. If you must be able to invoke this operation, contact aws-devicefarm-support@amazon.com.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listOfferingTransactionsPaginator(
        _ input: ListOfferingTransactionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListOfferingTransactionsRequest, ListOfferingTransactionsResult> {
        return .init(
            input: input,
            command: listOfferingTransactions,
            inputKey: \ListOfferingTransactionsRequest.nextToken,
            outputKey: \ListOfferingTransactionsResult.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of products or offerings that the user can manage through the API. Each offering record indicates the recurring price per unit and the frequency for that offering. The API returns a NotEligible error if the user is not permitted to invoke the operation.  If you must be able to invoke this operation, contact aws-devicefarm-support@amazon.com.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listOfferingsPaginator(
        _ input: ListOfferingsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListOfferingsRequest, ListOfferingsResult> {
        return .init(
            input: input,
            command: listOfferings,
            inputKey: \ListOfferingsRequest.nextToken,
            outputKey: \ListOfferingsResult.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets information about projects.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listProjectsPaginator(
        _ input: ListProjectsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListProjectsRequest, ListProjectsResult> {
        return .init(
            input: input,
            command: listProjects,
            inputKey: \ListProjectsRequest.nextToken,
            outputKey: \ListProjectsResult.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets information about runs, given an AWS Device Farm project ARN.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listRunsPaginator(
        _ input: ListRunsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListRunsRequest, ListRunsResult> {
        return .init(
            input: input,
            command: listRuns,
            inputKey: \ListRunsRequest.nextToken,
            outputKey: \ListRunsResult.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets information about samples, given an AWS Device Farm job ARN.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listSamplesPaginator(
        _ input: ListSamplesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListSamplesRequest, ListSamplesResult> {
        return .init(
            input: input,
            command: listSamples,
            inputKey: \ListSamplesRequest.nextToken,
            outputKey: \ListSamplesResult.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets information about test suites for a given job.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listSuitesPaginator(
        _ input: ListSuitesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListSuitesRequest, ListSuitesResult> {
        return .init(
            input: input,
            command: listSuites,
            inputKey: \ListSuitesRequest.nextToken,
            outputKey: \ListSuitesResult.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets a list of all Selenium testing projects in your account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listTestGridProjectsPaginator(
        _ input: ListTestGridProjectsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListTestGridProjectsRequest, ListTestGridProjectsResult> {
        return .init(
            input: input,
            command: listTestGridProjects,
            inputKey: \ListTestGridProjectsRequest.nextToken,
            outputKey: \ListTestGridProjectsResult.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of the actions taken in a TestGridSession.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listTestGridSessionActionsPaginator(
        _ input: ListTestGridSessionActionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListTestGridSessionActionsRequest, ListTestGridSessionActionsResult> {
        return .init(
            input: input,
            command: listTestGridSessionActions,
            inputKey: \ListTestGridSessionActionsRequest.nextToken,
            outputKey: \ListTestGridSessionActionsResult.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves a list of artifacts created during the session.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listTestGridSessionArtifactsPaginator(
        _ input: ListTestGridSessionArtifactsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListTestGridSessionArtifactsRequest, ListTestGridSessionArtifactsResult> {
        return .init(
            input: input,
            command: listTestGridSessionArtifacts,
            inputKey: \ListTestGridSessionArtifactsRequest.nextToken,
            outputKey: \ListTestGridSessionArtifactsResult.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves a list of sessions for a TestGridProject.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listTestGridSessionsPaginator(
        _ input: ListTestGridSessionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListTestGridSessionsRequest, ListTestGridSessionsResult> {
        return .init(
            input: input,
            command: listTestGridSessions,
            inputKey: \ListTestGridSessionsRequest.nextToken,
            outputKey: \ListTestGridSessionsResult.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets information about tests in a given test suite.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listTestsPaginator(
        _ input: ListTestsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListTestsRequest, ListTestsResult> {
        return .init(
            input: input,
            command: listTests,
            inputKey: \ListTestsRequest.nextToken,
            outputKey: \ListTestsResult.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets information about unique problems, such as exceptions or crashes. Unique problems are defined as a single instance of an error across a run, job, or suite. For example, if a call in your application consistently raises an exception (OutOfBoundsException in MyActivity.java:386), ListUniqueProblems returns a single entry instead of many individual entries for that exception.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listUniqueProblemsPaginator(
        _ input: ListUniqueProblemsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListUniqueProblemsRequest, ListUniqueProblemsResult> {
        return .init(
            input: input,
            command: listUniqueProblems,
            inputKey: \ListUniqueProblemsRequest.nextToken,
            outputKey: \ListUniqueProblemsResult.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets information about uploads, given an AWS Device Farm project ARN.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listUploadsPaginator(
        _ input: ListUploadsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListUploadsRequest, ListUploadsResult> {
        return .init(
            input: input,
            command: listUploads,
            inputKey: \ListUploadsRequest.nextToken,
            outputKey: \ListUploadsResult.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
