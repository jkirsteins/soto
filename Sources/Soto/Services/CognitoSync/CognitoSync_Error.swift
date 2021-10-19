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

/// Error enum for CognitoSync
public struct CognitoSyncErrorType: AWSErrorType {
    enum Code: String {
        case alreadyStreamedException = "AlreadyStreamedException"
        case concurrentModificationException = "ConcurrentModificationException"
        case duplicateRequestException = "DuplicateRequestException"
        case internalErrorException = "InternalErrorException"
        case invalidConfigurationException = "InvalidConfigurationException"
        case invalidLambdaFunctionOutputException = "InvalidLambdaFunctionOutputException"
        case invalidParameterException = "InvalidParameterException"
        case lambdaThrottledException = "LambdaThrottledException"
        case limitExceededException = "LimitExceededException"
        case notAuthorizedException = "NotAuthorizedException"
        case resourceConflictException = "ResourceConflictException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case tooManyRequestsException = "TooManyRequestsException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize CognitoSync
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

    /// An exception thrown when a bulk publish operation is requested less than 24 hours after a previous bulk publish operation completed successfully.
    public static var alreadyStreamedException: Self { .init(.alreadyStreamedException) }
    /// Thrown if there are parallel requests to modify a resource.
    public static var concurrentModificationException: Self { .init(.concurrentModificationException) }
    /// An exception thrown when there is an IN_PROGRESS bulk publish operation for the given identity pool.
    public static var duplicateRequestException: Self { .init(.duplicateRequestException) }
    /// Indicates an internal service error.
    public static var internalErrorException: Self { .init(.internalErrorException) }
    public static var invalidConfigurationException: Self { .init(.invalidConfigurationException) }
    /// The AWS Lambda function returned invalid output or an exception.
    public static var invalidLambdaFunctionOutputException: Self { .init(.invalidLambdaFunctionOutputException) }
    /// Thrown when a request parameter does not comply with the associated constraints.
    public static var invalidParameterException: Self { .init(.invalidParameterException) }
    /// AWS Lambda throttled your account, please contact AWS Support
    public static var lambdaThrottledException: Self { .init(.lambdaThrottledException) }
    /// Thrown when the limit on the number of objects or operations has been exceeded.
    public static var limitExceededException: Self { .init(.limitExceededException) }
    /// Thrown when a user is not authorized to access the requested resource.
    public static var notAuthorizedException: Self { .init(.notAuthorizedException) }
    /// Thrown if an update can't be applied because the resource was changed by another call and this would result in a conflict.
    public static var resourceConflictException: Self { .init(.resourceConflictException) }
    /// Thrown if the resource doesn't exist.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// Thrown if the request is throttled.
    public static var tooManyRequestsException: Self { .init(.tooManyRequestsException) }
}

extension CognitoSyncErrorType: Equatable {
    public static func == (lhs: CognitoSyncErrorType, rhs: CognitoSyncErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension CognitoSyncErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
