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
extension LookoutEquipment {
    // MARK: Async API Calls

    /// Creates a container for a collection of data being ingested for analysis. The dataset contains the metadata describing where the data is and what the data actually looks like. In other words, it contains the location of the data source, the data schema, and other information. A dataset also contains any tags associated with the ingested data.
    public func createDataset(_ input: CreateDatasetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDatasetResponse {
        return try await self.client.execute(operation: "CreateDataset", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Creates a scheduled inference. Scheduling an inference is setting up a continuous real-time inference plan to analyze new measurement data. When setting up the schedule, you provide an S3 bucket location for the input data, assign it a delimiter between separate entries in the data, set an offset delay if desired, and set the frequency of inferencing. You must also provide an S3 bucket location for the output data.
    public func createInferenceScheduler(_ input: CreateInferenceSchedulerRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateInferenceSchedulerResponse {
        return try await self.client.execute(operation: "CreateInferenceScheduler", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates an ML model for data inference.  A machine-learning (ML) model is a mathematical model that finds patterns in your data. In Amazon Lookout for Equipment, the model learns the patterns of normal behavior and detects abnormal behavior that could be potential equipment failure (or maintenance events). The models are made by analyzing normal data and abnormalities in machine behavior that have already occurred. Your model is trained using a portion of the data from your dataset and uses that data to learn patterns of normal behavior and abnormal patterns that lead to equipment failure. Another portion of the data is used to evaluate the model's accuracy.
    public func createModel(_ input: CreateModelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateModelResponse {
        return try await self.client.execute(operation: "CreateModel", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Deletes a dataset and associated artifacts. The operation will check to see if any inference scheduler or data ingestion job is currently using the dataset, and if there isn't, the dataset, its metadata, and any associated data stored in S3 will be deleted. This does not affect any models that used this dataset for training and evaluation, but does prevent it from being used in the future.
    public func deleteDataset(_ input: DeleteDatasetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteDataset", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an inference scheduler that has been set up. Already processed output results are not affected.
    public func deleteInferenceScheduler(_ input: DeleteInferenceSchedulerRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteInferenceScheduler", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an ML model currently available for Amazon Lookout for Equipment. This will prevent it from being used with an inference scheduler, even one that is already set up.
    public func deleteModel(_ input: DeleteModelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteModel", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Provides information on a specific data ingestion job such as creation time, dataset ARN, status, and so on.
    public func describeDataIngestionJob(_ input: DescribeDataIngestionJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDataIngestionJobResponse {
        return try await self.client.execute(operation: "DescribeDataIngestionJob", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Provides a JSON description of the data that is in each time series dataset, including names, column names, and data types.
    public func describeDataset(_ input: DescribeDatasetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDatasetResponse {
        return try await self.client.execute(operation: "DescribeDataset", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Specifies information about the inference scheduler being used, including name, model, status, and associated metadata
    public func describeInferenceScheduler(_ input: DescribeInferenceSchedulerRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInferenceSchedulerResponse {
        return try await self.client.execute(operation: "DescribeInferenceScheduler", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Provides a JSON containing the overall information about a specific ML model, including model name and ARN, dataset, training and evaluation information, status, and so on.
    public func describeModel(_ input: DescribeModelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeModelResponse {
        return try await self.client.execute(operation: "DescribeModel", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Provides a list of all data ingestion jobs, including dataset name and ARN, S3 location of the input data, status, and so on.
    public func listDataIngestionJobs(_ input: ListDataIngestionJobsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListDataIngestionJobsResponse {
        return try await self.client.execute(operation: "ListDataIngestionJobs", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all datasets currently available in your account, filtering on the dataset name.
    public func listDatasets(_ input: ListDatasetsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListDatasetsResponse {
        return try await self.client.execute(operation: "ListDatasets", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Lists all inference executions that have been performed by the specified inference scheduler.
    public func listInferenceExecutions(_ input: ListInferenceExecutionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListInferenceExecutionsResponse {
        return try await self.client.execute(operation: "ListInferenceExecutions", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a list of all inference schedulers currently available for your account.
    public func listInferenceSchedulers(_ input: ListInferenceSchedulersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListInferenceSchedulersResponse {
        return try await self.client.execute(operation: "ListInferenceSchedulers", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Generates a list of all models in the account, including model name and ARN, dataset, and status.
    public func listModels(_ input: ListModelsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListModelsResponse {
        return try await self.client.execute(operation: "ListModels", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all the tags for a specified resource, including key and value.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts a data ingestion job. Amazon Lookout for Equipment returns the job status.
    public func startDataIngestionJob(_ input: StartDataIngestionJobRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartDataIngestionJobResponse {
        return try await self.client.execute(operation: "StartDataIngestionJob", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts an inference scheduler.
    public func startInferenceScheduler(_ input: StartInferenceSchedulerRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartInferenceSchedulerResponse {
        return try await self.client.execute(operation: "StartInferenceScheduler", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Stops an inference scheduler.
    public func stopInferenceScheduler(_ input: StopInferenceSchedulerRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopInferenceSchedulerResponse {
        return try await self.client.execute(operation: "StopInferenceScheduler", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Associates a given tag to a resource in your account. A tag is a key-value pair which can be added to an Amazon Lookout for Equipment resource as metadata. Tags can be used for organizing your resources as well as helping you to search and filter by tag. Multiple tags can be added to a resource, either when you create it, or later. Up to 50 tags can be associated with each resource.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes a specific tag from a given resource. The tag is specified by its key.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates an inference scheduler.
    public func updateInferenceScheduler(_ input: UpdateInferenceSchedulerRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "UpdateInferenceScheduler", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
