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

/// Error enum for CognitoIdentity
public struct CognitoIdentityErrorType: AWSErrorType {
    enum Code: String {
        case concurrentModificationException = "ConcurrentModificationException"
        case developerUserAlreadyRegisteredException = "DeveloperUserAlreadyRegisteredException"
        case externalServiceException = "ExternalServiceException"
        case internalErrorException = "InternalErrorException"
        case invalidIdentityPoolConfigurationException = "InvalidIdentityPoolConfigurationException"
        case invalidParameterException = "InvalidParameterException"
        case limitExceededException = "LimitExceededException"
        case notAuthorizedException = "NotAuthorizedException"
        case resourceConflictException = "ResourceConflictException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case tooManyRequestsException = "TooManyRequestsException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize CognitoIdentity
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

    /// Thrown if there are parallel requests to modify a resource.
    public static var concurrentModificationException: Self { .init(.concurrentModificationException) }
    /// The provided developer user identifier is already registered with Cognito under a different identity ID.
    public static var developerUserAlreadyRegisteredException: Self { .init(.developerUserAlreadyRegisteredException) }
    /// An exception thrown when a dependent service such as Facebook or Twitter is not responding
    public static var externalServiceException: Self { .init(.externalServiceException) }
    /// Thrown when the service encounters an error during processing the request.
    public static var internalErrorException: Self { .init(.internalErrorException) }
    /// Thrown if the identity pool has no role associated for the given auth type (auth/unauth) or if the AssumeRole fails.
    public static var invalidIdentityPoolConfigurationException: Self { .init(.invalidIdentityPoolConfigurationException) }
    /// Thrown for missing or bad input parameter(s).
    public static var invalidParameterException: Self { .init(.invalidParameterException) }
    /// Thrown when the total number of user pools has exceeded a preset limit.
    public static var limitExceededException: Self { .init(.limitExceededException) }
    /// Thrown when a user is not authorized to access the requested resource.
    public static var notAuthorizedException: Self { .init(.notAuthorizedException) }
    /// Thrown when a user tries to use a login which is already linked to another account.
    public static var resourceConflictException: Self { .init(.resourceConflictException) }
    /// Thrown when the requested resource (for example, a dataset or record) does not exist.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// Thrown when a request is throttled.
    public static var tooManyRequestsException: Self { .init(.tooManyRequestsException) }
}

extension CognitoIdentityErrorType: Equatable {
    public static func == (lhs: CognitoIdentityErrorType, rhs: CognitoIdentityErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension CognitoIdentityErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
