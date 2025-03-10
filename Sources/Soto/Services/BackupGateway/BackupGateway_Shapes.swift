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

extension BackupGateway {
    // MARK: Enums

    public enum GatewayType: String, CustomStringConvertible, Codable {
        case backupVm = "BACKUP_VM"
        public var description: String { return self.rawValue }
    }

    public enum HypervisorState: String, CustomStringConvertible, Codable {
        case error = "ERROR"
        case offline = "OFFLINE"
        case online = "ONLINE"
        case pending = "PENDING"
        public var description: String { return self.rawValue }
    }

    // MARK: Shapes

    public struct AssociateGatewayToServerInput: AWSEncodableShape {
        /// The Amazon Resource Name (ARN) of the gateway. Use the ListGateways operation to return a list of gateways for your account and Amazon Web Services Region.
        public let gatewayArn: String
        /// The Amazon Resource Name (ARN) of the server that hosts your virtual machines.
        public let serverArn: String

        public init(gatewayArn: String, serverArn: String) {
            self.gatewayArn = gatewayArn
            self.serverArn = serverArn
        }

        public func validate(name: String) throws {
            try self.validate(self.gatewayArn, name: "gatewayArn", parent: name, max: 500)
            try self.validate(self.gatewayArn, name: "gatewayArn", parent: name, min: 50)
            try self.validate(self.gatewayArn, name: "gatewayArn", parent: name, pattern: "^arn:(aws|aws-cn|aws-us-gov):backup-gateway(:[a-zA-Z-0-9]+){3}\\/[a-zA-Z-0-9]+$")
            try self.validate(self.serverArn, name: "serverArn", parent: name, max: 500)
            try self.validate(self.serverArn, name: "serverArn", parent: name, min: 50)
            try self.validate(self.serverArn, name: "serverArn", parent: name, pattern: "^arn:(aws|aws-cn|aws-us-gov):backup-gateway(:[a-zA-Z-0-9]+){3}\\/[a-zA-Z-0-9]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case gatewayArn = "GatewayArn"
            case serverArn = "ServerArn"
        }
    }

    public struct AssociateGatewayToServerOutput: AWSDecodableShape {
        /// The Amazon Resource Name (ARN) of a gateway.
        public let gatewayArn: String?

        public init(gatewayArn: String? = nil) {
            self.gatewayArn = gatewayArn
        }

        private enum CodingKeys: String, CodingKey {
            case gatewayArn = "GatewayArn"
        }
    }

    public struct CreateGatewayInput: AWSEncodableShape {
        /// The activation key of the created gateway.
        public let activationKey: String
        /// The display name of the created gateway.
        public let gatewayDisplayName: String
        /// The type of created gateway.
        public let gatewayType: GatewayType
        /// A list of up to 50 tags to assign to the gateway. Each tag is a key-value pair.
        public let tags: [Tag]?

        public init(activationKey: String, gatewayDisplayName: String, gatewayType: GatewayType, tags: [Tag]? = nil) {
            self.activationKey = activationKey
            self.gatewayDisplayName = gatewayDisplayName
            self.gatewayType = gatewayType
            self.tags = tags
        }

        public func validate(name: String) throws {
            try self.validate(self.activationKey, name: "activationKey", parent: name, max: 50)
            try self.validate(self.activationKey, name: "activationKey", parent: name, min: 1)
            try self.validate(self.activationKey, name: "activationKey", parent: name, pattern: "^[0-9a-zA-Z\\-]+$")
            try self.validate(self.gatewayDisplayName, name: "gatewayDisplayName", parent: name, max: 100)
            try self.validate(self.gatewayDisplayName, name: "gatewayDisplayName", parent: name, min: 1)
            try self.validate(self.gatewayDisplayName, name: "gatewayDisplayName", parent: name, pattern: "^[a-zA-Z0-9-]*$")
            try self.tags?.forEach {
                try $0.validate(name: "\(name).tags[]")
            }
        }

        private enum CodingKeys: String, CodingKey {
            case activationKey = "ActivationKey"
            case gatewayDisplayName = "GatewayDisplayName"
            case gatewayType = "GatewayType"
            case tags = "Tags"
        }
    }

    public struct CreateGatewayOutput: AWSDecodableShape {
        /// The Amazon Resource Name (ARN) of the gateway you create.
        public let gatewayArn: String?

