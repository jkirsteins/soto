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
extension ApplicationCostProfiler {
    // MARK: Async API Calls

    /// Deletes the specified report definition in AWS Application Cost Profiler. This stops the report from being generated.
    public func deleteReportDefinition(_ input: DeleteReportDefinitionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteReportDefinitionResult {
        return try await self.client.execute(operation: "DeleteReportDefinition", path: "/reportDefinition/{reportId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the definition of a report already configured in AWS Application Cost Profiler.
    public func getReportDefinition(_ input: GetReportDefinitionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetReportDefinitionResult {
        return try await self.client.execute(operation: "GetReportDefinition", path: "/reportDefinition/{reportId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Ingests application usage data from Amazon Simple Storage Service (Amazon S3). The data must already exist in the S3 location. As part of the action, AWS Application Cost Profiler copies the object from your S3 bucket to an S3 bucket owned by Amazon for processing asynchronously.
    public func importApplicationUsage(_ input: ImportApplicationUsageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ImportApplicationUsageResult {
        return try await self.client.execute(operation: "ImportApplicationUsage", path: "/importApplicationUsage", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a list of all reports and their configurations for your AWS account. The maximum number of reports is one.
    public func listReportDefinitions(_ input: ListReportDefinitionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListReportDefinitionsResult {
        return try await self.client.execute(operation: "ListReportDefinitions", path: "/reportDefinition", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates the report definition for a report in Application Cost Profiler.
    public func putReportDefinition(_ input: PutReportDefinitionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutReportDefinitionResult {
        return try await self.client.execute(operation: "PutReportDefinition", path: "/reportDefinition", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates existing report in AWS Application Cost Profiler.
    public func updateReportDefinition(_ input: UpdateReportDefinitionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateReportDefinitionResult {
        return try await self.client.execute(operation: "UpdateReportDefinition", path: "/reportDefinition/{reportId}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
