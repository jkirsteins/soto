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

/// Error enum for Backup
public struct BackupErrorType: AWSErrorType {
    enum Code: String {
        case alreadyExistsException = "AlreadyExistsException"
        case conflictException = "ConflictException"
        case dependencyFailureException = "DependencyFailureException"
        case invalidParameterValueException = "InvalidParameterValueException"
        case invalidRequestException = "InvalidRequestException"
        case invalidResourceStateException = "InvalidResourceStateException"
        case limitExceededException = "LimitExceededException"
        case missingParameterValueException = "MissingParameterValueException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case serviceUnavailableException = "ServiceUnavailableException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize Backup
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

    /// The required resource already exists.
    public static var alreadyExistsException: Self { .init(.alreadyExistsException) }
    /// Backup can't perform the action that you requested until it finishes performing a previous action. Try again later.
    public static var conflictException: Self { .init(.conflictException) }
    /// A dependent Amazon Web Services service or resource returned an error to the Backup service, and the action cannot be completed.
    public static var dependencyFailureException: Self { .init(.dependencyFailureException) }
    /// Indicates that something is wrong with a parameter's value. For example, the value is out of range.
    public static var invalidParameterValueException: Self { .init(.invalidParameterValueException) }
    /// Indicates that something is wrong with the input to the request. For example, a parameter is of the wrong type.
    public static var invalidRequestException: Self { .init(.invalidRequestException) }
    /// Backup is already performing an action on this recovery point. It can't perform the action you requested until the first action finishes. Try again later.
    public static var invalidResourceStateException: Self { .init(.invalidResourceStateException) }
    /// A limit in the request has been exceeded; for example, a maximum number of items allowed in a request.
    public static var limitExceededException: Self { .init(.limitExceededException) }
    /// Indicates that a required parameter is missing.
    public static var missingParameterValueException: Self { .init(.missingParameterValueException) }
    /// A resource that is required for the action doesn't exist.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// The request failed due to a temporary failure of the server.
    public static var serviceUnavailableException: Self { .init(.serviceUnavailableException) }
}

extension BackupErrorType: Equatable {
    public static func == (lhs: BackupErrorType, rhs: BackupErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension BackupErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
