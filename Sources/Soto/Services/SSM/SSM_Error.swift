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

import SotoCore

/// Error enum for SSM
public struct SSMErrorType: AWSErrorType {
    enum Code: String {
        case alreadyExistsException = "AlreadyExistsException"
        case associatedInstances = "AssociatedInstances"
        case associationAlreadyExists = "AssociationAlreadyExists"
        case associationDoesNotExist = "AssociationDoesNotExist"
        case associationExecutionDoesNotExist = "AssociationExecutionDoesNotExist"
        case associationLimitExceeded = "AssociationLimitExceeded"
        case associationVersionLimitExceeded = "AssociationVersionLimitExceeded"
        case automationDefinitionNotApprovedException = "AutomationDefinitionNotApprovedException"
        case automationDefinitionNotFoundException = "AutomationDefinitionNotFoundException"
        case automationDefinitionVersionNotFoundException = "AutomationDefinitionVersionNotFoundException"
        case automationExecutionLimitExceededException = "AutomationExecutionLimitExceededException"
        case automationExecutionNotFoundException = "AutomationExecutionNotFoundException"
        case automationStepNotFoundException = "AutomationStepNotFoundException"
        case complianceTypeCountLimitExceededException = "ComplianceTypeCountLimitExceededException"
        case customSchemaCountLimitExceededException = "CustomSchemaCountLimitExceededException"
        case documentAlreadyExists = "DocumentAlreadyExists"
        case documentLimitExceeded = "DocumentLimitExceeded"
        case documentPermissionLimit = "DocumentPermissionLimit"
        case documentVersionLimitExceeded = "DocumentVersionLimitExceeded"
        case doesNotExistException = "DoesNotExistException"
        case duplicateDocumentContent = "DuplicateDocumentContent"
        case duplicateDocumentVersionName = "DuplicateDocumentVersionName"
        case duplicateInstanceId = "DuplicateInstanceId"
        case featureNotAvailableException = "FeatureNotAvailableException"
        case hierarchyLevelLimitExceededException = "HierarchyLevelLimitExceededException"
        case hierarchyTypeMismatchException = "HierarchyTypeMismatchException"
        case idempotentParameterMismatch = "IdempotentParameterMismatch"
        case incompatiblePolicyException = "IncompatiblePolicyException"
        case internalServerError = "InternalServerError"
        case invalidActivation = "InvalidActivation"
        case invalidActivationId = "InvalidActivationId"
        case invalidAggregatorException = "InvalidAggregatorException"
        case invalidAllowedPatternException = "InvalidAllowedPatternException"
        case invalidAssociation = "InvalidAssociation"
        case invalidAssociationVersion = "InvalidAssociationVersion"
        case invalidAutomationExecutionParametersException = "InvalidAutomationExecutionParametersException"
        case invalidAutomationSignalException = "InvalidAutomationSignalException"
        case invalidAutomationStatusUpdateException = "InvalidAutomationStatusUpdateException"
        case invalidCommandId = "InvalidCommandId"
        case invalidDeleteInventoryParametersException = "InvalidDeleteInventoryParametersException"
        case invalidDeletionIdException = "InvalidDeletionIdException"
        case invalidDocument = "InvalidDocument"
        case invalidDocumentContent = "InvalidDocumentContent"
        case invalidDocumentOperation = "InvalidDocumentOperation"
        case invalidDocumentSchemaVersion = "InvalidDocumentSchemaVersion"
        case invalidDocumentType = "InvalidDocumentType"
        case invalidDocumentVersion = "InvalidDocumentVersion"
        case invalidFilter = "InvalidFilter"
        case invalidFilterKey = "InvalidFilterKey"
        case invalidFilterOption = "InvalidFilterOption"
        case invalidFilterValue = "InvalidFilterValue"
        case invalidInstanceId = "InvalidInstanceId"
        case invalidInstanceInformationFilterValue = "InvalidInstanceInformationFilterValue"
        case invalidInventoryGroupException = "InvalidInventoryGroupException"
        case invalidInventoryItemContextException = "InvalidInventoryItemContextException"
        case invalidInventoryRequestException = "InvalidInventoryRequestException"
        case invalidItemContentException = "InvalidItemContentException"
        case invalidKeyId = "InvalidKeyId"
        case invalidNextToken = "InvalidNextToken"
        case invalidNotificationConfig = "InvalidNotificationConfig"
        case invalidOptionException = "InvalidOptionException"
        case invalidOutputFolder = "InvalidOutputFolder"
        case invalidOutputLocation = "InvalidOutputLocation"
        case invalidParameters = "InvalidParameters"
        case invalidPermissionType = "InvalidPermissionType"
        case invalidPluginName = "InvalidPluginName"
        case invalidPolicyAttributeException = "InvalidPolicyAttributeException"
        case invalidPolicyTypeException = "InvalidPolicyTypeException"
        case invalidResourceId = "InvalidResourceId"
        case invalidResourceType = "InvalidResourceType"
        case invalidResultAttributeException = "InvalidResultAttributeException"
        case invalidRole = "InvalidRole"
        case invalidSchedule = "InvalidSchedule"
        case invalidTarget = "InvalidTarget"
        case invalidTypeNameException = "InvalidTypeNameException"
        case invalidUpdate = "InvalidUpdate"
        case invocationDoesNotExist = "InvocationDoesNotExist"
        case itemContentMismatchException = "ItemContentMismatchException"
        case itemSizeLimitExceededException = "ItemSizeLimitExceededException"
        case maxDocumentSizeExceeded = "MaxDocumentSizeExceeded"
        case opsItemAlreadyExistsException = "OpsItemAlreadyExistsException"
        case opsItemInvalidParameterException = "OpsItemInvalidParameterException"
        case opsItemLimitExceededException = "OpsItemLimitExceededException"
        case opsItemNotFoundException = "OpsItemNotFoundException"
        case opsItemRelatedItemAlreadyExistsException = "OpsItemRelatedItemAlreadyExistsException"
        case opsItemRelatedItemAssociationNotFoundException = "OpsItemRelatedItemAssociationNotFoundException"
        case opsMetadataAlreadyExistsException = "OpsMetadataAlreadyExistsException"
        case opsMetadataInvalidArgumentException = "OpsMetadataInvalidArgumentException"
        case opsMetadataKeyLimitExceededException = "OpsMetadataKeyLimitExceededException"
        case opsMetadataLimitExceededException = "OpsMetadataLimitExceededException"
        case opsMetadataNotFoundException = "OpsMetadataNotFoundException"
        case opsMetadataTooManyUpdatesException = "OpsMetadataTooManyUpdatesException"
        case parameterAlreadyExists = "ParameterAlreadyExists"
        case parameterLimitExceeded = "ParameterLimitExceeded"
        case parameterMaxVersionLimitExceeded = "ParameterMaxVersionLimitExceeded"
        case parameterNotFound = "ParameterNotFound"
        case parameterPatternMismatchException = "ParameterPatternMismatchException"
        case parameterVersionLabelLimitExceeded = "ParameterVersionLabelLimitExceeded"
        case parameterVersionNotFound = "ParameterVersionNotFound"
        case policiesLimitExceededException = "PoliciesLimitExceededException"
        case resourceDataSyncAlreadyExistsException = "ResourceDataSyncAlreadyExistsException"
        case resourceDataSyncConflictException = "ResourceDataSyncConflictException"
        case resourceDataSyncCountExceededException = "ResourceDataSyncCountExceededException"
        case resourceDataSyncInvalidConfigurationException = "ResourceDataSyncInvalidConfigurationException"
        case resourceDataSyncNotFoundException = "ResourceDataSyncNotFoundException"
        case resourceInUseException = "ResourceInUseException"
        case resourceLimitExceededException = "ResourceLimitExceededException"
        case serviceSettingNotFound = "ServiceSettingNotFound"
        case statusUnchanged = "StatusUnchanged"
        case subTypeCountLimitExceededException = "SubTypeCountLimitExceededException"
        case targetInUseException = "TargetInUseException"
        case targetNotConnected = "TargetNotConnected"
        case tooManyTagsError = "TooManyTagsError"
        case tooManyUpdates = "TooManyUpdates"
        case totalSizeLimitExceededException = "TotalSizeLimitExceededException"
        case unsupportedCalendarException = "UnsupportedCalendarException"
        case unsupportedFeatureRequiredException = "UnsupportedFeatureRequiredException"
        case unsupportedInventoryItemContextException = "UnsupportedInventoryItemContextException"
        case unsupportedInventorySchemaVersionException = "UnsupportedInventorySchemaVersionException"
        case unsupportedOperatingSystem = "UnsupportedOperatingSystem"
        case unsupportedParameterType = "UnsupportedParameterType"
        case unsupportedPlatformType = "UnsupportedPlatformType"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize SSM
    public init?(errorCode: String, context: AWSErrorContext) {
        guard let error = Code(rawValue: errorCode) else { return nil }
        self.error = error
        self.context = context
    }

