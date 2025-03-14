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

@available(macOS 12.0, iOS 15.0, watchOS 8.0, tvOS 15.0, *)
extension EBS {
    // MARK: Async API Calls

    /// Seals and completes the snapshot after all of the required blocks of data have been written to it. Completing the snapshot changes the status to completed. You cannot write new blocks to a snapshot after it has been completed.
    public func completeSnapshot(_ input: CompleteSnapshotRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CompleteSnapshotResponse {
        return try await self.client.execute(operation: "CompleteSnapshot", path: "/snapshots/completion/{SnapshotId}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the data in a block in an Amazon Elastic Block Store snapshot.
    public func getSnapshotBlock(_ input: GetSnapshotBlockRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetSnapshotBlockResponse {
        return try await self.client.execute(operation: "GetSnapshotBlock", path: "/snapshots/{SnapshotId}/blocks/{BlockIndex}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about the blocks that are different between two Amazon Elastic Block Store snapshots of the same volume/snapshot lineage.
    public func listChangedBlocks(_ input: ListChangedBlocksRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListChangedBlocksResponse {
        return try await self.client.execute(operation: "ListChangedBlocks", path: "/snapshots/{SecondSnapshotId}/changedblocks", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about the blocks in an Amazon Elastic Block Store snapshot.
    public func listSnapshotBlocks(_ input: ListSnapshotBlocksRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListSnapshotBlocksResponse {
        return try await self.client.execute(operation: "ListSnapshotBlocks", path: "/snapshots/{SnapshotId}/blocks", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Writes a block of data to a snapshot. If the specified block contains data, the existing data is overwritten. The target snapshot must be in the pending state.  	 	    Data written to a snapshot must be aligned with 512-KiB sectors.
    public func putSnapshotBlock(_ input: PutSnapshotBlockRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutSnapshotBlockResponse {
        return try await self.client.execute(operation: "PutSnapshotBlock", path: "/snapshots/{SnapshotId}/blocks/{BlockIndex}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new Amazon EBS snapshot. The new snapshot enters the pending state after the request completes.  After creating the snapshot, use  PutSnapshotBlock to write blocks of data to the snapshot.
    public func startSnapshot(_ input: StartSnapshotRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartSnapshotResponse {
        return try await self.client.execute(operation: "StartSnapshot", path: "/snapshots", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    // MARK: Streaming Async API Calls

    /// Returns the data in a block in an Amazon Elastic Block Store snapshot.
    public func getSnapshotBlockStreaming(_ input: GetSnapshotBlockRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil, _ stream: @escaping (ByteBuffer, EventLoop) -> EventLoopFuture<Void>) async throws -> GetSnapshotBlockResponse {
        return try await self.client.execute(operation: "GetSnapshotBlock", path: "/snapshots/{SnapshotId}/blocks/{BlockIndex}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop, stream: stream)
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
