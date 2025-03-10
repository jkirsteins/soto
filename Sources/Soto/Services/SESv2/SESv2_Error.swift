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

/// Error enum for SESv2
public struct SESv2ErrorType: AWSErrorType {
    enum Code: String {
        case accountSuspendedException = "AccountSuspendedException"
        case alreadyExistsException = "AlreadyExistsException"
        case badRequestException = "BadRequestException"
        case concurrentModificationException = "ConcurrentModificationException"
        case conflictException = "ConflictException"
        case invalidNextTokenException = "InvalidNextTokenException"
        case limitExceededException = "LimitExceededException"
        case mailFromDomainNotVerifiedException = "MailFromDomainNotVerifiedException"
        case messageRejected = "MessageRejected"
        case notFoundException = "NotFoundException"
        case sendingPausedException = "SendingPausedException"
        case tooManyRequestsException = "TooManyRequestsException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize SESv2
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

    /// The message can't be sent because the account's ability to send email has been permanently restricted.
    public static var accountSuspendedException: Self { .init(.accountSuspendedException) }
    /// The resource specified in your request already exists.
    public static var alreadyExistsException: Self { .init(.alreadyExistsException) }
    /// The input you provided is invalid.
    public static var badRequestException: Self { .init(.badRequestException) }
    /// The resource is being modified by another operation or thread.
    public static var concurrentModificationException: Self { .init(.concurrentModificationException) }
    /// If there is already an ongoing account details update under review.
    public static var conflictException: Self { .init(.conflictException) }
    /// The specified request includes an invalid or expired token.
    public static var invalidNextTokenException: Self { .init(.invalidNextTokenException) }
    /// There are too many instances of the specified resource type.
    public static var limitExceededException: Self { .init(.limitExceededException) }
    /// The message can't be sent because the sending domain isn't verified.
    public static var mailFromDomainNotVerifiedException: Self { .init(.mailFromDomainNotVerifiedException) }
    /// The message can't be sent because it contains invalid content.
    public static var messageRejected: Self { .init(.messageRejected) }
    /// The resource you attempted to access doesn't exist.
    public static var notFoundException: Self { .init(.notFoundException) }
    /// The message can't be sent because the account's ability to send email is currently paused.
    public static var sendingPausedException: Self { .init(.sendingPausedException) }
    /// Too many requests have been made to the operation.
    public static var tooManyRequestsException: Self { .init(.tooManyRequestsException) }
}

extension SESv2ErrorType: Equatable {
    public static func == (lhs: SESv2ErrorType, rhs: SESv2ErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension SESv2ErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
