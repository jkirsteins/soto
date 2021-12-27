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

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto/tree/main/CodeGenerator. DO NOT EDIT.

#if compiler(>=5.5) && canImport(_Concurrency)

import SotoCore

@available(macOS 12.0, iOS 15.0, watchOS 8.0, tvOS 15.0, *)
extension Backup {
    // MARK: Async API Calls

    /// Creates a backup plan using a backup plan name and backup rules. A backup plan is a document that contains information that Backup uses to schedule tasks that create recovery points for resources. If you call CreateBackupPlan with a plan that already exists, you receive an AlreadyExistsException exception.
    public func createBackupPlan(_ input: CreateBackupPlanInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBackupPlanOutput {
        return try await self.client.execute(operation: "CreateBackupPlan", path: "/backup/plans/", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a JSON document that specifies a set of resources to assign to a backup plan. For examples, see Assigning resources programmatically.
    public func createBackupSelection(_ input: CreateBackupSelectionInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBackupSelectionOutput {
        return try await self.client.execute(operation: "CreateBackupSelection", path: "/backup/plans/{backupPlanId}/selections/", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a logical container where backups are stored. A CreateBackupVault request includes a name, optionally one or more resource tags, an encryption key, and a request ID.  Do not include sensitive data, such as passport numbers, in the name of a backup vault.
    public func createBackupVault(_ input: CreateBackupVaultInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBackupVaultOutput {
        return try await self.client.execute(operation: "CreateBackupVault", path: "/backup-vaults/{backupVaultName}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a framework with one or more controls. A framework is a collection of controls that you can use to evaluate your backup practices. By using pre-built customizable controls to define your policies, you can evaluate whether your backup practices comply with your policies and which resources are not yet in compliance.
    public func createFramework(_ input: CreateFrameworkInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateFrameworkOutput {
        return try await self.client.execute(operation: "CreateFramework", path: "/audit/frameworks", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a report plan. A report plan is a document that contains information about the contents of the report and where Backup will deliver it. If you call CreateReportPlan with a plan that already exists, you receive an AlreadyExistsException exception.
    public func createReportPlan(_ input: CreateReportPlanInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateReportPlanOutput {
        return try await self.client.execute(operation: "CreateReportPlan", path: "/audit/report-plans", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a backup plan. A backup plan can only be deleted after all associated selections of resources have been deleted. Deleting a backup plan deletes the current version of a backup plan. Previous versions, if any, will still exist.
    public func deleteBackupPlan(_ input: DeleteBackupPlanInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteBackupPlanOutput {
        return try await self.client.execute(operation: "DeleteBackupPlan", path: "/backup/plans/{backupPlanId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the resource selection associated with a backup plan that is specified by the SelectionId.
    public func deleteBackupSelection(_ input: DeleteBackupSelectionInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteBackupSelection", path: "/backup/plans/{backupPlanId}/selections/{selectionId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the backup vault identified by its name. A vault can be deleted only if it is empty.
    public func deleteBackupVault(_ input: DeleteBackupVaultInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteBackupVault", path: "/backup-vaults/{backupVaultName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the policy document that manages permissions on a backup vault.
    public func deleteBackupVaultAccessPolicy(_ input: DeleteBackupVaultAccessPolicyInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteBackupVaultAccessPolicy", path: "/backup-vaults/{backupVaultName}/access-policy", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes Backup Vault Lock from a backup vault specified by a backup vault name. If the Vault Lock configuration is immutable, then you cannot delete Vault Lock using API operations, and you will receive an InvalidRequestException if you attempt to do so. For more information, see Vault Lock in the Backup Developer Guide.
    public func deleteBackupVaultLockConfiguration(_ input: DeleteBackupVaultLockConfigurationInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteBackupVaultLockConfiguration", path: "/backup-vaults/{backupVaultName}/vault-lock", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes event notifications for the specified backup vault.
    public func deleteBackupVaultNotifications(_ input: DeleteBackupVaultNotificationsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteBackupVaultNotifications", path: "/backup-vaults/{backupVaultName}/notification-configuration", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the framework specified by a framework name.
    public func deleteFramework(_ input: DeleteFrameworkInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteFramework", path: "/audit/frameworks/{frameworkName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the recovery point specified by a recovery point ID. If the recovery point ID belongs to a continuous backup, calling this endpoint deletes the existing continuous backup and stops future continuous backup.
    public func deleteRecoveryPoint(_ input: DeleteRecoveryPointInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteRecoveryPoint", path: "/backup-vaults/{backupVaultName}/recovery-points/{recoveryPointArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the report plan specified by a report plan name.
    public func deleteReportPlan(_ input: DeleteReportPlanInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteReportPlan", path: "/audit/report-plans/{reportPlanName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns backup job details for the specified BackupJobId.
    public func describeBackupJob(_ input: DescribeBackupJobInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBackupJobOutput {
        return try await self.client.execute(operation: "DescribeBackupJob", path: "/backup-jobs/{backupJobId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns metadata about a backup vault specified by its name.
    public func describeBackupVault(_ input: DescribeBackupVaultInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBackupVaultOutput {
        return try await self.client.execute(operation: "DescribeBackupVault", path: "/backup-vaults/{backupVaultName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns metadata associated with creating a copy of a resource.
    public func describeCopyJob(_ input: DescribeCopyJobInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCopyJobOutput {
        return try await self.client.execute(operation: "DescribeCopyJob", path: "/copy-jobs/{copyJobId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the framework details for the specified FrameworkName.
    public func describeFramework(_ input: DescribeFrameworkInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFrameworkOutput {
        return try await self.client.execute(operation: "DescribeFramework", path: "/audit/frameworks/{frameworkName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Describes whether the Amazon Web Services account is opted in to cross-account backup. Returns an error if the account is not a member of an Organizations organization. Example: describe-global-settings --region us-west-2
    public func describeGlobalSettings(_ input: DescribeGlobalSettingsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGlobalSettingsOutput {
        return try await self.client.execute(operation: "DescribeGlobalSettings", path: "/global-settings", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about a saved resource, including the last time it was backed up, its Amazon Resource Name (ARN), and the Amazon Web Services service type of the saved resource.
    public func describeProtectedResource(_ input: DescribeProtectedResourceInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProtectedResourceOutput {
        return try await self.client.execute(operation: "DescribeProtectedResource", path: "/resources/{resourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns metadata associated with a recovery point, including ID, status, encryption, and lifecycle.
    public func describeRecoveryPoint(_ input: DescribeRecoveryPointInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRecoveryPointOutput {
        return try await self.client.execute(operation: "DescribeRecoveryPoint", path: "/backup-vaults/{backupVaultName}/recovery-points/{recoveryPointArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the current service opt-in settings for the Region. If service opt-in is enabled for a service, Backup tries to protect that service's resources in this Region, when the resource is included in an on-demand backup or scheduled backup plan. Otherwise, Backup does not try to protect that service's resources in this Region.
    public func describeRegionSettings(_ input: DescribeRegionSettingsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRegionSettingsOutput {
        return try await self.client.execute(operation: "DescribeRegionSettings", path: "/account-settings", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the details associated with creating a report as specified by its ReportJobId.
    public func describeReportJob(_ input: DescribeReportJobInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeReportJobOutput {
        return try await self.client.execute(operation: "DescribeReportJob", path: "/audit/report-jobs/{reportJobId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of all report plans for an Amazon Web Services account and Amazon Web Services Region.
    public func describeReportPlan(_ input: DescribeReportPlanInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeReportPlanOutput {
        return try await self.client.execute(operation: "DescribeReportPlan", path: "/audit/report-plans/{reportPlanName}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns metadata associated with a restore job that is specified by a job ID.
    public func describeRestoreJob(_ input: DescribeRestoreJobInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRestoreJobOutput {
        return try await self.client.execute(operation: "DescribeRestoreJob", path: "/restore-jobs/{restoreJobId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified continuous backup recovery point from Backup and releases control of that continuous backup to the source service, such as Amazon RDS. The source service will continue to create and retain continuous backups using the lifecycle that you specified in your original backup plan. Does not support snapshot backup recovery points.
    public func disassociateRecoveryPoint(_ input: DisassociateRecoveryPointInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DisassociateRecoveryPoint", path: "/backup-vaults/{backupVaultName}/recovery-points/{recoveryPointArn}/disassociate", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the backup plan that is specified by the plan ID as a backup template.
    public func exportBackupPlanTemplate(_ input: ExportBackupPlanTemplateInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExportBackupPlanTemplateOutput {
        return try await self.client.execute(operation: "ExportBackupPlanTemplate", path: "/backup/plans/{backupPlanId}/toTemplate/", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns BackupPlan details for the specified BackupPlanId. The details are the body of a backup plan in JSON format, in addition to plan metadata.
    public func getBackupPlan(_ input: GetBackupPlanInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetBackupPlanOutput {
        return try await self.client.execute(operation: "GetBackupPlan", path: "/backup/plans/{backupPlanId}/", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a valid JSON document specifying a backup plan or an error.
    public func getBackupPlanFromJSON(_ input: GetBackupPlanFromJSONInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetBackupPlanFromJSONOutput {
        return try await self.client.execute(operation: "GetBackupPlanFromJSON", path: "/backup/template/json/toPlan", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the template specified by its templateId as a backup plan.
    public func getBackupPlanFromTemplate(_ input: GetBackupPlanFromTemplateInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetBackupPlanFromTemplateOutput {
        return try await self.client.execute(operation: "GetBackupPlanFromTemplate", path: "/backup/template/plans/{templateId}/toPlan", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns selection metadata and a document in JSON format that specifies a list of resources that are associated with a backup plan.
    public func getBackupSelection(_ input: GetBackupSelectionInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetBackupSelectionOutput {
        return try await self.client.execute(operation: "GetBackupSelection", path: "/backup/plans/{backupPlanId}/selections/{selectionId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the access policy document that is associated with the named backup vault.
    public func getBackupVaultAccessPolicy(_ input: GetBackupVaultAccessPolicyInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetBackupVaultAccessPolicyOutput {
        return try await self.client.execute(operation: "GetBackupVaultAccessPolicy", path: "/backup-vaults/{backupVaultName}/access-policy", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns event notifications for the specified backup vault.
    public func getBackupVaultNotifications(_ input: GetBackupVaultNotificationsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetBackupVaultNotificationsOutput {
        return try await self.client.execute(operation: "GetBackupVaultNotifications", path: "/backup-vaults/{backupVaultName}/notification-configuration", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a set of metadata key-value pairs that were used to create the backup.
    public func getRecoveryPointRestoreMetadata(_ input: GetRecoveryPointRestoreMetadataInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetRecoveryPointRestoreMetadataOutput {
        return try await self.client.execute(operation: "GetRecoveryPointRestoreMetadata", path: "/backup-vaults/{backupVaultName}/recovery-points/{recoveryPointArn}/restore-metadata", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the Amazon Web Services resource types supported by Backup.
    public func getSupportedResourceTypes(logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetSupportedResourceTypesOutput {
        return try await self.client.execute(operation: "GetSupportedResourceTypes", path: "/supported-resource-types", httpMethod: .GET, serviceConfig: self.config, logger: logger, on: eventLoop)
    }

    /// Returns a list of existing backup jobs for an authenticated account for the last 30 days. For a longer period of time, consider using these monitoring tools.
    public func listBackupJobs(_ input: ListBackupJobsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListBackupJobsOutput {
        return try await self.client.execute(operation: "ListBackupJobs", path: "/backup-jobs/", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns metadata of your saved backup plan templates, including the template ID, name, and the creation and deletion dates.
    public func listBackupPlanTemplates(_ input: ListBackupPlanTemplatesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListBackupPlanTemplatesOutput {
        return try await self.client.execute(operation: "ListBackupPlanTemplates", path: "/backup/template/plans", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns version metadata of your backup plans, including Amazon Resource Names (ARNs), backup plan IDs, creation and deletion dates, plan names, and version IDs.
    public func listBackupPlanVersions(_ input: ListBackupPlanVersionsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListBackupPlanVersionsOutput {
        return try await self.client.execute(operation: "ListBackupPlanVersions", path: "/backup/plans/{backupPlanId}/versions/", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of all active backup plans for an authenticated account. The list contains information such as Amazon Resource Names (ARNs), plan IDs, creation and deletion dates, version IDs, plan names, and creator request IDs.
    public func listBackupPlans(_ input: ListBackupPlansInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListBackupPlansOutput {
        return try await self.client.execute(operation: "ListBackupPlans", path: "/backup/plans/", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns an array containing metadata of the resources associated with the target backup plan.
    public func listBackupSelections(_ input: ListBackupSelectionsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListBackupSelectionsOutput {
        return try await self.client.execute(operation: "ListBackupSelections", path: "/backup/plans/{backupPlanId}/selections/", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of recovery point storage containers along with information about them.
    public func listBackupVaults(_ input: ListBackupVaultsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListBackupVaultsOutput {
        return try await self.client.execute(operation: "ListBackupVaults", path: "/backup-vaults/", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns metadata about your copy jobs.
    public func listCopyJobs(_ input: ListCopyJobsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListCopyJobsOutput {
        return try await self.client.execute(operation: "ListCopyJobs", path: "/copy-jobs/", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of all frameworks for an Amazon Web Services account and Amazon Web Services Region.
    public func listFrameworks(_ input: ListFrameworksInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListFrameworksOutput {
        return try await self.client.execute(operation: "ListFrameworks", path: "/audit/frameworks", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns an array of resources successfully backed up by Backup, including the time the resource was saved, an Amazon Resource Name (ARN) of the resource, and a resource type.
    public func listProtectedResources(_ input: ListProtectedResourcesInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListProtectedResourcesOutput {
        return try await self.client.execute(operation: "ListProtectedResources", path: "/resources/", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns detailed information about the recovery points stored in a backup vault.
    public func listRecoveryPointsByBackupVault(_ input: ListRecoveryPointsByBackupVaultInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListRecoveryPointsByBackupVaultOutput {
        return try await self.client.execute(operation: "ListRecoveryPointsByBackupVault", path: "/backup-vaults/{backupVaultName}/recovery-points/", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns detailed information about all the recovery points of the type specified by a resource Amazon Resource Name (ARN).  For Amazon EFS and Amazon EC2, this action only lists recovery points created by Backup.
    public func listRecoveryPointsByResource(_ input: ListRecoveryPointsByResourceInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListRecoveryPointsByResourceOutput {
        return try await self.client.execute(operation: "ListRecoveryPointsByResource", path: "/resources/{resourceArn}/recovery-points/", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns details about your report jobs.
    public func listReportJobs(_ input: ListReportJobsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListReportJobsOutput {
        return try await self.client.execute(operation: "ListReportJobs", path: "/audit/report-jobs", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of your report plans. For detailed information about a single report plan, use DescribeReportPlan.
    public func listReportPlans(_ input: ListReportPlansInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListReportPlansOutput {
        return try await self.client.execute(operation: "ListReportPlans", path: "/audit/report-plans", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of jobs that Backup initiated to restore a saved resource, including details about the recovery process.
    public func listRestoreJobs(_ input: ListRestoreJobsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListRestoreJobsOutput {
        return try await self.client.execute(operation: "ListRestoreJobs", path: "/restore-jobs/", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of key-value pairs assigned to a target recovery point, backup plan, or backup vault.   ListTags are currently only supported with Amazon EFS backups.
    public func listTags(_ input: ListTagsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsOutput {
        return try await self.client.execute(operation: "ListTags", path: "/tags/{resourceArn}/", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Sets a resource-based policy that is used to manage access permissions on the target backup vault. Requires a backup vault name and an access policy document in JSON format.
    public func putBackupVaultAccessPolicy(_ input: PutBackupVaultAccessPolicyInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "PutBackupVaultAccessPolicy", path: "/backup-vaults/{backupVaultName}/access-policy", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Applies Backup Vault Lock to a backup vault, preventing attempts to delete any recovery point stored in or created in a backup vault. Vault Lock also prevents attempts to update the lifecycle policy that controls the retention period of any recovery point currently stored in a backup vault. If specified, Vault Lock enforces a minimum and maximum retention period for future backup and copy jobs that target a backup vault.  Backup Vault Lock has yet to receive a third-party assessment for SEC 17a-4(f) and CFTC.
    public func putBackupVaultLockConfiguration(_ input: PutBackupVaultLockConfigurationInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "PutBackupVaultLockConfiguration", path: "/backup-vaults/{backupVaultName}/vault-lock", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Turns on notifications on a backup vault for the specified topic and events.
    public func putBackupVaultNotifications(_ input: PutBackupVaultNotificationsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "PutBackupVaultNotifications", path: "/backup-vaults/{backupVaultName}/notification-configuration", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts an on-demand backup job for the specified resource.
    public func startBackupJob(_ input: StartBackupJobInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartBackupJobOutput {
        return try await self.client.execute(operation: "StartBackupJob", path: "/backup-jobs", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts a job to create a one-time copy of the specified resource. Does not support continuous backups.
    public func startCopyJob(_ input: StartCopyJobInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartCopyJobOutput {
        return try await self.client.execute(operation: "StartCopyJob", path: "/copy-jobs", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts an on-demand report job for the specified report plan.
    public func startReportJob(_ input: StartReportJobInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartReportJobOutput {
        return try await self.client.execute(operation: "StartReportJob", path: "/audit/report-jobs/{reportPlanName}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Recovers the saved resource identified by an Amazon Resource Name (ARN).
    public func startRestoreJob(_ input: StartRestoreJobInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartRestoreJobOutput {
        return try await self.client.execute(operation: "StartRestoreJob", path: "/restore-jobs", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Attempts to cancel a job to create a one-time backup of a resource.
    public func stopBackupJob(_ input: StopBackupJobInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "StopBackupJob", path: "/backup-jobs/{backupJobId}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Assigns a set of key-value pairs to a recovery point, backup plan, or backup vault identified by an Amazon Resource Name (ARN).
    public func tagResource(_ input: TagResourceInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes a set of key-value pairs from a recovery point, backup plan, or backup vault identified by an Amazon Resource Name (ARN)
    public func untagResource(_ input: UntagResourceInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "UntagResource", path: "/untag/{resourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates an existing backup plan identified by its backupPlanId with the input document in JSON format. The new version is uniquely identified by a VersionId.
    public func updateBackupPlan(_ input: UpdateBackupPlanInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateBackupPlanOutput {
        return try await self.client.execute(operation: "UpdateBackupPlan", path: "/backup/plans/{backupPlanId}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates an existing framework identified by its FrameworkName with the input document in JSON format.
    public func updateFramework(_ input: UpdateFrameworkInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateFrameworkOutput {
        return try await self.client.execute(operation: "UpdateFramework", path: "/audit/frameworks/{frameworkName}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates whether the Amazon Web Services account is opted in to cross-account backup. Returns an error if the account is not an Organizations management account. Use the DescribeGlobalSettings API to determine the current settings.
    public func updateGlobalSettings(_ input: UpdateGlobalSettingsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "UpdateGlobalSettings", path: "/global-settings", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Sets the transition lifecycle of a recovery point. The lifecycle defines when a protected resource is transitioned to cold storage and when it expires. Backup transitions and expires backups automatically according to the lifecycle that you define. Backups transitioned to cold storage must be stored in cold storage for a minimum of 90 days. Therefore, the “expire after days” setting must be 90 days greater than the “transition to cold after days” setting. The “transition to cold after days” setting cannot be changed after a backup has been transitioned to cold. Only Amazon EFS file system backups can be transitioned to cold storage. Does not support continuous backups.
    public func updateRecoveryPointLifecycle(_ input: UpdateRecoveryPointLifecycleInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateRecoveryPointLifecycleOutput {
        return try await self.client.execute(operation: "UpdateRecoveryPointLifecycle", path: "/backup-vaults/{backupVaultName}/recovery-points/{recoveryPointArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the current service opt-in settings for the Region. If service-opt-in is enabled for a service, Backup tries to protect that service's resources in this Region, when the resource is included in an on-demand backup or scheduled backup plan. Otherwise, Backup does not try to protect that service's resources in this Region. Use the DescribeRegionSettings API to determine the resource types that are supported.
    public func updateRegionSettings(_ input: UpdateRegionSettingsInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "UpdateRegionSettings", path: "/account-settings", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates an existing report plan identified by its ReportPlanName with the input document in JSON format.
    public func updateReportPlan(_ input: UpdateReportPlanInput, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateReportPlanOutput {
        return try await self.client.execute(operation: "UpdateReportPlan", path: "/audit/report-plans/{reportPlanName}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
