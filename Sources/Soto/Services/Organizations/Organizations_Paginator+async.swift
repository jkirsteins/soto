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
extension Organizations {
    ///  Returns a list of the AWS services that you enabled to integrate with your organization. After a service on this list creates the resources that it requires for the integration, it can perform operations on your organization and its accounts. For more information about integrating other services with AWS Organizations, including the list of services that currently work with Organizations, see Integrating AWS Organizations with Other AWS Services in the AWS Organizations User Guide.  This operation can be called only from the organization's
    ///  management account or by a member account that is a delegated administrator for an AWS service.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAWSServiceAccessForOrganizationPaginator(
        _ input: ListAWSServiceAccessForOrganizationRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAWSServiceAccessForOrganizationRequest, ListAWSServiceAccessForOrganizationResponse> {
        return .init(
            input: input,
            command: listAWSServiceAccessForOrganization,
            inputKey: \ListAWSServiceAccessForOrganizationRequest.nextToken,
            outputKey: \ListAWSServiceAccessForOrganizationResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists all the accounts in the organization. To request only the accounts in a specified root or organizational unit (OU), use the ListAccountsForParent operation instead.  Always check the NextToken response parameter
    ///  for a null value when calling a List* operation. These operations can
    ///  occasionally return an empty set of results even when there are more results available. The
    ///  NextToken response parameter value is null  only
    ///  when there are no more results to display.  This operation can be called only from the organization's
    ///  management account or by a member account that is a delegated administrator for an AWS service.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAccountsPaginator(
        _ input: ListAccountsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAccountsRequest, ListAccountsResponse> {
        return .init(
            input: input,
            command: listAccounts,
            inputKey: \ListAccountsRequest.nextToken,
            outputKey: \ListAccountsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the accounts in an organization that are contained by the specified target root or organizational unit (OU). If you specify the root, you get a list of all the accounts that aren't in any OU. If you specify an OU, you get a list of all the accounts in only that OU and not in any child OUs. To get a list of all accounts in the organization, use the ListAccounts operation.  Always check the NextToken response parameter
    ///  for a null value when calling a List* operation. These operations can
    ///  occasionally return an empty set of results even when there are more results available. The
    ///  NextToken response parameter value is null  only
    ///  when there are no more results to display.  This operation can be called only from the organization's
    ///  management account or by a member account that is a delegated administrator for an AWS service.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAccountsForParentPaginator(
        _ input: ListAccountsForParentRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAccountsForParentRequest, ListAccountsForParentResponse> {
        return .init(
            input: input,
            command: listAccountsForParent,
            inputKey: \ListAccountsForParentRequest.nextToken,
            outputKey: \ListAccountsForParentResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists all of the organizational units (OUs) or accounts that are contained in the specified parent OU or root. This operation, along with ListParents enables you to traverse the tree structure that makes up this root.  Always check the NextToken response parameter
    ///  for a null value when calling a List* operation. These operations can
    ///  occasionally return an empty set of results even when there are more results available. The
    ///  NextToken response parameter value is null  only
    ///  when there are no more results to display.  This operation can be called only from the organization's
    ///  management account or by a member account that is a delegated administrator for an AWS service.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listChildrenPaginator(
        _ input: ListChildrenRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListChildrenRequest, ListChildrenResponse> {
        return .init(
            input: input,
            command: listChildren,
            inputKey: \ListChildrenRequest.nextToken,
            outputKey: \ListChildrenResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the account creation requests that match the specified status that is currently being tracked for the organization.  Always check the NextToken response parameter
    ///  for a null value when calling a List* operation. These operations can
    ///  occasionally return an empty set of results even when there are more results available. The
    ///  NextToken response parameter value is null  only
    ///  when there are no more results to display.  This operation can be called only from the organization's
    ///  management account or by a member account that is a delegated administrator for an AWS service.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listCreateAccountStatusPaginator(
        _ input: ListCreateAccountStatusRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListCreateAccountStatusRequest, ListCreateAccountStatusResponse> {
        return .init(
            input: input,
            command: listCreateAccountStatus,
            inputKey: \ListCreateAccountStatusRequest.nextToken,
            outputKey: \ListCreateAccountStatusResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the AWS accounts that are designated as delegated administrators in this organization. This operation can be called only from the organization's
    ///  management account or by a member account that is a delegated administrator for an AWS service.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listDelegatedAdministratorsPaginator(
        _ input: ListDelegatedAdministratorsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListDelegatedAdministratorsRequest, ListDelegatedAdministratorsResponse> {
        return .init(
            input: input,
            command: listDelegatedAdministrators,
            inputKey: \ListDelegatedAdministratorsRequest.nextToken,
            outputKey: \ListDelegatedAdministratorsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  List the AWS services for which the specified account is a delegated administrator. This operation can be called only from the organization's
    ///  management account or by a member account that is a delegated administrator for an AWS service.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listDelegatedServicesForAccountPaginator(
        _ input: ListDelegatedServicesForAccountRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListDelegatedServicesForAccountRequest, ListDelegatedServicesForAccountResponse> {
        return .init(
            input: input,
            command: listDelegatedServicesForAccount,
            inputKey: \ListDelegatedServicesForAccountRequest.nextToken,
            outputKey: \ListDelegatedServicesForAccountResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the current handshakes that are associated with the account of the requesting user. Handshakes that are ACCEPTED, DECLINED, or CANCELED appear in the results of this API for only 30 days after changing to that state. After that, they're deleted and no longer accessible.  Always check the NextToken response parameter
    ///  for a null value when calling a List* operation. These operations can
    ///  occasionally return an empty set of results even when there are more results available. The
    ///  NextToken response parameter value is null  only
    ///  when there are no more results to display.  This operation can be called from any account in the organization.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listHandshakesForAccountPaginator(
        _ input: ListHandshakesForAccountRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListHandshakesForAccountRequest, ListHandshakesForAccountResponse> {
        return .init(
            input: input,
            command: listHandshakesForAccount,
            inputKey: \ListHandshakesForAccountRequest.nextToken,
            outputKey: \ListHandshakesForAccountResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the handshakes that are associated with the organization that the requesting user is part of. The ListHandshakesForOrganization operation returns a list of handshake structures. Each structure contains details and status about a handshake. Handshakes that are ACCEPTED, DECLINED, or CANCELED appear in the results of this API for only 30 days after changing to that state. After that, they're deleted and no longer accessible.  Always check the NextToken response parameter
    ///  for a null value when calling a List* operation. These operations can
    ///  occasionally return an empty set of results even when there are more results available. The
    ///  NextToken response parameter value is null  only
    ///  when there are no more results to display.  This operation can be called only from the organization's
    ///  management account or by a member account that is a delegated administrator for an AWS service.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listHandshakesForOrganizationPaginator(
        _ input: ListHandshakesForOrganizationRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListHandshakesForOrganizationRequest, ListHandshakesForOrganizationResponse> {
        return .init(
            input: input,
            command: listHandshakesForOrganization,
            inputKey: \ListHandshakesForOrganizationRequest.nextToken,
            outputKey: \ListHandshakesForOrganizationResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the organizational units (OUs) in a parent organizational unit or root.  Always check the NextToken response parameter
    ///  for a null value when calling a List* operation. These operations can
    ///  occasionally return an empty set of results even when there are more results available. The
    ///  NextToken response parameter value is null  only
    ///  when there are no more results to display.  This operation can be called only from the organization's
    ///  management account or by a member account that is a delegated administrator for an AWS service.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listOrganizationalUnitsForParentPaginator(
        _ input: ListOrganizationalUnitsForParentRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListOrganizationalUnitsForParentRequest, ListOrganizationalUnitsForParentResponse> {
        return .init(
            input: input,
            command: listOrganizationalUnitsForParent,
            inputKey: \ListOrganizationalUnitsForParentRequest.nextToken,
            outputKey: \ListOrganizationalUnitsForParentResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the root or organizational units (OUs) that serve as the immediate parent of the specified child OU or account. This operation, along with ListChildren enables you to traverse the tree structure that makes up this root.  Always check the NextToken response parameter
    ///  for a null value when calling a List* operation. These operations can
    ///  occasionally return an empty set of results even when there are more results available. The
    ///  NextToken response parameter value is null  only
    ///  when there are no more results to display.  This operation can be called only from the organization's
    ///  management account or by a member account that is a delegated administrator for an AWS service.  In the current release, a child can have only a single parent.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listParentsPaginator(
        _ input: ListParentsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListParentsRequest, ListParentsResponse> {
        return .init(
            input: input,
            command: listParents,
            inputKey: \ListParentsRequest.nextToken,
            outputKey: \ListParentsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Retrieves the list of all policies in an organization of a specified type.  Always check the NextToken response parameter
    ///  for a null value when calling a List* operation. These operations can
    ///  occasionally return an empty set of results even when there are more results available. The
    ///  NextToken response parameter value is null  only
    ///  when there are no more results to display.  This operation can be called only from the organization's
    ///  management account or by a member account that is a delegated administrator for an AWS service.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listPoliciesPaginator(
        _ input: ListPoliciesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListPoliciesRequest, ListPoliciesResponse> {
        return .init(
            input: input,
            command: listPolicies,
            inputKey: \ListPoliciesRequest.nextToken,
            outputKey: \ListPoliciesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the policies that are directly attached to the specified target root, organizational unit (OU), or account. You must specify the policy type that you want included in the returned list.  Always check the NextToken response parameter
    ///  for a null value when calling a List* operation. These operations can
    ///  occasionally return an empty set of results even when there are more results available. The
    ///  NextToken response parameter value is null  only
    ///  when there are no more results to display.  This operation can be called only from the organization's
    ///  management account or by a member account that is a delegated administrator for an AWS service.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listPoliciesForTargetPaginator(
        _ input: ListPoliciesForTargetRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListPoliciesForTargetRequest, ListPoliciesForTargetResponse> {
        return .init(
            input: input,
            command: listPoliciesForTarget,
            inputKey: \ListPoliciesForTargetRequest.nextToken,
            outputKey: \ListPoliciesForTargetResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the roots that are defined in the current organization.  Always check the NextToken response parameter
    ///  for a null value when calling a List* operation. These operations can
    ///  occasionally return an empty set of results even when there are more results available. The
    ///  NextToken response parameter value is null  only
    ///  when there are no more results to display.  This operation can be called only from the organization's
    ///  management account or by a member account that is a delegated administrator for an AWS service.  Policy types can be enabled and disabled in roots. This is distinct from whether they're available in the organization. When you enable all features, you make policy types available for use in that organization. Individual policy types can then be enabled and disabled in a root. To see the availability of a policy type in an organization, use DescribeOrganization.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listRootsPaginator(
        _ input: ListRootsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListRootsRequest, ListRootsResponse> {
        return .init(
            input: input,
            command: listRoots,
            inputKey: \ListRootsRequest.nextToken,
            outputKey: \ListRootsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists tags that are attached to the specified resource. You can attach tags to the following resources in AWS Organizations.   AWS account   Organization root   Organizational unit (OU)   Policy (any type)   This operation can be called only from the organization's
    ///  management account or by a member account that is a delegated administrator for an AWS service.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listTagsForResourcePaginator(
        _ input: ListTagsForResourceRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListTagsForResourceRequest, ListTagsForResourceResponse> {
        return .init(
            input: input,
            command: listTagsForResource,
            inputKey: \ListTagsForResourceRequest.nextToken,
            outputKey: \ListTagsForResourceResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists all the roots, organizational units (OUs), and accounts that the specified policy is attached to.  Always check the NextToken response parameter
    ///  for a null value when calling a List* operation. These operations can
    ///  occasionally return an empty set of results even when there are more results available. The
    ///  NextToken response parameter value is null  only
    ///  when there are no more results to display.  This operation can be called only from the organization's
    ///  management account or by a member account that is a delegated administrator for an AWS service.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listTargetsForPolicyPaginator(
        _ input: ListTargetsForPolicyRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListTargetsForPolicyRequest, ListTargetsForPolicyResponse> {
        return .init(
            input: input,
            command: listTargetsForPolicy,
            inputKey: \ListTargetsForPolicyRequest.nextToken,
            outputKey: \ListTargetsForPolicyResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
