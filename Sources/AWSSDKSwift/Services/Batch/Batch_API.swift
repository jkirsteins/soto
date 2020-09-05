//===----------------------------------------------------------------------===//
//
// This source file is part of the AWSSDKSwift open source project
//
// Copyright (c) 2017-2020 the AWSSDKSwift project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of AWSSDKSwift project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/main/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import AWSSDKSwiftCore

/*
Client object for interacting with AWS Batch service.

AWS Batch enables you to run batch computing workloads on the AWS Cloud. Batch computing is a common way for developers, scientists, and engineers to access large amounts of compute resources, and AWS Batch removes the undifferentiated heavy lifting of configuring and managing the required infrastructure. AWS Batch will be familiar to users of traditional batch computing software. This service can efficiently provision resources in response to jobs submitted in order to eliminate capacity constraints, reduce compute costs, and deliver results quickly. As a fully managed service, AWS Batch enables developers, scientists, and engineers to run batch computing workloads of any scale. AWS Batch automatically provisions compute resources and optimizes the workload distribution based on the quantity and scale of the workloads. With AWS Batch, there is no need to install or manage batch computing software, which allows you to focus on analyzing results and solving problems. AWS Batch reduces operational complexities, saves time, and reduces costs, which makes it easy for developers, scientists, and engineers to run their batch jobs in the AWS Cloud.
*/
public struct Batch: AWSService {

    // MARK: Member variables

    public let client: AWSClient
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the Batch client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - timeout: Timeout value for HTTP requests
    public init(
        client: AWSClient,
        region: AWSSDKSwiftCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        timeout: TimeAmount? = nil,
        byteBufferAllocator: ByteBufferAllocator = ByteBufferAllocator(),
        options: AWSServiceConfig.Options = []
    ) {
        self.client = client
        self.config = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            service: "batch",
            serviceProtocol: .restjson,
            apiVersion: "2016-08-10",
            endpoint: endpoint,
            possibleErrorTypes: [BatchErrorType.self],
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }
    
    // MARK: API Calls

