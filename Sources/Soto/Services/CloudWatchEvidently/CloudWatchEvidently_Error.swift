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

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto/tree/main/CodeGenerator. DO NOT EDIT.

import SotoCore

/// Error enum for CloudWatchEvidently
public struct CloudWatchEvidentlyErrorType: AWSErrorType {
    enum Code: String {
        case accessDeniedException = "AccessDeniedException"
        case conflictException = "ConflictException"
        case internalServerException = "InternalServerException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case serviceQuotaExceededException = "ServiceQuotaExceededException"
        case serviceUnavailableException = "ServiceUnavailableException"
        case throttlingException = "ThrottlingException"
        case validationException = "ValidationException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize CloudWatchEvidently
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

    /// You do not have sufficient permissions to perform this action.
    public static var accessDeniedException: Self { .init(.accessDeniedException) }
    /// A resource was in an inconsistent state during an update or a deletion.
    public static var conflictException: Self { .init(.conflictException) }
    /// Unexpected error while processing the request. Retry the request.
    public static var internalServerException: Self { .init(.internalServerException) }
    /// The request references a resource that does not exist.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// The request would cause a service quota to be exceeded.
    public static var serviceQuotaExceededException: Self { .init(.serviceQuotaExceededException) }
    /// The service was unavailable. Retry the request.
    public static var serviceUnavailableException: Self { .init(.serviceUnavailableException) }
    /// The request was denied because of request throttling. Retry the request.
    public static var throttlingException: Self { .init(.throttlingException) }
    /// The value of a parameter in the request caused an error.
    public static var validationException: Self { .init(.validationException) }
}

extension CloudWatchEvidentlyErrorType: Equatable {
    public static func == (lhs: CloudWatchEvidentlyErrorType, rhs: CloudWatchEvidentlyErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension CloudWatchEvidentlyErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