    internal init(_ error: Code) {
        self.error = error
        self.context = nil
    }

    /// return error code string
    public var errorCode: String { self.error.rawValue }

    /// Error returned if an attempt is made to register a patch group with a patch baseline that is already registered with a different patch baseline.
    public static var alreadyExistsException: Self { .init(.alreadyExistsException) }
    /// You must disassociate a document from all managed nodes before you can delete it.
    public static var associatedInstances: Self { .init(.associatedInstances) }
    /// The specified association already exists.
    public static var associationAlreadyExists: Self { .init(.associationAlreadyExists) }
    /// The specified association doesn't exist.
    public static var associationDoesNotExist: Self { .init(.associationDoesNotExist) }
    /// The specified execution ID doesn't exist. Verify the ID number and try again.
    public static var associationExecutionDoesNotExist: Self { .init(.associationExecutionDoesNotExist) }
    /// You can have at most 2,000 active associations.
    public static var associationLimitExceeded: Self { .init(.associationLimitExceeded) }
    /// You have reached the maximum number versions allowed for an association. Each association has a limit of 1,000 versions.
    public static var associationVersionLimitExceeded: Self { .init(.associationVersionLimitExceeded) }
    /// Indicates that the Change Manager change template used in the change request was rejected or is still in a pending state.
    public static var automationDefinitionNotApprovedException: Self { .init(.automationDefinitionNotApprovedException) }
    /// An Automation runbook with the specified name couldn't be found.
    public static var automationDefinitionNotFoundException: Self { .init(.automationDefinitionNotFoundException) }
    /// An Automation runbook with the specified name and version couldn't be found.
    public static var automationDefinitionVersionNotFoundException: Self { .init(.automationDefinitionVersionNotFoundException) }
    /// The number of simultaneously running Automation executions exceeded the allowable limit.
    public static var automationExecutionLimitExceededException: Self { .init(.automationExecutionLimitExceededException) }
    /// There is no automation execution information for the requested automation execution ID.
    public static var automationExecutionNotFoundException: Self { .init(.automationExecutionNotFoundException) }
    /// The specified step name and execution ID don't exist. Verify the information and try again.
    public static var automationStepNotFoundException: Self { .init(.automationStepNotFoundException) }
    /// You specified too many custom compliance types. You can specify a maximum of 10 different types.
    public static var complianceTypeCountLimitExceededException: Self { .init(.complianceTypeCountLimitExceededException) }
    /// You have exceeded the limit for custom schemas. Delete one or more custom schemas and try again.
    public static var customSchemaCountLimitExceededException: Self { .init(.customSchemaCountLimitExceededException) }
    /// The specified document already exists.
    public static var documentAlreadyExists: Self { .init(.documentAlreadyExists) }
    /// You can have at most 500 active SSM documents.
    public static var documentLimitExceeded: Self { .init(.documentLimitExceeded) }
    /// The document can't be shared with more Amazon Web Services user accounts. You can share a document with a maximum of 20 accounts. You can publicly share up to five documents. If you need to increase this limit, contact Amazon Web Services Support.
    public static var documentPermissionLimit: Self { .init(.documentPermissionLimit) }
    /// The document has too many versions. Delete one or more document versions and try again.
    public static var documentVersionLimitExceeded: Self { .init(.documentVersionLimitExceeded) }
    /// Error returned when the ID specified for a resource, such as a maintenance window or patch baseline, doesn't exist. For information about resource quotas in Amazon Web Services Systems Manager, see Systems Manager service quotas in the Amazon Web Services General Reference.
    public static var doesNotExistException: Self { .init(.doesNotExistException) }
    /// The content of the association document matches another document. Change the content of the document and try again.
    public static var duplicateDocumentContent: Self { .init(.duplicateDocumentContent) }
    /// The version name has already been used in this document. Specify a different version name, and then try again.
    public static var duplicateDocumentVersionName: Self { .init(.duplicateDocumentVersionName) }
    /// You can't specify a managed node ID in more than one association.
    public static var duplicateInstanceId: Self { .init(.duplicateInstanceId) }
    /// You attempted to register a LAMBDA or STEP_FUNCTIONS task in a region where the corresponding service isn't available.
    public static var featureNotAvailableException: Self { .init(.featureNotAvailableException) }
    /// A hierarchy can have a maximum of 15 levels. For more information, see Requirements and constraints for parameter names in the Amazon Web Services Systems Manager User Guide.
    public static var hierarchyLevelLimitExceededException: Self { .init(.hierarchyLevelLimitExceededException) }
    /// Parameter Store doesn't support changing a parameter type in a hierarchy. For example, you can't change a parameter from a String type to a SecureString type. You must create a new, unique parameter.
    public static var hierarchyTypeMismatchException: Self { .init(.hierarchyTypeMismatchException) }
    /// Error returned when an idempotent operation is retried and the parameters don't match the original call to the API with the same idempotency token.
    public static var idempotentParameterMismatch: Self { .init(.idempotentParameterMismatch) }
    /// There is a conflict in the policies specified for this parameter. You can't, for example, specify two Expiration policies for a parameter. Review your policies, and try again.
    public static var incompatiblePolicyException: Self { .init(.incompatiblePolicyException) }
    /// An error occurred on the server side.
    public static var internalServerError: Self { .init(.internalServerError) }
    /// The activation isn't valid. The activation might have been deleted, or the ActivationId and the ActivationCode don't match.
    public static var invalidActivation: Self { .init(.invalidActivation) }
    /// The activation ID isn't valid. Verify the you entered the correct ActivationId or ActivationCode and try again.
    public static var invalidActivationId: Self { .init(.invalidActivationId) }
    /// The specified aggregator isn't valid for inventory groups. Verify that the aggregator uses a valid inventory type such as AWS:Application or AWS:InstanceInformation.
    public static var invalidAggregatorException: Self { .init(.invalidAggregatorException) }
    /// The request doesn't meet the regular expression requirement.
    public static var invalidAllowedPatternException: Self { .init(.invalidAllowedPatternException) }
    /// The association isn't valid or doesn't exist.
    public static var invalidAssociation: Self { .init(.invalidAssociation) }
    /// The version you specified isn't valid. Use ListAssociationVersions to view all versions of an association according to the association ID. Or, use the $LATEST parameter to view the latest version of the association.
    public static var invalidAssociationVersion: Self { .init(.invalidAssociationVersion) }
    /// The supplied parameters for invoking the specified Automation runbook are incorrect. For example, they may not match the set of parameters permitted for the specified Automation document.
    public static var invalidAutomationExecutionParametersException: Self { .init(.invalidAutomationExecutionParametersException) }
    /// The signal isn't valid for the current Automation execution.
    public static var invalidAutomationSignalException: Self { .init(.invalidAutomationSignalException) }
    /// The specified update status operation isn't valid.
    public static var invalidAutomationStatusUpdateException: Self { .init(.invalidAutomationStatusUpdateException) }
    /// The specified command ID isn't valid. Verify the ID and try again.
    public static var invalidCommandId: Self { .init(.invalidCommandId) }
    /// One or more of the parameters specified for the delete operation isn't valid. Verify all parameters and try again.
    public static var invalidDeleteInventoryParametersException: Self { .init(.invalidDeleteInventoryParametersException) }
    /// The ID specified for the delete operation doesn't exist or isn't valid. Verify the ID and try again.
    public static var invalidDeletionIdException: Self { .init(.invalidDeletionIdException) }
    /// The specified SSM document doesn't exist.
    public static var invalidDocument: Self { .init(.invalidDocument) }
    /// The content for the document isn't valid.
    public static var invalidDocumentContent: Self { .init(.invalidDocumentContent) }
    /// You attempted to delete a document while it is still shared. You must stop sharing the document before you can delete it.
    public static var invalidDocumentOperation: Self { .init(.invalidDocumentOperation) }
    /// The version of the document schema isn't supported.
    public static var invalidDocumentSchemaVersion: Self { .init(.invalidDocumentSchemaVersion) }
    /// The SSM document type isn't valid. Valid document types are described in the DocumentType property.
    public static var invalidDocumentType: Self { .init(.invalidDocumentType) }
    /// The document version isn't valid or doesn't exist.
    public static var invalidDocumentVersion: Self { .init(.invalidDocumentVersion) }
    /// The filter name isn't valid. Verify the you entered the correct name and try again.
    public static var invalidFilter: Self { .init(.invalidFilter) }
    /// The specified key isn't valid.
    public static var invalidFilterKey: Self { .init(.invalidFilterKey) }
    /// The specified filter option isn't valid. Valid options are Equals and BeginsWith. For Path filter, valid options are Recursive and OneLevel.
    public static var invalidFilterOption: Self { .init(.invalidFilterOption) }
    /// The filter value isn't valid. Verify the value and try again.
    public static var invalidFilterValue: Self { .init(.invalidFilterValue) }
    /// The following problems can cause this exception:   You don't have permission to access the managed node.   Amazon Web Services Systems Manager Agent(SSM Agent) isn't running. Verify that SSM Agent is running.   SSM Agent isn't registered with the SSM endpoint. Try reinstalling SSM Agent.   The managed node isn't in valid state. Valid states are: Running, Pending, Stopped, and Stopping. Invalid states are: Shutting-down and Terminated.
    public static var invalidInstanceId: Self { .init(.invalidInstanceId) }
    /// The specified filter value isn't valid.
    public static var invalidInstanceInformationFilterValue: Self { .init(.invalidInstanceInformationFilterValue) }
    /// The specified inventory group isn't valid.
    public static var invalidInventoryGroupException: Self { .init(.invalidInventoryGroupException) }
    /// You specified invalid keys or values in the Context attribute for InventoryItem. Verify the keys and values, and try again.
    public static var invalidInventoryItemContextException: Self { .init(.invalidInventoryItemContextException) }
    /// The request isn't valid.
    public static var invalidInventoryRequestException: Self { .init(.invalidInventoryRequestException) }
    /// One or more content items isn't valid.
    public static var invalidItemContentException: Self { .init(.invalidItemContentException) }
    /// The query key ID isn't valid.
    public static var invalidKeyId: Self { .init(.invalidKeyId) }
    /// The specified token isn't valid.
    public static var invalidNextToken: Self { .init(.invalidNextToken) }
    /// One or more configuration items isn't valid. Verify that a valid Amazon Resource Name (ARN) was provided for an Amazon Simple Notification Service topic.
    public static var invalidNotificationConfig: Self { .init(.invalidNotificationConfig) }
    /// The delete inventory option specified isn't valid. Verify the option and try again.
    public static var invalidOptionException: Self { .init(.invalidOptionException) }
    /// The S3 bucket doesn't exist.
    public static var invalidOutputFolder: Self { .init(.invalidOutputFolder) }
    /// The output location isn't valid or doesn't exist.
    public static var invalidOutputLocation: Self { .init(.invalidOutputLocation) }
    /// You must specify values for all required parameters in the Amazon Web Services Systems Manager document (SSM document). You can only supply values to parameters defined in the SSM document.
    public static var invalidParameters: Self { .init(.invalidParameters) }
    /// The permission type isn't supported. Share is the only supported permission type.
    public static var invalidPermissionType: Self { .init(.invalidPermissionType) }
    /// The plugin name isn't valid.
    public static var invalidPluginName: Self { .init(.invalidPluginName) }
    /// A policy attribute or its value is invalid.
    public static var invalidPolicyAttributeException: Self { .init(.invalidPolicyAttributeException) }
    /// The policy type isn't supported. Parameter Store supports the following policy types: Expiration, ExpirationNotification, and NoChangeNotification.
    public static var invalidPolicyTypeException: Self { .init(.invalidPolicyTypeException) }
    /// The resource ID isn't valid. Verify that you entered the correct ID and try again.
    public static var invalidResourceId: Self { .init(.invalidResourceId) }
    /// The resource type isn't valid. For example, if you are attempting to tag an EC2 instance, the instance must be a registered managed node.
    public static var invalidResourceType: Self { .init(.invalidResourceType) }
    /// The specified inventory item result attribute isn't valid.
    public static var invalidResultAttributeException: Self { .init(.invalidResultAttributeException) }
    /// The role name can't contain invalid characters. Also verify that you specified an IAM role for notifications that includes the required trust policy. For information about configuring the IAM role for Run Command notifications, see Configuring Amazon SNS Notifications for Run Command in the Amazon Web Services Systems Manager User Guide.
    public static var invalidRole: Self { .init(.invalidRole) }
    /// The schedule is invalid. Verify your cron or rate expression and try again.
    public static var invalidSchedule: Self { .init(.invalidSchedule) }
    /// The target isn't valid or doesn't exist. It might not be configured for Systems Manager or you might not have permission to perform the operation.
    public static var invalidTarget: Self { .init(.invalidTarget) }
    /// The parameter type name isn't valid.
    public static var invalidTypeNameException: Self { .init(.invalidTypeNameException) }
    /// The update isn't valid.
    public static var invalidUpdate: Self { .init(.invalidUpdate) }
    /// The command ID and managed node ID you specified didn't match any invocations. Verify the command ID and the managed node ID and try again.
    public static var invocationDoesNotExist: Self { .init(.invocationDoesNotExist) }
    /// The inventory item has invalid content.
    public static var itemContentMismatchException: Self { .init(.itemContentMismatchException) }
    /// The inventory item size has exceeded the size limit.
    public static var itemSizeLimitExceededException: Self { .init(.itemSizeLimitExceededException) }
    /// The size limit of a document is 64 KB.
    public static var maxDocumentSizeExceeded: Self { .init(.maxDocumentSizeExceeded) }
    /// The OpsItem already exists.
    public static var opsItemAlreadyExistsException: Self { .init(.opsItemAlreadyExistsException) }
    /// A specified parameter argument isn't valid. Verify the available arguments and try again.
    public static var opsItemInvalidParameterException: Self { .init(.opsItemInvalidParameterException) }
    /// The request caused OpsItems to exceed one or more quotas. For information about OpsItem quotas, see What are the resource limits for OpsCenter?.
    public static var opsItemLimitExceededException: Self { .init(.opsItemLimitExceededException) }
    /// The specified OpsItem ID doesn't exist. Verify the ID and try again.
    public static var opsItemNotFoundException: Self { .init(.opsItemNotFoundException) }
    /// The Amazon Resource Name (ARN) is already associated with the OpsItem.
    public static var opsItemRelatedItemAlreadyExistsException: Self { .init(.opsItemRelatedItemAlreadyExistsException) }
    /// The association wasn't found using the parameters you specified in the call. Verify the information and try again.
    public static var opsItemRelatedItemAssociationNotFoundException: Self { .init(.opsItemRelatedItemAssociationNotFoundException) }
    /// An OpsMetadata object already exists for the selected resource.
    public static var opsMetadataAlreadyExistsException: Self { .init(.opsMetadataAlreadyExistsException) }
    /// One of the arguments passed is invalid.
    public static var opsMetadataInvalidArgumentException: Self { .init(.opsMetadataInvalidArgumentException) }
    /// The OpsMetadata object exceeds the maximum number of OpsMetadata keys that you can assign to an application in Application Manager.
    public static var opsMetadataKeyLimitExceededException: Self { .init(.opsMetadataKeyLimitExceededException) }
    /// Your account reached the maximum number of OpsMetadata objects allowed by Application Manager. The maximum is 200 OpsMetadata objects. Delete one or more OpsMetadata object and try again.
    public static var opsMetadataLimitExceededException: Self { .init(.opsMetadataLimitExceededException) }
    /// The OpsMetadata object doesn't exist.
    public static var opsMetadataNotFoundException: Self { .init(.opsMetadataNotFoundException) }
    /// The system is processing too many concurrent updates. Wait a few moments and try again.
    public static var opsMetadataTooManyUpdatesException: Self { .init(.opsMetadataTooManyUpdatesException) }
    /// The parameter already exists. You can't create duplicate parameters.
    public static var parameterAlreadyExists: Self { .init(.parameterAlreadyExists) }
    /// You have exceeded the number of parameters for this Amazon Web Services account. Delete one or more parameters and try again.
    public static var parameterLimitExceeded: Self { .init(.parameterLimitExceeded) }
    /// Parameter Store retains the 100 most recently created versions of a parameter. After this number of versions has been created, Parameter Store deletes the oldest version when a new one is created. However, if the oldest version has a label attached to it, Parameter Store won't delete the version and instead presents this error message:  An error occurred (ParameterMaxVersionLimitExceeded) when calling the PutParameter operation: You attempted to create a new version of parameter-name by calling the PutParameter API with the overwrite flag. Version version-number, the oldest version, can't be deleted because it has a label associated with it. Move the label to another version of the parameter, and try again.  This safeguard is to prevent parameter versions with mission critical labels assigned to them from being deleted. To continue creating new parameters, first move the label from the oldest version of the parameter to a newer one for use in your operations. For information about moving parameter labels, see Move a parameter label (console) or Move a parameter label (CLI) in the Amazon Web Services Systems Manager User Guide.
    public static var parameterMaxVersionLimitExceeded: Self { .init(.parameterMaxVersionLimitExceeded) }
    /// The parameter couldn't be found. Verify the name and try again.
    public static var parameterNotFound: Self { .init(.parameterNotFound) }
    /// The parameter name isn't valid.
    public static var parameterPatternMismatchException: Self { .init(.parameterPatternMismatchException) }
    /// A parameter version can have a maximum of ten labels.
    public static var parameterVersionLabelLimitExceeded: Self { .init(.parameterVersionLabelLimitExceeded) }
    /// The specified parameter version wasn't found. Verify the parameter name and version, and try again.
    public static var parameterVersionNotFound: Self { .init(.parameterVersionNotFound) }
    /// You specified more than the maximum number of allowed policies for the parameter. The maximum is 10.
    public static var policiesLimitExceededException: Self { .init(.policiesLimitExceededException) }
    /// A sync configuration with the same name already exists.
    public static var resourceDataSyncAlreadyExistsException: Self { .init(.resourceDataSyncAlreadyExistsException) }
    /// Another UpdateResourceDataSync request is being processed. Wait a few minutes and try again.
    public static var resourceDataSyncConflictException: Self { .init(.resourceDataSyncConflictException) }
    /// You have exceeded the allowed maximum sync configurations.
    public static var resourceDataSyncCountExceededException: Self { .init(.resourceDataSyncCountExceededException) }
    /// The specified sync configuration is invalid.
    public static var resourceDataSyncInvalidConfigurationException: Self { .init(.resourceDataSyncInvalidConfigurationException) }
    /// The specified sync name wasn't found.
    public static var resourceDataSyncNotFoundException: Self { .init(.resourceDataSyncNotFoundException) }
    /// Error returned if an attempt is made to delete a patch baseline that is registered for a patch group.
    public static var resourceInUseException: Self { .init(.resourceInUseException) }
    /// Error returned when the caller has exceeded the default resource quotas. For example, too many maintenance windows or patch baselines have been created. For information about resource quotas in Systems Manager, see Systems Manager service quotas in the Amazon Web Services General Reference.
    public static var resourceLimitExceededException: Self { .init(.resourceLimitExceededException) }
    /// The specified service setting wasn't found. Either the service name or the setting hasn't been provisioned by the Amazon Web Services service team.
    public static var serviceSettingNotFound: Self { .init(.serviceSettingNotFound) }
    /// The updated status is the same as the current status.
    public static var statusUnchanged: Self { .init(.statusUnchanged) }
    /// The sub-type count exceeded the limit for the inventory type.
    public static var subTypeCountLimitExceededException: Self { .init(.subTypeCountLimitExceededException) }
    /// You specified the Safe option for the DeregisterTargetFromMaintenanceWindow operation, but the target is still referenced in a task.
    public static var targetInUseException: Self { .init(.targetInUseException) }
    /// The specified target managed node for the session isn't fully configured for use with Session Manager. For more information, see Getting started with Session Manager in the Amazon Web Services Systems Manager User Guide. This error is also returned if you attempt to start a session on a managed node that is located in a different account or Region
    public static var targetNotConnected: Self { .init(.targetNotConnected) }
    /// The Targets parameter includes too many tags. Remove one or more tags and try the command again.
    public static var tooManyTagsError: Self { .init(.tooManyTagsError) }
    /// There are concurrent updates for a resource that supports one update at a time.
    public static var tooManyUpdates: Self { .init(.tooManyUpdates) }
    /// The size of inventory data has exceeded the total size limit for the resource.
    public static var totalSizeLimitExceededException: Self { .init(.totalSizeLimitExceededException) }
    /// The calendar entry contained in the specified SSM document isn't supported.
    public static var unsupportedCalendarException: Self { .init(.unsupportedCalendarException) }
    /// Patching for applications released by Microsoft is only available on EC2 instances and advanced instances. To patch applications released by Microsoft on on-premises servers and VMs, you must enable advanced instances. For more information, see Enabling the advanced-instances tier in the Amazon Web Services Systems Manager User Guide.
    public static var unsupportedFeatureRequiredException: Self { .init(.unsupportedFeatureRequiredException) }
    /// The Context attribute that you specified for the InventoryItem isn't allowed for this inventory type. You can only use the Context attribute with inventory types like AWS:ComplianceItem.
    public static var unsupportedInventoryItemContextException: Self { .init(.unsupportedInventoryItemContextException) }
    /// Inventory item type schema version has to match supported versions in the service. Check output of GetInventorySchema to see the available schema version for each type.
    public static var unsupportedInventorySchemaVersionException: Self { .init(.unsupportedInventorySchemaVersionException) }
    /// The operating systems you specified isn't supported, or the operation isn't supported for the operating system.
    public static var unsupportedOperatingSystem: Self { .init(.unsupportedOperatingSystem) }
    /// The parameter type isn't supported.
    public static var unsupportedParameterType: Self { .init(.unsupportedParameterType) }
    /// The document doesn't support the platform type of the given managed node ID(s). For example, you sent an document for a Windows managed node to a Linux node.
    public static var unsupportedPlatformType: Self { .init(.unsupportedPlatformType) }
}

extension SSMErrorType: Equatable {
    public static func == (lhs: SSMErrorType, rhs: SSMErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension SSMErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
