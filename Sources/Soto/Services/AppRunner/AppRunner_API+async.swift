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
extension AppRunner {
    // MARK: Async API Calls

    /// Associate your own domain name with the AWS App Runner subdomain URL of your App Runner service. After you call AssociateCustomDomain and receive a successful response, use the information in the CustomDomain record that's returned to add CNAME records to your Domain Name System (DNS). For each mapped domain name, add a mapping to the target App Runner subdomain and one or more certificate validation records. App Runner then performs DNS validation to verify that you own or control the domain name that you associated. App Runner tracks domain validity in a certificate stored in AWS Certificate Manager (ACM).
    public func associateCustomDomain(_ input: AssociateCustomDomainRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssociateCustomDomainResponse {
        return try await self.client.execute(operation: "AssociateCustomDomain", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Create an AWS App Runner automatic scaling configuration resource. App Runner requires this resource when you create App Runner services that require non-default auto scaling settings. You can share an auto scaling configuration across multiple services. Create multiple revisions of a configuration by using the same AutoScalingConfigurationName and different AutoScalingConfigurationRevision values. When you create a service, you can set it to use the latest active revision of an auto scaling configuration or a specific revision. Configure a higher MinSize to increase the spread of your App Runner service over more Availability Zones in the AWS Region. The tradeoff is a higher minimal cost. Configure a lower MaxSize to control your cost. The tradeoff is lower responsiveness during peak demand.
    public func createAutoScalingConfiguration(_ input: CreateAutoScalingConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAutoScalingConfigurationResponse {
        return try await self.client.execute(operation: "CreateAutoScalingConfiguration", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Create an AWS App Runner connection resource. App Runner requires a connection resource when you create App Runner services that access private repositories from certain third-party providers. You can share a connection across multiple services. A connection resource is needed to access GitHub repositories. GitHub requires a user interface approval process through the App Runner console before you can use the connection.
    public func createConnection(_ input: CreateConnectionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateConnectionResponse {
        return try await self.client.execute(operation: "CreateConnection", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Create an AWS App Runner service. After the service is created, the action also automatically starts a deployment. This is an asynchronous operation. On a successful call, you can use the returned OperationId and the ListOperations call to track the operation's progress.
    public func createService(_ input: CreateServiceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateServiceResponse {
        return try await self.client.execute(operation: "CreateService", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Delete an AWS App Runner automatic scaling configuration resource. You can delete a specific revision or the latest active revision. You can't delete a configuration that's used by one or more App Runner services.
    public func deleteAutoScalingConfiguration(_ input: DeleteAutoScalingConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAutoScalingConfigurationResponse {
        return try await self.client.execute(operation: "DeleteAutoScalingConfiguration", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Delete an AWS App Runner connection. You must first ensure that there are no running App Runner services that use this connection. If there are any, the DeleteConnection action fails.
    public func deleteConnection(_ input: DeleteConnectionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteConnectionResponse {
        return try await self.client.execute(operation: "DeleteConnection", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Delete an AWS App Runner service. This is an asynchronous operation. On a successful call, you can use the returned OperationId and the ListOperations call to track the operation's progress.
    public func deleteService(_ input: DeleteServiceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteServiceResponse {
        return try await self.client.execute(operation: "DeleteService", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Return a full description of an AWS App Runner automatic scaling configuration resource.
    public func describeAutoScalingConfiguration(_ input: DescribeAutoScalingConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAutoScalingConfigurationResponse {
        return try await self.client.execute(operation: "DescribeAutoScalingConfiguration", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Return a description of custom domain names that are associated with an AWS App Runner service.
    public func describeCustomDomains(_ input: DescribeCustomDomainsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCustomDomainsResponse {
        return try await self.client.execute(operation: "DescribeCustomDomains", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Return a full description of an AWS App Runner service.
    public func describeService(_ input: DescribeServiceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeServiceResponse {
        return try await self.client.execute(operation: "DescribeService", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Disassociate a custom domain name from an AWS App Runner service. Certificates tracking domain validity are associated with a custom domain and are stored in AWS Certificate Manager (ACM). These certificates aren't deleted as part of this action. App Runner delays certificate deletion for 30 days after a domain is disassociated from your service.
    public func disassociateCustomDomain(_ input: DisassociateCustomDomainRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisassociateCustomDomainResponse {
        return try await self.client.execute(operation: "DisassociateCustomDomain", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of AWS App Runner automatic scaling configurations in your AWS account. You can query the revisions for a specific configuration name or the revisions for all configurations in your account. You can optionally query only the latest revision of each requested name.
    public func listAutoScalingConfigurations(_ input: ListAutoScalingConfigurationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAutoScalingConfigurationsResponse {
        return try await self.client.execute(operation: "ListAutoScalingConfigurations", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of AWS App Runner connections that are associated with your AWS account.
    public func listConnections(_ input: ListConnectionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListConnectionsResponse {
        return try await self.client.execute(operation: "ListConnections", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Return a list of operations that occurred on an AWS App Runner service. The resulting list of OperationSummary objects is sorted in reverse chronological order. The first object on the list represents the last started operation.
    public func listOperations(_ input: ListOperationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListOperationsResponse {
        return try await self.client.execute(operation: "ListOperations", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of running AWS App Runner services in your AWS account.
    public func listServices(_ input: ListServicesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListServicesResponse {
        return try await self.client.execute(operation: "ListServices", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List tags that are associated with for an AWS App Runner resource. The response contains a list of tag key-value pairs.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Pause an active AWS App Runner service. App Runner reduces compute capacity for the service to zero and loses state (for example, ephemeral storage is removed). This is an asynchronous operation. On a successful call, you can use the returned OperationId and the ListOperations call to track the operation's progress.
    public func pauseService(_ input: PauseServiceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PauseServiceResponse {
        return try await self.client.execute(operation: "PauseService", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Resume an active AWS App Runner service. App Runner provisions compute capacity for the service. This is an asynchronous operation. On a successful call, you can use the returned OperationId and the ListOperations call to track the operation's progress.
    public func resumeService(_ input: ResumeServiceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResumeServiceResponse {
        return try await self.client.execute(operation: "ResumeService", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Initiate a manual deployment of the latest commit in a source code repository or the latest image in a source image repository to an AWS App Runner service. For a source code repository, App Runner retrieves the commit and builds a Docker image. For a source image repository, App Runner retrieves the latest Docker image. In both cases, App Runner then deploys the new image to your service and starts a new container instance. This is an asynchronous operation. On a successful call, you can use the returned OperationId and the ListOperations call to track the operation's progress.
    public func startDeployment(_ input: StartDeploymentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartDeploymentResponse {
        return try await self.client.execute(operation: "StartDeployment", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Add tags to, or update the tag values of, an App Runner resource. A tag is a key-value pair.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Remove tags from an App Runner resource.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Update an AWS App Runner service. You can update the source configuration and instance configuration of the service. You can also update the ARN of the auto scaling configuration resource that's associated with the service. However, you can't change the name or the encryption configuration of the service. These can be set only when you create the service. To update the tags applied to your service, use the separate actions TagResource and UntagResource. This is an asynchronous operation. On a successful call, you can use the returned OperationId and the ListOperations call to track the operation's progress.
    public func updateService(_ input: UpdateServiceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateServiceResponse {
        return try await self.client.execute(operation: "UpdateService", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
