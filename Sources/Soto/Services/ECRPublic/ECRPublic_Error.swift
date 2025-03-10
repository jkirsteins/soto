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

/// Error enum for ECRPublic
public struct ECRPublicErrorType: AWSErrorType {
    enum Code: String {
        case emptyUploadException = "EmptyUploadException"
        case imageAlreadyExistsException = "ImageAlreadyExistsException"
        case imageDigestDoesNotMatchException = "ImageDigestDoesNotMatchException"
        case imageNotFoundException = "ImageNotFoundException"
        case imageTagAlreadyExistsException = "ImageTagAlreadyExistsException"
        case invalidLayerException = "InvalidLayerException"
        case invalidLayerPartException = "InvalidLayerPartException"
        case invalidParameterException = "InvalidParameterException"
        case invalidTagParameterException = "InvalidTagParameterException"
        case layerAlreadyExistsException = "LayerAlreadyExistsException"
        case layerPartTooSmallException = "LayerPartTooSmallException"
        case layersNotFoundException = "LayersNotFoundException"
        case limitExceededException = "LimitExceededException"
        case referencedImagesNotFoundException = "ReferencedImagesNotFoundException"
        case registryNotFoundException = "RegistryNotFoundException"
        case repositoryAlreadyExistsException = "RepositoryAlreadyExistsException"
        case repositoryNotEmptyException = "RepositoryNotEmptyException"
        case repositoryNotFoundException = "RepositoryNotFoundException"
        case repositoryPolicyNotFoundException = "RepositoryPolicyNotFoundException"
        case serverException = "ServerException"
        case tooManyTagsException = "TooManyTagsException"
        case unsupportedCommandException = "UnsupportedCommandException"
        case uploadNotFoundException = "UploadNotFoundException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize ECRPublic
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

    /// The specified layer upload does not contain any layer parts.
    public static var emptyUploadException: Self { .init(.emptyUploadException) }
    /// The specified image has already been pushed, and there were no changes to the manifest or image tag after the last push.
    public static var imageAlreadyExistsException: Self { .init(.imageAlreadyExistsException) }
    /// The specified image digest does not match the digest that Amazon ECR calculated for the image.
    public static var imageDigestDoesNotMatchException: Self { .init(.imageDigestDoesNotMatchException) }
    /// The image requested does not exist in the specified repository.
    public static var imageNotFoundException: Self { .init(.imageNotFoundException) }
    /// The specified image is tagged with a tag that already exists. The repository is configured for tag immutability.
    public static var imageTagAlreadyExistsException: Self { .init(.imageTagAlreadyExistsException) }
    /// The layer digest calculation performed by Amazon ECR upon receipt of the image layer does not match the digest specified.
    public static var invalidLayerException: Self { .init(.invalidLayerException) }
    /// The layer part size is not valid, or the first byte specified is not consecutive to the last byte of a previous layer part upload.
    public static var invalidLayerPartException: Self { .init(.invalidLayerPartException) }
    /// The specified parameter is invalid. Review the available parameters for the API request.
    public static var invalidParameterException: Self { .init(.invalidParameterException) }
    /// An invalid parameter has been specified. Tag keys can have a maximum character length of 128 characters, and tag values can have a maximum length of 256 characters.
    public static var invalidTagParameterException: Self { .init(.invalidTagParameterException) }
    /// The image layer already exists in the associated repository.
    public static var layerAlreadyExistsException: Self { .init(.layerAlreadyExistsException) }
    /// Layer parts must be at least 5 MiB in size.
    public static var layerPartTooSmallException: Self { .init(.layerPartTooSmallException) }
    /// The specified layers could not be found, or the specified layer is not valid for this repository.
    public static var layersNotFoundException: Self { .init(.layersNotFoundException) }
    /// The operation did not succeed because it would have exceeded a service limit for your account. For more information, see Amazon ECR Service Quotas in the Amazon Elastic Container Registry User Guide.
    public static var limitExceededException: Self { .init(.limitExceededException) }
    /// The manifest list is referencing an image that does not exist.
    public static var referencedImagesNotFoundException: Self { .init(.referencedImagesNotFoundException) }
    /// The registry does not exist.
    public static var registryNotFoundException: Self { .init(.registryNotFoundException) }
    /// The specified repository already exists in the specified registry.
    public static var repositoryAlreadyExistsException: Self { .init(.repositoryAlreadyExistsException) }
    /// The specified repository contains images. To delete a repository that contains images, you must force the deletion with the force parameter.
    public static var repositoryNotEmptyException: Self { .init(.repositoryNotEmptyException) }
    /// The specified repository could not be found. Check the spelling of the specified repository and ensure that you are performing operations on the correct registry.
    public static var repositoryNotFoundException: Self { .init(.repositoryNotFoundException) }
    /// The specified repository and registry combination does not have an associated repository policy.
    public static var repositoryPolicyNotFoundException: Self { .init(.repositoryPolicyNotFoundException) }
    /// These errors are usually caused by a server-side issue.
    public static var serverException: Self { .init(.serverException) }
    /// The list of tags on the repository is over the limit. The maximum number of tags that can be applied to a repository is 50.
    public static var tooManyTagsException: Self { .init(.tooManyTagsException) }
    /// The action is not supported in this Region.
    public static var unsupportedCommandException: Self { .init(.unsupportedCommandException) }
    /// The upload could not be found, or the specified upload ID is not valid for this repository.
    public static var uploadNotFoundException: Self { .init(.uploadNotFoundException) }
}

extension ECRPublicErrorType: Equatable {
    public static func == (lhs: ECRPublicErrorType, rhs: ECRPublicErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension ECRPublicErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
