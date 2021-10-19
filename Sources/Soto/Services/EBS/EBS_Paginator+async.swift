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

@available(macOS 9999, iOS 9999, watchOS 9999, tvOS 9999, *)
extension EBS {
    ///  Returns information about the blocks that are different between two Amazon Elastic Block Store snapshots of the same volume/snapshot lineage.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listChangedBlocksPaginator(
        _ input: ListChangedBlocksRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListChangedBlocksRequest, ListChangedBlocksResponse> {
        return .init(
            input: input,
            command: listChangedBlocks,
            inputKey: \ListChangedBlocksRequest.nextToken,
            outputKey: \ListChangedBlocksResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns information about the blocks in an Amazon Elastic Block Store snapshot.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listSnapshotBlocksPaginator(
        _ input: ListSnapshotBlocksRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListSnapshotBlocksRequest, ListSnapshotBlocksResponse> {
        return .init(
            input: input,
            command: listSnapshotBlocks,
            inputKey: \ListSnapshotBlocksRequest.nextToken,
            outputKey: \ListSnapshotBlocksResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
