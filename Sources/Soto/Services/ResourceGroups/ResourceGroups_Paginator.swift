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

extension ResourceGroups {
    ///  Returns a list of ARNs of the resources that are members of a specified resource group.  Minimum permissions  To run this command, you must have the following permissions:    resource-groups:ListGroupResources     cloudformation:DescribeStacks     cloudformation:ListStackResources     tag:GetResources
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
    public func listGroupResourcesPaginator<Result>(
        _ input: ListGroupResourcesInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListGroupResourcesOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listGroupResources,
            inputKey: \ListGroupResourcesInput.nextToken,
            outputKey: \ListGroupResourcesOutput.nextToken,
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
    public func listGroupResourcesPaginator(
        _ input: ListGroupResourcesInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListGroupResourcesOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listGroupResources,
            inputKey: \ListGroupResourcesInput.nextToken,
            outputKey: \ListGroupResourcesOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a list of existing resource groups in your account.  Minimum permissions  To run this command, you must have the following permissions:    resource-groups:ListGroups
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
    public func listGroupsPaginator<Result>(
        _ input: ListGroupsInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListGroupsOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listGroups,
            inputKey: \ListGroupsInput.nextToken,
            outputKey: \ListGroupsOutput.nextToken,
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
    public func listGroupsPaginator(
        _ input: ListGroupsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListGroupsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listGroups,
            inputKey: \ListGroupsInput.nextToken,
            outputKey: \ListGroupsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a list of AWS resource identifiers that matches the specified query. The query uses the same format as a resource query in a CreateGroup or UpdateGroupQuery operation.  Minimum permissions  To run this command, you must have the following permissions:    resource-groups:SearchResources     cloudformation:DescribeStacks     cloudformation:ListStackResources     tag:GetResources
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
    public func searchResourcesPaginator<Result>(
        _ input: SearchResourcesInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, SearchResourcesOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: searchResources,
            inputKey: \SearchResourcesInput.nextToken,
            outputKey: \SearchResourcesOutput.nextToken,
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
    public func searchResourcesPaginator(
        _ input: SearchResourcesInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (SearchResourcesOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: searchResources,
            inputKey: \SearchResourcesInput.nextToken,
            outputKey: \SearchResourcesOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension ResourceGroups.ListGroupResourcesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ResourceGroups.ListGroupResourcesInput {
        return .init(
            filters: self.filters,
            group: self.group,
            groupName: self.groupName,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension ResourceGroups.ListGroupsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ResourceGroups.ListGroupsInput {
        return .init(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension ResourceGroups.SearchResourcesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ResourceGroups.SearchResourcesInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            resourceQuery: self.resourceQuery
        )
    }
}
