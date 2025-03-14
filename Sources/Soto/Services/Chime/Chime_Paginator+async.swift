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
extension Chime {
    ///  Lists the Amazon Chime accounts under the administrator's AWS account. You can filter accounts by account name prefix. To find out which Amazon Chime account a user belongs to, you can filter by the user's email address, which returns one account result.
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

    ///  Returns a list of the administrators in the AppInstance.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAppInstanceAdminsPaginator(
        _ input: ListAppInstanceAdminsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAppInstanceAdminsRequest, ListAppInstanceAdminsResponse> {
        return .init(
            input: input,
            command: listAppInstanceAdmins,
            inputKey: \ListAppInstanceAdminsRequest.nextToken,
            outputKey: \ListAppInstanceAdminsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  List all AppInstanceUsers created under a single AppInstance.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAppInstanceUsersPaginator(
        _ input: ListAppInstanceUsersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAppInstanceUsersRequest, ListAppInstanceUsersResponse> {
        return .init(
            input: input,
            command: listAppInstanceUsers,
            inputKey: \ListAppInstanceUsersRequest.nextToken,
            outputKey: \ListAppInstanceUsersResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists all Amazon Chime AppInstances created under a single AWS account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAppInstancesPaginator(
        _ input: ListAppInstancesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAppInstancesRequest, ListAppInstancesResponse> {
        return .init(
            input: input,
            command: listAppInstances,
            inputKey: \ListAppInstancesRequest.nextToken,
            outputKey: \ListAppInstancesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the attendees for the specified Amazon Chime SDK meeting. For more information about the Amazon Chime SDK, see
    ///  Using the Amazon Chime SDK
    ///  in the Amazon Chime Developer Guide.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAttendeesPaginator(
        _ input: ListAttendeesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAttendeesRequest, ListAttendeesResponse> {
        return .init(
            input: input,
            command: listAttendees,
            inputKey: \ListAttendeesRequest.nextToken,
            outputKey: \ListAttendeesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the bots associated with the administrator's Amazon Chime Enterprise account ID.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listBotsPaginator(
        _ input: ListBotsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListBotsRequest, ListBotsResponse> {
        return .init(
            input: input,
            command: listBots,
            inputKey: \ListBotsRequest.nextToken,
            outputKey: \ListBotsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists all the users banned from a particular channel.
    ///
    ///   The x-amz-chime-bearer request header is mandatory. Use the AppInstanceUserArn of the user that makes the API call as the value in the header.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listChannelBansPaginator(
        _ input: ListChannelBansRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListChannelBansRequest, ListChannelBansResponse> {
        return .init(
            input: input,
            command: listChannelBans,
            inputKey: \ListChannelBansRequest.nextToken,
            outputKey: \ListChannelBansResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists all channel memberships in a channel.
    ///
    ///   The x-amz-chime-bearer request header is mandatory. Use the AppInstanceUserArn of the user that makes the API call as the value in the header.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listChannelMembershipsPaginator(
        _ input: ListChannelMembershipsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListChannelMembershipsRequest, ListChannelMembershipsResponse> {
        return .init(
            input: input,
            command: listChannelMemberships,
            inputKey: \ListChannelMembershipsRequest.nextToken,
            outputKey: \ListChannelMembershipsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///   Lists all channels that a particular AppInstanceUser is a part of. Only an AppInstanceAdmin can call the API with a user ARN that is not their own.
    ///    The x-amz-chime-bearer request header is mandatory. Use the AppInstanceUserArn of the user that makes the API call as the value in the header.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listChannelMembershipsForAppInstanceUserPaginator(
        _ input: ListChannelMembershipsForAppInstanceUserRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListChannelMembershipsForAppInstanceUserRequest, ListChannelMembershipsForAppInstanceUserResponse> {
        return .init(
            input: input,
            command: listChannelMembershipsForAppInstanceUser,
            inputKey: \ListChannelMembershipsForAppInstanceUserRequest.nextToken,
            outputKey: \ListChannelMembershipsForAppInstanceUserResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  List all the messages in a channel. Returns a paginated list of ChannelMessages. By default, sorted by creation timestamp in descending order.  Redacted messages appear in the results as empty, since they are only redacted, not deleted. Deleted messages do not appear in the results. This action always returns the latest version of an edited message. Also, the x-amz-chime-bearer request header is mandatory. Use the AppInstanceUserArn of the user that makes the API call as the value in the header.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listChannelMessagesPaginator(
        _ input: ListChannelMessagesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListChannelMessagesRequest, ListChannelMessagesResponse> {
        return .init(
            input: input,
            command: listChannelMessages,
            inputKey: \ListChannelMessagesRequest.nextToken,
            outputKey: \ListChannelMessagesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists all the moderators for a channel.  The x-amz-chime-bearer request header is mandatory. Use the AppInstanceUserArn of the user that makes the API call as the value in the header.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listChannelModeratorsPaginator(
        _ input: ListChannelModeratorsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListChannelModeratorsRequest, ListChannelModeratorsResponse> {
        return .init(
            input: input,
            command: listChannelModerators,
            inputKey: \ListChannelModeratorsRequest.nextToken,
            outputKey: \ListChannelModeratorsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists all Channels created under a single Chime App as a paginated list. You can specify filters to narrow results.
    ///    Functionality & restrictions    Use privacy = PUBLIC to retrieve all public channels in the account.   Only an AppInstanceAdmin can set privacy = PRIVATE to list the private channels in an account.
    ///    The x-amz-chime-bearer request header is mandatory. Use the AppInstanceUserArn of the user that makes the API call as the value in the header.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listChannelsPaginator(
        _ input: ListChannelsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListChannelsRequest, ListChannelsResponse> {
        return .init(
            input: input,
            command: listChannels,
            inputKey: \ListChannelsRequest.nextToken,
            outputKey: \ListChannelsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  A list of the channels moderated by an AppInstanceUser.
    ///    The x-amz-chime-bearer request header is mandatory. Use the AppInstanceUserArn of the user that makes the API call as the value in the header.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listChannelsModeratedByAppInstanceUserPaginator(
        _ input: ListChannelsModeratedByAppInstanceUserRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListChannelsModeratedByAppInstanceUserRequest, ListChannelsModeratedByAppInstanceUserResponse> {
        return .init(
            input: input,
            command: listChannelsModeratedByAppInstanceUser,
            inputKey: \ListChannelsModeratedByAppInstanceUserRequest.nextToken,
            outputKey: \ListChannelsModeratedByAppInstanceUserResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of media capture pipelines.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listMediaCapturePipelinesPaginator(
        _ input: ListMediaCapturePipelinesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListMediaCapturePipelinesRequest, ListMediaCapturePipelinesResponse> {
        return .init(
            input: input,
            command: listMediaCapturePipelines,
            inputKey: \ListMediaCapturePipelinesRequest.nextToken,
            outputKey: \ListMediaCapturePipelinesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists up to 100 active Amazon Chime SDK meetings. For more information about the Amazon Chime SDK, see
    ///  Using the Amazon Chime SDK
    ///  in the Amazon Chime Developer Guide.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listMeetingsPaginator(
        _ input: ListMeetingsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListMeetingsRequest, ListMeetingsResponse> {
        return .init(
            input: input,
            command: listMeetings,
            inputKey: \ListMeetingsRequest.nextToken,
            outputKey: \ListMeetingsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the phone number orders for the administrator's Amazon Chime account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listPhoneNumberOrdersPaginator(
        _ input: ListPhoneNumberOrdersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListPhoneNumberOrdersRequest, ListPhoneNumberOrdersResponse> {
        return .init(
            input: input,
            command: listPhoneNumberOrders,
            inputKey: \ListPhoneNumberOrdersRequest.nextToken,
            outputKey: \ListPhoneNumberOrdersResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the phone numbers for the specified Amazon Chime account, Amazon Chime user, Amazon Chime Voice Connector, or Amazon Chime Voice Connector group.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listPhoneNumbersPaginator(
        _ input: ListPhoneNumbersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListPhoneNumbersRequest, ListPhoneNumbersResponse> {
        return .init(
            input: input,
            command: listPhoneNumbers,
            inputKey: \ListPhoneNumbersRequest.nextToken,
            outputKey: \ListPhoneNumbersResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the proxy sessions for the specified Amazon Chime Voice Connector.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listProxySessionsPaginator(
        _ input: ListProxySessionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListProxySessionsRequest, ListProxySessionsResponse> {
        return .init(
            input: input,
            command: listProxySessions,
            inputKey: \ListProxySessionsRequest.nextToken,
            outputKey: \ListProxySessionsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the membership details for the specified room in an Amazon Chime Enterprise account, such as the members' IDs, email addresses, and names.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listRoomMembershipsPaginator(
        _ input: ListRoomMembershipsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListRoomMembershipsRequest, ListRoomMembershipsResponse> {
        return .init(
            input: input,
            command: listRoomMemberships,
            inputKey: \ListRoomMembershipsRequest.nextToken,
            outputKey: \ListRoomMembershipsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the room details for the specified Amazon Chime Enterprise account. Optionally, filter the results by a member ID (user ID or bot ID) to see a list of rooms that the member belongs to.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listRoomsPaginator(
        _ input: ListRoomsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListRoomsRequest, ListRoomsResponse> {
        return .init(
            input: input,
            command: listRooms,
            inputKey: \ListRoomsRequest.nextToken,
            outputKey: \ListRoomsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the SIP media applications under the administrator's AWS account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listSipMediaApplicationsPaginator(
        _ input: ListSipMediaApplicationsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListSipMediaApplicationsRequest, ListSipMediaApplicationsResponse> {
        return .init(
            input: input,
            command: listSipMediaApplications,
            inputKey: \ListSipMediaApplicationsRequest.nextToken,
            outputKey: \ListSipMediaApplicationsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the SIP rules under the administrator's AWS account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listSipRulesPaginator(
        _ input: ListSipRulesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListSipRulesRequest, ListSipRulesResponse> {
        return .init(
            input: input,
            command: listSipRules,
            inputKey: \ListSipRulesRequest.nextToken,
            outputKey: \ListSipRulesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the users that belong to the specified Amazon Chime account. You can specify an email address to list only the user that the email address belongs to.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listUsersPaginator(
        _ input: ListUsersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListUsersRequest, ListUsersResponse> {
        return .init(
            input: input,
            command: listUsers,
            inputKey: \ListUsersRequest.nextToken,
            outputKey: \ListUsersResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the Amazon Chime Voice Connector groups for the administrator's AWS account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listVoiceConnectorGroupsPaginator(
        _ input: ListVoiceConnectorGroupsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListVoiceConnectorGroupsRequest, ListVoiceConnectorGroupsResponse> {
        return .init(
            input: input,
            command: listVoiceConnectorGroups,
            inputKey: \ListVoiceConnectorGroupsRequest.nextToken,
            outputKey: \ListVoiceConnectorGroupsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists the Amazon Chime Voice Connectors for the administrator's AWS account.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listVoiceConnectorsPaginator(
        _ input: ListVoiceConnectorsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListVoiceConnectorsRequest, ListVoiceConnectorsResponse> {
        return .init(
            input: input,
            command: listVoiceConnectors,
            inputKey: \ListVoiceConnectorsRequest.nextToken,
            outputKey: \ListVoiceConnectorsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Searches for phone numbers that can be ordered. For US numbers, provide at least one of the following search filters: AreaCode, City, State, or TollFreePrefix. If you provide City, you must also provide State. Numbers outside the US only support the PhoneNumberType filter, which you must use.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func searchAvailablePhoneNumbersPaginator(
        _ input: SearchAvailablePhoneNumbersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<SearchAvailablePhoneNumbersRequest, SearchAvailablePhoneNumbersResponse> {
        return .init(
            input: input,
            command: searchAvailablePhoneNumbers,
            inputKey: \SearchAvailablePhoneNumbersRequest.nextToken,
            outputKey: \SearchAvailablePhoneNumbersResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
