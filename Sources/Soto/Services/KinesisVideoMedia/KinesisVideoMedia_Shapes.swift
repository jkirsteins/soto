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

extension KinesisVideoMedia {
    // MARK: Enums

    public enum StartSelectorType: String, CustomStringConvertible, Codable {
        case continuationToken = "CONTINUATION_TOKEN"
        case earliest = "EARLIEST"
        case fragmentNumber = "FRAGMENT_NUMBER"
        case now = "NOW"
        case producerTimestamp = "PRODUCER_TIMESTAMP"
        case serverTimestamp = "SERVER_TIMESTAMP"
        public var description: String { return self.rawValue }
    }

    // MARK: Shapes

    public struct GetMediaInput: AWSEncodableShape {
        /// Identifies the starting chunk to get from the specified stream.
        public let startSelector: StartSelector
        /// The ARN of the stream from where you want to get the media content. If you don't specify the streamARN, you must specify the streamName.
        public let streamARN: String?
        /// The Kinesis video stream name from where you want to get the media content. If you don't specify the streamName, you must specify the streamARN.
        public let streamName: String?

        public init(startSelector: StartSelector, streamARN: String? = nil, streamName: String? = nil) {
            self.startSelector = startSelector
            self.streamARN = streamARN
            self.streamName = streamName
        }

        public func validate(name: String) throws {
            try self.startSelector.validate(name: "\(name).startSelector")
            try self.validate(self.streamARN, name: "streamARN", parent: name, max: 1024)
            try self.validate(self.streamARN, name: "streamARN", parent: name, min: 1)
            try self.validate(self.streamARN, name: "streamARN", parent: name, pattern: "arn:aws:kinesisvideo:[a-z0-9-]+:[0-9]+:[a-z]+/[a-zA-Z0-9_.-]+/[0-9]+")
            try self.validate(self.streamName, name: "streamName", parent: name, max: 256)
            try self.validate(self.streamName, name: "streamName", parent: name, min: 1)
            try self.validate(self.streamName, name: "streamName", parent: name, pattern: "[a-zA-Z0-9_.-]+")
        }

        private enum CodingKeys: String, CodingKey {
            case startSelector = "StartSelector"
            case streamARN = "StreamARN"
            case streamName = "StreamName"
        }
    }

    public struct GetMediaOutput: AWSDecodableShape & AWSShapeWithPayload {
        /// The key for the payload
        public static let _payloadPath: String = "payload"
        public static let _options: AWSShapeOptions = [.rawPayload, .allowStreaming]
        public static var _encoding = [
            AWSMemberEncoding(label: "contentType", location: .header("Content-Type")),
            AWSMemberEncoding(label: "payload", location: .body("Payload"))
        ]

        /// The content type of the requested media.
        public let contentType: String?
        ///  The payload Kinesis Video Streams returns is a sequence of chunks from the specified stream. For information about the chunks, see . The chunks that Kinesis Video Streams returns in the GetMedia call also include the following additional Matroska (MKV) tags:    AWS_KINESISVIDEO_CONTINUATION_TOKEN (UTF-8 string) - In the event your GetMedia call terminates, you can use this continuation token in your next request to get the next chunk where the last request terminated.   AWS_KINESISVIDEO_MILLIS_BEHIND_NOW (UTF-8 string) - Client applications can use this tag value to determine how far behind the chunk returned in the response is from the latest chunk on the stream.    AWS_KINESISVIDEO_FRAGMENT_NUMBER - Fragment number returned in the chunk.   AWS_KINESISVIDEO_SERVER_TIMESTAMP - Server timestamp of the fragment.   AWS_KINESISVIDEO_PRODUCER_TIMESTAMP - Producer timestamp of the fragment.   The following tags will be present if an error occurs:   AWS_KINESISVIDEO_ERROR_CODE - String description of an error that caused GetMedia to stop.   AWS_KINESISVIDEO_ERROR_ID: Integer code of the error.   The error codes are as follows:   3002 - Error writing to the stream   4000 - Requested fragment is not found   4500 - Access denied for the stream's KMS key   4501 - Stream's KMS key is disabled   4502 - Validation error on the stream's KMS key   4503 - KMS key specified in the stream is unavailable   4504 - Invalid usage of the KMS key specified in the stream   4505 - Invalid state of the KMS key specified in the stream   4506 - Unable to find the KMS key specified in the stream   5000 - Internal error
        public let payload: AWSPayload?

        public init(contentType: String? = nil, payload: AWSPayload? = nil) {
            self.contentType = contentType
            self.payload = payload
        }

        private enum CodingKeys: String, CodingKey {
            case contentType = "Content-Type"
            case payload = "Payload"
        }
    }

    public struct StartSelector: AWSEncodableShape {
        /// Specifies the fragment number from where you want the GetMedia API to start returning the fragments.
        public let afterFragmentNumber: String?
        /// Continuation token that Kinesis Video Streams returned in the previous GetMedia response. The GetMedia API then starts with the chunk identified by the continuation token.
        public let continuationToken: String?
        /// Identifies the fragment on the Kinesis video stream where you want to start getting the data from.   NOW - Start with the latest chunk on the stream.   EARLIEST - Start with earliest available chunk on the stream.   FRAGMENT_NUMBER - Start with the chunk after a specific fragment. You must also specify the AfterFragmentNumber parameter.   PRODUCER_TIMESTAMP or SERVER_TIMESTAMP - Start with the chunk containing a fragment with the specified producer or server timestamp. You specify the timestamp by adding StartTimestamp.   CONTINUATION_TOKEN - Read using the specified continuation token.     If you choose the NOW, EARLIEST, or CONTINUATION_TOKEN as the startSelectorType, you don't provide any additional information in the startSelector.
        public let startSelectorType: StartSelectorType
        /// A timestamp value. This value is required if you choose the PRODUCER_TIMESTAMP or the SERVER_TIMESTAMP as the startSelectorType. The GetMedia API then starts with the chunk containing the fragment that has the specified timestamp.
        public let startTimestamp: Date?

        public init(afterFragmentNumber: String? = nil, continuationToken: String? = nil, startSelectorType: StartSelectorType, startTimestamp: Date? = nil) {
            self.afterFragmentNumber = afterFragmentNumber
            self.continuationToken = continuationToken
            self.startSelectorType = startSelectorType
            self.startTimestamp = startTimestamp
        }

        public func validate(name: String) throws {
            try self.validate(self.afterFragmentNumber, name: "afterFragmentNumber", parent: name, max: 128)
            try self.validate(self.afterFragmentNumber, name: "afterFragmentNumber", parent: name, min: 1)
            try self.validate(self.afterFragmentNumber, name: "afterFragmentNumber", parent: name, pattern: "^[0-9]+$")
            try self.validate(self.continuationToken, name: "continuationToken", parent: name, max: 128)
            try self.validate(self.continuationToken, name: "continuationToken", parent: name, min: 1)
            try self.validate(self.continuationToken, name: "continuationToken", parent: name, pattern: "^[a-zA-Z0-9_\\.\\-]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case afterFragmentNumber = "AfterFragmentNumber"
            case continuationToken = "ContinuationToken"
            case startSelectorType = "StartSelectorType"
            case startTimestamp = "StartTimestamp"
        }
    }
}
