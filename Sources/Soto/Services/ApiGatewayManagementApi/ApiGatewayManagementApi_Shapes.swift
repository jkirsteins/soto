//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2020 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/soto/blob/main/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import SotoCore

extension ApiGatewayManagementApi {
    // MARK: Enums

    // MARK: Shapes

    public struct DeleteConnectionRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "connectionId", location: .uri(locationName: "connectionId"))
        ]

        public let connectionId: String

        public init(connectionId: String) {
            self.connectionId = connectionId
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct GetConnectionRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "connectionId", location: .uri(locationName: "connectionId"))
        ]

        public let connectionId: String

        public init(connectionId: String) {
            self.connectionId = connectionId
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct GetConnectionResponse: AWSDecodableShape {
        @OptionalCustomCoding<ISO8601DateCoder>
        public var connectedAt: Date?
        public let identity: Identity?
        @OptionalCustomCoding<ISO8601DateCoder>
        public var lastActiveAt: Date?

        public init(connectedAt: Date? = nil, identity: Identity? = nil, lastActiveAt: Date? = nil) {
            self.connectedAt = connectedAt
            self.identity = identity
            self.lastActiveAt = lastActiveAt
        }

        private enum CodingKeys: String, CodingKey {
            case connectedAt
            case identity
            case lastActiveAt
        }
    }

    public struct Identity: AWSDecodableShape {
        /// The source IP address of the TCP connection making the request to API Gateway.
        public let sourceIp: String
        /// The User Agent of the API caller.
        public let userAgent: String

        public init(sourceIp: String, userAgent: String) {
            self.sourceIp = sourceIp
            self.userAgent = userAgent
        }

        private enum CodingKeys: String, CodingKey {
            case sourceIp
            case userAgent
        }
    }

    public struct PostToConnectionRequest: AWSEncodableShape & AWSShapeWithPayload {
        /// The key for the payload
        public static let _payloadPath: String = "data"
        public static let _payloadOptions: AWSShapePayloadOptions = [.raw]
        public static var _encoding = [
            AWSMemberEncoding(label: "connectionId", location: .uri(locationName: "connectionId")),
            AWSMemberEncoding(label: "data", location: .body(locationName: "Data"))
        ]

        public let connectionId: String
        public let data: AWSPayload

        public init(connectionId: String, data: AWSPayload) {
            self.connectionId = connectionId
            self.data = data
        }

        public func validate(name: String) throws {
            try self.validate(self.data, name: "data", parent: name, max: 131_072)
        }

        private enum CodingKeys: CodingKey {}
    }
}