        public init(gatewayArn: String? = nil) {
            self.gatewayArn = gatewayArn
        }

        private enum CodingKeys: String, CodingKey {
            case gatewayArn = "GatewayArn"
        }
    }

    public struct DeleteGatewayInput: AWSEncodableShape {
        /// The Amazon Resource Name (ARN) of the gateway to delete.
        public let gatewayArn: String

        public init(gatewayArn: String) {
            self.gatewayArn = gatewayArn
        }

        public func validate(name: String) throws {
            try self.validate(self.gatewayArn, name: "gatewayArn", parent: name, max: 500)
            try self.validate(self.gatewayArn, name: "gatewayArn", parent: name, min: 50)
            try self.validate(self.gatewayArn, name: "gatewayArn", parent: name, pattern: "^arn:(aws|aws-cn|aws-us-gov):backup-gateway(:[a-zA-Z-0-9]+){3}\\/[a-zA-Z-0-9]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case gatewayArn = "GatewayArn"
        }
    }

    public struct DeleteGatewayOutput: AWSDecodableShape {
        /// The Amazon Resource Name (ARN) of the gateway you deleted.
        public let gatewayArn: String?

        public init(gatewayArn: String? = nil) {
            self.gatewayArn = gatewayArn
        }

        private enum CodingKeys: String, CodingKey {
            case gatewayArn = "GatewayArn"
        }
    }

    public struct DeleteHypervisorInput: AWSEncodableShape {
        /// The Amazon Resource Name (ARN) of the hypervisor to delete.
        public let hypervisorArn: String

        public init(hypervisorArn: String) {
            self.hypervisorArn = hypervisorArn
        }

        public func validate(name: String) throws {
            try self.validate(self.hypervisorArn, name: "hypervisorArn", parent: name, max: 500)
            try self.validate(self.hypervisorArn, name: "hypervisorArn", parent: name, min: 50)
            try self.validate(self.hypervisorArn, name: "hypervisorArn", parent: name, pattern: "^arn:(aws|aws-cn|aws-us-gov):backup-gateway(:[a-zA-Z-0-9]+){3}\\/[a-zA-Z-0-9]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case hypervisorArn = "HypervisorArn"
        }
    }

    public struct DeleteHypervisorOutput: AWSDecodableShape {
        /// The Amazon Resource Name (ARN) of the hypervisor you deleted.
        public let hypervisorArn: String?

        public init(hypervisorArn: String? = nil) {
            self.hypervisorArn = hypervisorArn
        }

        private enum CodingKeys: String, CodingKey {
            case hypervisorArn = "HypervisorArn"
        }
    }

    public struct DisassociateGatewayFromServerInput: AWSEncodableShape {
        /// The Amazon Resource Name (ARN) of the gateway to disassociate.
        public let gatewayArn: String

        public init(gatewayArn: String) {
            self.gatewayArn = gatewayArn
        }

        public func validate(name: String) throws {
            try self.validate(self.gatewayArn, name: "gatewayArn", parent: name, max: 500)
            try self.validate(self.gatewayArn, name: "gatewayArn", parent: name, min: 50)
            try self.validate(self.gatewayArn, name: "gatewayArn", parent: name, pattern: "^arn:(aws|aws-cn|aws-us-gov):backup-gateway(:[a-zA-Z-0-9]+){3}\\/[a-zA-Z-0-9]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case gatewayArn = "GatewayArn"
        }
    }

    public struct DisassociateGatewayFromServerOutput: AWSDecodableShape {
        /// The Amazon Resource Name (ARN) of the gateway you disassociated.
        public let gatewayArn: String?

        public init(gatewayArn: String? = nil) {
            self.gatewayArn = gatewayArn
        }

        private enum CodingKeys: String, CodingKey {
            case gatewayArn = "GatewayArn"
        }
    }

    public struct Gateway: AWSDecodableShape {
        /// The Amazon Resource Name (ARN) of the gateway. Use the ListGateways operation to return a list of gateways for your account and Amazon Web Services Region.
        public let gatewayArn: String?
        /// The display name of the gateway.
        public let gatewayDisplayName: String?
        /// The type of the gateway.
        public let gatewayType: GatewayType?
        /// The hypervisor ID of the gateway.
        public let hypervisorId: String?
        /// The last time Backup gateway communicated with the gateway, in Unix format and UTC time.
        public let lastSeenTime: Date?

