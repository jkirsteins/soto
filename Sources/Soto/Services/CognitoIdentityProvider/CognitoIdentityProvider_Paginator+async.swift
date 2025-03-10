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
extension CognitoIdentityProvider {
    ///  Lists the groups that the user belongs to. Calling this action requires developer credentials.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func adminListGroupsForUserPaginator(
        _ input: AdminListGroupsForUserRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<AdminListGroupsForUserRequest, AdminListGroupsForUserResponse> {
        return .init(
            input: input,
            command: adminListGroupsForUser,
            inputKey: \AdminListGroupsForUserRequest.nextToken,
            outputKey: \AdminListGroupsForUserResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists a history of user activity and any risks detected as part of Amazon Cognito advanced security.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func adminListUserAuthEventsPaginator(
        _ input: AdminListUserAuthEventsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<AdminListUserAuthEventsRequest, AdminListUserAuthEventsResponse> {
        return .init(
            input: input,
            command: adminListUserAuthEvents,
            inputKey: \AdminListUserAuthEventsRequest.nextToken,
            outputKey: \AdminListUserAuthEventsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the groups associated with a user pool. Calling this action requires developer credentials.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listGroupsPaginator(
        _ input: ListGroupsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListGroupsRequest, ListGroupsResponse> {
        return .init(
            input: input,
            command: listGroups,
            inputKey: \ListGroupsRequest.nextToken,
            outputKey: \ListGroupsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists information about all identity providers for a user pool.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listIdentityProvidersPaginator(
        _ input: ListIdentityProvidersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListIdentityProvidersRequest, ListIdentityProvidersResponse> {
        return .init(
            input: input,
            command: listIdentityProviders,
            inputKey: \ListIdentityProvidersRequest.nextToken,
            outputKey: \ListIdentityProvidersResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the resource servers for a user pool.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listResourceServersPaginator(
        _ input: ListResourceServersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListResourceServersRequest, ListResourceServersResponse> {
        return .init(
            input: input,
            command: listResourceServers,
            inputKey: \ListResourceServersRequest.nextToken,
            outputKey: \ListResourceServersResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the clients that have been created for the specified user pool.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listUserPoolClientsPaginator(
        _ input: ListUserPoolClientsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListUserPoolClientsRequest, ListUserPoolClientsResponse> {
        return .init(
            input: input,
            command: listUserPoolClients,
            inputKey: \ListUserPoolClientsRequest.nextToken,
            outputKey: \ListUserPoolClientsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the user pools associated with an account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listUserPoolsPaginator(
        _ input: ListUserPoolsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListUserPoolsRequest, ListUserPoolsResponse> {
        return .init(
            input: input,
            command: listUserPools,
            inputKey: \ListUserPoolsRequest.nextToken,
            outputKey: \ListUserPoolsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the users in the Amazon Cognito user pool.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listUsersPaginator(
        _ input: ListUsersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListUsersRequest, ListUsersResponse> {
        return .init(
            input: input,
            command: listUsers,
            inputKey: \ListUsersRequest.paginationToken,
            outputKey: \ListUsersResponse.paginationToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the users in the specified group. Calling this action requires developer credentials.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listUsersInGroupPaginator(
        _ input: ListUsersInGroupRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListUsersInGroupRequest, ListUsersInGroupResponse> {
        return .init(
            input: input,
            command: listUsersInGroup,
            inputKey: \ListUsersInGroupRequest.nextToken,
            outputKey: \ListUsersInGroupResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
