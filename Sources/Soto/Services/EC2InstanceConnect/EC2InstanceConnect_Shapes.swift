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

extension EC2InstanceConnect {
    // MARK: Enums

    // MARK: Shapes

    public struct SendSSHPublicKeyRequest: AWSEncodableShape {
        /// The Availability Zone in which the EC2 instance was launched.
        public let availabilityZone: String
        /// The ID of the EC2 instance.
        public let instanceId: String
        /// The OS user on the EC2 instance for whom the key can be used to authenticate.
        public let instanceOSUser: String
        /// The public key material. To use the public key, you must have the matching private key.
        public let sshPublicKey: String

        public init(availabilityZone: String, instanceId: String, instanceOSUser: String, sshPublicKey: String) {
            self.availabilityZone = availabilityZone
            self.instanceId = instanceId
            self.instanceOSUser = instanceOSUser
            self.sshPublicKey = sshPublicKey
        }

        public func validate(name: String) throws {
            try self.validate(self.availabilityZone, name: "availabilityZone", parent: name, max: 32)
            try self.validate(self.availabilityZone, name: "availabilityZone", parent: name, min: 6)
            try self.validate(self.availabilityZone, name: "availabilityZone", parent: name, pattern: "^(\\w+-){2,3}\\d+\\w+$")
            try self.validate(self.instanceId, name: "instanceId", parent: name, max: 32)
            try self.validate(self.instanceId, name: "instanceId", parent: name, min: 10)
            try self.validate(self.instanceId, name: "instanceId", parent: name, pattern: "^i-[a-f0-9]+$")
            try self.validate(self.instanceOSUser, name: "instanceOSUser", parent: name, max: 32)
            try self.validate(self.instanceOSUser, name: "instanceOSUser", parent: name, min: 1)
            try self.validate(self.instanceOSUser, name: "instanceOSUser", parent: name, pattern: "^[A-Za-z_][A-Za-z0-9\\@\\._-]{0,30}[A-Za-z0-9\\$_-]?$")
            try self.validate(self.sshPublicKey, name: "sshPublicKey", parent: name, max: 4096)
            try self.validate(self.sshPublicKey, name: "sshPublicKey", parent: name, min: 256)
        }

        private enum CodingKeys: String, CodingKey {
            case availabilityZone = "AvailabilityZone"
            case instanceId = "InstanceId"
            case instanceOSUser = "InstanceOSUser"
            case sshPublicKey = "SSHPublicKey"
        }
    }

    public struct SendSSHPublicKeyResponse: AWSDecodableShape {
        /// The ID of the request. Please provide this ID when contacting AWS Support for assistance.
        public let requestId: String?
        /// Is true if the request succeeds and an error otherwise.
        public let success: Bool?

        public init(requestId: String? = nil, success: Bool? = nil) {
            self.requestId = requestId
            self.success = success
        }

        private enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
            case success = "Success"
        }
    }

    public struct SendSerialConsoleSSHPublicKeyRequest: AWSEncodableShape {
        /// The ID of the EC2 instance.
        public let instanceId: String
        /// The serial port of the EC2 instance. Currently only port 0 is supported. Default: 0
        public let serialPort: Int?
        /// The public key material. To use the public key, you must have the matching private key. For information about the supported key formats and lengths, see Requirements for key pairs in the Amazon EC2 User Guide.
        public let sshPublicKey: String

        public init(instanceId: String, serialPort: Int? = nil, sshPublicKey: String) {
            self.instanceId = instanceId
            self.serialPort = serialPort
            self.sshPublicKey = sshPublicKey
        }

        public func validate(name: String) throws {
            try self.validate(self.instanceId, name: "instanceId", parent: name, max: 32)
            try self.validate(self.instanceId, name: "instanceId", parent: name, min: 10)
            try self.validate(self.instanceId, name: "instanceId", parent: name, pattern: "^i-[a-f0-9]+$")
            try self.validate(self.serialPort, name: "serialPort", parent: name, max: 0)
            try self.validate(self.serialPort, name: "serialPort", parent: name, min: 0)
            try self.validate(self.sshPublicKey, name: "sshPublicKey", parent: name, max: 4096)
            try self.validate(self.sshPublicKey, name: "sshPublicKey", parent: name, min: 256)
        }

        private enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case serialPort = "SerialPort"
            case sshPublicKey = "SSHPublicKey"
        }
    }

    public struct SendSerialConsoleSSHPublicKeyResponse: AWSDecodableShape {
        /// The ID of the request. Please provide this ID when contacting AWS Support for assistance.
        public let requestId: String?
        /// Is true if the request succeeds and an error otherwise.
        public let success: Bool?

        public init(requestId: String? = nil, success: Bool? = nil) {
            self.requestId = requestId
            self.success = success
        }

        private enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
            case success = "Success"
        }
    }
}
