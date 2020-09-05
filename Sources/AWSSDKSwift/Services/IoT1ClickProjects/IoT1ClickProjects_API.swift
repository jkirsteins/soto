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
Client object for interacting with AWS IoT1ClickProjects service.

The AWS IoT 1-Click Projects API Reference
*/
public struct IoT1ClickProjects: AWSService {

    // MARK: Member variables

    public let client: AWSClient
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the IoT1ClickProjects client
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
            service: "projects.iot1click",
            signingName: "iot1click",
            serviceProtocol: .restjson,
            apiVersion: "2018-05-14",
            endpoint: endpoint,
            possibleErrorTypes: [IoT1ClickProjectsErrorType.self],
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }
    
    // MARK: API Calls

    ///  Associates a physical device with a placement.
    public func associateDeviceWithPlacement(_ input: AssociateDeviceWithPlacementRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<AssociateDeviceWithPlacementResponse> {
        return self.client.execute(operation: "AssociateDeviceWithPlacement", path: "/projects/{projectName}/placements/{placementName}/devices/{deviceTemplateName}", httpMethod: .PUT, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates an empty placement.
    public func createPlacement(_ input: CreatePlacementRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreatePlacementResponse> {
        return self.client.execute(operation: "CreatePlacement", path: "/projects/{projectName}/placements", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates an empty project with a placement template. A project contains zero or more placements that adhere to the placement template defined in the project.
    public func createProject(_ input: CreateProjectRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateProjectResponse> {
        return self.client.execute(operation: "CreateProject", path: "/projects", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes a placement. To delete a placement, it must not have any devices associated with it.  When you delete a placement, all associated data becomes irretrievable. 
    public func deletePlacement(_ input: DeletePlacementRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeletePlacementResponse> {
        return self.client.execute(operation: "DeletePlacement", path: "/projects/{projectName}/placements/{placementName}", httpMethod: .DELETE, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes a project. To delete a project, it must not have any placements associated with it.  When you delete a project, all associated data becomes irretrievable. 
    public func deleteProject(_ input: DeleteProjectRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteProjectResponse> {
        return self.client.execute(operation: "DeleteProject", path: "/projects/{projectName}", httpMethod: .DELETE, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Describes a placement in a project.
    public func describePlacement(_ input: DescribePlacementRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribePlacementResponse> {
        return self.client.execute(operation: "DescribePlacement", path: "/projects/{projectName}/placements/{placementName}", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns an object describing a project.
    public func describeProject(_ input: DescribeProjectRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeProjectResponse> {
        return self.client.execute(operation: "DescribeProject", path: "/projects/{projectName}", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Removes a physical device from a placement.
    public func disassociateDeviceFromPlacement(_ input: DisassociateDeviceFromPlacementRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DisassociateDeviceFromPlacementResponse> {
        return self.client.execute(operation: "DisassociateDeviceFromPlacement", path: "/projects/{projectName}/placements/{placementName}/devices/{deviceTemplateName}", httpMethod: .DELETE, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns an object enumerating the devices in a placement.
    public func getDevicesInPlacement(_ input: GetDevicesInPlacementRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetDevicesInPlacementResponse> {
        return self.client.execute(operation: "GetDevicesInPlacement", path: "/projects/{projectName}/placements/{placementName}/devices", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Lists the placement(s) of a project.
    public func listPlacements(_ input: ListPlacementsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListPlacementsResponse> {
        return self.client.execute(operation: "ListPlacements", path: "/projects/{projectName}/placements", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Lists the AWS IoT 1-Click project(s) associated with your AWS account and region.
    public func listProjects(_ input: ListProjectsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListProjectsResponse> {
        return self.client.execute(operation: "ListProjects", path: "/projects", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Lists the tags (metadata key/value pairs) which you have assigned to the resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListTagsForResourceResponse> {
        return self.client.execute(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates or modifies tags for a resource. Tags are key/value pairs (metadata) that can be used to manage a resource. For more information, see AWS Tagging Strategies.
    public func tagResource(_ input: TagResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<TagResourceResponse> {
        return self.client.execute(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Removes one or more tags (metadata key/value pairs) from a resource.
    public func untagResource(_ input: UntagResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UntagResourceResponse> {
        return self.client.execute(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: .DELETE, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates a placement with the given attributes. To clear an attribute, pass an empty value (i.e., "").
    public func updatePlacement(_ input: UpdatePlacementRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdatePlacementResponse> {
        return self.client.execute(operation: "UpdatePlacement", path: "/projects/{projectName}/placements/{placementName}", httpMethod: .PUT, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates a project associated with your AWS account and region. With the exception of device template names, you can pass just the values that need to be updated because the update request will change only the values that are provided. To clear a value, pass the empty string (i.e., "").
    public func updateProject(_ input: UpdateProjectRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateProjectResponse> {
        return self.client.execute(operation: "UpdateProject", path: "/projects/{projectName}", httpMethod: .PUT, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }
}
