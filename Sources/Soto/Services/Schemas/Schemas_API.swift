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

@_exported import SotoCore

/// Service object for interacting with AWS Schemas service.
///
/// Amazon EventBridge Schema Registry
public struct Schemas: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the Schemas client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - timeout: Timeout value for HTTP requests
    public init(
        client: AWSClient,
        region: SotoCore.Region? = nil,
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
            service: "schemas",
            serviceProtocol: .restjson,
            apiVersion: "2019-12-02",
            endpoint: endpoint,
            errorType: SchemasErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Creates a discoverer.
    public func createDiscoverer(_ input: CreateDiscovererRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDiscovererResponse> {
        return self.client.execute(operation: "CreateDiscoverer", path: "/v1/discoverers", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a registry.
    public func createRegistry(_ input: CreateRegistryRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateRegistryResponse> {
        return self.client.execute(operation: "CreateRegistry", path: "/v1/registries/name/{RegistryName}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a schema definition. Inactive schemas will be deleted after two years.
    public func createSchema(_ input: CreateSchemaRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSchemaResponse> {
        return self.client.execute(operation: "CreateSchema", path: "/v1/registries/name/{RegistryName}/schemas/name/{SchemaName}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a discoverer.
    @discardableResult public func deleteDiscoverer(_ input: DeleteDiscovererRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteDiscoverer", path: "/v1/discoverers/id/{DiscovererId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a Registry.
    @discardableResult public func deleteRegistry(_ input: DeleteRegistryRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteRegistry", path: "/v1/registries/name/{RegistryName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Delete the resource-based policy attached to the specified registry.
    @discardableResult public func deleteResourcePolicy(_ input: DeleteResourcePolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteResourcePolicy", path: "/v1/policy", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Delete a schema definition.
    @discardableResult public func deleteSchema(_ input: DeleteSchemaRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteSchema", path: "/v1/registries/name/{RegistryName}/schemas/name/{SchemaName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Delete the schema version definition
    @discardableResult public func deleteSchemaVersion(_ input: DeleteSchemaVersionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteSchemaVersion", path: "/v1/registries/name/{RegistryName}/schemas/name/{SchemaName}/version/{SchemaVersion}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describe the code binding URI.
    public func describeCodeBinding(_ input: DescribeCodeBindingRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCodeBindingResponse> {
        return self.client.execute(operation: "DescribeCodeBinding", path: "/v1/registries/name/{RegistryName}/schemas/name/{SchemaName}/language/{Language}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the discoverer.
    public func describeDiscoverer(_ input: DescribeDiscovererRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDiscovererResponse> {
        return self.client.execute(operation: "DescribeDiscoverer", path: "/v1/discoverers/id/{DiscovererId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes the registry.
    public func describeRegistry(_ input: DescribeRegistryRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRegistryResponse> {
        return self.client.execute(operation: "DescribeRegistry", path: "/v1/registries/name/{RegistryName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieve the schema definition.
    public func describeSchema(_ input: DescribeSchemaRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSchemaResponse> {
        return self.client.execute(operation: "DescribeSchema", path: "/v1/registries/name/{RegistryName}/schemas/name/{SchemaName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    public func exportSchema(_ input: ExportSchemaRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ExportSchemaResponse> {
        return self.client.execute(operation: "ExportSchema", path: "/v1/registries/name/{RegistryName}/schemas/name/{SchemaName}/export", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Get the code binding source URI.
    public func getCodeBindingSource(_ input: GetCodeBindingSourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetCodeBindingSourceResponse> {
        return self.client.execute(operation: "GetCodeBindingSource", path: "/v1/registries/name/{RegistryName}/schemas/name/{SchemaName}/language/{Language}/source", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Get the discovered schema that was generated based on sampled events.
    public func getDiscoveredSchema(_ input: GetDiscoveredSchemaRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDiscoveredSchemaResponse> {
        return self.client.execute(operation: "GetDiscoveredSchema", path: "/v1/discover", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the resource-based policy attached to a given registry.
    public func getResourcePolicy(_ input: GetResourcePolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetResourcePolicyResponse> {
        return self.client.execute(operation: "GetResourcePolicy", path: "/v1/policy", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List the discoverers.
    public func listDiscoverers(_ input: ListDiscoverersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListDiscoverersResponse> {
        return self.client.execute(operation: "ListDiscoverers", path: "/v1/discoverers", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List the registries.
    public func listRegistries(_ input: ListRegistriesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListRegistriesResponse> {
        return self.client.execute(operation: "ListRegistries", path: "/v1/registries", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Provides a list of the schema versions and related information.
    public func listSchemaVersions(_ input: ListSchemaVersionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListSchemaVersionsResponse> {
        return self.client.execute(operation: "ListSchemaVersions", path: "/v1/registries/name/{RegistryName}/schemas/name/{SchemaName}/versions", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List the schemas.
    public func listSchemas(_ input: ListSchemasRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListSchemasResponse> {
        return self.client.execute(operation: "ListSchemas", path: "/v1/registries/name/{RegistryName}/schemas", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Get tags for resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return self.client.execute(operation: "ListTagsForResource", path: "/tags/{ResourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Put code binding URI
    public func putCodeBinding(_ input: PutCodeBindingRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutCodeBindingResponse> {
        return self.client.execute(operation: "PutCodeBinding", path: "/v1/registries/name/{RegistryName}/schemas/name/{SchemaName}/language/{Language}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// The name of the policy.
    public func putResourcePolicy(_ input: PutResourcePolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutResourcePolicyResponse> {
        return self.client.execute(operation: "PutResourcePolicy", path: "/v1/policy", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Search the schemas
    public func searchSchemas(_ input: SearchSchemasRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SearchSchemasResponse> {
        return self.client.execute(operation: "SearchSchemas", path: "/v1/registries/name/{RegistryName}/schemas/search", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts the discoverer
    public func startDiscoverer(_ input: StartDiscovererRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartDiscovererResponse> {
        return self.client.execute(operation: "StartDiscoverer", path: "/v1/discoverers/id/{DiscovererId}/start", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Stops the discoverer
    public func stopDiscoverer(_ input: StopDiscovererRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopDiscovererResponse> {
        return self.client.execute(operation: "StopDiscoverer", path: "/v1/discoverers/id/{DiscovererId}/stop", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Add tags to a resource.
    @discardableResult public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "TagResource", path: "/tags/{ResourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes tags from a resource.
    @discardableResult public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "UntagResource", path: "/tags/{ResourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the discoverer
    public func updateDiscoverer(_ input: UpdateDiscovererRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateDiscovererResponse> {
        return self.client.execute(operation: "UpdateDiscoverer", path: "/v1/discoverers/id/{DiscovererId}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a registry.
    public func updateRegistry(_ input: UpdateRegistryRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateRegistryResponse> {
        return self.client.execute(operation: "UpdateRegistry", path: "/v1/registries/name/{RegistryName}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the schema definition Inactive schemas will be deleted after two years.
    public func updateSchema(_ input: UpdateSchemaRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateSchemaResponse> {
        return self.client.execute(operation: "UpdateSchema", path: "/v1/registries/name/{RegistryName}/schemas/name/{SchemaName}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

extension Schemas {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: Schemas, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
