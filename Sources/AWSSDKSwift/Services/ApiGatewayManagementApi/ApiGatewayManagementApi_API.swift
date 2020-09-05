//===----------------------------------------------------------------------===//
//
// This source file is part of the AWSSDKSwift open source project
//
// Copyright (c) 2017-2020 the AWSSDKSwift project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of AWSSDKSwift project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/main/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import AWSSDKSwiftCore

/*
Client object for interacting with AWS ApiGatewayManagementApi service.

The Amazon API Gateway Management API allows you to directly manage runtime aspects of your deployed APIs. To use it, you must explicitly set the SDK's endpoint to point to the endpoint of your deployed API. The endpoint will be of the form https://{api-id}.execute-api.{region}.amazonaws.com/{stage}, or will be the endpoint corresponding to your API's custom domain and base path, if applicable.
*/
public struct ApiGatewayManagementApi: AWSService {

    // MARK: Member variables

    public let client: AWSClient
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the ApiGatewayManagementApi client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - timeout: Timeout value for HTTP requests
    public init(
        client: AWSClient,
        region: AWSSDKSwiftCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        timeout: TimeAmount? = nil,
        byteBufferAllocator: ByteBufferAllocator = ByteBufferAllocator(),
        options: AWSServiceConfig.Options = []
    ) {
        self.client = client
        self.config = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            service: "execute-api",
            serviceProtocol: .restjson,
            apiVersion: "2018-11-29",
            endpoint: endpoint,
            possibleErrorTypes: [ApiGatewayManagementApiErrorType.self],
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }
    
    // MARK: API Calls

    ///  Delete the connection with the provided id.
    @discardableResult public func deleteConnection(_ input: DeleteConnectionRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteConnection", path: "/@connections/{connectionId}", httpMethod: .DELETE, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Get information about the connection with the provided id.
    public func getConnection(_ input: GetConnectionRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetConnectionResponse> {
        return self.client.execute(operation: "GetConnection", path: "/@connections/{connectionId}", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Sends the provided data to the specified connection.
    @discardableResult public func postToConnection(_ input: PostToConnectionRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "PostToConnection", path: "/@connections/{connectionId}", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }
}
