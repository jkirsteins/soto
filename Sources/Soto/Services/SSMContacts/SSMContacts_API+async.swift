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
extension SSMContacts {
    // MARK: Async API Calls

    /// Used to acknowledge an engagement to a contact channel during an incident.
    public func acceptPage(_ input: AcceptPageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AcceptPageResult {
        return try await self.client.execute(operation: "AcceptPage", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Activates a contact's contact channel. Incident Manager can't engage a contact until the contact channel has been activated.
    public func activateContactChannel(_ input: ActivateContactChannelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ActivateContactChannelResult {
        return try await self.client.execute(operation: "ActivateContactChannel", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Contacts are either the contacts that Incident Manager engages during an incident or the escalation plans that Incident Manager uses to engage contacts in phases during an incident.
    public func createContact(_ input: CreateContactRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateContactResult {
        return try await self.client.execute(operation: "CreateContact", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// A contact channel is the method that Incident Manager uses to engage your contact.
    public func createContactChannel(_ input: CreateContactChannelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateContactChannelResult {
        return try await self.client.execute(operation: "CreateContactChannel", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// To no longer receive Incident Manager engagements to a contact channel, you can deactivate the channel.
    public func deactivateContactChannel(_ input: DeactivateContactChannelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeactivateContactChannelResult {
        return try await self.client.execute(operation: "DeactivateContactChannel", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// To remove a contact from Incident Manager, you can delete the contact. Deleting a contact removes them from all escalation plans and related response plans. Deleting an escalation plan removes it from all related response plans. You will have to recreate the contact and its contact channels before you can use it again.
    public func deleteContact(_ input: DeleteContactRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteContactResult {
        return try await self.client.execute(operation: "DeleteContact", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// To no longer receive engagements on a contact channel, you can delete the channel from a contact. Deleting the contact channel removes it from the contact's engagement plan. If you delete the only contact channel for a contact, you won't be able to engage that contact during an incident.
    public func deleteContactChannel(_ input: DeleteContactChannelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteContactChannelResult {
        return try await self.client.execute(operation: "DeleteContactChannel", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Incident Manager uses engagements to engage contacts and escalation plans during an incident. Use this command to describe the engagement that occurred during an incident.
    public func describeEngagement(_ input: DescribeEngagementRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEngagementResult {
        return try await self.client.execute(operation: "DescribeEngagement", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists details of the engagement to a contact channel.
    public func describePage(_ input: DescribePageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePageResult {
        return try await self.client.execute(operation: "DescribePage", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves information about the specified contact or escalation plan.
    public func getContact(_ input: GetContactRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetContactResult {
        return try await self.client.execute(operation: "GetContact", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List details about a specific contact channel.
    public func getContactChannel(_ input: GetContactChannelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetContactChannelResult {
        return try await self.client.execute(operation: "GetContactChannel", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the resource policies attached to the specified contact or escalation plan.
    public func getContactPolicy(_ input: GetContactPolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetContactPolicyResult {
        return try await self.client.execute(operation: "GetContactPolicy", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all contact channels for the specified contact.
    public func listContactChannels(_ input: ListContactChannelsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListContactChannelsResult {
        return try await self.client.execute(operation: "ListContactChannels", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all contacts and escalation plans in Incident Manager.
    public func listContacts(_ input: ListContactsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListContactsResult {
        return try await self.client.execute(operation: "ListContacts", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all engagements that have happened in an incident.
    public func listEngagements(_ input: ListEngagementsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListEngagementsResult {
        return try await self.client.execute(operation: "ListEngagements", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all of the engagements to contact channels that have been acknowledged.
    public func listPageReceipts(_ input: ListPageReceiptsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListPageReceiptsResult {
        return try await self.client.execute(operation: "ListPageReceipts", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the engagements to a contact's contact channels.
    public func listPagesByContact(_ input: ListPagesByContactRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListPagesByContactResult {
        return try await self.client.execute(operation: "ListPagesByContact", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the engagements to contact channels that occurred by engaging a contact.
    public func listPagesByEngagement(_ input: ListPagesByEngagementRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListPagesByEngagementResult {
        return try await self.client.execute(operation: "ListPagesByEngagement", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the tags of an escalation plan or contact.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResult {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds a resource to the specified contact or escalation plan.
    public func putContactPolicy(_ input: PutContactPolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutContactPolicyResult {
        return try await self.client.execute(operation: "PutContactPolicy", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Sends an activation code to a contact channel. The contact can use this code to activate the contact channel in the console or with the ActivateChannel operation. Incident Manager can't engage a contact channel until it has been activated.
    public func sendActivationCode(_ input: SendActivationCodeRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SendActivationCodeResult {
        return try await self.client.execute(operation: "SendActivationCode", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Starts an engagement to a contact or escalation plan. The engagement engages each contact specified in the incident.
    public func startEngagement(_ input: StartEngagementRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartEngagementResult {
        return try await self.client.execute(operation: "StartEngagement", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Stops an engagement before it finishes the final stage of the escalation plan or engagement plan. Further contacts aren't engaged.
    public func stopEngagement(_ input: StopEngagementRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopEngagementResult {
        return try await self.client.execute(operation: "StopEngagement", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Tags a contact or escalation plan. You can tag only contacts and escalation plans in the first region of your replication set.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResult {
        return try await self.client.execute(operation: "TagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes tags from the specified resource.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResult {
        return try await self.client.execute(operation: "UntagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the contact or escalation plan specified.
    public func updateContact(_ input: UpdateContactRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateContactResult {
        return try await self.client.execute(operation: "UpdateContact", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a contact's contact channel.
    public func updateContactChannel(_ input: UpdateContactChannelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateContactChannelResult {
        return try await self.client.execute(operation: "UpdateContactChannel", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
