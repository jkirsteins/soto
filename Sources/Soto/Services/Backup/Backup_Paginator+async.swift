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

// MARK: Paginators

@available(macOS 12.0, iOS 15.0, watchOS 8.0, tvOS 15.0, *)
extension Backup {
    ///  Returns a list of existing backup jobs for an authenticated account for the last 30 days. For a longer period of time, consider using these monitoring tools.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listBackupJobsPaginator(
        _ input: ListBackupJobsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListBackupJobsInput, ListBackupJobsOutput> {
        return .init(
            input: input,
            command: listBackupJobs,
            inputKey: \ListBackupJobsInput.nextToken,
            outputKey: \ListBackupJobsOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns metadata of your saved backup plan templates, including the template ID, name, and the creation and deletion dates.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listBackupPlanTemplatesPaginator(
        _ input: ListBackupPlanTemplatesInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListBackupPlanTemplatesInput, ListBackupPlanTemplatesOutput> {
        return .init(
            input: input,
            command: listBackupPlanTemplates,
            inputKey: \ListBackupPlanTemplatesInput.nextToken,
            outputKey: \ListBackupPlanTemplatesOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns version metadata of your backup plans, including Amazon Resource Names (ARNs), backup plan IDs, creation and deletion dates, plan names, and version IDs.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listBackupPlanVersionsPaginator(
        _ input: ListBackupPlanVersionsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListBackupPlanVersionsInput, ListBackupPlanVersionsOutput> {
        return .init(
            input: input,
            command: listBackupPlanVersions,
            inputKey: \ListBackupPlanVersionsInput.nextToken,
            outputKey: \ListBackupPlanVersionsOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of all active backup plans for an authenticated account. The list contains information such as Amazon Resource Names (ARNs), plan IDs, creation and deletion dates, version IDs, plan names, and creator request IDs.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listBackupPlansPaginator(
        _ input: ListBackupPlansInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListBackupPlansInput, ListBackupPlansOutput> {
        return .init(
            input: input,
            command: listBackupPlans,
            inputKey: \ListBackupPlansInput.nextToken,
            outputKey: \ListBackupPlansOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns an array containing metadata of the resources associated with the target backup plan.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listBackupSelectionsPaginator(
        _ input: ListBackupSelectionsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListBackupSelectionsInput, ListBackupSelectionsOutput> {
        return .init(
            input: input,
            command: listBackupSelections,
            inputKey: \ListBackupSelectionsInput.nextToken,
            outputKey: \ListBackupSelectionsOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of recovery point storage containers along with information about them.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listBackupVaultsPaginator(
        _ input: ListBackupVaultsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListBackupVaultsInput, ListBackupVaultsOutput> {
        return .init(
            input: input,
            command: listBackupVaults,
            inputKey: \ListBackupVaultsInput.nextToken,
            outputKey: \ListBackupVaultsOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns metadata about your copy jobs.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listCopyJobsPaginator(
        _ input: ListCopyJobsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListCopyJobsInput, ListCopyJobsOutput> {
        return .init(
            input: input,
            command: listCopyJobs,
            inputKey: \ListCopyJobsInput.nextToken,
            outputKey: \ListCopyJobsOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of all frameworks for an Amazon Web Services account and Amazon Web Services Region.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listFrameworksPaginator(
        _ input: ListFrameworksInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListFrameworksInput, ListFrameworksOutput> {
        return .init(
            input: input,
            command: listFrameworks,
            inputKey: \ListFrameworksInput.nextToken,
            outputKey: \ListFrameworksOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns an array of resources successfully backed up by Backup, including the time the resource was saved, an Amazon Resource Name (ARN) of the resource, and a resource type.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listProtectedResourcesPaginator(
        _ input: ListProtectedResourcesInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListProtectedResourcesInput, ListProtectedResourcesOutput> {
        return .init(
            input: input,
            command: listProtectedResources,
            inputKey: \ListProtectedResourcesInput.nextToken,
            outputKey: \ListProtectedResourcesOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns detailed information about the recovery points stored in a backup vault.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listRecoveryPointsByBackupVaultPaginator(
        _ input: ListRecoveryPointsByBackupVaultInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListRecoveryPointsByBackupVaultInput, ListRecoveryPointsByBackupVaultOutput> {
        return .init(
            input: input,
            command: listRecoveryPointsByBackupVault,
            inputKey: \ListRecoveryPointsByBackupVaultInput.nextToken,
            outputKey: \ListRecoveryPointsByBackupVaultOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns detailed information about all the recovery points of the type specified by a resource Amazon Resource Name (ARN).  For Amazon EFS and Amazon EC2, this action only lists recovery points created by Backup.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listRecoveryPointsByResourcePaginator(
        _ input: ListRecoveryPointsByResourceInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListRecoveryPointsByResourceInput, ListRecoveryPointsByResourceOutput> {
        return .init(
            input: input,
            command: listRecoveryPointsByResource,
            inputKey: \ListRecoveryPointsByResourceInput.nextToken,
            outputKey: \ListRecoveryPointsByResourceOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns details about your report jobs.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listReportJobsPaginator(
        _ input: ListReportJobsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListReportJobsInput, ListReportJobsOutput> {
        return .init(
            input: input,
            command: listReportJobs,
            inputKey: \ListReportJobsInput.nextToken,
            outputKey: \ListReportJobsOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of your report plans. For detailed information about a single report plan, use DescribeReportPlan.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listReportPlansPaginator(
        _ input: ListReportPlansInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListReportPlansInput, ListReportPlansOutput> {
        return .init(
            input: input,
            command: listReportPlans,
            inputKey: \ListReportPlansInput.nextToken,
            outputKey: \ListReportPlansOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of jobs that Backup initiated to restore a saved resource, including details about the recovery process.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listRestoreJobsPaginator(
        _ input: ListRestoreJobsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListRestoreJobsInput, ListRestoreJobsOutput> {
        return .init(
            input: input,
            command: listRestoreJobs,
            inputKey: \ListRestoreJobsInput.nextToken,
            outputKey: \ListRestoreJobsOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of key-value pairs assigned to a target recovery point, backup plan, or backup vault.   ListTags are currently only supported with Amazon EFS backups.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listTagsPaginator(
        _ input: ListTagsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListTagsInput, ListTagsOutput> {
        return .init(
            input: input,
            command: listTags,
            inputKey: \ListTagsInput.nextToken,
            outputKey: \ListTagsOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
