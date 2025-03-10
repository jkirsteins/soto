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

/// Error enum for SecretsManager
public struct SecretsManagerErrorType: AWSErrorType {
    enum Code: String {
        case decryptionFailure = "DecryptionFailure"
        case encryptionFailure = "EncryptionFailure"
        case internalServiceError = "InternalServiceError"
        case invalidNextTokenException = "InvalidNextTokenException"
        case invalidParameterException = "InvalidParameterException"
        case invalidRequestException = "InvalidRequestException"
        case limitExceededException = "LimitExceededException"
        case malformedPolicyDocumentException = "MalformedPolicyDocumentException"
        case preconditionNotMetException = "PreconditionNotMetException"
        case publicPolicyException = "PublicPolicyException"
        case resourceExistsException = "ResourceExistsException"
        case resourceNotFoundException = "ResourceNotFoundException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize SecretsManager
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

    /// Secrets Manager can't decrypt the protected secret text using the provided KMS key.
    public static var decryptionFailure: Self { .init(.decryptionFailure) }
    /// Secrets Manager can't encrypt the protected secret text using the provided KMS key. Check that the customer master key (CMK) is available, enabled, and not in an invalid state. For more information, see How Key State Affects Use of a Customer Master Key.
    public static var encryptionFailure: Self { .init(.encryptionFailure) }
    /// An error occurred on the server side.
    public static var internalServiceError: Self { .init(.internalServiceError) }
    /// You provided an invalid NextToken value.
    public static var invalidNextTokenException: Self { .init(.invalidNextTokenException) }
    /// You provided an invalid value for a parameter.
    public static var invalidParameterException: Self { .init(.invalidParameterException) }
    /// You provided a parameter value that is not valid for the current state of the resource. Possible causes:   You tried to perform the operation on a secret that's currently marked deleted.   You tried to enable rotation on a secret that doesn't already have a Lambda function ARN configured and you didn't include such an ARN as a parameter in this call.
    public static var invalidRequestException: Self { .init(.invalidRequestException) }
    /// The request failed because it would exceed one of the Secrets Manager internal limits.
    public static var limitExceededException: Self { .init(.limitExceededException) }
    /// You provided a resource-based policy with syntax errors.
    public static var malformedPolicyDocumentException: Self { .init(.malformedPolicyDocumentException) }
    /// The request failed because you did not complete all the prerequisite steps.
    public static var preconditionNotMetException: Self { .init(.preconditionNotMetException) }
    /// The BlockPublicPolicy parameter is set to true and the resource policy did not prevent broad access to the secret.
    public static var publicPolicyException: Self { .init(.publicPolicyException) }
    /// A resource with the ID you requested already exists.
    public static var resourceExistsException: Self { .init(.resourceExistsException) }
    /// We can't find the resource that you asked for.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
}

extension SecretsManagerErrorType: Equatable {
    public static func == (lhs: SecretsManagerErrorType, rhs: SecretsManagerErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension SecretsManagerErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
