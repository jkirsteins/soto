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

/// Error enum for GuardDuty
public struct GuardDutyErrorType: AWSErrorType {
    enum Code: String {
        case badRequestException = "BadRequestException"
        case internalServerErrorException = "InternalServerErrorException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize GuardDuty
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

    /// A bad request exception object.
    public static var badRequestException: Self { .init(.badRequestException) }
    /// An internal server error exception object.
    public static var internalServerErrorException: Self { .init(.internalServerErrorException) }
}

extension GuardDutyErrorType: Equatable {
    public static func == (lhs: GuardDutyErrorType, rhs: GuardDutyErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension GuardDutyErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
