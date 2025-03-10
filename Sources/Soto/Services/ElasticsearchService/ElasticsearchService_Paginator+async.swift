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
extension ElasticsearchService {
    ///  Provides scheduled Auto-Tune action details for the Elasticsearch domain, such as Auto-Tune action type, description, severity, and scheduled date.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeDomainAutoTunesPaginator(
        _ input: DescribeDomainAutoTunesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeDomainAutoTunesRequest, DescribeDomainAutoTunesResponse> {
        return .init(
            input: input,
            command: describeDomainAutoTunes,
            inputKey: \DescribeDomainAutoTunesRequest.nextToken,
            outputKey: \DescribeDomainAutoTunesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists all the inbound cross-cluster search connections for a destination domain.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeInboundCrossClusterSearchConnectionsPaginator(
        _ input: DescribeInboundCrossClusterSearchConnectionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeInboundCrossClusterSearchConnectionsRequest, DescribeInboundCrossClusterSearchConnectionsResponse> {
        return .init(
            input: input,
            command: describeInboundCrossClusterSearchConnections,
            inputKey: \DescribeInboundCrossClusterSearchConnectionsRequest.nextToken,
            outputKey: \DescribeInboundCrossClusterSearchConnectionsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists all the outbound cross-cluster search connections for a source domain.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeOutboundCrossClusterSearchConnectionsPaginator(
        _ input: DescribeOutboundCrossClusterSearchConnectionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeOutboundCrossClusterSearchConnectionsRequest, DescribeOutboundCrossClusterSearchConnectionsResponse> {
        return .init(
            input: input,
            command: describeOutboundCrossClusterSearchConnections,
            inputKey: \DescribeOutboundCrossClusterSearchConnectionsRequest.nextToken,
            outputKey: \DescribeOutboundCrossClusterSearchConnectionsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Describes all packages available to Amazon ES. Includes options for filtering, limiting the number of results, and pagination.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describePackagesPaginator(
        _ input: DescribePackagesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribePackagesRequest, DescribePackagesResponse> {
        return .init(
            input: input,
            command: describePackages,
            inputKey: \DescribePackagesRequest.nextToken,
            outputKey: \DescribePackagesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists available reserved Elasticsearch instance offerings.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeReservedElasticsearchInstanceOfferingsPaginator(
        _ input: DescribeReservedElasticsearchInstanceOfferingsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeReservedElasticsearchInstanceOfferingsRequest, DescribeReservedElasticsearchInstanceOfferingsResponse> {
        return .init(
            input: input,
            command: describeReservedElasticsearchInstanceOfferings,
            inputKey: \DescribeReservedElasticsearchInstanceOfferingsRequest.nextToken,
            outputKey: \DescribeReservedElasticsearchInstanceOfferingsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns information about reserved Elasticsearch instances for this account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeReservedElasticsearchInstancesPaginator(
        _ input: DescribeReservedElasticsearchInstancesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeReservedElasticsearchInstancesRequest, DescribeReservedElasticsearchInstancesResponse> {
        return .init(
            input: input,
            command: describeReservedElasticsearchInstances,
            inputKey: \DescribeReservedElasticsearchInstancesRequest.nextToken,
            outputKey: \DescribeReservedElasticsearchInstancesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of versions of the package, along with their creation time and commit message.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getPackageVersionHistoryPaginator(
        _ input: GetPackageVersionHistoryRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetPackageVersionHistoryRequest, GetPackageVersionHistoryResponse> {
        return .init(
            input: input,
            command: getPackageVersionHistory,
            inputKey: \GetPackageVersionHistoryRequest.nextToken,
            outputKey: \GetPackageVersionHistoryResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves the complete history of the last 10 upgrades that were performed on the domain.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func getUpgradeHistoryPaginator(
        _ input: GetUpgradeHistoryRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<GetUpgradeHistoryRequest, GetUpgradeHistoryResponse> {
        return .init(
            input: input,
            command: getUpgradeHistory,
            inputKey: \GetUpgradeHistoryRequest.nextToken,
            outputKey: \GetUpgradeHistoryResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists all Amazon ES domains associated with the package.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listDomainsForPackagePaginator(
        _ input: ListDomainsForPackageRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListDomainsForPackageRequest, ListDomainsForPackageResponse> {
        return .init(
            input: input,
            command: listDomainsForPackage,
            inputKey: \ListDomainsForPackageRequest.nextToken,
            outputKey: \ListDomainsForPackageResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  List all Elasticsearch instance types that are supported for given ElasticsearchVersion
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listElasticsearchInstanceTypesPaginator(
        _ input: ListElasticsearchInstanceTypesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListElasticsearchInstanceTypesRequest, ListElasticsearchInstanceTypesResponse> {
        return .init(
            input: input,
            command: listElasticsearchInstanceTypes,
            inputKey: \ListElasticsearchInstanceTypesRequest.nextToken,
            outputKey: \ListElasticsearchInstanceTypesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  List all supported Elasticsearch versions
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listElasticsearchVersionsPaginator(
        _ input: ListElasticsearchVersionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListElasticsearchVersionsRequest, ListElasticsearchVersionsResponse> {
        return .init(
            input: input,
            command: listElasticsearchVersions,
            inputKey: \ListElasticsearchVersionsRequest.nextToken,
            outputKey: \ListElasticsearchVersionsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists all packages associated with the Amazon ES domain.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listPackagesForDomainPaginator(
        _ input: ListPackagesForDomainRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListPackagesForDomainRequest, ListPackagesForDomainResponse> {
        return .init(
            input: input,
            command: listPackagesForDomain,
            inputKey: \ListPackagesForDomainRequest.nextToken,
            outputKey: \ListPackagesForDomainResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
