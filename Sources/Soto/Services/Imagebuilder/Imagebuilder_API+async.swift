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
extension Imagebuilder {
    // MARK: Async API Calls

    /// CancelImageCreation cancels the creation of Image. This operation can only be used on
    /// 			images in a non-terminal state.
    public func cancelImageCreation(_ input: CancelImageCreationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CancelImageCreationResponse {
        return try await self.client.execute(operation: "CancelImageCreation", path: "/CancelImageCreation", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new component that can be used to build, validate, test, and assess your
    /// 			image.
    public func createComponent(_ input: CreateComponentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateComponentResponse {
        return try await self.client.execute(operation: "CreateComponent", path: "/CreateComponent", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new container recipe. Container recipes define how images are configured, tested, and assessed.
    public func createContainerRecipe(_ input: CreateContainerRecipeRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateContainerRecipeResponse {
        return try await self.client.execute(operation: "CreateContainerRecipe", path: "/CreateContainerRecipe", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new distribution configuration. Distribution configurations define and configure
    /// 			the outputs of your pipeline.
    public func createDistributionConfiguration(_ input: CreateDistributionConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDistributionConfigurationResponse {
        return try await self.client.execute(operation: "CreateDistributionConfiguration", path: "/CreateDistributionConfiguration", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Creates a new image. This request will create a new image along with all of the
    /// 			configured output resources defined in the distribution configuration. You must specify
    /// 			exactly one recipe for your image, using either a ContainerRecipeArn or an ImageRecipeArn.
    public func createImage(_ input: CreateImageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateImageResponse {
        return try await self.client.execute(operation: "CreateImage", path: "/CreateImage", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Creates a new image pipeline. Image pipelines enable you to automate the creation and
    /// 			distribution of images.
    public func createImagePipeline(_ input: CreateImagePipelineRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateImagePipelineResponse {
        return try await self.client.execute(operation: "CreateImagePipeline", path: "/CreateImagePipeline", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Creates a new image recipe. Image recipes define how images are configured, tested, and
    /// 			assessed.
    public func createImageRecipe(_ input: CreateImageRecipeRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateImageRecipeResponse {
        return try await self.client.execute(operation: "CreateImageRecipe", path: "/CreateImageRecipe", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Creates a new infrastructure configuration. An infrastructure configuration defines the
    /// 			environment in which your image will be built and tested.
    public func createInfrastructureConfiguration(_ input: CreateInfrastructureConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateInfrastructureConfigurationResponse {
        return try await self.client.execute(operation: "CreateInfrastructureConfiguration", path: "/CreateInfrastructureConfiguration", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Deletes a component build version.
    public func deleteComponent(_ input: DeleteComponentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteComponentResponse {
        return try await self.client.execute(operation: "DeleteComponent", path: "/DeleteComponent", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a container recipe.
    public func deleteContainerRecipe(_ input: DeleteContainerRecipeRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteContainerRecipeResponse {
        return try await self.client.execute(operation: "DeleteContainerRecipe", path: "/DeleteContainerRecipe", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Deletes a distribution configuration.
    public func deleteDistributionConfiguration(_ input: DeleteDistributionConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDistributionConfigurationResponse {
        return try await self.client.execute(operation: "DeleteDistributionConfiguration", path: "/DeleteDistributionConfiguration", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an Image Builder image resource. This does not delete any EC2 AMIs or ECR container images
    /// 			that are created during the image build process. You must clean those up separately,
    /// 			using the appropriate Amazon EC2 or Amazon ECR console actions, or API or CLI commands.
    ///
    /// 				           To deregister an EC2 Linux AMI, see Deregister
    /// 						your Linux AMI in the  Amazon EC2 User Guide .
    ///
    /// 				           To deregister an EC2 Windows AMI, see Deregister
    /// 						your Windows AMI in the  Amazon EC2 Windows Guide .
    ///
    /// 				           To delete a container image from Amazon ECR, see Deleting
    /// 						an image in the Amazon ECR User Guide.
    ///
    public func deleteImage(_ input: DeleteImageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteImageResponse {
        return try await self.client.execute(operation: "DeleteImage", path: "/DeleteImage", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Deletes an image pipeline.
    public func deleteImagePipeline(_ input: DeleteImagePipelineRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteImagePipelineResponse {
        return try await self.client.execute(operation: "DeleteImagePipeline", path: "/DeleteImagePipeline", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Deletes an image recipe.
    public func deleteImageRecipe(_ input: DeleteImageRecipeRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteImageRecipeResponse {
        return try await self.client.execute(operation: "DeleteImageRecipe", path: "/DeleteImageRecipe", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Deletes an infrastructure configuration.
    public func deleteInfrastructureConfiguration(_ input: DeleteInfrastructureConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteInfrastructureConfigurationResponse {
        return try await self.client.execute(operation: "DeleteInfrastructureConfiguration", path: "/DeleteInfrastructureConfiguration", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Gets a component object.
    public func getComponent(_ input: GetComponentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetComponentResponse {
        return try await self.client.execute(operation: "GetComponent", path: "/GetComponent", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Gets a component policy.
    public func getComponentPolicy(_ input: GetComponentPolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetComponentPolicyResponse {
        return try await self.client.execute(operation: "GetComponentPolicy", path: "/GetComponentPolicy", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a container recipe.
    public func getContainerRecipe(_ input: GetContainerRecipeRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetContainerRecipeResponse {
        return try await self.client.execute(operation: "GetContainerRecipe", path: "/GetContainerRecipe", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the policy for a container recipe.
    public func getContainerRecipePolicy(_ input: GetContainerRecipePolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetContainerRecipePolicyResponse {
        return try await self.client.execute(operation: "GetContainerRecipePolicy", path: "/GetContainerRecipePolicy", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Gets a distribution configuration.
    public func getDistributionConfiguration(_ input: GetDistributionConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDistributionConfigurationResponse {
        return try await self.client.execute(operation: "GetDistributionConfiguration", path: "/GetDistributionConfiguration", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Gets an image.
    public func getImage(_ input: GetImageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetImageResponse {
        return try await self.client.execute(operation: "GetImage", path: "/GetImage", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Gets an image pipeline.
    public func getImagePipeline(_ input: GetImagePipelineRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetImagePipelineResponse {
        return try await self.client.execute(operation: "GetImagePipeline", path: "/GetImagePipeline", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Gets an image policy.
    public func getImagePolicy(_ input: GetImagePolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetImagePolicyResponse {
        return try await self.client.execute(operation: "GetImagePolicy", path: "/GetImagePolicy", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Gets an image recipe.
    public func getImageRecipe(_ input: GetImageRecipeRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetImageRecipeResponse {
        return try await self.client.execute(operation: "GetImageRecipe", path: "/GetImageRecipe", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Gets an image recipe policy.
    public func getImageRecipePolicy(_ input: GetImageRecipePolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetImageRecipePolicyResponse {
        return try await self.client.execute(operation: "GetImageRecipePolicy", path: "/GetImageRecipePolicy", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Gets an infrastructure configuration.
    public func getInfrastructureConfiguration(_ input: GetInfrastructureConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetInfrastructureConfigurationResponse {
        return try await self.client.execute(operation: "GetInfrastructureConfiguration", path: "/GetInfrastructureConfiguration", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Imports a component and transforms its data into a component document.
    public func importComponent(_ input: ImportComponentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ImportComponentResponse {
        return try await self.client.execute(operation: "ImportComponent", path: "/ImportComponent", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns the list of component build versions for the specified semantic version.
    ///
    /// 			         The semantic version has four nodes: ../.
    /// 	You can assign values for the first three, and can filter on all of them.
    /// 			          Filtering: With semantic versioning, you have the flexibility to use wildcards (x)
    /// 	to specify the most recent versions or nodes when selecting the base image or components for your
    /// 	recipe. When you use a wildcard in any node, all nodes to the right of the first wildcard must also be
    /// 	wildcards.
    ///
    public func listComponentBuildVersions(_ input: ListComponentBuildVersionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListComponentBuildVersionsResponse {
        return try await self.client.execute(operation: "ListComponentBuildVersions", path: "/ListComponentBuildVersions", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the list of component build versions for the specified semantic version.
    ///
    /// 			         The semantic version has four nodes: ../.
    /// 	You can assign values for the first three, and can filter on all of them.
    /// 			          Filtering: With semantic versioning, you have the flexibility to use wildcards (x)
    /// 	to specify the most recent versions or nodes when selecting the base image or components for your
    /// 	recipe. When you use a wildcard in any node, all nodes to the right of the first wildcard must also be
    /// 	wildcards.
    ///
    public func listComponents(_ input: ListComponentsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListComponentsResponse {
        return try await self.client.execute(operation: "ListComponents", path: "/ListComponents", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of container recipes.
    public func listContainerRecipes(_ input: ListContainerRecipesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListContainerRecipesResponse {
        return try await self.client.execute(operation: "ListContainerRecipes", path: "/ListContainerRecipes", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of distribution configurations.
    public func listDistributionConfigurations(_ input: ListDistributionConfigurationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListDistributionConfigurationsResponse {
        return try await self.client.execute(operation: "ListDistributionConfigurations", path: "/ListDistributionConfigurations", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns a list of image build versions.
    public func listImageBuildVersions(_ input: ListImageBuildVersionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListImageBuildVersionsResponse {
        return try await self.client.execute(operation: "ListImageBuildVersions", path: "/ListImageBuildVersions", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List the Packages that are associated with an Image Build Version, as determined by Amazon Web Services Systems Manager Inventory at build time.
    public func listImagePackages(_ input: ListImagePackagesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListImagePackagesResponse {
        return try await self.client.execute(operation: "ListImagePackages", path: "/ListImagePackages", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns a list of images created by the specified pipeline.
    public func listImagePipelineImages(_ input: ListImagePipelineImagesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListImagePipelineImagesResponse {
        return try await self.client.execute(operation: "ListImagePipelineImages", path: "/ListImagePipelineImages", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of image pipelines.
    public func listImagePipelines(_ input: ListImagePipelinesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListImagePipelinesResponse {
        return try await self.client.execute(operation: "ListImagePipelines", path: "/ListImagePipelines", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns a list of image recipes.
    public func listImageRecipes(_ input: ListImageRecipesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListImageRecipesResponse {
        return try await self.client.execute(operation: "ListImageRecipes", path: "/ListImageRecipes", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns the list of images that you have access to.
    public func listImages(_ input: ListImagesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListImagesResponse {
        return try await self.client.execute(operation: "ListImages", path: "/ListImages", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns a list of infrastructure configurations.
    public func listInfrastructureConfigurations(_ input: ListInfrastructureConfigurationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListInfrastructureConfigurationsResponse {
        return try await self.client.execute(operation: "ListInfrastructureConfigurations", path: "/ListInfrastructureConfigurations", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns the list of tags for the specified resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Applies a policy to a component. We recommend that you call the RAM API CreateResourceShare to share resources. If you call the Image Builder API
    /// 			PutComponentPolicy, you must also call the RAM API PromoteResourceShareCreatedFromPolicy in order for the resource to be visible to
    /// 			all principals with whom the resource is shared.
    public func putComponentPolicy(_ input: PutComponentPolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutComponentPolicyResponse {
        return try await self.client.execute(operation: "PutComponentPolicy", path: "/PutComponentPolicy", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Applies a policy to a container image. We recommend that you call the RAM API CreateResourceShare (https://docs.aws.amazon.com//ram/latest/APIReference/API_CreateResourceShare.html) to share resources. If you call the Image Builder API PutContainerImagePolicy, you must also call the RAM API PromoteResourceShareCreatedFromPolicy (https://docs.aws.amazon.com//ram/latest/APIReference/API_PromoteResourceShareCreatedFromPolicy.html) in order for the resource to be visible to all principals with whom the resource is shared.
    public func putContainerRecipePolicy(_ input: PutContainerRecipePolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutContainerRecipePolicyResponse {
        return try await self.client.execute(operation: "PutContainerRecipePolicy", path: "/PutContainerRecipePolicy", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Applies a policy to an image. We recommend that you call the RAM API CreateResourceShare to share resources. If you call the Image Builder API
    /// 			PutImagePolicy, you must also call the RAM API PromoteResourceShareCreatedFromPolicy in order for the resource to be visible to
    /// 			all principals with whom the resource is shared.
    public func putImagePolicy(_ input: PutImagePolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutImagePolicyResponse {
        return try await self.client.execute(operation: "PutImagePolicy", path: "/PutImagePolicy", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Applies a policy to an image recipe. We recommend that you call the RAM API CreateResourceShare to share resources. If you call the Image Builder API
    /// 			PutImageRecipePolicy, you must also call the RAM API PromoteResourceShareCreatedFromPolicy in order for the resource to be visible to
    /// 			all principals with whom the resource is shared.
    public func putImageRecipePolicy(_ input: PutImageRecipePolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutImageRecipePolicyResponse {
        return try await self.client.execute(operation: "PutImageRecipePolicy", path: "/PutImageRecipePolicy", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Manually triggers a pipeline to create an image.
    public func startImagePipelineExecution(_ input: StartImagePipelineExecutionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartImagePipelineExecutionResponse {
        return try await self.client.execute(operation: "StartImagePipelineExecution", path: "/StartImagePipelineExecution", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Adds a tag to a resource.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Removes a tag from a resource.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Updates a new distribution configuration. Distribution configurations define and
    /// 			configure the outputs of your pipeline.
    public func updateDistributionConfiguration(_ input: UpdateDistributionConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateDistributionConfigurationResponse {
        return try await self.client.execute(operation: "UpdateDistributionConfiguration", path: "/UpdateDistributionConfiguration", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Updates an image pipeline. Image pipelines enable you to automate the creation and
    /// 			distribution of images.
    /// 		        UpdateImagePipeline does not support selective updates for the pipeline.
    /// 			You must specify all of the required properties in the update request, not just
    /// 			the properties that have changed.
    public func updateImagePipeline(_ input: UpdateImagePipelineRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateImagePipelineResponse {
        return try await self.client.execute(operation: "UpdateImagePipeline", path: "/UpdateImagePipeline", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Updates a new infrastructure configuration. An infrastructure configuration defines the
    /// 			environment in which your image will be built and tested.
    public func updateInfrastructureConfiguration(_ input: UpdateInfrastructureConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateInfrastructureConfigurationResponse {
        return try await self.client.execute(operation: "UpdateInfrastructureConfiguration", path: "/UpdateInfrastructureConfiguration", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
