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
extension S3Outposts {
    // MARK: Async API Calls

    /// Amazon S3 on Outposts Access Points simplify managing data access at scale for shared datasets in S3 on Outposts.  S3 on Outposts uses endpoints to connect to Outposts buckets so that you can perform actions within your  virtual private cloud (VPC). For more information, see  Accessing S3 on Outposts using VPC only access points. This action creates an endpoint and associates it with the specified Outposts.  It can take up to 5 minutes for this action to complete.    Related actions include:    DeleteEndpoint     ListEndpoints
    public func createEndpoint(_ input: CreateEndpointRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateEndpointResult {
        return try await self.client.execute(operation: "CreateEndpoint", path: "/S3Outposts/CreateEndpoint", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Amazon S3 on Outposts Access Points simplify managing data access at scale for shared datasets in S3 on Outposts.  S3 on Outposts uses endpoints to connect to Outposts buckets so that you can perform actions within your  virtual private cloud (VPC). For more information, see  Accessing S3 on Outposts using VPC only access points. This action deletes an endpoint.  It can take up to 5 minutes for this action to complete.    Related actions include:    CreateEndpoint     ListEndpoints
    public func deleteEndpoint(_ input: DeleteEndpointRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteEndpoint", path: "/S3Outposts/DeleteEndpoint", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Amazon S3 on Outposts Access Points simplify managing data access at scale for shared datasets in S3 on Outposts.  S3 on Outposts uses endpoints to connect to Outposts buckets so that you can perform actions within your  virtual private cloud (VPC). For more information, see  Accessing S3 on Outposts using VPC only access points. This action lists endpoints associated with the Outposts.   Related actions include:    CreateEndpoint     DeleteEndpoint
    public func listEndpoints(_ input: ListEndpointsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListEndpointsResult {
        return try await self.client.execute(operation: "ListEndpoints", path: "/S3Outposts/ListEndpoints", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
