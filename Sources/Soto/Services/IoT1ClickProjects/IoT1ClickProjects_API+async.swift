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
extension IoT1ClickProjects {
    // MARK: Async API Calls

    /// Associates a physical device with a placement.
    public func associateDeviceWithPlacement(_ input: AssociateDeviceWithPlacementRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssociateDeviceWithPlacementResponse {
        return try await self.client.execute(operation: "AssociateDeviceWithPlacement", path: "/projects/{projectName}/placements/{placementName}/devices/{deviceTemplateName}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates an empty placement.
    public func createPlacement(_ input: CreatePlacementRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePlacementResponse {
        return try await self.client.execute(operation: "CreatePlacement", path: "/projects/{projectName}/placements", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates an empty project with a placement template. A project contains zero or more placements that adhere to the placement template defined in the project.
    public func createProject(_ input: CreateProjectRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateProjectResponse {
        return try await self.client.execute(operation: "CreateProject", path: "/projects", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a placement. To delete a placement, it must not have any devices associated with it.  When you delete a placement, all associated data becomes irretrievable.
    public func deletePlacement(_ input: DeletePlacementRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeletePlacementResponse {
        return try await self.client.execute(operation: "DeletePlacement", path: "/projects/{projectName}/placements/{placementName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a project. To delete a project, it must not have any placements associated with it.  When you delete a project, all associated data becomes irretrievable.
    public func deleteProject(_ input: DeleteProjectRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteProjectResponse {
        return try await self.client.execute(operation: "DeleteProject", path: "/projects/{projectName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes a placement in a project.
    public func describePlacement(_ input: DescribePlacementRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePlacementResponse {
        return try await self.client.execute(operation: "DescribePlacement", path: "/projects/{projectName}/placements/{placementName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns an object describing a project.
    public func describeProject(_ input: DescribeProjectRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProjectResponse {
        return try await self.client.execute(operation: "DescribeProject", path: "/projects/{projectName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes a physical device from a placement.
    public func disassociateDeviceFromPlacement(_ input: DisassociateDeviceFromPlacementRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisassociateDeviceFromPlacementResponse {
        return try await self.client.execute(operation: "DisassociateDeviceFromPlacement", path: "/projects/{projectName}/placements/{placementName}/devices/{deviceTemplateName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns an object enumerating the devices in a placement.
    public func getDevicesInPlacement(_ input: GetDevicesInPlacementRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDevicesInPlacementResponse {
        return try await self.client.execute(operation: "GetDevicesInPlacement", path: "/projects/{projectName}/placements/{placementName}/devices", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the placement(s) of a project.
    public func listPlacements(_ input: ListPlacementsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListPlacementsResponse {
        return try await self.client.execute(operation: "ListPlacements", path: "/projects/{projectName}/placements", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the AWS IoT 1-Click project(s) associated with your AWS account and region.
    public func listProjects(_ input: ListProjectsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListProjectsResponse {
        return try await self.client.execute(operation: "ListProjects", path: "/projects", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the tags (metadata key/value pairs) which you have assigned to the resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates or modifies tags for a resource. Tags are key/value pairs (metadata) that can be used to manage a resource. For more information, see AWS Tagging Strategies.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes one or more tags (metadata key/value pairs) from a resource.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a placement with the given attributes. To clear an attribute, pass an empty value (i.e., "").
    public func updatePlacement(_ input: UpdatePlacementRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdatePlacementResponse {
        return try await self.client.execute(operation: "UpdatePlacement", path: "/projects/{projectName}/placements/{placementName}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a project associated with your AWS account and region. With the exception of device template names, you can pass just the values that need to be updated because the update request will change only the values that are provided. To clear a value, pass the empty string (i.e., "").
    public func updateProject(_ input: UpdateProjectRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateProjectResponse {
        return try await self.client.execute(operation: "UpdateProject", path: "/projects/{projectName}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
