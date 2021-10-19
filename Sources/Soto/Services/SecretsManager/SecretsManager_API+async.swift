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
extension SecretsManager {
    // MARK: Async API Calls

    /// Disables automatic scheduled rotation and cancels the rotation of a secret if currently in progress. To re-enable scheduled rotation, call RotateSecret with AutomaticallyRotateAfterDays set to a value greater than 0. This immediately rotates your secret and then enables the automatic schedule.  If you cancel a rotation while in progress, it can leave the VersionStage labels in an unexpected state. Depending on the step of the rotation in progress, you might need to remove the staging label AWSPENDING from the partially created version, specified by the VersionId response value. You should also evaluate the partially rotated new version to see if it should be deleted, which you can do by removing all staging labels from the new version VersionStage field.  To successfully start a rotation, the staging label AWSPENDING must be in one of the following states:   Not attached to any version at all   Attached to the same version as the staging label AWSCURRENT    If the staging label AWSPENDING attached to a different version than the version with AWSCURRENT then the attempt to rotate fails.
    ///   Minimum permissions  To run this command, you must have the following permissions:   secretsmanager:CancelRotateSecret    Related operations    To configure rotation for a secret or to manually trigger a rotation, use RotateSecret.   To get the rotation configuration details for a secret, use DescribeSecret.   To list all of the currently available secrets, use ListSecrets.   To list all of the versions currently associated with a secret, use ListSecretVersionIds.
    public func cancelRotateSecret(_ input: CancelRotateSecretRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CancelRotateSecretResponse {
        return try await self.client.execute(operation: "CancelRotateSecret", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new secret. A secret in Secrets Manager consists of both the protected secret data and the important information needed to manage the secret. Secrets Manager stores the encrypted secret data in one of a collection of "versions" associated with the secret. Each version contains a copy of the encrypted secret data. Each version is associated with one or more "staging labels" that identify where the version is in the rotation cycle. The SecretVersionsToStages field of the secret contains the mapping of staging labels to the active versions of the secret. Versions without a staging label are considered deprecated and not included in the list. You provide the secret data to be encrypted by putting text in either the SecretString parameter or binary data in the SecretBinary parameter, but not both. If you include SecretString or SecretBinary then Secrets Manager also creates an initial secret version and automatically attaches the staging label AWSCURRENT to the new version.     If you call an operation to encrypt or decrypt the SecretString  or SecretBinary for a secret in the same account as the calling user and that  secret doesn't specify a Amazon Web Services KMS encryption key, Secrets Manager uses the account's default  Amazon Web Services managed customer master key (CMK) with the alias aws/secretsmanager. If this key  doesn't already exist in your account then Secrets Manager creates it for you automatically. All users and roles in the same Amazon Web Services account automatically have access to use the default CMK.  Note that if an Secrets Manager API call results in Amazon Web Services creating the account's  Amazon Web Services-managed CMK, it can result in a one-time significant delay in returning the  result.   If the secret resides in a different Amazon Web Services account from the credentials calling an API that  requires encryption or decryption of the secret value then you must create and use a custom  Amazon Web Services KMS CMK because you can't access the default CMK for the account using credentials  from a different Amazon Web Services account. Store the ARN of the CMK in the secret when you create the  secret or when you update it by including it in the KMSKeyId. If you call an  API that must encrypt or decrypt SecretString or SecretBinary  using credentials from a different account then the Amazon Web Services KMS key policy must grant cross-account access to that other account's user or role for both the kms:GenerateDataKey and  kms:Decrypt operations.      Minimum permissions  To run this command, you must have the following permissions:   secretsmanager:CreateSecret   kms:GenerateDataKey - needed only if you use a customer-managed Amazon Web Services KMS key to encrypt the secret. You do not need this permission to use the account default Amazon Web Services managed CMK for Secrets Manager.   kms:Decrypt - needed only if you use a customer-managed Amazon Web Services KMS key to encrypt the secret. You do not need this permission to use the account default Amazon Web Services managed CMK for Secrets Manager.   secretsmanager:TagResource - needed only if you include the Tags parameter.     Related operations    To delete a secret, use DeleteSecret.   To modify an existing secret, use UpdateSecret.   To create a new version of a secret, use PutSecretValue.   To retrieve the encrypted secure string and secure binary values, use GetSecretValue.   To retrieve all other details for a secret, use DescribeSecret. This does not include the encrypted secure string and secure binary values.   To retrieve the list of secret versions associated with the current secret, use DescribeSecret and examine the SecretVersionsToStages response value.
    public func createSecret(_ input: CreateSecretRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSecretResponse {
        return try await self.client.execute(operation: "CreateSecret", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the resource-based permission policy attached to the secret.  Minimum permissions  To run this command, you must have the following permissions:   secretsmanager:DeleteResourcePolicy    Related operations    To attach a resource policy to a secret, use PutResourcePolicy.   To retrieve the current resource-based policy attached to a secret, use GetResourcePolicy.   To list all of the currently available secrets, use ListSecrets.
    public func deleteResourcePolicy(_ input: DeleteResourcePolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteResourcePolicyResponse {
        return try await self.client.execute(operation: "DeleteResourcePolicy", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an entire secret and all of the versions. You can optionally include a recovery window during which you can restore the secret. If you don't specify a recovery window value, the operation defaults to 30 days. Secrets Manager attaches a DeletionDate stamp to the secret that specifies the end of the recovery window. At the end of the recovery window, Secrets Manager deletes the secret permanently. At any time before recovery window ends, you can use RestoreSecret to remove the DeletionDate and cancel the deletion of the secret. You cannot access the encrypted secret information in any secret scheduled for deletion. If you need to access that information, you must cancel the deletion with RestoreSecret and then retrieve the information.    There is no explicit operation to delete a version of a secret. Instead, remove all staging labels from the VersionStage field of a version. That marks the version as deprecated and allows Secrets Manager to delete it as needed. Versions without any staging labels do not show up in ListSecretVersionIds unless you specify IncludeDeprecated.   The permanent secret deletion at the end of the waiting period is performed as a background task with low priority. There is no guarantee of a specific time after the recovery window for the actual delete operation to occur.     Minimum permissions  To run this command, you must have the following permissions:   secretsmanager:DeleteSecret    Related operations    To create a secret, use CreateSecret.   To cancel deletion of a version of a secret before the recovery window has expired, use RestoreSecret.
    public func deleteSecret(_ input: DeleteSecretRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteSecretResponse {
        return try await self.client.execute(operation: "DeleteSecret", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the details of a secret. It does not include the encrypted fields. Secrets Manager only returns fields populated with a value in the response.   Minimum permissions  To run this command, you must have the following permissions:   secretsmanager:DescribeSecret    Related operations    To create a secret, use CreateSecret.   To modify a secret, use UpdateSecret.   To retrieve the encrypted secret information in a version of the secret, use GetSecretValue.   To list all of the secrets in the Amazon Web Services account, use ListSecrets.
    public func describeSecret(_ input: DescribeSecretRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSecretResponse {
        return try await self.client.execute(operation: "DescribeSecret", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Generates a random password of the specified complexity. This operation is intended for use in the Lambda rotation function. Per best practice, we recommend that you specify the maximum length and include every character type that the system you are generating a password for can support.  Minimum permissions  To run this command, you must have the following permissions:   secretsmanager:GetRandomPassword
    public func getRandomPassword(_ input: GetRandomPasswordRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetRandomPasswordResponse {
        return try await self.client.execute(operation: "GetRandomPassword", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the JSON text of the resource-based policy document attached to the specified secret. The JSON request string input and response output displays formatted code with white space and line breaks for better readability. Submit your input as a single line  JSON string.  Minimum permissions  To run this command, you must have the following permissions:   secretsmanager:GetResourcePolicy    Related operations    To attach a resource policy to a secret, use PutResourcePolicy.   To delete the resource-based policy attached to a secret, use DeleteResourcePolicy.   To list all of the currently available secrets, use ListSecrets.
    public func getResourcePolicy(_ input: GetResourcePolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetResourcePolicyResponse {
        return try await self.client.execute(operation: "GetResourcePolicy", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the contents of the encrypted fields SecretString or SecretBinary from the specified version of a secret, whichever contains content.  Minimum permissions  To run this command, you must have the following permissions:   secretsmanager:GetSecretValue   kms:Decrypt - required only if you use a customer-managed Amazon Web Services KMS key to encrypt the secret. You do not need this permission to use the account's default Amazon Web Services managed CMK for Secrets Manager.    Related operations    To create a new version of the secret with different encrypted information, use PutSecretValue.   To retrieve the non-encrypted details for the secret, use DescribeSecret.
    public func getSecretValue(_ input: GetSecretValueRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetSecretValueResponse {
        return try await self.client.execute(operation: "GetSecretValue", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all of the versions attached to the specified secret. The output does not include the SecretString or SecretBinary fields. By default, the list includes only versions that have at least one staging label in VersionStage attached.   Always check the NextToken response parameter  when calling any of the List* operations. These operations can occasionally return  an empty or shorter than expected list of results even when there more results become available.  When this happens, the NextToken response parameter contains a value to pass to the  next call to the same API to request the next part of the list.   Minimum permissions  To run this command, you must have the following permissions:   secretsmanager:ListSecretVersionIds    Related operations    To list the secrets in an account, use ListSecrets.
    public func listSecretVersionIds(_ input: ListSecretVersionIdsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListSecretVersionIdsResponse {
        return try await self.client.execute(operation: "ListSecretVersionIds", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all of the secrets that are stored by Secrets Manager in the Amazon Web Services account. To list the versions currently stored for a specific secret, use ListSecretVersionIds. The encrypted fields SecretString and SecretBinary are not included in the output. To get that information, call the GetSecretValue operation.   Always check the NextToken response parameter  when calling any of the List* operations. These operations can occasionally return  an empty or shorter than expected list of results even when there more results become available.  When this happens, the NextToken response parameter contains a value to pass to the  next call to the same API to request the next part of the list.   Minimum permissions  To run this command, you must have the following permissions:   secretsmanager:ListSecrets    Related operations    To list the versions attached to a secret, use ListSecretVersionIds.
    public func listSecrets(_ input: ListSecretsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListSecretsResponse {
        return try await self.client.execute(operation: "ListSecrets", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Attaches the contents of the specified resource-based permission policy to a secret. A resource-based policy is optional. Alternatively, you can use IAM identity-based policies that specify the secret's Amazon Resource Name (ARN) in the policy statement's Resources element. You can also use a combination of both identity-based and resource-based policies. The affected users and roles receive the permissions that are permitted by all of the relevant policies. For more information, see Using Resource-Based Policies for Amazon Web Services Secrets Manager. For the complete description of the Amazon Web Services policy syntax and grammar, see IAM JSON Policy Reference in the IAM User Guide.  Minimum permissions  To run this command, you must have the following permissions:   secretsmanager:PutResourcePolicy    Related operations    To retrieve the resource policy attached to a secret, use GetResourcePolicy.   To delete the resource-based policy attached to a secret, use DeleteResourcePolicy.   To list all of the currently available secrets, use ListSecrets.
    public func putResourcePolicy(_ input: PutResourcePolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutResourcePolicyResponse {
        return try await self.client.execute(operation: "PutResourcePolicy", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Stores a new encrypted secret value in the specified secret. To do this, the operation creates a new version and attaches it to the secret. The version can contain a new SecretString value or a new SecretBinary value. You can also specify the staging labels that are initially attached to the new version.  The Secrets Manager console uses only the SecretString field. To add binary data to a secret with the SecretBinary field you must use the Amazon Web Services CLI or one of the Amazon Web Services SDKs.    If this operation creates the first version for the secret then Secrets Manager automatically attaches the staging label AWSCURRENT to the new version.   If you do not specify a value for VersionStages then Secrets Manager automatically moves the staging label AWSCURRENT to this new version.   If this operation moves the staging label AWSCURRENT from another version to this version, then Secrets Manager also automatically moves the staging label AWSPREVIOUS to the version that AWSCURRENT was removed from.   This operation is idempotent. If a version with a VersionId with the same value as the ClientRequestToken parameter already exists and you specify the same secret data, the operation succeeds but does nothing. However, if the secret data is different, then the operation fails because you cannot modify an existing version; you can only create new ones.      If you call an operation to encrypt or decrypt the SecretString  or SecretBinary for a secret in the same account as the calling user and that  secret doesn't specify a Amazon Web Services KMS encryption key, Secrets Manager uses the account's default  Amazon Web Services managed customer master key (CMK) with the alias aws/secretsmanager. If this key  doesn't already exist in your account then Secrets Manager creates it for you automatically. All users and roles in the same Amazon Web Services account automatically have access to use the default CMK.  Note that if an Secrets Manager API call results in Amazon Web Services creating the account's  Amazon Web Services-managed CMK, it can result in a one-time significant delay in returning the  result.   If the secret resides in a different Amazon Web Services account from the credentials calling an API that  requires encryption or decryption of the secret value then you must create and use a custom  Amazon Web Services KMS CMK because you can't access the default CMK for the account using credentials  from a different Amazon Web Services account. Store the ARN of the CMK in the secret when you create the  secret or when you update it by including it in the KMSKeyId. If you call an  API that must encrypt or decrypt SecretString or SecretBinary  using credentials from a different account then the Amazon Web Services KMS key policy must grant cross-account access to that other account's user or role for both the kms:GenerateDataKey and  kms:Decrypt operations.     Minimum permissions  To run this command, you must have the following permissions:   secretsmanager:PutSecretValue   kms:GenerateDataKey - needed only if you use a customer-managed Amazon Web Services KMS key to encrypt the secret. You do not need this permission to use the account's default Amazon Web Services managed CMK for Secrets Manager.    Related operations    To retrieve the encrypted value you store in the version of a secret, use GetSecretValue.   To create a secret, use CreateSecret.   To get the details for a secret, use DescribeSecret.   To list the versions attached to a secret, use ListSecretVersionIds.
    public func putSecretValue(_ input: PutSecretValueRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutSecretValueResponse {
        return try await self.client.execute(operation: "PutSecretValue", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Remove regions from replication.
    public func removeRegionsFromReplication(_ input: RemoveRegionsFromReplicationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RemoveRegionsFromReplicationResponse {
        return try await self.client.execute(operation: "RemoveRegionsFromReplication", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Converts an existing secret to a multi-Region secret and begins replication the secret to a list of new regions.
    public func replicateSecretToRegions(_ input: ReplicateSecretToRegionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReplicateSecretToRegionsResponse {
        return try await self.client.execute(operation: "ReplicateSecretToRegions", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Cancels the scheduled deletion of a secret by removing the DeletedDate time stamp. This makes the secret accessible to query once again.  Minimum permissions  To run this command, you must have the following permissions:   secretsmanager:RestoreSecret    Related operations    To delete a secret, use DeleteSecret.
    public func restoreSecret(_ input: RestoreSecretRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RestoreSecretResponse {
        return try await self.client.execute(operation: "RestoreSecret", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Configures and starts the asynchronous process of rotating this secret. If you include the configuration parameters, the operation sets those values for the secret and then immediately starts a rotation. If you do not include the configuration parameters, the operation starts a rotation with the values already stored in the secret. After the rotation completes, the protected service and its clients all use the new version of the secret.  This required configuration information includes the ARN of an Amazon Web Services Lambda function and optionally, the time between scheduled rotations. The Lambda rotation function creates a new version of the secret and creates or updates the credentials on the protected service to match. After testing the new credentials, the function marks the new secret with the staging label AWSCURRENT so that your clients all immediately begin to use the new version. For more information about rotating secrets and how to configure a Lambda function to rotate the secrets for your protected service, see Rotating Secrets in Amazon Web Services Secrets Manager in the Amazon Web Services Secrets Manager User Guide.  Secrets Manager schedules the next rotation when the previous  one completes. Secrets Manager schedules the date by adding the rotation interval (number of days) to the  actual date of the last rotation. The service chooses the hour within that 24-hour date window  randomly. The minute is also chosen somewhat randomly, but weighted towards the top of the hour  and influenced by a variety of factors that help distribute load.  The rotation function must end with the versions of the secret in one of two states:   The AWSPENDING and AWSCURRENT staging labels are attached to the same version of the secret, or   The AWSPENDING staging label is not attached to any version of the secret.   If the AWSPENDING staging label is present but not attached to the same version as AWSCURRENT then any later invocation of RotateSecret assumes that a previous rotation request is still in progress and returns an error.  Minimum permissions  To run this command, you must have the following permissions:   secretsmanager:RotateSecret   lambda:InvokeFunction (on the function specified in the secret's metadata)    Related operations    To list the secrets in your account, use ListSecrets.   To get the details for a version of a secret, use DescribeSecret.   To create a new version of a secret, use CreateSecret.   To attach staging labels to or remove staging labels from a version of a secret, use UpdateSecretVersionStage.
    public func rotateSecret(_ input: RotateSecretRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RotateSecretResponse {
        return try await self.client.execute(operation: "RotateSecret", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes the secret from replication and promotes the secret to a regional secret in the replica Region.
    public func stopReplicationToReplica(_ input: StopReplicationToReplicaRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopReplicationToReplicaResponse {
        return try await self.client.execute(operation: "StopReplicationToReplica", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Attaches one or more tags, each consisting of a key name and a value, to the specified secret. Tags are part of the secret's overall metadata, and are not associated with any specific version of the secret. This operation only appends tags to the existing list of tags. To remove tags, you must use UntagResource.          The following basic restrictions apply to tags:   Maximum number of tags per secret—50   Maximum key length—127 Unicode characters in UTF-8   Maximum value length—255 Unicode characters in UTF-8   Tag keys and values are case sensitive.   Do not use the aws: prefix in your tag names or values because Amazon Web Services reserves it for Amazon Web Services use. You can't edit or delete tag names or values with this  prefix. Tags with this prefix do not count against your tags per secret limit.   If you use your tagging schema across multiple services and resources, remember other services might have restrictions on allowed characters. Generally allowed characters: letters, spaces, and numbers representable in UTF-8, plus the following special characters: + - = . _ : / @.    If you use tags as part of your security strategy, then adding or removing a tag can change permissions. If successfully completing this operation would result in you losing your permissions for this secret, then the operation is blocked and returns an Access Denied error.   Minimum permissions  To run this command, you must have the following permissions:   secretsmanager:TagResource    Related operations    To remove one or more tags from the collection attached to a secret, use UntagResource.   To view the list of tags attached to a secret, use DescribeSecret.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "TagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes one or more tags from the specified secret. This operation is idempotent. If a requested tag is not attached to the secret, no error is returned and the secret metadata is unchanged.  If you use tags as part of your security strategy, then removing a tag can change permissions. If successfully completing this operation would result in you losing your permissions for this secret, then the operation is blocked and returns an Access Denied error.   Minimum permissions  To run this command, you must have the following permissions:   secretsmanager:UntagResource    Related operations    To add one or more tags to the collection attached to a secret, use TagResource.   To view the list of tags attached to a secret, use DescribeSecret.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "UntagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Modifies many of the details of the specified secret. If you include a ClientRequestToken and either SecretString or SecretBinary then it also creates a new version attached to the secret. To modify the rotation configuration of a secret, use RotateSecret instead.  The Secrets Manager console uses only the SecretString parameter and therefore limits you to encrypting and storing only a text string. To encrypt and store binary data as part of the version of a secret, you must use either the Amazon Web Services CLI or one of the Amazon Web Services SDKs.    If a version with a VersionId with the same value as the ClientRequestToken parameter already exists, the operation results in an error. You cannot modify an existing version, you can only create a new version.   If you include SecretString or SecretBinary to create a new secret version, Secrets Manager automatically attaches the staging label AWSCURRENT to the new version.       If you call an operation to encrypt or decrypt the SecretString  or SecretBinary for a secret in the same account as the calling user and that  secret doesn't specify a Amazon Web Services KMS encryption key, Secrets Manager uses the account's default  Amazon Web Services managed customer master key (CMK) with the alias aws/secretsmanager. If this key  doesn't already exist in your account then Secrets Manager creates it for you automatically. All users and roles in the same Amazon Web Services account automatically have access to use the default CMK.  Note that if an Secrets Manager API call results in Amazon Web Services creating the account's  Amazon Web Services-managed CMK, it can result in a one-time significant delay in returning the  result.   If the secret resides in a different Amazon Web Services account from the credentials calling an API that  requires encryption or decryption of the secret value then you must create and use a custom  Amazon Web Services KMS CMK because you can't access the default CMK for the account using credentials  from a different Amazon Web Services account. Store the ARN of the CMK in the secret when you create the  secret or when you update it by including it in the KMSKeyId. If you call an  API that must encrypt or decrypt SecretString or SecretBinary  using credentials from a different account then the Amazon Web Services KMS key policy must grant cross-account access to that other account's user or role for both the kms:GenerateDataKey and  kms:Decrypt operations.     Minimum permissions  To run this command, you must have the following permissions:   secretsmanager:UpdateSecret   kms:GenerateDataKey - needed only if you use a custom Amazon Web Services KMS key to encrypt the secret. You do not need this permission to use the account's Amazon Web Services managed CMK for Secrets Manager.   kms:Decrypt - needed only if you use a custom Amazon Web Services KMS key to encrypt the secret. You do not need this permission to use the account's Amazon Web Services managed CMK for Secrets Manager.    Related operations    To create a new secret, use CreateSecret.   To add only a new version to an existing secret, use PutSecretValue.   To get the details for a secret, use DescribeSecret.   To list the versions contained in a secret, use ListSecretVersionIds.
    public func updateSecret(_ input: UpdateSecretRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateSecretResponse {
        return try await self.client.execute(operation: "UpdateSecret", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Modifies the staging labels attached to a version of a secret. Staging labels are used to track a version as it progresses through the secret rotation process. You can attach a staging label to only one version of a secret at a time. If a staging label to be added is already attached to another version, then it is moved--removed from the other version first and then attached to this one. For more information about staging labels, see Staging Labels in the Amazon Web Services Secrets Manager User Guide.  The staging labels that you specify in the VersionStage parameter are added to the existing list of staging labels--they don't replace it. You can move the AWSCURRENT staging label to this version by including it in this call.  Whenever you move AWSCURRENT, Secrets Manager automatically moves the label AWSPREVIOUS to the version that AWSCURRENT was removed from.  If this action results in the last label being removed from a version, then the version is considered to be 'deprecated' and can be deleted by Secrets Manager.  Minimum permissions  To run this command, you must have the following permissions:   secretsmanager:UpdateSecretVersionStage    Related operations    To get the list of staging labels that are currently associated with a version of a secret, use  DescribeSecret and examine the SecretVersionsToStages response value.
    public func updateSecretVersionStage(_ input: UpdateSecretVersionStageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateSecretVersionStageResponse {
        return try await self.client.execute(operation: "UpdateSecretVersionStage", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Validates that the resource policy does not grant a wide range of IAM principals access to your secret. The JSON request string input and response output displays formatted code with white space and line breaks for better readability. Submit your input as a single line  JSON string. A resource-based policy is optional for secrets. The API performs three checks when validating the secret:   Sends a call to Zelkova, an automated reasoning engine, to ensure your Resource Policy does not allow broad access to your secret.   Checks for correct syntax in a policy.   Verifies the policy does not lock out a caller.
    ///   Minimum Permissions  You must have the permissions required to access the following APIs:    secretsmanager:PutResourcePolicy     secretsmanager:ValidateResourcePolicy
    public func validateResourcePolicy(_ input: ValidateResourcePolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ValidateResourcePolicyResponse {
        return try await self.client.execute(operation: "ValidateResourcePolicy", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