        public init(gatewayArn: String? = nil, gatewayDisplayName: String? = nil, gatewayType: GatewayType? = nil, hypervisorId: String? = nil, lastSeenTime: Date? = nil) {
            self.gatewayArn = gatewayArn
            self.gatewayDisplayName = gatewayDisplayName
            self.gatewayType = gatewayType
            self.hypervisorId = hypervisorId
            self.lastSeenTime = lastSeenTime
        }

        private enum CodingKeys: String, CodingKey {
            case gatewayArn = "GatewayArn"
            case gatewayDisplayName = "GatewayDisplayName"
            case gatewayType = "GatewayType"
            case hypervisorId = "HypervisorId"
            case lastSeenTime = "LastSeenTime"
        }
    }

    public struct Hypervisor: AWSDecodableShape {
        /// The server host of the hypervisor. This can be either an IP address or a fully-qualified domain name (FQDN).
        public let host: String?
        /// The Amazon Resource Name (ARN) of the hypervisor.
        public let hypervisorArn: String?
        /// The Amazon Resource Name (ARN) of the Key Management Service used to encrypt the hypervisor.
        public let kmsKeyArn: String?
        /// The name of the hypervisor.
        public let name: String?
        /// The state of the hypervisor.
        public let state: HypervisorState?

        public init(host: String? = nil, hypervisorArn: String? = nil, kmsKeyArn: String? = nil, name: String? = nil, state: HypervisorState? = nil) {
            self.host = host
            self.hypervisorArn = hypervisorArn
            self.kmsKeyArn = kmsKeyArn
            self.name = name
            self.state = state
        }

        private enum CodingKeys: String, CodingKey {
            case host = "Host"
            case hypervisorArn = "HypervisorArn"
            case kmsKeyArn = "KmsKeyArn"
            case name = "Name"
            case state = "State"
        }
    }

    public struct ImportHypervisorConfigurationInput: AWSEncodableShape {
        /// The server host of the hypervisor. This can be either an IP address or a fully-qualified domain name (FQDN).
        public let host: String
        /// The Key Management Service for the hypervisor.
        public let kmsKeyArn: String?
        /// The name of the hypervisor.
        public let name: String
        /// The password for the hypervisor.
        public let password: String?
        /// The tags of the hypervisor configuration to import.
        public let tags: [Tag]?
        /// The username for the hypervisor.
        public let username: String?

        public init(host: String, kmsKeyArn: String? = nil, name: String, password: String? = nil, tags: [Tag]? = nil, username: String? = nil) {
            self.host = host
            self.kmsKeyArn = kmsKeyArn
            self.name = name
            self.password = password
            self.tags = tags
            self.username = username
        }

        public func validate(name: String) throws {
            try self.validate(self.host, name: "host", parent: name, max: 128)
            try self.validate(self.host, name: "host", parent: name, min: 3)
            try self.validate(self.host, name: "host", parent: name, pattern: "^.+$")
            try self.validate(self.kmsKeyArn, name: "kmsKeyArn", parent: name, max: 500)
            try self.validate(self.kmsKeyArn, name: "kmsKeyArn", parent: name, min: 50)
            try self.validate(self.kmsKeyArn, name: "kmsKeyArn", parent: name, pattern: "^(^arn:(aws|aws-cn|aws-us-gov):kms:([a-zA-Z0-9-]+):([0-9]+):(key|alias)/(\\S+)$)|(^alias/(\\S+)$)$")
            try self.validate(self.name, name: "name", parent: name, max: 100)
            try self.validate(self.name, name: "name", parent: name, min: 1)
            try self.validate(self.name, name: "name", parent: name, pattern: "^[a-zA-Z0-9-]*$")
            try self.validate(self.password, name: "password", parent: name, max: 100)
            try self.validate(self.password, name: "password", parent: name, min: 1)
            try self.validate(self.password, name: "password", parent: name, pattern: "^[ -~]+$")
            try self.tags?.forEach {
                try $0.validate(name: "\(name).tags[]")
            }
            try self.validate(self.username, name: "username", parent: name, max: 100)
            try self.validate(self.username, name: "username", parent: name, min: 1)
            try self.validate(self.username, name: "username", parent: name, pattern: "^[ -\\.0-\\[\\]-~]*[!-\\.0-\\[\\]-~][ -\\.0-\\[\\]-~]*$")
        }

