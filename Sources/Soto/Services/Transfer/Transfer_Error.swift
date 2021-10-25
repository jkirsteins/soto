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

/// Error enum for Transfer
public struct TransferErrorType: AWSErrorType {
    enum Code: String {
        case accessDeniedException = "AccessDeniedException"
        case conflictException = "ConflictException"
        case internalServiceError = "InternalServiceError"
        case invalidNextTokenException = "InvalidNextTokenException"
        case invalidRequestException = "InvalidRequestException"
        case resourceExistsException = "ResourceExistsException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case serviceUnavailableException = "ServiceUnavailableException"
        case throttlingException = "ThrottlingException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize Transfer
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

    /// You do not have sufficient access to perform this action.
    public static var accessDeniedException: Self { .init(.accessDeniedException) }
    /// This exception is thrown when the UpdateServer is called for a file transfer protocol-enabled server that has VPC as the endpoint type and the server's VpcEndpointID is not in the available state.
    public static var conflictException: Self { .init(.conflictException) }
    /// This exception is thrown when an error occurs in the Amazon Web ServicesTransfer Family service.
    public static var internalServiceError: Self { .init(.internalServiceError) }
    /// The NextToken parameter that was passed is invalid.
    public static var invalidNextTokenException: Self { .init(.invalidNextTokenException) }
    /// This exception is thrown when the client submits a malformed request.
    public static var invalidRequestException: Self { .init(.invalidRequestException) }
    /// The requested resource does not exist.
    public static var resourceExistsException: Self { .init(.resourceExistsException) }
    /// This exception is thrown when a resource is not found by the Amazon Web ServicesTransfer Family service.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// The request has failed because the Amazon Web ServicesTransfer Family service is not available.
    public static var serviceUnavailableException: Self { .init(.serviceUnavailableException) }
    /// The request was denied due to request throttling.
    ///  HTTP Status Code: 400
    public static var throttlingException: Self { .init(.throttlingException) }
}

extension TransferErrorType: Equatable {
    public static func == (lhs: TransferErrorType, rhs: TransferErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension TransferErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
