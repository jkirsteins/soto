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

#if compiler(>=5.5) && canImport(_Concurrency)

import SotoCore

@available(macOS 12.0, iOS 15.0, watchOS 8.0, tvOS 15.0, *)
extension CodeArtifact {
    // MARK: Async API Calls

    /// Adds an existing external connection to a repository. One external connection is allowed per repository.  A repository can have one or more upstream repositories, or an external connection.
    public func associateExternalConnection(_ input: AssociateExternalConnectionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssociateExternalConnectionResult {
        return try await self.client.execute(operation: "AssociateExternalConnection", path: "/v1/repository/external-connection", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Copies package versions from one repository to another repository in the same domain.    You must specify versions or versionRevisions. You cannot specify both.
    public func copyPackageVersions(_ input: CopyPackageVersionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CopyPackageVersionsResult {
        return try await self.client.execute(operation: "CopyPackageVersions", path: "/v1/package/versions/copy", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Creates a domain. CodeArtifact domains make it easier to manage multiple repositories across an organization. You can use a domain to apply permissions across many repositories owned by different AWS accounts. An asset is stored only once in a domain, even if it's in multiple repositories.
    ///  Although you can have multiple domains, we recommend a single production domain that contains all published artifacts so that your development teams can find and share packages. You can use a second pre-production domain to test changes to the production domain configuration.
    public func createDomain(_ input: CreateDomainRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDomainResult {
        return try await self.client.execute(operation: "CreateDomain", path: "/v1/domain", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Creates a repository.
    public func createRepository(_ input: CreateRepositoryRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateRepositoryResult {
        return try await self.client.execute(operation: "CreateRepository", path: "/v1/repository", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Deletes a domain. You cannot delete a domain that contains repositories. If you want to delete a domain with repositories, first delete its repositories.
    public func deleteDomain(_ input: DeleteDomainRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDomainResult {
        return try await self.client.execute(operation: "DeleteDomain", path: "/v1/domain", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Deletes the resource policy set on a domain.
    public func deleteDomainPermissionsPolicy(_ input: DeleteDomainPermissionsPolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDomainPermissionsPolicyResult {
        return try await self.client.execute(operation: "DeleteDomainPermissionsPolicy", path: "/v1/domain/permissions/policy", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Deletes one or more versions of a package. A deleted package version cannot be restored in your repository. If you want to remove a package version from your repository and be able to restore it later, set its status to Archived. Archived packages cannot be downloaded from a repository and don't show up with list package APIs (for example, ListackageVersions), but you can restore them using UpdatePackageVersionsStatus.
    public func deletePackageVersions(_ input: DeletePackageVersionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeletePackageVersionsResult {
        return try await self.client.execute(operation: "DeletePackageVersions", path: "/v1/package/versions/delete", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Deletes a repository.
    public func deleteRepository(_ input: DeleteRepositoryRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRepositoryResult {
        return try await self.client.execute(operation: "DeleteRepository", path: "/v1/repository", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Deletes the resource policy that is set on a repository. After a resource policy is deleted, the permissions allowed and denied by the deleted policy are removed. The effect of deleting a resource policy might not be immediate.    Use DeleteRepositoryPermissionsPolicy with caution. After a policy is deleted, AWS users, roles, and accounts lose permissions to perform the repository actions granted by the deleted policy.
    public func deleteRepositoryPermissionsPolicy(_ input: DeleteRepositoryPermissionsPolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRepositoryPermissionsPolicyResult {
        return try await self.client.execute(operation: "DeleteRepositoryPermissionsPolicy", path: "/v1/repository/permissions/policies", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns a  DomainDescription  object that contains information about the requested domain.
    public func describeDomain(_ input: DescribeDomainRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDomainResult {
        return try await self.client.execute(operation: "DescribeDomain", path: "/v1/domain", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns a  PackageVersionDescription  object that contains information about the requested package version.
    public func describePackageVersion(_ input: DescribePackageVersionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePackageVersionResult {
        return try await self.client.execute(operation: "DescribePackageVersion", path: "/v1/package/version", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns a RepositoryDescription object that contains detailed information  about the requested repository.
    public func describeRepository(_ input: DescribeRepositoryRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRepositoryResult {
        return try await self.client.execute(operation: "DescribeRepository", path: "/v1/repository", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Removes an existing external connection from a repository.
    public func disassociateExternalConnection(_ input: DisassociateExternalConnectionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisassociateExternalConnectionResult {
        return try await self.client.execute(operation: "DisassociateExternalConnection", path: "/v1/repository/external-connection", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Deletes the assets in package versions and sets the package versions' status to Disposed. A disposed package version cannot be restored in your repository because its assets are deleted.    To view all disposed package versions in a repository, use ListPackageVersions and set the  status parameter  to Disposed.    To view information about a disposed package version, use DescribePackageVersion.
    public func disposePackageVersions(_ input: DisposePackageVersionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisposePackageVersionsResult {
        return try await self.client.execute(operation: "DisposePackageVersions", path: "/v1/package/versions/dispose", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Generates a temporary authorization token for accessing repositories in the domain.  This API requires the codeartifact:GetAuthorizationToken and sts:GetServiceBearerToken permissions.  For more information about authorization tokens, see  AWS CodeArtifact authentication and tokens.   CodeArtifact authorization tokens are valid for a period of 12 hours when created with the login command.  You can call login periodically to refresh the token. When  you create an authorization token with the GetAuthorizationToken API, you can set a custom authorization period,  up to a maximum of 12 hours, with the durationSeconds parameter. The authorization period begins after login  or GetAuthorizationToken is called. If login or GetAuthorizationToken is called while  assuming a role, the token lifetime is independent of the maximum session duration  of the role. For example, if you call sts assume-role and specify a session duration of 15 minutes, then  generate a CodeArtifact authorization token, the token will be valid for the full authorization period  even though this is longer than the 15-minute session duration. See  Using IAM Roles  for more information on controlling session duration.
    public func getAuthorizationToken(_ input: GetAuthorizationTokenRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetAuthorizationTokenResult {
        return try await self.client.execute(operation: "GetAuthorizationToken", path: "/v1/authorization-token", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns the resource policy attached to the specified domain.    The policy is a resource-based policy, not an identity-based policy. For more information, see Identity-based policies and resource-based policies  in the AWS Identity and Access Management User Guide.
    public func getDomainPermissionsPolicy(_ input: GetDomainPermissionsPolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDomainPermissionsPolicyResult {
        return try await self.client.execute(operation: "GetDomainPermissionsPolicy", path: "/v1/domain/permissions/policy", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns an asset (or file) that is in a package. For example, for a Maven package version, use  GetPackageVersionAsset to download a JAR file, a POM file,  or any other assets in the package version.
    public func getPackageVersionAsset(_ input: GetPackageVersionAssetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetPackageVersionAssetResult {
        return try await self.client.execute(operation: "GetPackageVersionAsset", path: "/v1/package/version/asset", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Gets the readme file or descriptive text for a package version. For packages that do not contain a readme file, CodeArtifact extracts a description from a metadata file. For example, from the  element in the pom.xml file of a Maven package.   The returned text might contain formatting. For example, it might contain formatting for Markdown or reStructuredText.
    public func getPackageVersionReadme(_ input: GetPackageVersionReadmeRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetPackageVersionReadmeResult {
        return try await self.client.execute(operation: "GetPackageVersionReadme", path: "/v1/package/version/readme", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns the endpoint of a repository for a specific package format. A repository has one endpoint for each  package format:     npm     pypi     maven
    public func getRepositoryEndpoint(_ input: GetRepositoryEndpointRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetRepositoryEndpointResult {
        return try await self.client.execute(operation: "GetRepositoryEndpoint", path: "/v1/repository/endpoint", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns the resource policy that is set on a repository.
    public func getRepositoryPermissionsPolicy(_ input: GetRepositoryPermissionsPolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetRepositoryPermissionsPolicyResult {
        return try await self.client.execute(operation: "GetRepositoryPermissionsPolicy", path: "/v1/repository/permissions/policy", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns a list of DomainSummary objects for all domains owned by the AWS account that makes this call. Each returned DomainSummary object contains information about a domain.
    public func listDomains(_ input: ListDomainsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListDomainsResult {
        return try await self.client.execute(operation: "ListDomains", path: "/v1/domains", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns a list of  AssetSummary  objects for assets in a package version.
    public func listPackageVersionAssets(_ input: ListPackageVersionAssetsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListPackageVersionAssetsResult {
        return try await self.client.execute(operation: "ListPackageVersionAssets", path: "/v1/package/version/assets", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns the direct dependencies for a package version. The dependencies are returned as  PackageDependency  objects. CodeArtifact extracts the dependencies for a package version from the metadata file for the package  format (for example, the package.json file for npm packages and the pom.xml file  for Maven). Any package version dependencies that are not listed in the configuration file are not returned.
    public func listPackageVersionDependencies(_ input: ListPackageVersionDependenciesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListPackageVersionDependenciesResult {
        return try await self.client.execute(operation: "ListPackageVersionDependencies", path: "/v1/package/version/dependencies", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns a list of  PackageVersionSummary  objects for package versions in a repository that match the request parameters.
    public func listPackageVersions(_ input: ListPackageVersionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListPackageVersionsResult {
        return try await self.client.execute(operation: "ListPackageVersions", path: "/v1/package/versions", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns a list of  PackageSummary  objects for packages in a repository that match the request parameters.
    public func listPackages(_ input: ListPackagesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListPackagesResult {
        return try await self.client.execute(operation: "ListPackages", path: "/v1/packages", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns a list of  RepositorySummary  objects. Each RepositorySummary contains information about a repository in the specified AWS account and that matches the input  parameters.
    public func listRepositories(_ input: ListRepositoriesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListRepositoriesResult {
        return try await self.client.execute(operation: "ListRepositories", path: "/v1/repositories", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns a list of  RepositorySummary  objects. Each RepositorySummary contains information about a repository in the specified domain and that matches the input  parameters.
    public func listRepositoriesInDomain(_ input: ListRepositoriesInDomainRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListRepositoriesInDomainResult {
        return try await self.client.execute(operation: "ListRepositoriesInDomain", path: "/v1/domain/repositories", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about AWS tags for a specified Amazon Resource Name (ARN) in AWS CodeArtifact.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResult {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/v1/tags", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Sets a resource policy on a domain that specifies permissions to access it.   When you call PutDomainPermissionsPolicy, the resource policy on the domain is ignored when evaluting permissions.  This ensures that the owner of a domain cannot lock themselves out of the domain, which would prevent them from being  able to update the resource policy.
    public func putDomainPermissionsPolicy(_ input: PutDomainPermissionsPolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutDomainPermissionsPolicyResult {
        return try await self.client.execute(operation: "PutDomainPermissionsPolicy", path: "/v1/domain/permissions/policy", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Sets the resource policy on a repository that specifies permissions to access it.   When you call PutRepositoryPermissionsPolicy, the resource policy on the repository is ignored when evaluting permissions.  This ensures that the owner of a repository cannot lock themselves out of the repository, which would prevent them from being  able to update the resource policy.
    public func putRepositoryPermissionsPolicy(_ input: PutRepositoryPermissionsPolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutRepositoryPermissionsPolicyResult {
        return try await self.client.execute(operation: "PutRepositoryPermissionsPolicy", path: "/v1/repository/permissions/policy", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds or updates tags for a resource in AWS CodeArtifact.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResult {
        return try await self.client.execute(operation: "TagResource", path: "/v1/tag", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes tags from a resource in AWS CodeArtifact.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResult {
        return try await self.client.execute(operation: "UntagResource", path: "/v1/untag", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Updates the status of one or more versions of a package.
    public func updatePackageVersionsStatus(_ input: UpdatePackageVersionsStatusRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdatePackageVersionsStatusResult {
        return try await self.client.execute(operation: "UpdatePackageVersionsStatus", path: "/v1/package/versions/update_status", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Update the properties of a repository.
    public func updateRepository(_ input: UpdateRepositoryRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateRepositoryResult {
        return try await self.client.execute(operation: "UpdateRepository", path: "/v1/repository", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    // MARK: Streaming Async API Calls

    ///  Returns an asset (or file) that is in a package. For example, for a Maven package version, use  GetPackageVersionAsset to download a JAR file, a POM file,  or any other assets in the package version.
    public func getPackageVersionAssetStreaming(_ input: GetPackageVersionAssetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil, _ stream: @escaping (ByteBuffer, EventLoop) -> EventLoopFuture<Void>) async throws -> GetPackageVersionAssetResult {
        return try await self.client.execute(operation: "GetPackageVersionAsset", path: "/v1/package/version/asset", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop, stream: stream)
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
