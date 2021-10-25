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
extension Proton {
    ///  View a list of environment account connections. For more information, see Environment account connections in the AWS Proton Administrator guide.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listEnvironmentAccountConnectionsPaginator(
        _ input: ListEnvironmentAccountConnectionsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListEnvironmentAccountConnectionsInput, ListEnvironmentAccountConnectionsOutput> {
        return .init(
            input: input,
            command: listEnvironmentAccountConnections,
            inputKey: \ListEnvironmentAccountConnectionsInput.nextToken,
            outputKey: \ListEnvironmentAccountConnectionsOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  List major or minor versions of an environment template with detail data.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listEnvironmentTemplateVersionsPaginator(
        _ input: ListEnvironmentTemplateVersionsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListEnvironmentTemplateVersionsInput, ListEnvironmentTemplateVersionsOutput> {
        return .init(
            input: input,
            command: listEnvironmentTemplateVersions,
            inputKey: \ListEnvironmentTemplateVersionsInput.nextToken,
            outputKey: \ListEnvironmentTemplateVersionsOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  List environment templates.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listEnvironmentTemplatesPaginator(
        _ input: ListEnvironmentTemplatesInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListEnvironmentTemplatesInput, ListEnvironmentTemplatesOutput> {
        return .init(
            input: input,
            command: listEnvironmentTemplates,
            inputKey: \ListEnvironmentTemplatesInput.nextToken,
            outputKey: \ListEnvironmentTemplatesOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  List environments with detail data summaries.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listEnvironmentsPaginator(
        _ input: ListEnvironmentsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListEnvironmentsInput, ListEnvironmentsOutput> {
        return .init(
            input: input,
            command: listEnvironments,
            inputKey: \ListEnvironmentsInput.nextToken,
            outputKey: \ListEnvironmentsOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  List service instances with summaries of detail data.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listServiceInstancesPaginator(
        _ input: ListServiceInstancesInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListServiceInstancesInput, ListServiceInstancesOutput> {
        return .init(
            input: input,
            command: listServiceInstances,
            inputKey: \ListServiceInstancesInput.nextToken,
            outputKey: \ListServiceInstancesOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  List major or minor versions of a service template with detail data.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listServiceTemplateVersionsPaginator(
        _ input: ListServiceTemplateVersionsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListServiceTemplateVersionsInput, ListServiceTemplateVersionsOutput> {
        return .init(
            input: input,
            command: listServiceTemplateVersions,
            inputKey: \ListServiceTemplateVersionsInput.nextToken,
            outputKey: \ListServiceTemplateVersionsOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  List service templates with detail data.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listServiceTemplatesPaginator(
        _ input: ListServiceTemplatesInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListServiceTemplatesInput, ListServiceTemplatesOutput> {
        return .init(
            input: input,
            command: listServiceTemplates,
            inputKey: \ListServiceTemplatesInput.nextToken,
            outputKey: \ListServiceTemplatesOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  List services with summaries of detail data.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listServicesPaginator(
        _ input: ListServicesInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListServicesInput, ListServicesOutput> {
        return .init(
            input: input,
            command: listServices,
            inputKey: \ListServicesInput.nextToken,
            outputKey: \ListServicesOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  List tags for a resource. For more information, see AWS Proton resources and tagging in the AWS Proton Administrator Guide or AWS Proton User Guide.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listTagsForResourcePaginator(
        _ input: ListTagsForResourceInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListTagsForResourceInput, ListTagsForResourceOutput> {
        return .init(
            input: input,
            command: listTagsForResource,
            inputKey: \ListTagsForResourceInput.nextToken,
            outputKey: \ListTagsForResourceOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