        private enum CodingKeys: String, CodingKey {
            case host = "Host"
            case kmsKeyArn = "KmsKeyArn"
            case name = "Name"
            case password = "Password"
            case tags = "Tags"
            case username = "Username"
        }
    }

    public struct ImportHypervisorConfigurationOutput: AWSDecodableShape {
        /// The Amazon Resource Name (ARN) of the hypervisor you disassociated.
        public let hypervisorArn: String?

        public init(hypervisorArn: String? = nil) {
            self.hypervisorArn = hypervisorArn
        }

        private enum CodingKeys: String, CodingKey {
            case hypervisorArn = "HypervisorArn"
        }
    }

    public struct ListGatewaysInput: AWSEncodableShape {
        /// The maximum number of gateways to list.
        public let maxResults: Int?
        /// The next item following a partial list of returned resources. For example, if a request is made to return MaxResults number of resources, NextToken allows you to return more items in your list starting at the location pointed to by the next token.
        public let nextToken: String?

        public init(maxResults: Int? = nil, nextToken: String? = nil) {
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        public func validate(name: String) throws {
            try self.validate(self.maxResults, name: "maxResults", parent: name, min: 1)
            try self.validate(self.nextToken, name: "nextToken", parent: name, max: 1000)
            try self.validate(self.nextToken, name: "nextToken", parent: name, min: 1)
            try self.validate(self.nextToken, name: "nextToken", parent: name, pattern: "^.+$")
        }

        private enum CodingKeys: String, CodingKey {
            case maxResults = "MaxResults"
            case nextToken = "NextToken"
        }
    }

    public struct ListGatewaysOutput: AWSDecodableShape {
        /// A list of your gateways.
        public let gateways: [Gateway]?
        /// The next item following a partial list of returned resources. For example, if a request is made to return maxResults number of resources, NextToken allows you to return more items in your list starting at the location pointed to by the next token.
        public let nextToken: String?

        public init(gateways: [Gateway]? = nil, nextToken: String? = nil) {
            self.gateways = gateways
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case gateways = "Gateways"
            case nextToken = "NextToken"
        }
    }

    public struct ListHypervisorsInput: AWSEncodableShape {
        /// The maximum number of hypervisors to list.
        public let maxResults: Int?
        /// The next item following a partial list of returned resources. For example, if a request is made to return maxResults number of resources, NextToken allows you to return more items in your list starting at the location pointed to by the next token.
        public let nextToken: String?

        public init(maxResults: Int? = nil, nextToken: String? = nil) {
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        public func validate(name: String) throws {
            try self.validate(self.maxResults, name: "maxResults", parent: name, min: 1)
            try self.validate(self.nextToken, name: "nextToken", parent: name, max: 1000)
            try self.validate(self.nextToken, name: "nextToken", parent: name, min: 1)
            try self.validate(self.nextToken, name: "nextToken", parent: name, pattern: "^.+$")
        }

        private enum CodingKeys: String, CodingKey {
            case maxResults = "MaxResults"
            case nextToken = "NextToken"
        }
    }

    public struct ListHypervisorsOutput: AWSDecodableShape {
        /// A list of your Hypervisor objects, ordered by their Amazon Resource Names (ARNs).
        public let hypervisors: [Hypervisor]?
        /// The next item following a partial list of returned resources. For example, if a request is made to return maxResults number of resources, NextToken allows you to return more items in your list starting at the location pointed to by the next token.
        public let nextToken: String?

        public init(hypervisors: [Hypervisor]? = nil, nextToken: String? = nil) {
            self.hypervisors = hypervisors
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case hypervisors = "Hypervisors"
            case nextToken = "NextToken"
        }
    }

    public struct ListTagsForResourceInput: AWSEncodableShape {
        /// The Amazon Resource Name (ARN) of the resource's tags to list.
        public let resourceArn: String

        public init(resourceArn: String) {
            self.resourceArn = resourceArn
        }

