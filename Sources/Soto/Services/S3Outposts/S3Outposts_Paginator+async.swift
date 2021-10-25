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
extension S3Outposts {
    ///  Amazon S3 on Outposts Access Points simplify managing data access at scale for shared datasets in S3 on Outposts.  S3 on Outposts uses endpoints to connect to Outposts buckets so that you can perform actions within your  virtual private cloud (VPC). For more information, see  Accessing S3 on Outposts using VPC only access points. This action lists endpoints associated with the Outposts.   Related actions include:    CreateEndpoint     DeleteEndpoint
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listEndpointsPaginator(
        _ input: ListEndpointsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListEndpointsRequest, ListEndpointsResult> {
        return .init(
            input: input,
            command: listEndpoints,
            inputKey: \ListEndpointsRequest.nextToken,
            outputKey: \ListEndpointsResult.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
