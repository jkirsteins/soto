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

extension IoTDataPlane {
    // MARK: Enums

    // MARK: Shapes

    public struct DeleteThingShadowRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "shadowName", location: .querystring("name")),
            AWSMemberEncoding(label: "thingName", location: .uri("thingName"))
        ]

        /// The name of the shadow.
        public let shadowName: String?
        /// The name of the thing.
        public let thingName: String

        public init(shadowName: String? = nil, thingName: String) {
            self.shadowName = shadowName
            self.thingName = thingName
        }

        public func validate(name: String) throws {
            try self.validate(self.shadowName, name: "shadowName", parent: name, max: 64)
            try self.validate(self.shadowName, name: "shadowName", parent: name, min: 1)
            try self.validate(self.shadowName, name: "shadowName", parent: name, pattern: "^[a-zA-Z0-9:_-]+$")
            try self.validate(self.thingName, name: "thingName", parent: name, max: 128)
            try self.validate(self.thingName, name: "thingName", parent: name, min: 1)
            try self.validate(self.thingName, name: "thingName", parent: name, pattern: "^[a-zA-Z0-9:_-]+$")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct DeleteThingShadowResponse: AWSDecodableShape & AWSShapeWithPayload {
        /// The key for the payload
        public static let _payloadPath: String = "payload"
        public static let _options: AWSShapeOptions = [.rawPayload]

        /// The state information, in JSON format.
        public let payload: AWSPayload

        public init(payload: AWSPayload) {
            self.payload = payload
        }

        private enum CodingKeys: String, CodingKey {
            case payload
        }
    }

    public struct GetRetainedMessageRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "topic", location: .uri("topic"))
        ]

        /// The topic name of the retained message to retrieve.
        public let topic: String

        public init(topic: String) {
            self.topic = topic
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct GetRetainedMessageResponse: AWSDecodableShape {
        /// The Epoch date and time, in milliseconds, when the retained message was stored by IoT.
        public let lastModifiedTime: Int64?
        /// The Base64-encoded message payload of the retained message body.
        public let payload: Data?
        /// The quality of service (QoS) level used to publish the retained message.
        public let qos: Int?
        /// The topic name to which the retained message was published.
        public let topic: String?

        public init(lastModifiedTime: Int64? = nil, payload: Data? = nil, qos: Int? = nil, topic: String? = nil) {
            self.lastModifiedTime = lastModifiedTime
            self.payload = payload
            self.qos = qos
            self.topic = topic
        }

        private enum CodingKeys: String, CodingKey {
            case lastModifiedTime
            case payload
            case qos
            case topic
        }
    }

    public struct GetThingShadowRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "shadowName", location: .querystring("name")),
            AWSMemberEncoding(label: "thingName", location: .uri("thingName"))
        ]

        /// The name of the shadow.
        public let shadowName: String?
        /// The name of the thing.
        public let thingName: String

        public init(shadowName: String? = nil, thingName: String) {
            self.shadowName = shadowName
            self.thingName = thingName
        }

        public func validate(name: String) throws {
            try self.validate(self.shadowName, name: "shadowName", parent: name, max: 64)
            try self.validate(self.shadowName, name: "shadowName", parent: name, min: 1)
            try self.validate(self.shadowName, name: "shadowName", parent: name, pattern: "^[a-zA-Z0-9:_-]+$")
            try self.validate(self.thingName, name: "thingName", parent: name, max: 128)
            try self.validate(self.thingName, name: "thingName", parent: name, min: 1)
            try self.validate(self.thingName, name: "thingName", parent: name, pattern: "^[a-zA-Z0-9:_-]+$")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct GetThingShadowResponse: AWSDecodableShape & AWSShapeWithPayload {
        /// The key for the payload
        public static let _payloadPath: String = "payload"
        public static let _options: AWSShapeOptions = [.rawPayload]

        /// The state information, in JSON format.
        public let payload: AWSPayload?

        public init(payload: AWSPayload? = nil) {
            self.payload = payload
        }

        private enum CodingKeys: String, CodingKey {
            case payload
        }
    }

    public struct ListNamedShadowsForThingRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "nextToken", location: .querystring("nextToken")),
            AWSMemberEncoding(label: "pageSize", location: .querystring("pageSize")),
            AWSMemberEncoding(label: "thingName", location: .uri("thingName"))
        ]

        /// The token to retrieve the next set of results.
        public let nextToken: String?
        /// The result page size.
        public let pageSize: Int?
        /// The name of the thing.
        public let thingName: String

        public init(nextToken: String? = nil, pageSize: Int? = nil, thingName: String) {
            self.nextToken = nextToken
            self.pageSize = pageSize
            self.thingName = thingName
        }

        public func validate(name: String) throws {
            try self.validate(self.pageSize, name: "pageSize", parent: name, max: 100)
            try self.validate(self.pageSize, name: "pageSize", parent: name, min: 1)
            try self.validate(self.thingName, name: "thingName", parent: name, max: 128)
            try self.validate(self.thingName, name: "thingName", parent: name, min: 1)
            try self.validate(self.thingName, name: "thingName", parent: name, pattern: "^[a-zA-Z0-9:_-]+$")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct ListNamedShadowsForThingResponse: AWSDecodableShape {
        /// The token to use to get the next set of results, or null if there are no additional results.
        public let nextToken: String?
        /// The list of shadows for the specified thing.
        public let results: [String]?
        /// The Epoch date and time the response was generated by IoT.
        public let timestamp: Int64?

        public init(nextToken: String? = nil, results: [String]? = nil, timestamp: Int64? = nil) {
            self.nextToken = nextToken
            self.results = results
            self.timestamp = timestamp
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken
            case results
            case timestamp
        }
    }

    public struct ListRetainedMessagesRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "maxResults", location: .querystring("maxResults")),
            AWSMemberEncoding(label: "nextToken", location: .querystring("nextToken"))
        ]

        /// The maximum number of results to return at one time.
        public let maxResults: Int?
        /// To retrieve the next set of results, the nextToken value from a previous response; otherwise null to receive the first set of results.
        public let nextToken: String?

        public init(maxResults: Int? = nil, nextToken: String? = nil) {
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        public func validate(name: String) throws {
            try self.validate(self.maxResults, name: "maxResults", parent: name, max: 200)
            try self.validate(self.maxResults, name: "maxResults", parent: name, min: 1)
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct ListRetainedMessagesResponse: AWSDecodableShape {
        /// The token for the next set of results, or null if there are no additional results.
        public let nextToken: String?
        /// A summary list the account's retained messages. The information returned doesn't include the message payloads of the retained messages.
        public let retainedTopics: [RetainedMessageSummary]?

        public init(nextToken: String? = nil, retainedTopics: [RetainedMessageSummary]? = nil) {
            self.nextToken = nextToken
            self.retainedTopics = retainedTopics
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken
            case retainedTopics
        }
    }

    public struct PublishRequest: AWSEncodableShape & AWSShapeWithPayload {
        /// The key for the payload
        public static let _payloadPath: String = "payload"
        public static let _options: AWSShapeOptions = [.rawPayload]
        public static var _encoding = [
            AWSMemberEncoding(label: "qos", location: .querystring("qos")),
            AWSMemberEncoding(label: "retain", location: .querystring("retain")),
            AWSMemberEncoding(label: "topic", location: .uri("topic"))
        ]

        /// The message body. MQTT accepts text, binary, and empty (null) message payloads. Publishing an empty (null) payload with retain = true deletes the retained message identified by topic from IoT Core.
        public let payload: AWSPayload?
        /// The Quality of Service (QoS) level.
        public let qos: Int?
        /// A Boolean value that determines whether to set the RETAIN flag when the message is published. Setting the RETAIN flag causes the message to be retained and sent to new subscribers to the topic. Valid values: true | false  Default value: false
        public let retain: Bool?
        /// The name of the MQTT topic.
        public let topic: String

        public init(payload: AWSPayload? = nil, qos: Int? = nil, retain: Bool? = nil, topic: String) {
            self.payload = payload
            self.qos = qos
            self.retain = retain
            self.topic = topic
        }

        public func validate(name: String) throws {
            try self.validate(self.qos, name: "qos", parent: name, max: 1)
            try self.validate(self.qos, name: "qos", parent: name, min: 0)
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct RetainedMessageSummary: AWSDecodableShape {
        /// The Epoch date and time, in milliseconds, when the retained message was stored by IoT.
        public let lastModifiedTime: Int64?
        /// The size of the retained message's payload in bytes.
        public let payloadSize: Int64?
        /// The quality of service (QoS) level used to publish the retained message.
        public let qos: Int?
        /// The topic name to which the retained message was published.
        public let topic: String?

        public init(lastModifiedTime: Int64? = nil, payloadSize: Int64? = nil, qos: Int? = nil, topic: String? = nil) {
            self.lastModifiedTime = lastModifiedTime
            self.payloadSize = payloadSize
            self.qos = qos
            self.topic = topic
        }

        private enum CodingKeys: String, CodingKey {
            case lastModifiedTime
            case payloadSize
            case qos
            case topic
        }
    }

    public struct UpdateThingShadowRequest: AWSEncodableShape & AWSShapeWithPayload {
        /// The key for the payload
        public static let _payloadPath: String = "payload"
        public static let _options: AWSShapeOptions = [.rawPayload]
        public static var _encoding = [
            AWSMemberEncoding(label: "shadowName", location: .querystring("name")),
            AWSMemberEncoding(label: "thingName", location: .uri("thingName"))
        ]

        /// The state information, in JSON format.
        public let payload: AWSPayload
        /// The name of the shadow.
        public let shadowName: String?
        /// The name of the thing.
        public let thingName: String

        public init(payload: AWSPayload, shadowName: String? = nil, thingName: String) {
            self.payload = payload
            self.shadowName = shadowName
            self.thingName = thingName
        }

        public func validate(name: String) throws {
            try self.validate(self.shadowName, name: "shadowName", parent: name, max: 64)
            try self.validate(self.shadowName, name: "shadowName", parent: name, min: 1)
            try self.validate(self.shadowName, name: "shadowName", parent: name, pattern: "^[a-zA-Z0-9:_-]+$")
            try self.validate(self.thingName, name: "thingName", parent: name, max: 128)
            try self.validate(self.thingName, name: "thingName", parent: name, min: 1)
            try self.validate(self.thingName, name: "thingName", parent: name, pattern: "^[a-zA-Z0-9:_-]+$")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct UpdateThingShadowResponse: AWSDecodableShape & AWSShapeWithPayload {
        /// The key for the payload
        public static let _payloadPath: String = "payload"
        public static let _options: AWSShapeOptions = [.rawPayload]

        /// The state information, in JSON format.
        public let payload: AWSPayload?

        public init(payload: AWSPayload? = nil) {
            self.payload = payload
        }

        private enum CodingKeys: String, CodingKey {
            case payload
        }
    }
}
