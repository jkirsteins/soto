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

/// Error enum for Macie2
public struct Macie2ErrorType: AWSErrorType {
    enum Code: String {
        case accessDeniedException = "AccessDeniedException"
        case conflictException = "ConflictException"
        case internalServerException = "InternalServerException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case serviceQuotaExceededException = "ServiceQuotaExceededException"
        case throttlingException = "ThrottlingException"
        case validationException = "ValidationException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize Macie2
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

    /// Provides information about an error that occurred due to insufficient access to a specified resource.
    public static var accessDeniedException: Self { .init(.accessDeniedException) }
    /// Provides information about an error that occurred due to a versioning conflict for a specified resource.
    public static var conflictException: Self { .init(.conflictException) }
    /// Provides information about an error that occurred due to an unknown internal server error, exception, or failure.
    public static var internalServerException: Self { .init(.internalServerException) }
    /// Provides information about an error that occurred because a specified resource wasn't found.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// Provides information about an error that occurred due to one or more service quotas for an account.
    public static var serviceQuotaExceededException: Self { .init(.serviceQuotaExceededException) }
    /// Provides information about an error that occurred because too many requests were sent during a certain amount of time.
    public static var throttlingException: Self { .init(.throttlingException) }
    /// Provides information about an error that occurred due to a syntax error in a request.
    public static var validationException: Self { .init(.validationException) }
}

extension Macie2ErrorType: Equatable {
    public static func == (lhs: Macie2ErrorType, rhs: Macie2ErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension Macie2ErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