        public func validate(name: String) throws {
            try self.validate(self.resourceArn, name: "resourceArn", parent: name, max: 500)
            try self.validate(self.resourceArn, name: "resourceArn", parent: name, min: 50)
            try self.validate(self.resourceArn, name: "resourceArn", parent: name, pattern: "^arn:(aws|aws-cn|aws-us-gov):backup-gateway(:[a-zA-Z-0-9]+){3}\\/[a-zA-Z-0-9]+$")
        }

        private enum CodingKeys: String, CodingKey {
            case resourceArn = "ResourceArn"
        }
    }

    public struct ListTagsForResourceOutput: AWSDecodableShape {
        /// The Amazon Resource Name (ARN) of the resource's tags that you listed.
        public let resourceArn: String?
        /// A list of the resource's tags.
        public let tags: [Tag]?

        public init(resourceArn: String? = nil, tags: [Tag]? = nil) {
            self.resourceArn = resourceArn
            self.tags = tags
        }

        private enum CodingKeys: String, CodingKey {
            case resourceArn = "ResourceArn"
            case tags = "Tags"
        }
    }

    public struct ListVirtualMachinesInput: AWSEncodableShape {
        /// The maximum number of virtual machines to list.
        public let maxResults: Int?
        /// The next item following a partial list of returned resources. For example, if a request is made to return maxResults number of resources, NextToken allows you to return more items in your list starting at the location pointed to by the next token.
        public let nextToken: String?

        public init(maxResults: Int? = nil, nextToken: String? = nil) {
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        public func validate(name: String) throws {
            try self.validate(self.maxResults, name: "maxResults", parent: name, min: 1)
            try self.validate(self.nextToken, name: "nextToken", parent: name, max: 1000)
            try self.validate(self.nextToken, name: "nextToken", parent: name, min: 1)
            try self.validate(self.nextToken, name: "nextToken", parent: name, pattern: "^.+$")
        }

        private enum CodingKeys: String, CodingKey {
            case maxResults = "MaxResults"
            case nextToken = "NextToken"
        }
    }

    public struct ListVirtualMachinesOutput: AWSDecodableShape {
        /// The next item following a partial list of returned resources. For example, if a request is made to return maxResults number of resources, NextToken allows you to return more items in your list starting at the location pointed to by the next token.
        public let nextToken: String?
        /// A list of your VirtualMachine objects, ordered by their Amazon Resource Names (ARNs).
        public let virtualMachines: [VirtualMachine]?

        public init(nextToken: String? = nil, virtualMachines: [VirtualMachine]? = nil) {
            self.nextToken = nextToken
            self.virtualMachines = virtualMachines
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "NextToken"
            case virtualMachines = "VirtualMachines"
        }
    }

    public struct PutMaintenanceStartTimeInput: AWSEncodableShape {
        /// The day of the month start maintenance on a gateway. Valid values range from Sunday to Saturday.
        public let dayOfMonth: Int?
        /// The day of the week to start maintenance on a gateway.
        public let dayOfWeek: Int?
        /// The Amazon Resource Name (ARN) for the gateway, used to specify its maintenance start time.
        public let gatewayArn: String
        /// The hour of the day to start maintenance on a gateway.
        public let hourOfDay: Int
        /// The minute of the hour to start maintenance on a gateway.
        public let minuteOfHour: Int

        public init(dayOfMonth: Int? = nil, dayOfWeek: Int? = nil, gatewayArn: String, hourOfDay: Int, minuteOfHour: Int) {
            self.dayOfMonth = dayOfMonth
            self.dayOfWeek = dayOfWeek
            self.gatewayArn = gatewayArn
            self.hourOfDay = hourOfDay
            self.minuteOfHour = minuteOfHour
        }

        public func validate(name: String) throws {
            try self.validate(self.dayOfMonth, name: "dayOfMonth", parent: name, max: 31)
            try self.validate(self.dayOfMonth, name: "dayOfMonth", parent: name, min: 1)
            try self.validate(self.dayOfWeek, name: "dayOfWeek", parent: name, max: 6)
            try self.validate(self.dayOfWeek, name: "dayOfWeek", parent: name, min: 0)
            try self.validate(self.gatewayArn, name: "gatewayArn", parent: name, max: 500)
            try self.validate(self.gatewayArn, name: "gatewayArn", parent: name, min: 50)
            try self.validate(self.gatewayArn, name: "gatewayArn", parent: name, pattern: "^arn:(aws|aws-cn|aws-us-gov):backup-gateway(:[a-zA-Z-0-9]+){3}\\/[a-zA-Z-0-9]+$")
            try self.validate(self.hourOfDay, name: "hourOfDay", parent: name, max: 23)
            try self.validate(self.hourOfDay, name: "hourOfDay", parent: name, min: 0)
            try self.validate(self.minuteOfHour, name: "minuteOfHour", parent: name, max: 59)
            try self.validate(self.minuteOfHour, name: "minuteOfHour", parent: name, min: 0)
        }

