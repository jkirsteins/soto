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

/// Error enum for IoTJobsDataPlane
public struct IoTJobsDataPlaneErrorType: AWSErrorType {
    enum Code: String {
        case certificateValidationException = "CertificateValidationException"
        case invalidRequestException = "InvalidRequestException"
        case invalidStateTransitionException = "InvalidStateTransitionException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case serviceUnavailableException = "ServiceUnavailableException"
        case terminalStateException = "TerminalStateException"
        case throttlingException = "ThrottlingException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize IoTJobsDataPlane
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

    /// The certificate is invalid.
    public static var certificateValidationException: Self { .init(.certificateValidationException) }
    /// The contents of the request were invalid. For example, this code is returned when an UpdateJobExecution request contains invalid status details. The message contains details about the error.
    public static var invalidRequestException: Self { .init(.invalidRequestException) }
    /// An update attempted to change the job execution to a state that is invalid because of the job execution's current state (for example, an attempt to change a request in state SUCCESS to state IN_PROGRESS). In this case, the body of the error message also contains the executionState field.
    public static var invalidStateTransitionException: Self { .init(.invalidStateTransitionException) }
    /// The specified resource does not exist.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// The service is temporarily unavailable.
    public static var serviceUnavailableException: Self { .init(.serviceUnavailableException) }
    /// The job is in a terminal state.
    public static var terminalStateException: Self { .init(.terminalStateException) }
    /// The rate exceeds the limit.
    public static var throttlingException: Self { .init(.throttlingException) }
}

extension IoTJobsDataPlaneErrorType: Equatable {
    public static func == (lhs: IoTJobsDataPlaneErrorType, rhs: IoTJobsDataPlaneErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension IoTJobsDataPlaneErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
