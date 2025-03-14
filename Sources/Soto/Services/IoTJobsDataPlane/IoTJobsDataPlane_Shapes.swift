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

import Foundation
import SotoCore

extension IoTJobsDataPlane {
    // MARK: Enums

    public enum JobExecutionStatus: String, CustomStringConvertible, Codable {
        case canceled = "CANCELED"
        case failed = "FAILED"
        case inProgress = "IN_PROGRESS"
        case queued = "QUEUED"
        case rejected = "REJECTED"
        case removed = "REMOVED"
        case succeeded = "SUCCEEDED"
        case timedOut = "TIMED_OUT"
        public var description: String { return self.rawValue }
    }

    // MARK: Shapes

    public struct DescribeJobExecutionRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "executionNumber", location: .querystring("executionNumber")),
            AWSMemberEncoding(label: "includeJobDocument", location: .querystring("includeJobDocument")),
            AWSMemberEncoding(label: "jobId", location: .uri("jobId")),
            AWSMemberEncoding(label: "thingName", location: .uri("thingName"))
        ]

        /// Optional. A number that identifies a particular job execution on a particular device. If not specified, the latest job execution is returned.
        public let executionNumber: Int64?
        /// Optional. When set to true, the response contains the job document. The default is false.
        public let includeJobDocument: Bool?
        /// The unique identifier assigned to this job when it was created.
        public let jobId: String
        /// The thing name associated with the device the job execution is running on.
        public let thingName: String

        public init(executionNumber: Int64? = nil, includeJobDocument: Bool? = nil, jobId: String, thingName: String) {
            self.executionNumber = executionNumber
            self.includeJobDocument = includeJobDocument
            self.jobId = jobId
            self.thingName = thingName
        }

        public func validate(name: String) throws {
            try self.validate(self.jobId, name: "jobId", parent: name, pattern: "[a-zA-Z0-9_-]+|^\\$next")
            try self.validate(self.thingName, name: "thingName", parent: name, max: 128)
            try self.validate(self.thingName, name: "thingName", parent: name, min: 1)
            try self.validate(self.thingName, name: "thingName", parent: name, pattern: "[a-zA-Z0-9:_-]+")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct DescribeJobExecutionResponse: AWSDecodableShape {
        /// Contains data about a job execution.
        public let execution: JobExecution?

        public init(execution: JobExecution? = nil) {
            self.execution = execution
        }

        private enum CodingKeys: String, CodingKey {
            case execution
        }
    }

    public struct GetPendingJobExecutionsRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "thingName", location: .uri("thingName"))
        ]

        /// The name of the thing that is executing the job.
        public let thingName: String

        public init(thingName: String) {
            self.thingName = thingName
        }

        public func validate(name: String) throws {
            try self.validate(self.thingName, name: "thingName", parent: name, max: 128)
            try self.validate(self.thingName, name: "thingName", parent: name, min: 1)
            try self.validate(self.thingName, name: "thingName", parent: name, pattern: "[a-zA-Z0-9:_-]+")
        }

        private enum CodingKeys: CodingKey {}
    }

    public struct GetPendingJobExecutionsResponse: AWSDecodableShape {
        /// A list of JobExecutionSummary objects with status IN_PROGRESS.
        public let inProgressJobs: [JobExecutionSummary]?
        /// A list of JobExecutionSummary objects with status QUEUED.
        public let queuedJobs: [JobExecutionSummary]?

        public init(inProgressJobs: [JobExecutionSummary]? = nil, queuedJobs: [JobExecutionSummary]? = nil) {
            self.inProgressJobs = inProgressJobs
            self.queuedJobs = queuedJobs
        }

        private enum CodingKeys: String, CodingKey {
            case inProgressJobs
            case queuedJobs
        }
    }

    public struct JobExecution: AWSDecodableShape {
        /// The estimated number of seconds that remain before the job execution status will be changed to TIMED_OUT.
        public let approximateSecondsBeforeTimedOut: Int64?
        /// A number that identifies a particular job execution on a particular device. It can be used later in commands that return or update job execution information.
        public let executionNumber: Int64?
        /// The content of the job document.
        public let jobDocument: String?
        /// The unique identifier you assigned to this job when it was created.
        public let jobId: String?
        /// The time, in milliseconds since the epoch, when the job execution was last updated.
        public let lastUpdatedAt: Int64?
        /// The time, in milliseconds since the epoch, when the job execution was enqueued.
        public let queuedAt: Int64?
        /// The time, in milliseconds since the epoch, when the job execution was started.
        public let startedAt: Int64?
        /// The status of the job execution. Can be one of: "QUEUED", "IN_PROGRESS", "FAILED", "SUCCESS", "CANCELED", "REJECTED", or "REMOVED".
        public let status: JobExecutionStatus?
        /// A collection of name/value pairs that describe the status of the job execution.
        public let statusDetails: [String: String]?
        /// The name of the thing that is executing the job.
        public let thingName: String?
        /// The version of the job execution. Job execution versions are incremented each time they are updated by a device.
        public let versionNumber: Int64?

        public init(approximateSecondsBeforeTimedOut: Int64? = nil, executionNumber: Int64? = nil, jobDocument: String? = nil, jobId: String? = nil, lastUpdatedAt: Int64? = nil, queuedAt: Int64? = nil, startedAt: Int64? = nil, status: JobExecutionStatus? = nil, statusDetails: [String: String]? = nil, thingName: String? = nil, versionNumber: Int64? = nil) {
            self.approximateSecondsBeforeTimedOut = approximateSecondsBeforeTimedOut
            self.executionNumber = executionNumber
            self.jobDocument = jobDocument
            self.jobId = jobId
            self.lastUpdatedAt = lastUpdatedAt
            self.queuedAt = queuedAt
            self.startedAt = startedAt
            self.status = status
            self.statusDetails = statusDetails
            self.thingName = thingName
            self.versionNumber = versionNumber
        }

        private enum CodingKeys: String, CodingKey {
            case approximateSecondsBeforeTimedOut
            case executionNumber
            case jobDocument
            case jobId
            case lastUpdatedAt
            case queuedAt
            case startedAt
            case status
            case statusDetails
            case thingName
            case versionNumber
        }
    }

    public struct JobExecutionState: AWSDecodableShape {
        /// The status of the job execution. Can be one of: "QUEUED", "IN_PROGRESS", "FAILED", "SUCCESS", "CANCELED", "REJECTED", or "REMOVED".
        public let status: JobExecutionStatus?
        /// A collection of name/value pairs that describe the status of the job execution.
        public let statusDetails: [String: String]?
        /// The version of the job execution. Job execution versions are incremented each time they are updated by a device.
        public let versionNumber: Int64?

        public init(status: JobExecutionStatus? = nil, statusDetails: [String: String]? = nil, versionNumber: Int64? = nil) {
            self.status = status
            self.statusDetails = statusDetails
            self.versionNumber = versionNumber
        }

        private enum CodingKeys: String, CodingKey {
            case status
            case statusDetails
            case versionNumber
        }
    }

    public struct JobExecutionSummary: AWSDecodableShape {
        /// A number that identifies a particular job execution on a particular device.
        public let executionNumber: Int64?
        /// The unique identifier you assigned to this job when it was created.
        public let jobId: String?
        /// The time, in milliseconds since the epoch, when the job execution was last updated.
        public let lastUpdatedAt: Int64?
        /// The time, in milliseconds since the epoch, when the job execution was enqueued.
        public let queuedAt: Int64?
        /// The time, in milliseconds since the epoch, when the job execution started.
        public let startedAt: Int64?
        /// The version of the job execution. Job execution versions are incremented each time AWS IoT Jobs receives an update from a device.
        public let versionNumber: Int64?

        public init(executionNumber: Int64? = nil, jobId: String? = nil, lastUpdatedAt: Int64? = nil, queuedAt: Int64? = nil, startedAt: Int64? = nil, versionNumber: Int64? = nil) {
            self.executionNumber = executionNumber
            self.jobId = jobId
            self.lastUpdatedAt = lastUpdatedAt
            self.queuedAt = queuedAt
            self.startedAt = startedAt
            self.versionNumber = versionNumber
        }

        private enum CodingKeys: String, CodingKey {
            case executionNumber
            case jobId
            case lastUpdatedAt
            case queuedAt
            case startedAt
            case versionNumber
        }
    }

    public struct StartNextPendingJobExecutionRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "thingName", location: .uri("thingName"))
        ]

        /// A collection of name/value pairs that describe the status of the job execution. If not specified, the statusDetails are unchanged.
        public let statusDetails: [String: String]?
        /// Specifies the amount of time this device has to finish execution of this job. If the job  execution status is not set to a terminal state before this timer expires, or before the  timer is reset (by calling UpdateJobExecution, setting the status to IN_PROGRESS and specifying a new timeout value in field stepTimeoutInMinutes)  the job execution status will be automatically set to TIMED_OUT.  Note that setting  this timeout has no effect on that job execution timeout which may have been specified when  the job was created (CreateJob using field timeoutConfig).
        public let stepTimeoutInMinutes: Int64?
        /// The name of the thing associated with the device.
        public let thingName: String

        public init(statusDetails: [String: String]? = nil, stepTimeoutInMinutes: Int64? = nil, thingName: String) {
            self.statusDetails = statusDetails
            self.stepTimeoutInMinutes = stepTimeoutInMinutes
            self.thingName = thingName
        }

        public func validate(name: String) throws {
            try self.statusDetails?.forEach {
                try validate($0.key, name: "statusDetails.key", parent: name, max: 128)
                try validate($0.key, name: "statusDetails.key", parent: name, min: 1)
                try validate($0.key, name: "statusDetails.key", parent: name, pattern: "[a-zA-Z0-9:_-]+")
                try validate($0.value, name: "statusDetails[\"\($0.key)\"]", parent: name, max: 1024)
                try validate($0.value, name: "statusDetails[\"\($0.key)\"]", parent: name, min: 1)
                try validate($0.value, name: "statusDetails[\"\($0.key)\"]", parent: name, pattern: "[^\\p{C}]*+")
            }
            try self.validate(self.thingName, name: "thingName", parent: name, max: 128)
            try self.validate(self.thingName, name: "thingName", parent: name, min: 1)
            try self.validate(self.thingName, name: "thingName", parent: name, pattern: "[a-zA-Z0-9:_-]+")
        }

        private enum CodingKeys: String, CodingKey {
            case statusDetails
            case stepTimeoutInMinutes
        }
    }

    public struct StartNextPendingJobExecutionResponse: AWSDecodableShape {
        /// A JobExecution object.
        public let execution: JobExecution?

        public init(execution: JobExecution? = nil) {
            self.execution = execution
        }

        private enum CodingKeys: String, CodingKey {
            case execution
        }
    }

    public struct UpdateJobExecutionRequest: AWSEncodableShape {
        public static var _encoding = [
            AWSMemberEncoding(label: "jobId", location: .uri("jobId")),
            AWSMemberEncoding(label: "thingName", location: .uri("thingName"))
        ]

        /// Optional. A number that identifies a particular job execution on a particular device.
        public let executionNumber: Int64?
        /// Optional. The expected current version of the job execution. Each time you update the job execution, its version is incremented. If the version of the job execution stored in Jobs does not match, the update is rejected with a VersionMismatch error, and an ErrorResponse that contains the current job execution status data is returned. (This makes it unnecessary to perform a separate DescribeJobExecution request in order to obtain the job execution status data.)
        public let expectedVersion: Int64?
        /// Optional. When set to true, the response contains the job document. The default is false.
        public let includeJobDocument: Bool?
        /// Optional. When included and set to true, the response contains the JobExecutionState data. The default is false.
        public let includeJobExecutionState: Bool?
        /// The unique identifier assigned to this job when it was created.
        public let jobId: String
        /// The new status for the job execution (IN_PROGRESS, FAILED, SUCCESS, or REJECTED). This must be specified on every update.
        public let status: JobExecutionStatus
        ///  Optional. A collection of name/value pairs that describe the status of the job execution. If not specified, the statusDetails are unchanged.
        public let statusDetails: [String: String]?
        /// Specifies the amount of time this device has to finish execution of this job. If the job  execution status is not set to a terminal state before this timer expires, or before the  timer is reset (by again calling UpdateJobExecution, setting the status to IN_PROGRESS and specifying a new timeout value in this field) the job execution status will be automatically set to TIMED_OUT.  Note that setting or resetting  this timeout has no effect on that job execution timeout which may have been specified when  the job was created (CreateJob using field timeoutConfig).
        public let stepTimeoutInMinutes: Int64?
        /// The name of the thing associated with the device.
        public let thingName: String

        public init(executionNumber: Int64? = nil, expectedVersion: Int64? = nil, includeJobDocument: Bool? = nil, includeJobExecutionState: Bool? = nil, jobId: String, status: JobExecutionStatus, statusDetails: [String: String]? = nil, stepTimeoutInMinutes: Int64? = nil, thingName: String) {
            self.executionNumber = executionNumber
            self.expectedVersion = expectedVersion
            self.includeJobDocument = includeJobDocument
            self.includeJobExecutionState = includeJobExecutionState
            self.jobId = jobId
            self.status = status
            self.statusDetails = statusDetails
            self.stepTimeoutInMinutes = stepTimeoutInMinutes
            self.thingName = thingName
        }

        public func validate(name: String) throws {
            try self.validate(self.jobId, name: "jobId", parent: name, max: 64)
            try self.validate(self.jobId, name: "jobId", parent: name, min: 1)
            try self.validate(self.jobId, name: "jobId", parent: name, pattern: "[a-zA-Z0-9_-]+")
            try self.statusDetails?.forEach {
                try validate($0.key, name: "statusDetails.key", parent: name, max: 128)
                try validate($0.key, name: "statusDetails.key", parent: name, min: 1)
                try validate($0.key, name: "statusDetails.key", parent: name, pattern: "[a-zA-Z0-9:_-]+")
                try validate($0.value, name: "statusDetails[\"\($0.key)\"]", parent: name, max: 1024)
                try validate($0.value, name: "statusDetails[\"\($0.key)\"]", parent: name, min: 1)
                try validate($0.value, name: "statusDetails[\"\($0.key)\"]", parent: name, pattern: "[^\\p{C}]*+")
            }
            try self.validate(self.thingName, name: "thingName", parent: name, max: 128)
            try self.validate(self.thingName, name: "thingName", parent: name, min: 1)
            try self.validate(self.thingName, name: "thingName", parent: name, pattern: "[a-zA-Z0-9:_-]+")
        }

        private enum CodingKeys: String, CodingKey {
            case executionNumber
            case expectedVersion
            case includeJobDocument
            case includeJobExecutionState
            case status
            case statusDetails
            case stepTimeoutInMinutes
        }
    }

    public struct UpdateJobExecutionResponse: AWSDecodableShape {
        /// A JobExecutionState object.
        public let executionState: JobExecutionState?
        /// The contents of the Job Documents.
        public let jobDocument: String?

        public init(executionState: JobExecutionState? = nil, jobDocument: String? = nil) {
            self.executionState = executionState
            self.jobDocument = jobDocument
        }

        private enum CodingKeys: String, CodingKey {
            case executionState
            case jobDocument
        }
    }
}
