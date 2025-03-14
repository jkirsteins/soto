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
extension KMS {
    ///  Gets a list of aliases in the caller's Amazon Web Services account and region. For more information about aliases, see CreateAlias. By default, the ListAliases operation returns all aliases in the account and region. To get only the aliases associated with a particular KMS key, use the KeyId parameter. The ListAliases response can include aliases that you created and associated with your customer managed keys, and aliases that Amazon Web Services created and associated with Amazon Web Services managed keys in your account. You can recognize Amazon Web Services aliases because their names have the format aws/, such as aws/dynamodb. The response might also include aliases that have no TargetKeyId field. These are predefined aliases that Amazon Web Services has created but has not yet associated with a KMS key. Aliases that Amazon Web Services creates in your account, including predefined aliases, do not count against your KMS aliases quota.  Cross-account use: No. ListAliases does not return aliases in other Amazon Web Services accounts.
    ///    Required permissions: kms:ListAliases (IAM policy) For details, see Controlling access to aliases in the Key Management Service Developer Guide.  Related operations:     CreateAlias     DeleteAlias     UpdateAlias
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAliasesPaginator(
        _ input: ListAliasesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAliasesRequest, ListAliasesResponse> {
        return .init(
            input: input,
            command: listAliases,
            inputKey: \ListAliasesRequest.marker,
            outputKey: \ListAliasesResponse.nextMarker,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets a list of all grants for the specified KMS key.  You must specify the KMS key in all requests. You can filter the grant list by grant ID or grantee principal. For detailed information about grants, including grant terminology, see Using grants in the  Key Management Service Developer Guide . For examples of working with grants in several programming languages, see Programming grants.   The GranteePrincipal field in the ListGrants response usually contains the user or role designated as the grantee principal in the grant. However, when the grantee principal in the grant is an Amazon Web Services service, the GranteePrincipal field contains the service principal, which might represent several different grantee principals.   Cross-account use: Yes. To perform this operation on a KMS key in a different Amazon Web Services account, specify the key ARN in the value of the KeyId parameter.
    ///    Required permissions: kms:ListGrants (key policy)  Related operations:     CreateGrant     ListRetirableGrants     RetireGrant     RevokeGrant
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listGrantsPaginator(
        _ input: ListGrantsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListGrantsRequest, ListGrantsResponse> {
        return .init(
            input: input,
            command: listGrants,
            inputKey: \ListGrantsRequest.marker,
            outputKey: \ListGrantsResponse.nextMarker,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets the names of the key policies that are attached to a KMS key. This operation is designed to get policy names that you can use in a GetKeyPolicy operation. However, the only valid policy name is default.   Cross-account use: No. You cannot perform this operation on a KMS key in a different Amazon Web Services account.
    ///    Required permissions: kms:ListKeyPolicies (key policy)  Related operations:     GetKeyPolicy     PutKeyPolicy
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listKeyPoliciesPaginator(
        _ input: ListKeyPoliciesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListKeyPoliciesRequest, ListKeyPoliciesResponse> {
        return .init(
            input: input,
            command: listKeyPolicies,
            inputKey: \ListKeyPoliciesRequest.marker,
            outputKey: \ListKeyPoliciesResponse.nextMarker,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Gets a list of all KMS keys in the caller's Amazon Web Services account and Region.  Cross-account use: No. You cannot perform this operation on a KMS key in a different Amazon Web Services account.
    ///    Required permissions: kms:ListKeys (IAM policy)  Related operations:     CreateKey     DescribeKey     ListAliases     ListResourceTags
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listKeysPaginator(
        _ input: ListKeysRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListKeysRequest, ListKeysResponse> {
        return .init(
            input: input,
            command: listKeys,
            inputKey: \ListKeysRequest.marker,
            outputKey: \ListKeysResponse.nextMarker,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
