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
Client object for interacting with AWS MQ service.

Amazon MQ is a managed message broker service for Apache ActiveMQ that makes it easy to set up and operate message brokers in the cloud. A message broker allows software applications and components to communicate using various programming languages, operating systems, and formal messaging protocols.
*/
public struct MQ: AWSService {

    // MARK: Member variables

    public let client: AWSClient
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the MQ client
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
            service: "mq",
            serviceProtocol: .restjson,
            apiVersion: "2017-11-27",
            endpoint: endpoint,
            possibleErrorTypes: [MQErrorType.self],
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }
    
    // MARK: API Calls

    ///  Creates a broker. Note: This API is asynchronous.
    public func createBroker(_ input: CreateBrokerRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateBrokerResponse> {
        return self.client.execute(operation: "CreateBroker", path: "/v1/brokers", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a new configuration for the specified configuration name. Amazon MQ uses the default configuration (the engine type and version).
    public func createConfiguration(_ input: CreateConfigurationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateConfigurationResponse> {
        return self.client.execute(operation: "CreateConfiguration", path: "/v1/configurations", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Add a tag to a resource.
    @discardableResult public func createTags(_ input: CreateTagsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "CreateTags", path: "/v1/tags/{resource-arn}", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates an ActiveMQ user.
    public func createUser(_ input: CreateUserRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateUserResponse> {
        return self.client.execute(operation: "CreateUser", path: "/v1/brokers/{broker-id}/users/{username}", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes a broker. Note: This API is asynchronous.
    public func deleteBroker(_ input: DeleteBrokerRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteBrokerResponse> {
        return self.client.execute(operation: "DeleteBroker", path: "/v1/brokers/{broker-id}", httpMethod: .DELETE, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Removes a tag from a resource.
    @discardableResult public func deleteTags(_ input: DeleteTagsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteTags", path: "/v1/tags/{resource-arn}", httpMethod: .DELETE, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes an ActiveMQ user.
    public func deleteUser(_ input: DeleteUserRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteUserResponse> {
        return self.client.execute(operation: "DeleteUser", path: "/v1/brokers/{broker-id}/users/{username}", httpMethod: .DELETE, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns information about the specified broker.
    public func describeBroker(_ input: DescribeBrokerRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeBrokerResponse> {
        return self.client.execute(operation: "DescribeBroker", path: "/v1/brokers/{broker-id}", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Describe available engine types and versions.
    public func describeBrokerEngineTypes(_ input: DescribeBrokerEngineTypesRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeBrokerEngineTypesResponse> {
        return self.client.execute(operation: "DescribeBrokerEngineTypes", path: "/v1/broker-engine-types", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Describe available broker instance options.
    public func describeBrokerInstanceOptions(_ input: DescribeBrokerInstanceOptionsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeBrokerInstanceOptionsResponse> {
        return self.client.execute(operation: "DescribeBrokerInstanceOptions", path: "/v1/broker-instance-options", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns information about the specified configuration.
    public func describeConfiguration(_ input: DescribeConfigurationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeConfigurationResponse> {
        return self.client.execute(operation: "DescribeConfiguration", path: "/v1/configurations/{configuration-id}", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns the specified configuration revision for the specified configuration.
    public func describeConfigurationRevision(_ input: DescribeConfigurationRevisionRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeConfigurationRevisionResponse> {
        return self.client.execute(operation: "DescribeConfigurationRevision", path: "/v1/configurations/{configuration-id}/revisions/{configuration-revision}", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns information about an ActiveMQ user.
    public func describeUser(_ input: DescribeUserRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeUserResponse> {
        return self.client.execute(operation: "DescribeUser", path: "/v1/brokers/{broker-id}/users/{username}", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a list of all brokers.
    public func listBrokers(_ input: ListBrokersRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListBrokersResponse> {
        return self.client.execute(operation: "ListBrokers", path: "/v1/brokers", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a list of all revisions for the specified configuration.
    public func listConfigurationRevisions(_ input: ListConfigurationRevisionsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListConfigurationRevisionsResponse> {
        return self.client.execute(operation: "ListConfigurationRevisions", path: "/v1/configurations/{configuration-id}/revisions", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a list of all configurations.
    public func listConfigurations(_ input: ListConfigurationsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListConfigurationsResponse> {
        return self.client.execute(operation: "ListConfigurations", path: "/v1/configurations", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Lists tags for a resource.
    public func listTags(_ input: ListTagsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListTagsResponse> {
        return self.client.execute(operation: "ListTags", path: "/v1/tags/{resource-arn}", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a list of all ActiveMQ users.
    public func listUsers(_ input: ListUsersRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListUsersResponse> {
        return self.client.execute(operation: "ListUsers", path: "/v1/brokers/{broker-id}/users", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Reboots a broker. Note: This API is asynchronous.
    public func rebootBroker(_ input: RebootBrokerRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<RebootBrokerResponse> {
        return self.client.execute(operation: "RebootBroker", path: "/v1/brokers/{broker-id}/reboot", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Adds a pending configuration change to a broker.
    public func updateBroker(_ input: UpdateBrokerRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateBrokerResponse> {
        return self.client.execute(operation: "UpdateBroker", path: "/v1/brokers/{broker-id}", httpMethod: .PUT, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates the specified configuration.
    public func updateConfiguration(_ input: UpdateConfigurationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateConfigurationResponse> {
        return self.client.execute(operation: "UpdateConfiguration", path: "/v1/configurations/{configuration-id}", httpMethod: .PUT, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates the information for an ActiveMQ user.
    public func updateUser(_ input: UpdateUserRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateUserResponse> {
        return self.client.execute(operation: "UpdateUser", path: "/v1/brokers/{broker-id}/users/{username}", httpMethod: .PUT, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }
}
