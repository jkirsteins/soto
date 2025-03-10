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

/// Error enum for AppStream
public struct AppStreamErrorType: AWSErrorType {
    enum Code: String {
        case concurrentModificationException = "ConcurrentModificationException"
        case incompatibleImageException = "IncompatibleImageException"
        case invalidAccountStatusException = "InvalidAccountStatusException"
        case invalidParameterCombinationException = "InvalidParameterCombinationException"
        case invalidRoleException = "InvalidRoleException"
        case limitExceededException = "LimitExceededException"
        case operationNotPermittedException = "OperationNotPermittedException"
        case requestLimitExceededException = "RequestLimitExceededException"
        case resourceAlreadyExistsException = "ResourceAlreadyExistsException"
        case resourceInUseException = "ResourceInUseException"
        case resourceNotAvailableException = "ResourceNotAvailableException"
        case resourceNotFoundException = "ResourceNotFoundException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize AppStream
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

    /// An API error occurred. Wait a few minutes and try again.
    public static var concurrentModificationException: Self { .init(.concurrentModificationException) }
    /// The image can't be updated because it's not compatible for updates.
    public static var incompatibleImageException: Self { .init(.incompatibleImageException) }
    /// The resource cannot be created because your AWS account is suspended. For assistance, contact AWS Support.
    public static var invalidAccountStatusException: Self { .init(.invalidAccountStatusException) }
    /// Indicates an incorrect combination of parameters, or a missing parameter.
    public static var invalidParameterCombinationException: Self { .init(.invalidParameterCombinationException) }
    /// The specified role is invalid.
    public static var invalidRoleException: Self { .init(.invalidRoleException) }
    /// The requested limit exceeds the permitted limit for an account.
    public static var limitExceededException: Self { .init(.limitExceededException) }
    /// The attempted operation is not permitted.
    public static var operationNotPermittedException: Self { .init(.operationNotPermittedException) }
    /// AppStream 2.0 can’t process the request right now because the Describe calls from your AWS account are being throttled by Amazon EC2. Try again later.
    public static var requestLimitExceededException: Self { .init(.requestLimitExceededException) }
    /// The specified resource already exists.
    public static var resourceAlreadyExistsException: Self { .init(.resourceAlreadyExistsException) }
    /// The specified resource is in use.
    public static var resourceInUseException: Self { .init(.resourceInUseException) }
    /// The specified resource exists and is not in use, but isn't available.
    public static var resourceNotAvailableException: Self { .init(.resourceNotAvailableException) }
    /// The specified resource was not found.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
}

extension AppStreamErrorType: Equatable {
    public static func == (lhs: AppStreamErrorType, rhs: AppStreamErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension AppStreamErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
