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

/// Error enum for Mgn
public struct MgnErrorType: AWSErrorType {
    enum Code: String {
        case accessDeniedException = "AccessDeniedException"
        case conflictException = "ConflictException"
        case internalServerException = "InternalServerException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case serviceQuotaExceededException = "ServiceQuotaExceededException"
        case throttlingException = "ThrottlingException"
        case uninitializedAccountException = "UninitializedAccountException"
        case validationException = "ValidationException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize Mgn
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

    /// Operating denied due to a file permission or access check error.
    public static var accessDeniedException: Self { .init(.accessDeniedException) }
    /// The request could not be completed due to a conflict with the current state of the target resource.
    public static var conflictException: Self { .init(.conflictException) }
    /// The server encountered an unexpected condition that prevented it from fulfilling the request.
    public static var internalServerException: Self { .init(.internalServerException) }
    /// Resource not found exception.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// The request could not be completed because its exceeded the service quota.
    public static var serviceQuotaExceededException: Self { .init(.serviceQuotaExceededException) }
    /// Reached throttling quota exception.
    public static var throttlingException: Self { .init(.throttlingException) }
    /// Unitialized account exception.
    public static var uninitializedAccountException: Self { .init(.uninitializedAccountException) }
    /// Validate exception.
    public static var validationException: Self { .init(.validationException) }
}

extension MgnErrorType: Equatable {
    public static func == (lhs: MgnErrorType, rhs: MgnErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension MgnErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
