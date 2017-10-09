// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.
/**
The MIT License (MIT)

Copyright (c) 2017 Yuki Takei(noppoMan)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

*/

import AWSSDKSwiftCore

/// Error enum for Workdocs
public enum WorkdocsError: AWSErrorType {
    case unauthorizedOperationException(message: String?)
    case unauthorizedResourceAccessException(message: String?)
    case invalidArgumentException(message: String?)
    case failedDependencyException(message: String?)
    case serviceUnavailableException(message: String?)
    case entityNotExistsException(message: String?)
    case prohibitedStateException(message: String?)
    case documentLockedForCommentsException(message: String?)
    case entityAlreadyExistsException(message: String?)
    case limitExceededException(message: String?)
    case concurrentModificationException(message: String?)
    case invalidOperationException(message: String?)
    case illegalUserStateException(message: String?)
    case deactivatingLastSystemUserException(message: String?)
    case tooManyLabelsException(message: String?)
    case tooManySubscriptionsException(message: String?)
    case customMetadataLimitExceededException(message: String?)
    case storageLimitExceededException(message: String?)
    case storageLimitWillExceedException(message: String?)
    case draftUploadOutOfSyncException(message: String?)
    case resourceAlreadyCheckedOutException(message: String?)
}

extension WorkdocsError {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "UnauthorizedOperationException":
            self = .unauthorizedOperationException(message: message)
        case "UnauthorizedResourceAccessException":
            self = .unauthorizedResourceAccessException(message: message)
        case "InvalidArgumentException":
            self = .invalidArgumentException(message: message)
        case "FailedDependencyException":
            self = .failedDependencyException(message: message)
        case "ServiceUnavailableException":
            self = .serviceUnavailableException(message: message)
        case "EntityNotExistsException":
            self = .entityNotExistsException(message: message)
        case "ProhibitedStateException":
            self = .prohibitedStateException(message: message)
        case "DocumentLockedForCommentsException":
            self = .documentLockedForCommentsException(message: message)
        case "EntityAlreadyExistsException":
            self = .entityAlreadyExistsException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "ConcurrentModificationException":
            self = .concurrentModificationException(message: message)
        case "InvalidOperationException":
            self = .invalidOperationException(message: message)
        case "IllegalUserStateException":
            self = .illegalUserStateException(message: message)
        case "DeactivatingLastSystemUserException":
            self = .deactivatingLastSystemUserException(message: message)
        case "TooManyLabelsException":
            self = .tooManyLabelsException(message: message)
        case "TooManySubscriptionsException":
            self = .tooManySubscriptionsException(message: message)
        case "CustomMetadataLimitExceededException":
            self = .customMetadataLimitExceededException(message: message)
        case "StorageLimitExceededException":
            self = .storageLimitExceededException(message: message)
        case "StorageLimitWillExceedException":
            self = .storageLimitWillExceedException(message: message)
        case "DraftUploadOutOfSyncException":
            self = .draftUploadOutOfSyncException(message: message)
        case "ResourceAlreadyCheckedOutException":
            self = .resourceAlreadyCheckedOutException(message: message)
        default:
            return nil
        }
    }
}