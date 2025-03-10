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

/// Error enum for Outposts
public struct OutpostsErrorType: AWSErrorType {
    enum Code: String {
        case accessDeniedException = "AccessDeniedException"
        case conflictException = "ConflictException"
        case internalServerException = "InternalServerException"
        case notFoundException = "NotFoundException"
        case serviceQuotaExceededException = "ServiceQuotaExceededException"
        case validationException = "ValidationException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize Outposts
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

    /// You do not have permission to perform this operation.
    public static var accessDeniedException: Self { .init(.accessDeniedException) }
    /// Updating or deleting this resource can cause an inconsistent state.
    public static var conflictException: Self { .init(.conflictException) }
    /// An internal error has occurred.
    public static var internalServerException: Self { .init(.internalServerException) }
    /// The specified request is not valid.
    public static var notFoundException: Self { .init(.notFoundException) }
    /// You have exceeded a service quota.
    public static var serviceQuotaExceededException: Self { .init(.serviceQuotaExceededException) }
    /// A parameter is not valid.
    public static var validationException: Self { .init(.validationException) }
}

extension OutpostsErrorType: Equatable {
    public static func == (lhs: OutpostsErrorType, rhs: OutpostsErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension OutpostsErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
