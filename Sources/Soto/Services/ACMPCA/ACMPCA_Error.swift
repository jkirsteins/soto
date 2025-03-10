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

/// Error enum for ACMPCA
public struct ACMPCAErrorType: AWSErrorType {
    enum Code: String {
        case certificateMismatchException = "CertificateMismatchException"
        case concurrentModificationException = "ConcurrentModificationException"
        case invalidArgsException = "InvalidArgsException"
        case invalidArnException = "InvalidArnException"
        case invalidNextTokenException = "InvalidNextTokenException"
        case invalidPolicyException = "InvalidPolicyException"
        case invalidRequestException = "InvalidRequestException"
        case invalidStateException = "InvalidStateException"
        case invalidTagException = "InvalidTagException"
        case limitExceededException = "LimitExceededException"
        case lockoutPreventedException = "LockoutPreventedException"
        case malformedCSRException = "MalformedCSRException"
        case malformedCertificateException = "MalformedCertificateException"
        case permissionAlreadyExistsException = "PermissionAlreadyExistsException"
        case requestAlreadyProcessedException = "RequestAlreadyProcessedException"
        case requestFailedException = "RequestFailedException"
        case requestInProgressException = "RequestInProgressException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case tooManyTagsException = "TooManyTagsException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize ACMPCA
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

    /// The certificate authority certificate you are importing does not comply with
    /// 			conditions specified in the certificate that signed it.
    public static var certificateMismatchException: Self { .init(.certificateMismatchException) }
    /// A previous update to your private CA is still ongoing.
    public static var concurrentModificationException: Self { .init(.concurrentModificationException) }
    /// One or more of the specified arguments was not valid.
    public static var invalidArgsException: Self { .init(.invalidArgsException) }
    /// The requested Amazon Resource Name (ARN) does not refer to an existing
    /// 			resource.
    public static var invalidArnException: Self { .init(.invalidArnException) }
    /// The token specified in the NextToken argument is not valid. Use the token
    /// 			returned from your previous call to ListCertificateAuthorities.
    public static var invalidNextTokenException: Self { .init(.invalidNextTokenException) }
    /// The resource policy is invalid or is missing a required statement. For general
    /// 			information about IAM policy and statement structure, see Overview of JSON Policies.
    public static var invalidPolicyException: Self { .init(.invalidPolicyException) }
    /// The request action cannot be performed or is prohibited.
    public static var invalidRequestException: Self { .init(.invalidRequestException) }
    /// The state of the private CA does not allow this action to occur.
    public static var invalidStateException: Self { .init(.invalidStateException) }
    /// The tag associated with the CA is not valid. The invalid argument is contained in the
    /// 			message field.
    public static var invalidTagException: Self { .init(.invalidTagException) }
    /// An ACM Private CA quota has been exceeded. See the exception message returned to determine the
    /// 			quota that was exceeded.
    public static var limitExceededException: Self { .init(.limitExceededException) }
    /// The current action was prevented because it would lock the caller out from performing
    /// 			subsequent actions. Verify that the specified parameters would not result in the caller
    /// 			being denied access to the resource.
    public static var lockoutPreventedException: Self { .init(.lockoutPreventedException) }
    /// The certificate signing request is invalid.
    public static var malformedCSRException: Self { .init(.malformedCSRException) }
    /// One or more fields in the certificate are invalid.
    public static var malformedCertificateException: Self { .init(.malformedCertificateException) }
    /// The designated permission has already been given to the user.
    public static var permissionAlreadyExistsException: Self { .init(.permissionAlreadyExistsException) }
    /// Your request has already been completed.
    public static var requestAlreadyProcessedException: Self { .init(.requestAlreadyProcessedException) }
    /// The request has failed for an unspecified reason.
    public static var requestFailedException: Self { .init(.requestFailedException) }
    /// Your request is already in progress.
    public static var requestInProgressException: Self { .init(.requestInProgressException) }
    /// A resource such as a private CA, S3 bucket, certificate, audit report, or policy
    /// 			cannot be found.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// You can associate up to 50 tags with a private CA. Exception information is contained
    /// 			in the exception message field.
    public static var tooManyTagsException: Self { .init(.tooManyTagsException) }
}

extension ACMPCAErrorType: Equatable {
    public static func == (lhs: ACMPCAErrorType, rhs: ACMPCAErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension ACMPCAErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
