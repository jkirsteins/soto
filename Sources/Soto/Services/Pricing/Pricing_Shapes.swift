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

import Foundation
import SotoCore

extension Pricing {
    // MARK: Enums

    public enum FilterType: String, CustomStringConvertible, Codable {
        case termMatch = "TERM_MATCH"
        public var description: String { return self.rawValue }
    }

    // MARK: Shapes

    public struct AttributeValue: AWSDecodableShape {
        /// The specific value of an attributeName.
        public let value: String?

        public init(value: String? = nil) {
            self.value = value
        }

        private enum CodingKeys: String, CodingKey {
            case value = "Value"
        }
    }

    public struct DescribeServicesRequest: AWSEncodableShape {
        /// The format version that you want the response to be in. Valid values are: aws_v1
        public let formatVersion: String?
        /// The maximum number of results that you want returned in the response.
        public let maxResults: Int?
        /// The pagination token that indicates the next set of results that you want to retrieve.
        public let nextToken: String?
        /// The code for the service whose information you want to retrieve, such as AmazonEC2. You can use  the ServiceCode to filter the results in a GetProducts call. To retrieve a list of all services, leave this blank.
        public let serviceCode: String?

        public init(formatVersion: String? = nil, maxResults: Int? = nil, nextToken: String? = nil, serviceCode: String? = nil) {
            self.formatVersion = formatVersion
            self.maxResults = maxResults
            self.nextToken = nextToken
            self.serviceCode = serviceCode
        }

        public func validate(name: String) throws {
            try self.validate(self.maxResults, name: "maxResults", parent: name, max: 100)
            try self.validate(self.maxResults, name: "maxResults", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case formatVersion = "FormatVersion"
            case maxResults = "MaxResults"
            case nextToken = "NextToken"
            case serviceCode = "ServiceCode"
        }
    }

    public struct DescribeServicesResponse: AWSDecodableShape {
        /// The format version of the response. For example, aws_v1.
        public let formatVersion: String?
        /// The pagination token for the next set of retreivable results.
        public let nextToken: String?
        /// The service metadata for the service or services in the response.
        public let services: [Service]?

        public init(formatVersion: String? = nil, nextToken: String? = nil, services: [Service]? = nil) {
            self.formatVersion = formatVersion
            self.nextToken = nextToken
            self.services = services
        }

        private enum CodingKeys: String, CodingKey {
            case formatVersion = "FormatVersion"
            case nextToken = "NextToken"
            case services = "Services"
        }
    }

    public struct Filter: AWSEncodableShape {
        /// The product metadata field that you want to filter on. You can filter by just the  service code to see all products for a specific service, filter  by just the attribute name to see a specific attribute for multiple services, or use both a service code and an attribute name to retrieve only products that match both fields. Valid values include: ServiceCode, and all attribute names  For example, you can filter by the AmazonEC2 service code and the  volumeType attribute name to get the prices for only Amazon EC2 volumes.
        public let field: String
        /// The type of filter that you want to use. Valid values are: TERM_MATCH. TERM_MATCH returns only  products that match both the given filter field and the given value.
        public let type: FilterType
        /// The service code or attribute value that you want to filter by. If you are filtering by  service code this is the actual service code, such as AmazonEC2. If you are  filtering by attribute name, this is the attribute value that you want the returned products to match, such as a Provisioned IOPS volume.
        public let value: String

        public init(field: String, type: FilterType, value: String) {
            self.field = field
            self.type = type
            self.value = value
        }

        private enum CodingKeys: String, CodingKey {
            case field = "Field"
            case type = "Type"
            case value = "Value"
        }
    }

    public struct GetAttributeValuesRequest: AWSEncodableShape {
        /// The name of the attribute that you want to retrieve the values for, such as volumeType.
        public let attributeName: String
        /// The maximum number of results to return in response.
        public let maxResults: Int?
        /// The pagination token that indicates the next set of results that you want to retrieve.
        public let nextToken: String?
        /// The service code for the service whose attributes you want to retrieve. For example, if you want  the retrieve an EC2 attribute, use AmazonEC2.
        public let serviceCode: String

        public init(attributeName: String, maxResults: Int? = nil, nextToken: String? = nil, serviceCode: String) {
            self.attributeName = attributeName
            self.maxResults = maxResults
            self.nextToken = nextToken
            self.serviceCode = serviceCode
        }

        public func validate(name: String) throws {
            try self.validate(self.maxResults, name: "maxResults", parent: name, max: 100)
            try self.validate(self.maxResults, name: "maxResults", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case attributeName = "AttributeName"
            case maxResults = "MaxResults"
            case nextToken = "NextToken"
            case serviceCode = "ServiceCode"
        }
    }

    public struct GetAttributeValuesResponse: AWSDecodableShape {
        /// The list of values for an attribute. For example, Throughput Optimized HDD and  Provisioned IOPS are two available values for the AmazonEC2  volumeType.
        public let attributeValues: [AttributeValue]?
        /// The pagination token that indicates the next set of results to retrieve.
        public let nextToken: String?

        public init(attributeValues: [AttributeValue]? = nil, nextToken: String? = nil) {
            self.attributeValues = attributeValues
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case attributeValues = "AttributeValues"
            case nextToken = "NextToken"
        }
    }

    public struct GetProductsRequest: AWSEncodableShape {
        /// The list of filters that limit the returned products. only products that match all filters are returned.
        public let filters: [Filter]?
        /// The format version that you want the response to be in. Valid values are: aws_v1
        public let formatVersion: String?
        /// The maximum number of results to return in the response.
        public let maxResults: Int?
        /// The pagination token that indicates the next set of results that you want to retrieve.
        public let nextToken: String?
        /// The code for the service whose products you want to retrieve.
        public let serviceCode: String?

        public init(filters: [Filter]? = nil, formatVersion: String? = nil, maxResults: Int? = nil, nextToken: String? = nil, serviceCode: String? = nil) {
            self.filters = filters
            self.formatVersion = formatVersion
            self.maxResults = maxResults
            self.nextToken = nextToken
            self.serviceCode = serviceCode
        }

        public func validate(name: String) throws {
            try self.validate(self.maxResults, name: "maxResults", parent: name, max: 100)
            try self.validate(self.maxResults, name: "maxResults", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case formatVersion = "FormatVersion"
            case maxResults = "MaxResults"
            case nextToken = "NextToken"
            case serviceCode = "ServiceCode"
        }
    }

    public struct GetProductsResponse: AWSDecodableShape {
        /// The format version of the response. For example, aws_v1.
        public let formatVersion: String?
        /// The pagination token that indicates the next set of results to retrieve.
        public let nextToken: String?
        /// The list of products that match your filters. The list contains both the product metadata and  the price information.
        public let priceList: [String]?

        public init(formatVersion: String? = nil, nextToken: String? = nil, priceList: [String]? = nil) {
            self.formatVersion = formatVersion
            self.nextToken = nextToken
            self.priceList = priceList
        }

        private enum CodingKeys: String, CodingKey {
            case formatVersion = "FormatVersion"
            case nextToken = "NextToken"
            case priceList = "PriceList"
        }
    }

    public struct Service: AWSDecodableShape {
        /// The attributes that are available for this service.
        public let attributeNames: [String]?
        /// The code for the Amazon Web Services service.
        public let serviceCode: String?

        public init(attributeNames: [String]? = nil, serviceCode: String? = nil) {
            self.attributeNames = attributeNames
            self.serviceCode = serviceCode
        }

        private enum CodingKeys: String, CodingKey {
            case attributeNames = "AttributeNames"
            case serviceCode = "ServiceCode"
        }
    }
}
