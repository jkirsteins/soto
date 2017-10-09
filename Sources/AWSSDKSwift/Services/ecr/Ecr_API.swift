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

import Foundation
import AWSSDKSwiftCore

/**
Amazon EC2 Container Registry (Amazon ECR) is a managed AWS Docker registry service. Customers can use the familiar Docker CLI to push, pull, and manage images. Amazon ECR provides a secure, scalable, and reliable registry. Amazon ECR supports private Docker repositories with resource-based permissions using AWS IAM so that specific users or Amazon EC2 instances can access repositories and images. Developers can use the Docker CLI to author and manage images.
*/
public struct Ecr {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            amzTarget: "AmazonEC2ContainerRegistry_V20150921",
            service: "ecr",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2015-09-21",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [EcrError.self]
        )
    }

    ///  Retrieves the pre-signed Amazon S3 download URL corresponding to an image layer. You can only get URLs for image layers that are referenced in an image.  This operation is used by the Amazon ECR proxy, and it is not intended for general use by customers for pulling and pushing images. In most cases, you should use the docker CLI to pull, tag, and push images. 
    public func getDownloadUrlForLayer(_ input: GetDownloadUrlForLayerRequest) throws -> GetDownloadUrlForLayerResponse {
        return try client.send(operation: "GetDownloadUrlForLayer", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the repository policy from a specified repository.
    public func deleteRepositoryPolicy(_ input: DeleteRepositoryPolicyRequest) throws -> DeleteRepositoryPolicyResponse {
        return try client.send(operation: "DeleteRepositoryPolicy", path: "/", httpMethod: "POST", input: input)
    }

    ///  Inform Amazon ECR that the image layer upload for a specified registry, repository name, and upload ID, has completed. You can optionally provide a sha256 digest of the image layer for data validation purposes.  This operation is used by the Amazon ECR proxy, and it is not intended for general use by customers for pulling and pushing images. In most cases, you should use the docker CLI to pull, tag, and push images. 
    public func completeLayerUpload(_ input: CompleteLayerUploadRequest) throws -> CompleteLayerUploadResponse {
        return try client.send(operation: "CompleteLayerUpload", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates an image repository.
    public func createRepository(_ input: CreateRepositoryRequest) throws -> CreateRepositoryResponse {
        return try client.send(operation: "CreateRepository", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists all the image IDs for a given repository. You can filter images based on whether or not they are tagged by setting the tagStatus parameter to TAGGED or UNTAGGED. For example, you can filter your results to return only UNTAGGED images and then pipe that result to a BatchDeleteImage operation to delete them. Or, you can filter your results to return only TAGGED images to list all of the tags in your repository.
    public func listImages(_ input: ListImagesRequest) throws -> ListImagesResponse {
        return try client.send(operation: "ListImages", path: "/", httpMethod: "POST", input: input)
    }

    ///  Check the availability of multiple image layers in a specified registry and repository.  This operation is used by the Amazon ECR proxy, and it is not intended for general use by customers for pulling and pushing images. In most cases, you should use the docker CLI to pull, tag, and push images. 
    public func batchCheckLayerAvailability(_ input: BatchCheckLayerAvailabilityRequest) throws -> BatchCheckLayerAvailabilityResponse {
        return try client.send(operation: "BatchCheckLayerAvailability", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes an existing image repository. If a repository contains images, you must use the force option to delete it.
    public func deleteRepository(_ input: DeleteRepositoryRequest) throws -> DeleteRepositoryResponse {
        return try client.send(operation: "DeleteRepository", path: "/", httpMethod: "POST", input: input)
    }

    ///  Describes image repositories in a registry.
    public func describeRepositories(_ input: DescribeRepositoriesRequest) throws -> DescribeRepositoriesResponse {
        return try client.send(operation: "DescribeRepositories", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates or updates the image manifest and tags associated with an image.  This operation is used by the Amazon ECR proxy, and it is not intended for general use by customers for pulling and pushing images. In most cases, you should use the docker CLI to pull, tag, and push images. 
    public func putImage(_ input: PutImageRequest) throws -> PutImageResponse {
        return try client.send(operation: "PutImage", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves a token that is valid for a specified registry for 12 hours. This command allows you to use the docker CLI to push and pull images with Amazon ECR. If you do not specify a registry, the default registry is assumed. The authorizationToken returned for each registry specified is a base64 encoded string that can be decoded and used in a docker login command to authenticate to a registry. The AWS CLI offers an aws ecr get-login command that simplifies the login process.
    public func getAuthorizationToken(_ input: GetAuthorizationTokenRequest) throws -> GetAuthorizationTokenResponse {
        return try client.send(operation: "GetAuthorizationToken", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves the repository policy for a specified repository.
    public func getRepositoryPolicy(_ input: GetRepositoryPolicyRequest) throws -> GetRepositoryPolicyResponse {
        return try client.send(operation: "GetRepositoryPolicy", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns metadata about the images in a repository, including image size, image tags, and creation date.  Beginning with Docker version 1.9, the Docker client compresses image layers before pushing them to a V2 Docker registry. The output of the docker images command shows the uncompressed image size, so it may return a larger image size than the image sizes returned by DescribeImages. 
    public func describeImages(_ input: DescribeImagesRequest) throws -> DescribeImagesResponse {
        return try client.send(operation: "DescribeImages", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets detailed information for specified images within a specified repository. Images are specified with either imageTag or imageDigest.
    public func batchGetImage(_ input: BatchGetImageRequest) throws -> BatchGetImageResponse {
        return try client.send(operation: "BatchGetImage", path: "/", httpMethod: "POST", input: input)
    }

    ///  Applies a repository policy on a specified repository to control access permissions.
    public func setRepositoryPolicy(_ input: SetRepositoryPolicyRequest) throws -> SetRepositoryPolicyResponse {
        return try client.send(operation: "SetRepositoryPolicy", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a list of specified images within a specified repository. Images are specified with either imageTag or imageDigest. You can remove a tag from an image by specifying the image's tag in your request. When you remove the last tag from an image, the image is deleted from your repository. You can completely delete an image (and all of its tags) by specifying the image's digest in your request.
    public func batchDeleteImage(_ input: BatchDeleteImageRequest) throws -> BatchDeleteImageResponse {
        return try client.send(operation: "BatchDeleteImage", path: "/", httpMethod: "POST", input: input)
    }

    ///  Uploads an image layer part to Amazon ECR.  This operation is used by the Amazon ECR proxy, and it is not intended for general use by customers for pulling and pushing images. In most cases, you should use the docker CLI to pull, tag, and push images. 
    public func uploadLayerPart(_ input: UploadLayerPartRequest) throws -> UploadLayerPartResponse {
        return try client.send(operation: "UploadLayerPart", path: "/", httpMethod: "POST", input: input)
    }

    ///  Notify Amazon ECR that you intend to upload an image layer.  This operation is used by the Amazon ECR proxy, and it is not intended for general use by customers for pulling and pushing images. In most cases, you should use the docker CLI to pull, tag, and push images. 
    public func initiateLayerUpload(_ input: InitiateLayerUploadRequest) throws -> InitiateLayerUploadResponse {
        return try client.send(operation: "InitiateLayerUpload", path: "/", httpMethod: "POST", input: input)
    }


}