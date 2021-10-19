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
extension Route53RecoveryCluster {
    // MARK: Async API Calls

    /// Get the state for a routing control. A routing control is a simple on/off switch
    /// 				that you can use to route traffic to cells. When the state is On, traffic flows to a cell. When it's off, traffic does not flow.
    /// 			      Before you can create a routing control, you first must create a cluster to host the control.
    /// 				For more information, see
    /// 				CreateCluster.
    /// 				Access one of the endpoints for the cluster to get or update the routing control state to
    /// 				redirect traffic.
    /// 			      For more information about working with routing controls, see
    /// 				Routing control
    /// 				in the Route 53 Application Recovery Controller Developer Guide.
    public func getRoutingControlState(_ input: GetRoutingControlStateRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetRoutingControlStateResponse {
        return try await self.client.execute(operation: "GetRoutingControlState", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Set the state of the routing control to reroute traffic. You can set the value to be On or Off.
    /// 				When the state is On, traffic flows to a cell. When it's off, traffic does not flow.
    /// 			      For more information about working with routing controls, see
    /// 				Routing control
    /// 				in the Route 53 Application Recovery Controller Developer Guide.
    public func updateRoutingControlState(_ input: UpdateRoutingControlStateRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateRoutingControlStateResponse {
        return try await self.client.execute(operation: "UpdateRoutingControlState", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Set multiple routing control states. You can set the value for each state to be On or Off.
    /// 			When the state is On, traffic flows to a cell. When it's off, traffic does not flow.
    /// 			      For more information about working with routing controls, see
    /// 				Routing control
    /// 				in the Route 53 Application Recovery Controller Developer Guide.
    public func updateRoutingControlStates(_ input: UpdateRoutingControlStatesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateRoutingControlStatesResponse {
        return try await self.client.execute(operation: "UpdateRoutingControlStates", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
