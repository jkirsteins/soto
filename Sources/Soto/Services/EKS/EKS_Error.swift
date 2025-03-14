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

import SotoCore

/// Error enum for EKS
public struct EKSErrorType: AWSErrorType {
    enum Code: String {
        case accessDeniedException = "AccessDeniedException"
        case badRequestException = "BadRequestException"
        case clientException = "ClientException"
        case invalidParameterException = "InvalidParameterException"
        case invalidRequestException = "InvalidRequestException"
        case notFoundException = "NotFoundException"
        case resourceInUseException = "ResourceInUseException"
        case resourceLimitExceededException = "ResourceLimitExceededException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case resourcePropagationDelayException = "ResourcePropagationDelayException"
        case serverException = "ServerException"
        case serviceUnavailableException = "ServiceUnavailableException"
        case unsupportedAvailabilityZoneException = "UnsupportedAvailabilityZoneException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize EKS
    public init?(errorCode: String, context: AWSErrorContext) {
        guard let error = Code(rawValue: errorCode) else { return nil }
        self.error = error
        self.context = context
    }

    internal init(_ error: Code) {
        self.error = error
        self.context = nil
    }

    /// return error code string
    public var errorCode: String { self.error.rawValue }

    /// You don't have permissions to perform the requested operation. The user or role that is making the request must have at least one IAM permissions policy attached that grants the required permissions. For more information, see Access Management in the IAM User Guide.
    public static var accessDeniedException: Self { .init(.accessDeniedException) }
    /// This exception is thrown if the request contains a semantic error. The precise meaning will depend on the API, and will be documented in the error message.
    public static var badRequestException: Self { .init(.badRequestException) }
    /// These errors are usually caused by a client action. Actions can include using an action or resource on behalf of a user that doesn't have permissions to use the action or resource or specifying an identifier that is not valid.
    public static var clientException: Self { .init(.clientException) }
    /// The specified parameter is invalid. Review the available parameters for the API request.
    public static var invalidParameterException: Self { .init(.invalidParameterException) }
    /// The request is invalid given the state of the cluster. Check the state of the cluster and the associated operations.
    public static var invalidRequestException: Self { .init(.invalidRequestException) }
    /// A service resource associated with the request could not be found. Clients should not retry such requests.
    public static var notFoundException: Self { .init(.notFoundException) }
    /// The specified resource is in use.
    public static var resourceInUseException: Self { .init(.resourceInUseException) }
    /// You have encountered a service limit on the specified resource.
    public static var resourceLimitExceededException: Self { .init(.resourceLimitExceededException) }
    /// The specified resource could not be found. You can view your available clusters with ListClusters. You can view your available managed node groups with ListNodegroups. Amazon EKS clusters and node groups are Region-specific.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// Required resources (such as Service Linked Roles) were created and are still propagating. Retry later.
    public static var resourcePropagationDelayException: Self { .init(.resourcePropagationDelayException) }
    /// These errors are usually caused by a server-side issue.
    public static var serverException: Self { .init(.serverException) }
    /// The service is unavailable. Back off and retry the operation.
    public static var serviceUnavailableException: Self { .init(.serviceUnavailableException) }
    /// At least one of your specified cluster subnets is in an Availability Zone that does not support Amazon EKS. The exception output specifies the supported Availability Zones for your account, from which you can choose subnets for your cluster.
    public static var unsupportedAvailabilityZoneException: Self { .init(.unsupportedAvailabilityZoneException) }
}

extension EKSErrorType: Equatable {
    public static func == (lhs: EKSErrorType, rhs: EKSErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension EKSErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
