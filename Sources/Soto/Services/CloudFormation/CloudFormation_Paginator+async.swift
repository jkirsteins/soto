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
extension CloudFormation {
    ///  Retrieves your account's CloudFormation limits, such as the maximum number of stacks that you can create in your account. For more information about account limits, see CloudFormation Limits in the CloudFormation User Guide.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeAccountLimitsPaginator(
        _ input: DescribeAccountLimitsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeAccountLimitsInput, DescribeAccountLimitsOutput> {
        return .init(
            input: input,
            command: describeAccountLimits,
            inputKey: \DescribeAccountLimitsInput.nextToken,
            outputKey: \DescribeAccountLimitsOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns all stack related events for a specified stack in reverse chronological order. For more information about a stack's event history, go to Stacks in the CloudFormation User Guide.  You can list events for stacks that have failed to create or have been deleted by specifying the unique stack identifier (stack ID).
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeStackEventsPaginator(
        _ input: DescribeStackEventsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeStackEventsInput, DescribeStackEventsOutput> {
        return .init(
            input: input,
            command: describeStackEvents,
            inputKey: \DescribeStackEventsInput.nextToken,
            outputKey: \DescribeStackEventsOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns drift information for the resources that have been checked for drift in the specified stack. This includes actual and expected configuration values for resources where CloudFormation detects configuration drift. For a given stack, there will be one StackResourceDrift for each stack resource that has been checked for drift. Resources that haven't yet been checked for drift are not included. Resources that do not currently support drift detection are not checked, and so not included. For a list of resources that support drift detection, see Resources that Support Drift Detection. Use DetectStackResourceDrift to detect drift on individual resources, or DetectStackDrift to detect drift on all supported resources for a given stack.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeStackResourceDriftsPaginator(
        _ input: DescribeStackResourceDriftsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeStackResourceDriftsInput, DescribeStackResourceDriftsOutput> {
        return .init(
            input: input,
            command: describeStackResourceDrifts,
            inputKey: \DescribeStackResourceDriftsInput.nextToken,
            outputKey: \DescribeStackResourceDriftsOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns the description for the specified stack; if no stack name was specified, then it returns the description for all the stacks created.  If the stack does not exist, an ValidationError is returned.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func describeStacksPaginator(
        _ input: DescribeStacksInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<DescribeStacksInput, DescribeStacksOutput> {
        return .init(
            input: input,
            command: describeStacks,
            inputKey: \DescribeStacksInput.nextToken,
            outputKey: \DescribeStacksOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns the ID and status of each active change set for a stack. For example, CloudFormation lists change sets that are in the CREATE_IN_PROGRESS or CREATE_PENDING state.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listChangeSetsPaginator(
        _ input: ListChangeSetsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListChangeSetsInput, ListChangeSetsOutput> {
        return .init(
            input: input,
            command: listChangeSets,
            inputKey: \ListChangeSetsInput.nextToken,
            outputKey: \ListChangeSetsOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists all exported output values in the account and Region in which you call this action. Use this action to see the exported output values that you can import into other stacks. To import values, use the  Fn::ImportValue function. For more information, see  CloudFormation Export Stack Output Values.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listExportsPaginator(
        _ input: ListExportsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListExportsInput, ListExportsOutput> {
        return .init(
            input: input,
            command: listExports,
            inputKey: \ListExportsInput.nextToken,
            outputKey: \ListExportsOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists all stacks that are importing an exported output value. To modify or remove an exported output value, first use this action to see which stacks are using it. To see the exported output values in your account, see ListExports. For more information about importing an exported output value, see the  Fn::ImportValue function.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listImportsPaginator(
        _ input: ListImportsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListImportsInput, ListImportsOutput> {
        return .init(
            input: input,
            command: listImports,
            inputKey: \ListImportsInput.nextToken,
            outputKey: \ListImportsOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns summary information about stack instances that are associated with the specified stack set. You can filter for stack instances that are associated with a specific Amazon Web Services account name or Region, or that have a specific status.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listStackInstancesPaginator(
        _ input: ListStackInstancesInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListStackInstancesInput, ListStackInstancesOutput> {
        return .init(
            input: input,
            command: listStackInstances,
            inputKey: \ListStackInstancesInput.nextToken,
            outputKey: \ListStackInstancesOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns descriptions of all resources of the specified stack. For deleted stacks, ListStackResources returns resource information for up to 90 days after the stack has been deleted.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listStackResourcesPaginator(
        _ input: ListStackResourcesInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListStackResourcesInput, ListStackResourcesOutput> {
        return .init(
            input: input,
            command: listStackResources,
            inputKey: \ListStackResourcesInput.nextToken,
            outputKey: \ListStackResourcesOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns summary information about the results of a stack set operation.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listStackSetOperationResultsPaginator(
        _ input: ListStackSetOperationResultsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListStackSetOperationResultsInput, ListStackSetOperationResultsOutput> {
        return .init(
            input: input,
            command: listStackSetOperationResults,
            inputKey: \ListStackSetOperationResultsInput.nextToken,
            outputKey: \ListStackSetOperationResultsOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns summary information about operations performed on a stack set.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listStackSetOperationsPaginator(
        _ input: ListStackSetOperationsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListStackSetOperationsInput, ListStackSetOperationsOutput> {
        return .init(
            input: input,
            command: listStackSetOperations,
            inputKey: \ListStackSetOperationsInput.nextToken,
            outputKey: \ListStackSetOperationsOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns summary information about stack sets that are associated with the user.   [Self-managed permissions] If you set the CallAs parameter to SELF while signed in to your Amazon Web Services account, ListStackSets returns all self-managed stack sets in your Amazon Web Services account.   [Service-managed permissions] If you set the CallAs parameter to SELF while signed in to the organization's management account, ListStackSets returns all stack sets in the management account.   [Service-managed permissions] If you set the CallAs parameter to DELEGATED_ADMIN while signed in to your member account, ListStackSets returns all stack sets with service-managed permissions in the management account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listStackSetsPaginator(
        _ input: ListStackSetsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListStackSetsInput, ListStackSetsOutput> {
        return .init(
            input: input,
            command: listStackSets,
            inputKey: \ListStackSetsInput.nextToken,
            outputKey: \ListStackSetsOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns the summary information for stacks whose status matches the specified StackStatusFilter. Summary information for stacks that have been deleted is kept for 90 days after the stack is deleted. If no StackStatusFilter is specified, summary information for all stacks is returned (including existing stacks and stacks that have been deleted).
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listStacksPaginator(
        _ input: ListStacksInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListStacksInput, ListStacksOutput> {
        return .init(
            input: input,
            command: listStacks,
            inputKey: \ListStacksInput.nextToken,
            outputKey: \ListStacksOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of registration tokens for the specified extension(s).
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listTypeRegistrationsPaginator(
        _ input: ListTypeRegistrationsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListTypeRegistrationsInput, ListTypeRegistrationsOutput> {
        return .init(
            input: input,
            command: listTypeRegistrations,
            inputKey: \ListTypeRegistrationsInput.nextToken,
            outputKey: \ListTypeRegistrationsOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns summary information about the versions of an extension.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listTypeVersionsPaginator(
        _ input: ListTypeVersionsInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListTypeVersionsInput, ListTypeVersionsOutput> {
        return .init(
            input: input,
            command: listTypeVersions,
            inputKey: \ListTypeVersionsInput.nextToken,
            outputKey: \ListTypeVersionsOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns summary information about extension that have been registered with CloudFormation.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listTypesPaginator(
        _ input: ListTypesInput,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListTypesInput, ListTypesOutput> {
        return .init(
            input: input,
            command: listTypes,
            inputKey: \ListTypesInput.nextToken,
            outputKey: \ListTypesOutput.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
