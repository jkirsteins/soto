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

extension ManagedBlockchain {
    ///  Returns a list of all invitations for the current AWS account. Applies only to Hyperledger Fabric.
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
    public func listInvitationsPaginator<Result>(
        _ input: ListInvitationsInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListInvitationsOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listInvitations,
            inputKey: \ListInvitationsInput.nextToken,
            outputKey: \ListInvitationsOutput.nextToken,
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
    public func listInvitationsPaginator(
        _ input: ListInvitationsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListInvitationsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listInvitations,
            inputKey: \ListInvitationsInput.nextToken,
            outputKey: \ListInvitationsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a list of the members in a network and properties of their configurations. Applies only to Hyperledger Fabric.
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
    public func listMembersPaginator<Result>(
        _ input: ListMembersInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListMembersOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listMembers,
            inputKey: \ListMembersInput.nextToken,
            outputKey: \ListMembersOutput.nextToken,
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
    public func listMembersPaginator(
        _ input: ListMembersInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListMembersOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listMembers,
            inputKey: \ListMembersInput.nextToken,
            outputKey: \ListMembersOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns information about the networks in which the current AWS account participates. Applies to Hyperledger Fabric and Ethereum.
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
    public func listNetworksPaginator<Result>(
        _ input: ListNetworksInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListNetworksOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listNetworks,
            inputKey: \ListNetworksInput.nextToken,
            outputKey: \ListNetworksOutput.nextToken,
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
    public func listNetworksPaginator(
        _ input: ListNetworksInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListNetworksOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listNetworks,
            inputKey: \ListNetworksInput.nextToken,
            outputKey: \ListNetworksOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns information about the nodes within a network. Applies to Hyperledger Fabric and Ethereum.
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
    public func listNodesPaginator<Result>(
        _ input: ListNodesInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListNodesOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listNodes,
            inputKey: \ListNodesInput.nextToken,
            outputKey: \ListNodesOutput.nextToken,
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
    public func listNodesPaginator(
        _ input: ListNodesInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListNodesOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listNodes,
            inputKey: \ListNodesInput.nextToken,
            outputKey: \ListNodesOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns the list of votes for a specified proposal, including the value of each vote and the unique identifier of the member that cast the vote. Applies only to Hyperledger Fabric.
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
    public func listProposalVotesPaginator<Result>(
        _ input: ListProposalVotesInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListProposalVotesOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listProposalVotes,
            inputKey: \ListProposalVotesInput.nextToken,
            outputKey: \ListProposalVotesOutput.nextToken,
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
    public func listProposalVotesPaginator(
        _ input: ListProposalVotesInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListProposalVotesOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listProposalVotes,
            inputKey: \ListProposalVotesInput.nextToken,
            outputKey: \ListProposalVotesOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns a list of proposals for the network. Applies only to Hyperledger Fabric.
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
    public func listProposalsPaginator<Result>(
        _ input: ListProposalsInput,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListProposalsOutput, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return client.paginate(
            input: input,
            initialValue: initialValue,
            command: listProposals,
            inputKey: \ListProposalsInput.nextToken,
            outputKey: \ListProposalsOutput.nextToken,
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
    public func listProposalsPaginator(
        _ input: ListProposalsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListProposalsOutput, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listProposals,
            inputKey: \ListProposalsInput.nextToken,
            outputKey: \ListProposalsOutput.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension ManagedBlockchain.ListInvitationsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ManagedBlockchain.ListInvitationsInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension ManagedBlockchain.ListMembersInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ManagedBlockchain.ListMembersInput {
        return .init(
            isOwned: self.isOwned,
            maxResults: self.maxResults,
            name: self.name,
            networkId: self.networkId,
            nextToken: token,
            status: self.status
        )
    }
}

extension ManagedBlockchain.ListNetworksInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ManagedBlockchain.ListNetworksInput {
        return .init(
            framework: self.framework,
            maxResults: self.maxResults,
            name: self.name,
            nextToken: token,
            status: self.status
        )
    }
}

extension ManagedBlockchain.ListNodesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ManagedBlockchain.ListNodesInput {
        return .init(
            maxResults: self.maxResults,
            memberId: self.memberId,
            networkId: self.networkId,
            nextToken: token,
            status: self.status
        )
    }
}

extension ManagedBlockchain.ListProposalVotesInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ManagedBlockchain.ListProposalVotesInput {
        return .init(
            maxResults: self.maxResults,
            networkId: self.networkId,
            nextToken: token,
            proposalId: self.proposalId
        )
    }
}

extension ManagedBlockchain.ListProposalsInput: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ManagedBlockchain.ListProposalsInput {
        return .init(
            maxResults: self.maxResults,
            networkId: self.networkId,
            nextToken: token
        )
    }
}
