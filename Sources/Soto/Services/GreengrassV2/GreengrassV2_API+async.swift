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
extension GreengrassV2 {
    // MARK: Async API Calls

    /// Associate a list of client devices with a core device. Use this API operation to specify which client devices can discover a core device through cloud discovery. With cloud discovery, client devices connect to IoT Greengrass to retrieve associated core devices' connectivity information and certificates. For more information, see Configure cloud discovery in the IoT Greengrass V2 Developer Guide.   Client devices are local IoT devices that connect to and communicate with an IoT Greengrass core device over MQTT. You can connect client devices to a core device to sync MQTT messages and data to Amazon Web Services IoT Core and interact with client devices in Greengrass components. For more information, see Interact with local IoT devices in the IoT Greengrass V2 Developer Guide.
    public func batchAssociateClientDeviceWithCoreDevice(_ input: BatchAssociateClientDeviceWithCoreDeviceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchAssociateClientDeviceWithCoreDeviceResponse {
        return try await self.client.execute(operation: "BatchAssociateClientDeviceWithCoreDevice", path: "/greengrass/v2/coreDevices/{coreDeviceThingName}/associateClientDevices", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disassociate a list of client devices from a core device. After you disassociate a client device from a core device, the client device won't be able to use cloud discovery to retrieve the core device's connectivity information and certificates.
    public func batchDisassociateClientDeviceFromCoreDevice(_ input: BatchDisassociateClientDeviceFromCoreDeviceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchDisassociateClientDeviceFromCoreDeviceResponse {
        return try await self.client.execute(operation: "BatchDisassociateClientDeviceFromCoreDevice", path: "/greengrass/v2/coreDevices/{coreDeviceThingName}/disassociateClientDevices", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Cancels a deployment. This operation cancels the deployment for devices that haven't yet received it. If a device already received the deployment, this operation doesn't change anything for that device.
    public func cancelDeployment(_ input: CancelDeploymentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CancelDeploymentResponse {
        return try await self.client.execute(operation: "CancelDeployment", path: "/greengrass/v2/deployments/{deploymentId}/cancel", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a component. Components are software that run on Greengrass core devices. After you develop and test a component on your core device, you can use this operation to upload your component to IoT Greengrass. Then, you can deploy the component to other core devices. You can use this operation to do the following:    Create components from recipes  Create a component from a recipe, which is a file that defines the component's metadata, parameters, dependencies, lifecycle, artifacts, and platform capability. For more information, see IoT Greengrass component recipe reference in the IoT Greengrass V2 Developer Guide. To create a component from a recipe, specify inlineRecipe when you call this operation.    Create components from Lambda functions  Create a component from an Lambda function that runs on IoT Greengrass. This creates a recipe and artifacts from the Lambda function's deployment package. You can use this operation to migrate Lambda functions from IoT Greengrass V1 to IoT Greengrass V2. This function only accepts Lambda functions that use the following runtimes:   Python 2.7 – python2.7    Python 3.7 – python3.7    Python 3.8 – python3.8    Java 8 – java8    Node.js 10 – nodejs10.x    Node.js 12 – nodejs12.x    To create a component from a Lambda function, specify lambdaFunction when you call this operation.  IoT Greengrass currently supports Lambda functions on only Linux core devices.
    public func createComponentVersion(_ input: CreateComponentVersionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateComponentVersionResponse {
        return try await self.client.execute(operation: "CreateComponentVersion", path: "/greengrass/v2/createComponentVersion", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a continuous deployment for a target, which is a Greengrass core device or group of core devices. When you add a new core device to a group of core devices that has a deployment, IoT Greengrass deploys that group's deployment to the new device. You can define one deployment for each target. When you create a new deployment for a target that has an existing deployment, you replace the previous deployment. IoT Greengrass applies the new deployment to the target devices. Every deployment has a revision number that indicates how many deployment revisions you define for a target. Use this operation to create a new revision of an existing deployment. This operation returns the revision number of the new deployment when you create it. For more information, see the Create deployments in the IoT Greengrass V2 Developer Guide.
    public func createDeployment(_ input: CreateDeploymentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDeploymentResponse {
        return try await self.client.execute(operation: "CreateDeployment", path: "/greengrass/v2/deployments", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a version of a component from IoT Greengrass.  This operation deletes the component's recipe and artifacts. As a result, deployments that refer to this component version will fail. If you have deployments that use this component version, you can remove the component from the deployment or update the deployment to use a valid version.
    public func deleteComponent(_ input: DeleteComponentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteComponent", path: "/greengrass/v2/components/{arn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a Greengrass core device, which is an IoT thing. This operation removes the core device from the list of core devices. This operation doesn't delete the IoT thing. For more information about how to delete the IoT thing, see DeleteThing in the IoT API Reference.
    public func deleteCoreDevice(_ input: DeleteCoreDeviceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteCoreDevice", path: "/greengrass/v2/coreDevices/{coreDeviceThingName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves metadata for a version of a component.
    public func describeComponent(_ input: DescribeComponentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeComponentResponse {
        return try await self.client.execute(operation: "DescribeComponent", path: "/greengrass/v2/components/{arn}/metadata", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the recipe for a version of a component. Core devices can call this operation to identify the artifacts and requirements to install a component.
    public func getComponent(_ input: GetComponentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetComponentResponse {
        return try await self.client.execute(operation: "GetComponent", path: "/greengrass/v2/components/{arn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the pre-signed URL to download a public component artifact. Core devices call this operation to identify the URL that they can use to download an artifact to install.
    public func getComponentVersionArtifact(_ input: GetComponentVersionArtifactRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetComponentVersionArtifactResponse {
        return try await self.client.execute(operation: "GetComponentVersionArtifact", path: "/greengrass/v2/components/{arn}/artifacts/{artifactName+}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves metadata for a Greengrass core device.
    public func getCoreDevice(_ input: GetCoreDeviceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetCoreDeviceResponse {
        return try await self.client.execute(operation: "GetCoreDevice", path: "/greengrass/v2/coreDevices/{coreDeviceThingName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets a deployment. Deployments define the components that run on Greengrass core devices.
    public func getDeployment(_ input: GetDeploymentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDeploymentResponse {
        return try await self.client.execute(operation: "GetDeployment", path: "/greengrass/v2/deployments/{deploymentId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a paginated list of client devices that are associated with a core device.
    public func listClientDevicesAssociatedWithCoreDevice(_ input: ListClientDevicesAssociatedWithCoreDeviceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListClientDevicesAssociatedWithCoreDeviceResponse {
        return try await self.client.execute(operation: "ListClientDevicesAssociatedWithCoreDevice", path: "/greengrass/v2/coreDevices/{coreDeviceThingName}/associatedClientDevices", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a paginated list of all versions for a component. Greater versions are listed first.
    public func listComponentVersions(_ input: ListComponentVersionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListComponentVersionsResponse {
        return try await self.client.execute(operation: "ListComponentVersions", path: "/greengrass/v2/components/{arn}/versions", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a paginated list of component summaries. This list includes components that you have permission to view.
    public func listComponents(_ input: ListComponentsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListComponentsResponse {
        return try await self.client.execute(operation: "ListComponents", path: "/greengrass/v2/components", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a paginated list of Greengrass core devices.
    public func listCoreDevices(_ input: ListCoreDevicesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListCoreDevicesResponse {
        return try await self.client.execute(operation: "ListCoreDevices", path: "/greengrass/v2/coreDevices", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a paginated list of deployments.
    public func listDeployments(_ input: ListDeploymentsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListDeploymentsResponse {
        return try await self.client.execute(operation: "ListDeployments", path: "/greengrass/v2/deployments", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a paginated list of deployment jobs that IoT Greengrass sends to Greengrass core devices.
    public func listEffectiveDeployments(_ input: ListEffectiveDeploymentsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListEffectiveDeploymentsResponse {
        return try await self.client.execute(operation: "ListEffectiveDeployments", path: "/greengrass/v2/coreDevices/{coreDeviceThingName}/effectiveDeployments", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a paginated list of the components that a Greengrass core device runs.
    public func listInstalledComponents(_ input: ListInstalledComponentsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListInstalledComponentsResponse {
        return try await self.client.execute(operation: "ListInstalledComponents", path: "/greengrass/v2/coreDevices/{coreDeviceThingName}/installedComponents", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the list of tags for an IoT Greengrass resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a list of components that meet the component, version, and platform requirements of a deployment. Greengrass core devices call this operation when they receive a deployment to identify the components to install. This operation identifies components that meet all dependency requirements for a deployment. If the requirements conflict, then this operation returns an error and the deployment fails. For example, this occurs if component A requires version >2.0.0 and component B requires version  of a component dependency. When you specify the component candidates to resolve, IoT Greengrass compares each component's digest from the core device with the component's digest in the Amazon Web Services Cloud. If the digests don't match, then IoT Greengrass specifies to use the version from the Amazon Web Services Cloud.  To use this operation, you must use the data plane API endpoint and authenticate with an IoT device certificate. For more information, see IoT Greengrass endpoints and quotas.
    public func resolveComponentCandidates(_ input: ResolveComponentCandidatesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResolveComponentCandidatesResponse {
        return try await self.client.execute(operation: "ResolveComponentCandidates", path: "/greengrass/v2/resolveComponentCandidates", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds tags to an IoT Greengrass resource. If a tag already exists for the resource, this operation updates the tag's value.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes a tag from an IoT Greengrass resource.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
