//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2020 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto/tree/main/CodeGenerator. DO NOT EDIT.

@_exported import SotoCore

/*
 Client object for interacting with AWS KinesisAnalyticsV2 service.

 Amazon Kinesis Data Analytics is a fully managed service that you can use to process and analyze streaming data using Java, SQL, or Scala. The service enables you to quickly author and run Java, SQL, or Scala code against streaming sources to perform time series analytics, feed real-time dashboards, and create real-time metrics.
 */
public struct KinesisAnalyticsV2: AWSService {
    // MARK: Member variables

    public let client: AWSClient
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the KinesisAnalyticsV2 client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - timeout: Timeout value for HTTP requests
    public init(
        client: AWSClient,
        region: SotoCore.Region? = nil,
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
            amzTarget: "KinesisAnalytics_20180523",
            service: "kinesisanalytics",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2018-05-23",
            endpoint: endpoint,
            errorType: KinesisAnalyticsV2ErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    ///  Adds an Amazon CloudWatch log stream to monitor application configuration errors.
    public func addApplicationCloudWatchLoggingOption(_ input: AddApplicationCloudWatchLoggingOptionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddApplicationCloudWatchLoggingOptionResponse> {
        return self.client.execute(operation: "AddApplicationCloudWatchLoggingOption", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///   Adds a streaming source to your SQL-based Kinesis Data Analytics application.  You can add a streaming source when you create an application, or you can use this operation to add a streaming source after you create an application. For more information, see CreateApplication. Any configuration update, including adding a streaming source using this operation, results in a new version of the application. You can use the DescribeApplication operation to find the current application version.
    public func addApplicationInput(_ input: AddApplicationInputRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddApplicationInputResponse> {
        return self.client.execute(operation: "AddApplicationInput", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Adds an InputProcessingConfiguration to a SQL-based Kinesis Data Analytics application. An input processor pre-processes records on the input stream before the application's SQL code executes. Currently, the only input processor available is AWS Lambda.
    public func addApplicationInputProcessingConfiguration(_ input: AddApplicationInputProcessingConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddApplicationInputProcessingConfigurationResponse> {
        return self.client.execute(operation: "AddApplicationInputProcessingConfiguration", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Adds an external destination to your SQL-based Kinesis Data Analytics application. If you want Kinesis Data Analytics to deliver data from an in-application stream within your application to an external destination (such as an Kinesis data stream, a Kinesis Data Firehose delivery stream, or an AWS Lambda function), you add the relevant configuration to your application using this operation. You can configure one or more outputs for your application. Each output configuration maps an in-application stream and an external destination.  You can use one of the output configurations to deliver data from your in-application error stream to an external destination so that you can analyze the errors.   Any configuration update, including adding a streaming source using this operation, results in a new version of the application. You can use the DescribeApplication operation to find the current application version.
    public func addApplicationOutput(_ input: AddApplicationOutputRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddApplicationOutputResponse> {
        return self.client.execute(operation: "AddApplicationOutput", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Adds a reference data source to an existing SQL-based Kinesis Data Analytics application. Kinesis Data Analytics reads reference data (that is, an Amazon S3 object) and creates an in-application table within your application. In the request, you provide the source (S3 bucket name and object key name), name of the in-application table to create, and the necessary mapping information that describes how data in an Amazon S3 object maps to columns in the resulting in-application table.
    public func addApplicationReferenceDataSource(_ input: AddApplicationReferenceDataSourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddApplicationReferenceDataSourceResponse> {
        return self.client.execute(operation: "AddApplicationReferenceDataSource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Adds a Virtual Private Cloud (VPC) configuration to the application. Applications can use VPCs to store and access resources securely. Note the following about VPC configurations for Kinesis Data Analytics applications:   VPC configurations are not supported for SQL applications.   When a VPC is added to a Kinesis Data Analytics application, the application can no longer be accessed from the Internet directly. To enable Internet access to the application, add an Internet gateway to your VPC.
    public func addApplicationVpcConfiguration(_ input: AddApplicationVpcConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddApplicationVpcConfigurationResponse> {
        return self.client.execute(operation: "AddApplicationVpcConfiguration", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Creates a Kinesis Data Analytics application. For information about creating a Kinesis Data Analytics application, see Creating an Application.
    public func createApplication(_ input: CreateApplicationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateApplicationResponse> {
        return self.client.execute(operation: "CreateApplication", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Creates a snapshot of the application's state data.
    public func createApplicationSnapshot(_ input: CreateApplicationSnapshotRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateApplicationSnapshotResponse> {
        return self.client.execute(operation: "CreateApplicationSnapshot", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Deletes the specified application. Kinesis Data Analytics halts application execution and deletes the application.
    public func deleteApplication(_ input: DeleteApplicationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteApplicationResponse> {
        return self.client.execute(operation: "DeleteApplication", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Deletes an Amazon CloudWatch log stream from an Kinesis Data Analytics application.
    public func deleteApplicationCloudWatchLoggingOption(_ input: DeleteApplicationCloudWatchLoggingOptionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteApplicationCloudWatchLoggingOptionResponse> {
        return self.client.execute(operation: "DeleteApplicationCloudWatchLoggingOption", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Deletes an InputProcessingConfiguration from an input.
    public func deleteApplicationInputProcessingConfiguration(_ input: DeleteApplicationInputProcessingConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteApplicationInputProcessingConfigurationResponse> {
        return self.client.execute(operation: "DeleteApplicationInputProcessingConfiguration", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Deletes the output destination configuration from your SQL-based Kinesis Data Analytics application's configuration. Kinesis Data Analytics will no longer write data from the corresponding in-application stream to the external output destination.
    public func deleteApplicationOutput(_ input: DeleteApplicationOutputRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteApplicationOutputResponse> {
        return self.client.execute(operation: "DeleteApplicationOutput", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Deletes a reference data source configuration from the specified SQL-based Kinesis Data Analytics application's configuration. If the application is running, Kinesis Data Analytics immediately removes the in-application table that you created using the AddApplicationReferenceDataSource operation.
    public func deleteApplicationReferenceDataSource(_ input: DeleteApplicationReferenceDataSourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteApplicationReferenceDataSourceResponse> {
        return self.client.execute(operation: "DeleteApplicationReferenceDataSource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Deletes a snapshot of application state.
    public func deleteApplicationSnapshot(_ input: DeleteApplicationSnapshotRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteApplicationSnapshotResponse> {
        return self.client.execute(operation: "DeleteApplicationSnapshot", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Removes a VPC configuration from a Kinesis Data Analytics application.
    public func deleteApplicationVpcConfiguration(_ input: DeleteApplicationVpcConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteApplicationVpcConfigurationResponse> {
        return self.client.execute(operation: "DeleteApplicationVpcConfiguration", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns information about a specific Kinesis Data Analytics application. If you want to retrieve a list of all applications in your account, use the ListApplications operation.
    public func describeApplication(_ input: DescribeApplicationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeApplicationResponse> {
        return self.client.execute(operation: "DescribeApplication", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns information about a snapshot of application state data.
    public func describeApplicationSnapshot(_ input: DescribeApplicationSnapshotRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeApplicationSnapshotResponse> {
        return self.client.execute(operation: "DescribeApplicationSnapshot", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Infers a schema for a SQL-based Kinesis Data Analytics application by evaluating sample records on the specified streaming source (Kinesis data stream or Kinesis Data Firehose delivery stream) or Amazon S3 object. In the response, the operation returns the inferred schema and also the sample records that the operation used to infer the schema.  You can use the inferred schema when configuring a streaming source for your application. When you create an application using the Kinesis Data Analytics console, the console uses this operation to infer a schema and show it in the console user interface.
    public func discoverInputSchema(_ input: DiscoverInputSchemaRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DiscoverInputSchemaResponse> {
        return self.client.execute(operation: "DiscoverInputSchema", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Lists information about the current application snapshots.
    public func listApplicationSnapshots(_ input: ListApplicationSnapshotsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListApplicationSnapshotsResponse> {
        return self.client.execute(operation: "ListApplicationSnapshots", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns a list of Kinesis Data Analytics applications in your account. For each application, the response includes the application name, Amazon Resource Name (ARN), and status.  If you want detailed information about a specific application, use DescribeApplication.
    public func listApplications(_ input: ListApplicationsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListApplicationsResponse> {
        return self.client.execute(operation: "ListApplications", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Retrieves the list of key-value tags assigned to the application. For more information, see Using Tagging.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return self.client.execute(operation: "ListTagsForResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Starts the specified Kinesis Data Analytics application. After creating an application, you must exclusively call this operation to start your application.
    public func startApplication(_ input: StartApplicationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartApplicationResponse> {
        return self.client.execute(operation: "StartApplication", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Stops the application from processing data. You can stop an application only if it is in the running state. You can use the DescribeApplication operation to find the application state.
    public func stopApplication(_ input: StopApplicationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopApplicationResponse> {
        return self.client.execute(operation: "StopApplication", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Adds one or more key-value tags to a Kinesis Data Analytics application. Note that the maximum number of application tags includes system tags. The maximum number of user-defined application tags is 50. For more information, see Using Tagging.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceResponse> {
        return self.client.execute(operation: "TagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Removes one or more tags from a Kinesis Data Analytics application. For more information, see Using Tagging.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceResponse> {
        return self.client.execute(operation: "UntagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Updates an existing Kinesis Data Analytics application. Using this operation, you can update application code, input configuration, and output configuration.  Kinesis Data Analytics updates the ApplicationVersionId each time you update your application.   You cannot update the RuntimeEnvironment of an existing application. If you need to update an application's RuntimeEnvironment, you must delete the application and create it again.
    public func updateApplication(_ input: UpdateApplicationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateApplicationResponse> {
        return self.client.execute(operation: "UpdateApplication", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

extension KinesisAnalyticsV2 {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: KinesisAnalyticsV2, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