        private enum CodingKeys: String, CodingKey {
            case dayOfMonth = "DayOfMonth"
            case dayOfWeek = "DayOfWeek"
            case gatewayArn = "GatewayArn"
            case hourOfDay = "HourOfDay"
            case minuteOfHour = "MinuteOfHour"
        }
    }

    public struct PutMaintenanceStartTimeOutput: AWSDecodableShape {
        /// The Amazon Resource Name (ARN) of a gateway for which you set the maintenance start time.
        public let gatewayArn: String?

        public init(gatewayArn: String? = nil) {
            self.gatewayArn = gatewayArn
        }

        private enum CodingKeys: String, CodingKey {
            case gatewayArn = "GatewayArn"
        }
    }

    public struct Tag: AWSEncodableShape & AWSDecodableShape {
        /// The key part of a tag's key-value pair. The key can't start with aws:.
        public let key: String
        /// The key part of a value's key-value pair.
        public let value: String

        public init(key: String, value: String) {
            self.key = key
            self.value = value
        }

        public func validate(name: String) throws {
            try self.validate(self.key, name: "key", parent: name, max: 128)
            try self.validate(self.key, name: "key", parent: name, min: 1)
            try self.validate(self.key, name: "key", parent: name, pattern: "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")
            try self.validate(self.value, name: "value", parent: name, max: 256)
            try self.validate(self.value, name: "value", parent: name, pattern: "^[^\\x00]*$")
        }

        private enum CodingKeys: String, CodingKey {
            case key = "Key"
            case value = "Value"
        }
    }

    public struct TagResourceInput: AWSEncodableShape {
        /// The Amazon Resource Name (ARN) of the resource to tag.
        public let resourceARN: String
        /// A list of tags to assign to the resource.
        public let tags: [Tag]

        public init(resourceARN: String, tags: [Tag]) {
            self.resourceARN = resourceARN
            self.tags = tags
        }

        public func validate(name: String) throws {
            try self.validate(self.resourceARN, name: "resourceARN", parent: name, max: 500)
            try self.validate(self.resourceARN, name: "resourceARN", parent: name, min: 50)
            try self.validate(self.resourceARN, name: "resourceARN", parent: name, pattern: "^arn:(aws|aws-cn|aws-us-gov):backup-gateway(:[a-zA-Z-0-9]+){3}\\/[a-zA-Z-0-9]+$")
            try self.tags.forEach {
                try $0.validate(name: "\(name).tags[]")
            }
        }

        private enum CodingKeys: String, CodingKey {
            case resourceARN = "ResourceARN"
            case tags = "Tags"
        }
    }

    public struct TagResourceOutput: AWSDecodableShape {
        /// The Amazon Resource Name (ARN) of the resource you tagged.
        public let resourceARN: String?

        public init(resourceARN: String? = nil) {
            self.resourceARN = resourceARN
        }

        private enum CodingKeys: String, CodingKey {
            case resourceARN = "ResourceARN"
        }
    }

    public struct TestHypervisorConfigurationInput: AWSEncodableShape {
        /// The Amazon Resource Name (ARN) of the gateway to the hypervisor to test.
        public let gatewayArn: String
        /// The server host of the hypervisor. This can be either an IP address or a fully-qualified domain name (FQDN).
        public let host: String
        /// The password for the hypervisor.
        public let password: String?
        /// The username for the hypervisor.
        public let username: String?

        public init(gatewayArn: String, host: String, password: String? = nil, username: String? = nil) {
            self.gatewayArn = gatewayArn
            self.host = host
            self.password = password
            self.username = username
        }

