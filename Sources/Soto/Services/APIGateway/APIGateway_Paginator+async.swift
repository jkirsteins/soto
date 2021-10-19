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

@available(macOS 9999, iOS 9999, watchOS 9999, tvOS 9999, *)
extension APIGateway {
    ///  Gets information about the current ApiKeys resource.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getApiKeysPaginator(
        _ input: GetApiKeysRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetApiKeysRequest, ApiKeys> {
        return .init(
            input: input,
            command: getApiKeys,
            inputKey: \GetApiKeysRequest.position,
            outputKey: \ApiKeys.position,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Represents a collection of BasePathMapping resources.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getBasePathMappingsPaginator(
        _ input: GetBasePathMappingsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetBasePathMappingsRequest, BasePathMappings> {
        return .init(
            input: input,
            command: getBasePathMappings,
            inputKey: \GetBasePathMappingsRequest.position,
            outputKey: \BasePathMappings.position,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets a collection of ClientCertificate resources.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getClientCertificatesPaginator(
        _ input: GetClientCertificatesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetClientCertificatesRequest, ClientCertificates> {
        return .init(
            input: input,
            command: getClientCertificates,
            inputKey: \GetClientCertificatesRequest.position,
            outputKey: \ClientCertificates.position,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets information about a Deployments collection.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getDeploymentsPaginator(
        _ input: GetDeploymentsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetDeploymentsRequest, Deployments> {
        return .init(
            input: input,
            command: getDeployments,
            inputKey: \GetDeploymentsRequest.position,
            outputKey: \Deployments.position,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Represents a collection of DomainName resources.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getDomainNamesPaginator(
        _ input: GetDomainNamesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetDomainNamesRequest, DomainNames> {
        return .init(
            input: input,
            command: getDomainNames,
            inputKey: \GetDomainNamesRequest.position,
            outputKey: \DomainNames.position,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Describes existing Models defined for a RestApi resource.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getModelsPaginator(
        _ input: GetModelsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetModelsRequest, Models> {
        return .init(
            input: input,
            command: getModels,
            inputKey: \GetModelsRequest.position,
            outputKey: \Models.position,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists information about a collection of Resource resources.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getResourcesPaginator(
        _ input: GetResourcesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetResourcesRequest, Resources> {
        return .init(
            input: input,
            command: getResources,
            inputKey: \GetResourcesRequest.position,
            outputKey: \Resources.position,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the RestApis resources for your collection.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getRestApisPaginator(
        _ input: GetRestApisRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetRestApisRequest, RestApis> {
        return .init(
            input: input,
            command: getRestApis,
            inputKey: \GetRestApisRequest.position,
            outputKey: \RestApis.position,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets the usage data of a usage plan in a specified time interval.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getUsagePaginator(
        _ input: GetUsageRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetUsageRequest, Usage> {
        return .init(
            input: input,
            command: getUsage,
            inputKey: \GetUsageRequest.position,
            outputKey: \Usage.position,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets all the usage plan keys representing the API keys added to a specified usage plan.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getUsagePlanKeysPaginator(
        _ input: GetUsagePlanKeysRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetUsagePlanKeysRequest, UsagePlanKeys> {
        return .init(
            input: input,
            command: getUsagePlanKeys,
            inputKey: \GetUsagePlanKeysRequest.position,
            outputKey: \UsagePlanKeys.position,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets all the usage plans of the caller's account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getUsagePlansPaginator(
        _ input: GetUsagePlansRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetUsagePlansRequest, UsagePlans> {
        return .init(
            input: input,
            command: getUsagePlans,
            inputKey: \GetUsagePlansRequest.position,
            outputKey: \UsagePlans.position,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets the VpcLinks collection under the caller's account in a selected region.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getVpcLinksPaginator(
        _ input: GetVpcLinksRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetVpcLinksRequest, VpcLinks> {
        return .init(
            input: input,
            command: getVpcLinks,
            inputKey: \GetVpcLinksRequest.position,
            outputKey: \VpcLinks.position,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
