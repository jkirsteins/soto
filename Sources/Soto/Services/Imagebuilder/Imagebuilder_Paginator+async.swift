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
extension Imagebuilder {
    ///   Returns the list of component build versions for the specified semantic version.
    ///
    ///  			         The semantic version has four nodes: ../.
    ///  	You can assign values for the first three, and can filter on all of them.
    ///  			          Filtering: With semantic versioning, you have the flexibility to use wildcards (x)
    ///  	to specify the most recent versions or nodes when selecting the base image or components for your
    ///  	recipe. When you use a wildcard in any node, all nodes to the right of the first wildcard must also be
    ///  	wildcards.
    ///
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listComponentBuildVersionsPaginator(
        _ input: ListComponentBuildVersionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListComponentBuildVersionsRequest, ListComponentBuildVersionsResponse> {
        return .init(
            input: input,
            command: listComponentBuildVersions,
            inputKey: \ListComponentBuildVersionsRequest.nextToken,
            outputKey: \ListComponentBuildVersionsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns the list of component build versions for the specified semantic version.
    ///
    ///  			         The semantic version has four nodes: ../.
    ///  	You can assign values for the first three, and can filter on all of them.
    ///  			          Filtering: With semantic versioning, you have the flexibility to use wildcards (x)
    ///  	to specify the most recent versions or nodes when selecting the base image or components for your
    ///  	recipe. When you use a wildcard in any node, all nodes to the right of the first wildcard must also be
    ///  	wildcards.
    ///
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listComponentsPaginator(
        _ input: ListComponentsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListComponentsRequest, ListComponentsResponse> {
        return .init(
            input: input,
            command: listComponents,
            inputKey: \ListComponentsRequest.nextToken,
            outputKey: \ListComponentsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of container recipes.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listContainerRecipesPaginator(
        _ input: ListContainerRecipesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListContainerRecipesRequest, ListContainerRecipesResponse> {
        return .init(
            input: input,
            command: listContainerRecipes,
            inputKey: \ListContainerRecipesRequest.nextToken,
            outputKey: \ListContainerRecipesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of distribution configurations.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listDistributionConfigurationsPaginator(
        _ input: ListDistributionConfigurationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListDistributionConfigurationsRequest, ListDistributionConfigurationsResponse> {
        return .init(
            input: input,
            command: listDistributionConfigurations,
            inputKey: \ListDistributionConfigurationsRequest.nextToken,
            outputKey: \ListDistributionConfigurationsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///   Returns a list of image build versions.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listImageBuildVersionsPaginator(
        _ input: ListImageBuildVersionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListImageBuildVersionsRequest, ListImageBuildVersionsResponse> {
        return .init(
            input: input,
            command: listImageBuildVersions,
            inputKey: \ListImageBuildVersionsRequest.nextToken,
            outputKey: \ListImageBuildVersionsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  List the Packages that are associated with an Image Build Version, as determined by Amazon Web Services Systems Manager Inventory at build time.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listImagePackagesPaginator(
        _ input: ListImagePackagesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListImagePackagesRequest, ListImagePackagesResponse> {
        return .init(
            input: input,
            command: listImagePackages,
            inputKey: \ListImagePackagesRequest.nextToken,
            outputKey: \ListImagePackagesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///   Returns a list of images created by the specified pipeline.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listImagePipelineImagesPaginator(
        _ input: ListImagePipelineImagesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListImagePipelineImagesRequest, ListImagePipelineImagesResponse> {
        return .init(
            input: input,
            command: listImagePipelineImages,
            inputKey: \ListImagePipelineImagesRequest.nextToken,
            outputKey: \ListImagePipelineImagesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of image pipelines.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listImagePipelinesPaginator(
        _ input: ListImagePipelinesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListImagePipelinesRequest, ListImagePipelinesResponse> {
        return .init(
            input: input,
            command: listImagePipelines,
            inputKey: \ListImagePipelinesRequest.nextToken,
            outputKey: \ListImagePipelinesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///   Returns a list of image recipes.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listImageRecipesPaginator(
        _ input: ListImageRecipesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListImageRecipesRequest, ListImageRecipesResponse> {
        return .init(
            input: input,
            command: listImageRecipes,
            inputKey: \ListImageRecipesRequest.nextToken,
            outputKey: \ListImageRecipesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///   Returns the list of images that you have access to.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listImagesPaginator(
        _ input: ListImagesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListImagesRequest, ListImagesResponse> {
        return .init(
            input: input,
            command: listImages,
            inputKey: \ListImagesRequest.nextToken,
            outputKey: \ListImagesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///   Returns a list of infrastructure configurations.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listInfrastructureConfigurationsPaginator(
        _ input: ListInfrastructureConfigurationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListInfrastructureConfigurationsRequest, ListInfrastructureConfigurationsResponse> {
        return .init(
            input: input,
            command: listInfrastructureConfigurations,
            inputKey: \ListInfrastructureConfigurationsRequest.nextToken,
            outputKey: \ListInfrastructureConfigurationsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
