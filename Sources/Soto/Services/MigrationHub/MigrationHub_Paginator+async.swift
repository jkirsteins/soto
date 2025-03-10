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
extension MigrationHub {
    ///  Lists all the migration statuses for your applications. If you use the optional ApplicationIds parameter, only the migration statuses for those applications will be returned.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listApplicationStatesPaginator(
        _ input: ListApplicationStatesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListApplicationStatesRequest, ListApplicationStatesResult> {
        return .init(
            input: input,
            command: listApplicationStates,
            inputKey: \ListApplicationStatesRequest.nextToken,
            outputKey: \ListApplicationStatesResult.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the created artifacts attached to a given migration task in an update stream. This API has the following traits:   Gets the list of the created artifacts while migration is taking place.   Shows the artifacts created by the migration tool that was associated by the AssociateCreatedArtifact API.    Lists created artifacts in a paginated interface.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listCreatedArtifactsPaginator(
        _ input: ListCreatedArtifactsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListCreatedArtifactsRequest, ListCreatedArtifactsResult> {
        return .init(
            input: input,
            command: listCreatedArtifacts,
            inputKey: \ListCreatedArtifactsRequest.nextToken,
            outputKey: \ListCreatedArtifactsResult.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists discovered resources associated with the given MigrationTask.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listDiscoveredResourcesPaginator(
        _ input: ListDiscoveredResourcesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListDiscoveredResourcesRequest, ListDiscoveredResourcesResult> {
        return .init(
            input: input,
            command: listDiscoveredResources,
            inputKey: \ListDiscoveredResourcesRequest.nextToken,
            outputKey: \ListDiscoveredResourcesResult.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists all, or filtered by resource name, migration tasks associated with the user account making this call. This API has the following traits:   Can show a summary list of the most recent migration tasks.   Can show a summary list of migration tasks associated with a given discovered resource.   Lists migration tasks in a paginated interface.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listMigrationTasksPaginator(
        _ input: ListMigrationTasksRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListMigrationTasksRequest, ListMigrationTasksResult> {
        return .init(
            input: input,
            command: listMigrationTasks,
            inputKey: \ListMigrationTasksRequest.nextToken,
            outputKey: \ListMigrationTasksResult.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists progress update streams associated with the user account making this call.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listProgressUpdateStreamsPaginator(
        _ input: ListProgressUpdateStreamsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListProgressUpdateStreamsRequest, ListProgressUpdateStreamsResult> {
        return .init(
            input: input,
            command: listProgressUpdateStreams,
            inputKey: \ListProgressUpdateStreamsRequest.nextToken,
            outputKey: \ListProgressUpdateStreamsResult.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