        public func validate(name: String) throws {
            try self.validate(self.gatewayArn, name: "gatewayArn", parent: name, max: 500)
            try self.validate(self.gatewayArn, name: "gatewayArn", parent: name, min: 50)
            try self.validate(self.gatewayArn, name: "gatewayArn", parent: name, pattern: "^arn:(aws|aws-cn|aws-us-gov):backup-gateway(:[a-zA-Z-0-9]+){3}\\/[a-zA-Z-0-9]+$")
            try self.validate(self.host, name: "host", parent: name, max: 128)
            try self.validate(self.host, name: "host", parent: name, min: 3)
            try self.validate(self.host, name: "host", parent: name, pattern: "^.+$")
            try self.validate(self.password, name: "password", parent: name, max: 100)
            try self.validate(self.password, name: "password", parent: name, min: 1)
            try self.validate(self.password, name: "password", parent: name, pattern: "^[ -~]+$")
            try self.validate(self.username, name: "username", parent: name, max: 100)
            try self.validate(self.username, name: "username", parent: name, min: 1)
            try self.validate(self.username, name: "username", parent: name, pattern: "^[ -\\.0-\\[\\]-~]*[!-\\.0-\\[\\]-~][ -\\.0-\\[\\]-~]*$")
        }

        private enum CodingKeys: String, CodingKey {
            case gatewayArn = "GatewayArn"
            case host = "Host"
            case password = "Password"
            case username = "Username"
        }
    }

    public struct TestHypervisorConfigurationOutput: AWSDecodableShape {
        public init() {}
    }

    public struct UntagResourceInput: AWSEncodableShape {
        /// The Amazon Resource Name (ARN) of the resource from which to remove tags.
        public let resourceARN: String
        /// The list of tag keys specifying which tags to remove.
        public let tagKeys: [String]

        public init(resourceARN: String, tagKeys: [String]) {
            self.resourceARN = resourceARN
            self.tagKeys = tagKeys
        }

        public func validate(name: String) throws {
            try self.validate(self.resourceARN, name: "resourceARN", parent: name, max: 500)
            try self.validate(self.resourceARN, name: "resourceARN", parent: name, min: 50)
            try self.validate(self.resourceARN, name: "resourceARN", parent: name, pattern: "^arn:(aws|aws-cn|aws-us-gov):backup-gateway(:[a-zA-Z-0-9]+){3}\\/[a-zA-Z-0-9]+$")
            try self.tagKeys.forEach {
                try validate($0, name: "tagKeys[]", parent: name, max: 128)
                try validate($0, name: "tagKeys[]", parent: name, min: 1)
                try validate($0, name: "tagKeys[]", parent: name, pattern: "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")
            }
        }

        private enum CodingKeys: String, CodingKey {
            case resourceARN = "ResourceARN"
            case tagKeys = "TagKeys"
        }
    }

    public struct UntagResourceOutput: AWSDecodableShape {
        /// The Amazon Resource Name (ARN) of the resource from which you removed tags.
        public let resourceARN: String?

        public init(resourceARN: String? = nil) {
            self.resourceARN = resourceARN
        }

        private enum CodingKeys: String, CodingKey {
            case resourceARN = "ResourceARN"
        }
    }

    public struct UpdateGatewayInformationInput: AWSEncodableShape {
        /// The Amazon Resource Name (ARN) of the gateway to update.
        public let gatewayArn: String
        /// The updated display name of the gateway.
        public let gatewayDisplayName: String?

        public init(gatewayArn: String, gatewayDisplayName: String? = nil) {
            self.gatewayArn = gatewayArn
            self.gatewayDisplayName = gatewayDisplayName
        }

        public func validate(name: String) throws {
            try self.validate(self.gatewayArn, name: "gatewayArn", parent: name, max: 500)
            try self.validate(self.gatewayArn, name: "gatewayArn", parent: name, min: 50)
            try self.validate(self.gatewayArn, name: "gatewayArn", parent: name, pattern: "^arn:(aws|aws-cn|aws-us-gov):backup-gateway(:[a-zA-Z-0-9]+){3}\\/[a-zA-Z-0-9]+$")
            try self.validate(self.gatewayDisplayName, name: "gatewayDisplayName", parent: name, max: 100)
            try self.validate(self.gatewayDisplayName, name: "gatewayDisplayName", parent: name, min: 1)
            try self.validate(self.gatewayDisplayName, name: "gatewayDisplayName", parent: name, pattern: "^[a-zA-Z0-9-]*$")
        }

