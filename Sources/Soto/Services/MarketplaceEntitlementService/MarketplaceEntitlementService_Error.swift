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

/// Error enum for MarketplaceEntitlementService
public struct MarketplaceEntitlementServiceErrorType: AWSErrorType {
    enum Code: String {
        case internalServiceErrorException = "InternalServiceErrorException"
        case invalidParameterException = "InvalidParameterException"
        case throttlingException = "ThrottlingException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize MarketplaceEntitlementService
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

    /// An internal error has occurred. Retry your request. If the problem persists, post a message with details on the AWS forums.
    public static var internalServiceErrorException: Self { .init(.internalServiceErrorException) }
    /// One or more parameters in your request was invalid.
    public static var invalidParameterException: Self { .init(.invalidParameterException) }
    /// The calls to the GetEntitlements API are throttled.
    public static var throttlingException: Self { .init(.throttlingException) }
}

extension MarketplaceEntitlementServiceErrorType: Equatable {
    public static func == (lhs: MarketplaceEntitlementServiceErrorType, rhs: MarketplaceEntitlementServiceErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension MarketplaceEntitlementServiceErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
