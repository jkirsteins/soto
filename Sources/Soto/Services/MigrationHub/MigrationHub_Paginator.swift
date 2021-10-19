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

import SotoCore

// MARK: Paginators

extension MigrationHub {
    ///  Lists all the migration statuses for your applications. If you use the optional ApplicationIds parameter, only the migration statuses for those applications will be returned.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listApplicationStatesPaginator<Result>(
        _ input: ListApplicationStatesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListApplicationStatesResult, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listApplicationStates,
            inputKey: \ListApplicationStatesRequest.nextToken,
            outputKey: \ListApplicationStatesResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listApplicationStatesPaginator(
        _ input: ListApplicationStatesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListApplicationStatesResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listApplicationStates,
            inputKey: \ListApplicationStatesRequest.nextToken,
            outputKey: \ListApplicationStatesResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists the created artifacts attached to a given migration task in an update stream. This API has the following traits:   Gets the list of the created artifacts while migration is taking place.   Shows the artifacts created by the migration tool that was associated by the AssociateCreatedArtifact API.    Lists created artifacts in a paginated interface.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listCreatedArtifactsPaginator<Result>(
        _ input: ListCreatedArtifactsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListCreatedArtifactsResult, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listCreatedArtifacts,
            inputKey: \ListCreatedArtifactsRequest.nextToken,
            outputKey: \ListCreatedArtifactsResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listCreatedArtifactsPaginator(
        _ input: ListCreatedArtifactsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListCreatedArtifactsResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listCreatedArtifacts,
            inputKey: \ListCreatedArtifactsRequest.nextToken,
            outputKey: \ListCreatedArtifactsResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists discovered resources associated with the given MigrationTask.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listDiscoveredResourcesPaginator<Result>(
        _ input: ListDiscoveredResourcesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListDiscoveredResourcesResult, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listDiscoveredResources,
            inputKey: \ListDiscoveredResourcesRequest.nextToken,
            outputKey: \ListDiscoveredResourcesResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listDiscoveredResourcesPaginator(
        _ input: ListDiscoveredResourcesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListDiscoveredResourcesResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listDiscoveredResources,
            inputKey: \ListDiscoveredResourcesRequest.nextToken,
            outputKey: \ListDiscoveredResourcesResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists all, or filtered by resource name, migration tasks associated with the user account making this call. This API has the following traits:   Can show a summary list of the most recent migration tasks.   Can show a summary list of migration tasks associated with a given discovered resource.   Lists migration tasks in a paginated interface.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listMigrationTasksPaginator<Result>(
        _ input: ListMigrationTasksRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListMigrationTasksResult, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listMigrationTasks,
            inputKey: \ListMigrationTasksRequest.nextToken,
            outputKey: \ListMigrationTasksResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listMigrationTasksPaginator(
        _ input: ListMigrationTasksRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListMigrationTasksResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listMigrationTasks,
            inputKey: \ListMigrationTasksRequest.nextToken,
            outputKey: \ListMigrationTasksResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists progress update streams associated with the user account making this call.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listProgressUpdateStreamsPaginator<Result>(
        _ input: ListProgressUpdateStreamsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListProgressUpdateStreamsResult, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listProgressUpdateStreams,
            inputKey: \ListProgressUpdateStreamsRequest.nextToken,
            outputKey: \ListProgressUpdateStreamsResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listProgressUpdateStreamsPaginator(
        _ input: ListProgressUpdateStreamsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListProgressUpdateStreamsResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listProgressUpdateStreams,
            inputKey: \ListProgressUpdateStreamsRequest.nextToken,
            outputKey: \ListProgressUpdateStreamsResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension MigrationHub.ListApplicationStatesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> MigrationHub.ListApplicationStatesRequest {
        return .init(
            applicationIds: self.applicationIds,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension MigrationHub.ListCreatedArtifactsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> MigrationHub.ListCreatedArtifactsRequest {
        return .init(
            maxResults: self.maxResults,
            migrationTaskName: self.migrationTaskName,
            nextToken: token,
            progressUpdateStream: self.progressUpdateStream
        )
    }
}

extension MigrationHub.ListDiscoveredResourcesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> MigrationHub.ListDiscoveredResourcesRequest {
        return .init(
            maxResults: self.maxResults,
            migrationTaskName: self.migrationTaskName,
            nextToken: token,
            progressUpdateStream: self.progressUpdateStream
        )
    }
}

extension MigrationHub.ListMigrationTasksRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> MigrationHub.ListMigrationTasksRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            resourceName: self.resourceName
        )
    }
}

extension MigrationHub.ListProgressUpdateStreamsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> MigrationHub.ListProgressUpdateStreamsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}
