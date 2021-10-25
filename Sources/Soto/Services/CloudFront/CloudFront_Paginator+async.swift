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
extension CloudFront {
    ///  Lists origin access identities.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listCloudFrontOriginAccessIdentitiesPaginator(
        _ input: ListCloudFrontOriginAccessIdentitiesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListCloudFrontOriginAccessIdentitiesRequest, ListCloudFrontOriginAccessIdentitiesResult> {
        return .init(
            input: input,
            command: listCloudFrontOriginAccessIdentities,
            inputKey: \ListCloudFrontOriginAccessIdentitiesRequest.marker,
            outputKey: \ListCloudFrontOriginAccessIdentitiesResult.cloudFrontOriginAccessIdentityList?.nextMarker,
            logger: logger,
            on: eventLoop
        )
    }

    ///  List CloudFront distributions.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listDistributionsPaginator(
        _ input: ListDistributionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListDistributionsRequest, ListDistributionsResult> {
        return .init(
            input: input,
            command: listDistributions,
            inputKey: \ListDistributionsRequest.marker,
            outputKey: \ListDistributionsResult.distributionList?.nextMarker,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists invalidation batches.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listInvalidationsPaginator(
        _ input: ListInvalidationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListInvalidationsRequest, ListInvalidationsResult> {
        return .init(
            input: input,
            command: listInvalidations,
            inputKey: \ListInvalidationsRequest.marker,
            outputKey: \ListInvalidationsResult.invalidationList?.nextMarker,
            logger: logger,
            on: eventLoop
        )
    }

    ///  List streaming distributions.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listStreamingDistributionsPaginator(
        _ input: ListStreamingDistributionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListStreamingDistributionsRequest, ListStreamingDistributionsResult> {
        return .init(
            input: input,
            command: listStreamingDistributions,
            inputKey: \ListStreamingDistributionsRequest.marker,
            outputKey: \ListStreamingDistributionsResult.streamingDistributionList?.nextMarker,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