    ///  Cancels a job in an AWS Batch job queue. Jobs that are in the SUBMITTED, PENDING, or RUNNABLE state are cancelled. Jobs that have progressed to STARTING or RUNNING are not cancelled (but the API operation still succeeds, even if no job is cancelled); these jobs must be terminated with the TerminateJob operation.
    public func cancelJob(_ input: CancelJobRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CancelJobResponse> {
        return self.client.execute(operation: "CancelJob", path: "/v1/canceljob", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates an AWS Batch compute environment. You can create MANAGED or UNMANAGED compute environments. In a managed compute environment, AWS Batch manages the capacity and instance types of the compute resources within the environment. This is based on the compute resource specification that you define or the launch template that you specify when you create the compute environment. You can choose to use Amazon EC2 On-Demand Instances or Spot Instances in your managed compute environment. You can optionally set a maximum price so that Spot Instances only launch when the Spot Instance price is below a specified percentage of the On-Demand price.  Multi-node parallel jobs are not supported on Spot Instances.  In an unmanaged compute environment, you can manage your own compute resources. This provides more compute resource configuration options, such as using a custom AMI, but you must ensure that your AMI meets the Amazon ECS container instance AMI specification. For more information, see Container Instance AMIs in the Amazon Elastic Container Service Developer Guide. After you have created your unmanaged compute environment, you can use the DescribeComputeEnvironments operation to find the Amazon ECS cluster that is associated with it. Then, manually launch your container instances into that Amazon ECS cluster. For more information, see Launching an Amazon ECS Container Instance in the Amazon Elastic Container Service Developer Guide.  AWS Batch does not upgrade the AMIs in a compute environment after it is created (for example, when a newer version of the Amazon ECS-optimized AMI is available). You are responsible for the management of the guest operating system (including updates and security patches) and any additional application software or utilities that you install on the compute resources. To use a new AMI for your AWS Batch jobs:   Create a new compute environment with the new AMI.   Add the compute environment to an existing job queue.   Remove the old compute environment from your job queue.   Delete the old compute environment.   
    public func createComputeEnvironment(_ input: CreateComputeEnvironmentRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateComputeEnvironmentResponse> {
        return self.client.execute(operation: "CreateComputeEnvironment", path: "/v1/createcomputeenvironment", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates an AWS Batch job queue. When you create a job queue, you associate one or more compute environments to the queue and assign an order of preference for the compute environments. You also set a priority to the job queue that determines the order in which the AWS Batch scheduler places jobs onto its associated compute environments. For example, if a compute environment is associated with more than one job queue, the job queue with a higher priority is given preference for scheduling jobs to that compute environment.
    public func createJobQueue(_ input: CreateJobQueueRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateJobQueueResponse> {
        return self.client.execute(operation: "CreateJobQueue", path: "/v1/createjobqueue", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes an AWS Batch compute environment. Before you can delete a compute environment, you must set its state to DISABLED with the UpdateComputeEnvironment API operation and disassociate it from any job queues with the UpdateJobQueue API operation.
    public func deleteComputeEnvironment(_ input: DeleteComputeEnvironmentRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteComputeEnvironmentResponse> {
        return self.client.execute(operation: "DeleteComputeEnvironment", path: "/v1/deletecomputeenvironment", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes the specified job queue. You must first disable submissions for a queue with the UpdateJobQueue operation. All jobs in the queue are terminated when you delete a job queue. It is not necessary to disassociate compute environments from a queue before submitting a DeleteJobQueue request.
    public func deleteJobQueue(_ input: DeleteJobQueueRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteJobQueueResponse> {
        return self.client.execute(operation: "DeleteJobQueue", path: "/v1/deletejobqueue", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deregisters an AWS Batch job definition. Job definitions will be permanently deleted after 180 days.
    public func deregisterJobDefinition(_ input: DeregisterJobDefinitionRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeregisterJobDefinitionResponse> {
        return self.client.execute(operation: "DeregisterJobDefinition", path: "/v1/deregisterjobdefinition", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Describes one or more of your compute environments. If you are using an unmanaged compute environment, you can use the DescribeComputeEnvironment operation to determine the ecsClusterArn that you should launch your Amazon ECS container instances into.
    public func describeComputeEnvironments(_ input: DescribeComputeEnvironmentsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeComputeEnvironmentsResponse> {
        return self.client.execute(operation: "DescribeComputeEnvironments", path: "/v1/describecomputeenvironments", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Describes a list of job definitions. You can specify a status (such as ACTIVE) to only return job definitions that match that status.
    public func describeJobDefinitions(_ input: DescribeJobDefinitionsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeJobDefinitionsResponse> {
        return self.client.execute(operation: "DescribeJobDefinitions", path: "/v1/describejobdefinitions", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Describes one or more of your job queues.
    public func describeJobQueues(_ input: DescribeJobQueuesRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeJobQueuesResponse> {
        return self.client.execute(operation: "DescribeJobQueues", path: "/v1/describejobqueues", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Describes a list of AWS Batch jobs.
    public func describeJobs(_ input: DescribeJobsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeJobsResponse> {
        return self.client.execute(operation: "DescribeJobs", path: "/v1/describejobs", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a list of AWS Batch jobs. You must specify only one of the following:   a job queue ID to return a list of jobs in that job queue   a multi-node parallel job ID to return a list of that job's nodes   an array job ID to return a list of that job's children   You can filter the results by job status with the jobStatus parameter. If you do not specify a status, only RUNNING jobs are returned.
    public func listJobs(_ input: ListJobsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListJobsResponse> {
        return self.client.execute(operation: "ListJobs", path: "/v1/listjobs", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Registers an AWS Batch job definition.
    public func registerJobDefinition(_ input: RegisterJobDefinitionRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<RegisterJobDefinitionResponse> {
        return self.client.execute(operation: "RegisterJobDefinition", path: "/v1/registerjobdefinition", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Submits an AWS Batch job from a job definition. Parameters specified during SubmitJob override parameters defined in the job definition.
    public func submitJob(_ input: SubmitJobRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<SubmitJobResponse> {
        return self.client.execute(operation: "SubmitJob", path: "/v1/submitjob", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Terminates a job in a job queue. Jobs that are in the STARTING or RUNNING state are terminated, which causes them to transition to FAILED. Jobs that have not progressed to the STARTING state are cancelled.
    public func terminateJob(_ input: TerminateJobRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<TerminateJobResponse> {
        return self.client.execute(operation: "TerminateJob", path: "/v1/terminatejob", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates an AWS Batch compute environment.
    public func updateComputeEnvironment(_ input: UpdateComputeEnvironmentRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateComputeEnvironmentResponse> {
        return self.client.execute(operation: "UpdateComputeEnvironment", path: "/v1/updatecomputeenvironment", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates a job queue.
    public func updateJobQueue(_ input: UpdateJobQueueRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateJobQueueResponse> {
        return self.client.execute(operation: "UpdateJobQueue", path: "/v1/updatejobqueue", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }
}