        private enum CodingKeys: String, CodingKey {
            case gatewayArn = "GatewayArn"
            case gatewayDisplayName = "GatewayDisplayName"
        }
    }

    public struct UpdateGatewayInformationOutput: AWSDecodableShape {
        /// The Amazon Resource Name (ARN) of the gateway you updated.
        public let gatewayArn: String?

        public init(gatewayArn: String? = nil) {
            self.gatewayArn = gatewayArn
        }

        private enum CodingKeys: String, CodingKey {
            case gatewayArn = "GatewayArn"
        }
    }

    public struct UpdateHypervisorInput: AWSEncodableShape {
        /// The updated host of the hypervisor. This can be either an IP address or a fully-qualified domain name (FQDN).
        public let host: String?
        /// The Amazon Resource Name (ARN) of the hypervisor to update.
        public let hypervisorArn: String
        /// The updated password for the hypervisor.
        public let password: String?
        /// The updated username for the hypervisor.
        public let username: String?

        public init(host: String? = nil, hypervisorArn: String, password: String? = nil, username: String? = nil) {
            self.host = host
            self.hypervisorArn = hypervisorArn
            self.password = password
            self.username = username
        }

        public func validate(name: String) throws {
            try self.validate(self.host, name: "host", parent: name, max: 128)
            try self.validate(self.host, name: "host", parent: name, min: 3)
            try self.validate(self.host, name: "host", parent: name, pattern: "^.+$")
            try self.validate(self.hypervisorArn, name: "hypervisorArn", parent: name, max: 500)
            try self.validate(self.hypervisorArn, name: "hypervisorArn", parent: name, min: 50)
            try self.validate(self.hypervisorArn, name: "hypervisorArn", parent: name, pattern: "^arn:(aws|aws-cn|aws-us-gov):backup-gateway(:[a-zA-Z-0-9]+){3}\\/[a-zA-Z-0-9]+$")
            try self.validate(self.password, name: "password", parent: name, max: 100)
            try self.validate(self.password, name: "password", parent: name, min: 1)
            try self.validate(self.password, name: "password", parent: name, pattern: "^[ -~]+$")
            try self.validate(self.username, name: "username", parent: name, max: 100)
            try self.validate(self.username, name: "username", parent: name, min: 1)
            try self.validate(self.username, name: "username", parent: name, pattern: "^[ -\\.0-\\[\\]-~]*[!-\\.0-\\[\\]-~][ -\\.0-\\[\\]-~]*$")
        }

        private enum CodingKeys: String, CodingKey {
            case host = "Host"
            case hypervisorArn = "HypervisorArn"
            case password = "Password"
            case username = "Username"
        }
    }

    public struct UpdateHypervisorOutput: AWSDecodableShape {
        /// The Amazon Resource Name (ARN) of the hypervisor you updated.
        public let hypervisorArn: String?

        public init(hypervisorArn: String? = nil) {
            self.hypervisorArn = hypervisorArn
        }

        private enum CodingKeys: String, CodingKey {
            case hypervisorArn = "HypervisorArn"
        }
    }

    public struct VirtualMachine: AWSDecodableShape {
        /// The host name of the virtual machine.
        public let hostName: String?
        /// The ID of the virtual machine's hypervisor.
        public let hypervisorId: String?
        /// The most recent date a virtual machine was backed up, in Unix format and UTC time.
        public let lastBackupDate: Date?
        /// The name of the virtual machine.
        public let name: String?
        /// The path of the virtual machine.
        public let path: String?
        /// The Amazon Resource Name (ARN) of the virtual machine.
        public let resourceArn: String?

        public init(hostName: String? = nil, hypervisorId: String? = nil, lastBackupDate: Date? = nil, name: String? = nil, path: String? = nil, resourceArn: String? = nil) {
            self.hostName = hostName
            self.hypervisorId = hypervisorId
            self.lastBackupDate = lastBackupDate
            self.name = name
            self.path = path
            self.resourceArn = resourceArn
        }

        private enum CodingKeys: String, CodingKey {
            case hostName = "HostName"
            case hypervisorId = "HypervisorId"
            case lastBackupDate = "LastBackupDate"
            case name = "Name"
            case path = "Path"
            case resourceArn = "ResourceArn"
        }
    }
}
