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

/// Error enum for LicenseManager
public struct LicenseManagerErrorType: AWSErrorType {
    enum Code: String {
        case accessDeniedException = "AccessDeniedException"
        case authorizationException = "AuthorizationException"
        case conflictException = "ConflictException"
        case entitlementNotAllowedException = "EntitlementNotAllowedException"
        case failedDependencyException = "FailedDependencyException"
        case filterLimitExceededException = "FilterLimitExceededException"
        case invalidParameterValueException = "InvalidParameterValueException"
        case invalidResourceStateException = "InvalidResourceStateException"
        case licenseUsageException = "LicenseUsageException"
        case noEntitlementsAllowedException = "NoEntitlementsAllowedException"
        case rateLimitExceededException = "RateLimitExceededException"
        case redirectException = "RedirectException"
        case resourceLimitExceededException = "ResourceLimitExceededException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case serverInternalException = "ServerInternalException"
        case unsupportedDigitalSignatureMethodException = "UnsupportedDigitalSignatureMethodException"
        case validationException = "ValidationException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize LicenseManager
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

    /// Access to resource denied.
    public static var accessDeniedException: Self { .init(.accessDeniedException) }
    /// The Amazon Web Services user account does not have permission to perform the action. Check the IAM policy associated with this account.
    public static var authorizationException: Self { .init(.authorizationException) }
    /// There was a conflict processing the request. Try your request again.
    public static var conflictException: Self { .init(.conflictException) }
    /// The entitlement is not allowed.
    public static var entitlementNotAllowedException: Self { .init(.entitlementNotAllowedException) }
    /// A dependency required to run the API is missing.
    public static var failedDependencyException: Self { .init(.failedDependencyException) }
    /// The request uses too many filters or too many filter values.
    public static var filterLimitExceededException: Self { .init(.filterLimitExceededException) }
    /// One or more parameter values are not valid.
    public static var invalidParameterValueException: Self { .init(.invalidParameterValueException) }
    /// License Manager cannot allocate a license to a resource because of its state.  For example, you cannot allocate a license to an instance in the process of shutting down.
    public static var invalidResourceStateException: Self { .init(.invalidResourceStateException) }
    /// You do not have enough licenses available to support a new resource launch.
    public static var licenseUsageException: Self { .init(.licenseUsageException) }
    /// There are no entitlements found for this license, or the entitlement maximum count is reached.
    public static var noEntitlementsAllowedException: Self { .init(.noEntitlementsAllowedException) }
    /// Too many requests have been submitted. Try again after a brief wait.
    public static var rateLimitExceededException: Self { .init(.rateLimitExceededException) }
    /// This is not the correct Region for the resource. Try again.
    public static var redirectException: Self { .init(.redirectException) }
    /// Your resource limits have been exceeded.
    public static var resourceLimitExceededException: Self { .init(.resourceLimitExceededException) }
    /// The resource cannot be found.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// The server experienced an internal error. Try again.
    public static var serverInternalException: Self { .init(.serverInternalException) }
    /// The digital signature method is unsupported. Try your request again.
    public static var unsupportedDigitalSignatureMethodException: Self { .init(.unsupportedDigitalSignatureMethodException) }
    /// The provided input is not valid. Try your request again.
    public static var validationException: Self { .init(.validationException) }
}

extension LicenseManagerErrorType: Equatable {
    public static func == (lhs: LicenseManagerErrorType, rhs: LicenseManagerErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension LicenseManagerErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
