//===----------------------------------------------------------------------===//
//
// This source file is part of the AWSSDKSwift open source project
//
// Copyright (c) 2017-2020 the AWSSDKSwift project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of AWSSDKSwift project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/main/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import AWSSDKSwiftCore

/*
Client object for interacting with AWS MediaLive service.

API for AWS Elemental MediaLive
*/
public struct MediaLive: AWSService {

    // MARK: Member variables

    public let client: AWSClient
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the MediaLive client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - timeout: Timeout value for HTTP requests
    public init(
        client: AWSClient,
        region: AWSSDKSwiftCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        timeout: TimeAmount? = nil,
        byteBufferAllocator: ByteBufferAllocator = ByteBufferAllocator(),
        options: AWSServiceConfig.Options = []
    ) {
        self.client = client
        self.config = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            service: "medialive",
            serviceProtocol: .restjson,
            apiVersion: "2017-10-14",
            endpoint: endpoint,
            possibleErrorTypes: [MediaLiveErrorType.self],
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }
    
    // MARK: API Calls

    ///  Update a channel schedule
    public func batchUpdateSchedule(_ input: BatchUpdateScheduleRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<BatchUpdateScheduleResponse> {
        return self.client.execute(operation: "BatchUpdateSchedule", path: "/prod/channels/{channelId}/schedule", httpMethod: .PUT, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a new channel
    public func createChannel(_ input: CreateChannelRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateChannelResponse> {
        return self.client.execute(operation: "CreateChannel", path: "/prod/channels", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Create an input
    public func createInput(_ input: CreateInputRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateInputResponse> {
        return self.client.execute(operation: "CreateInput", path: "/prod/inputs", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a Input Security Group
    public func createInputSecurityGroup(_ input: CreateInputSecurityGroupRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateInputSecurityGroupResponse> {
        return self.client.execute(operation: "CreateInputSecurityGroup", path: "/prod/inputSecurityGroups", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Create a new multiplex.
    public func createMultiplex(_ input: CreateMultiplexRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateMultiplexResponse> {
        return self.client.execute(operation: "CreateMultiplex", path: "/prod/multiplexes", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Create a new program in the multiplex.
    public func createMultiplexProgram(_ input: CreateMultiplexProgramRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateMultiplexProgramResponse> {
        return self.client.execute(operation: "CreateMultiplexProgram", path: "/prod/multiplexes/{multiplexId}/programs", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Create tags for a resource
    @discardableResult public func createTags(_ input: CreateTagsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "CreateTags", path: "/prod/tags/{resource-arn}", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Starts deletion of channel. The associated outputs are also deleted.
    public func deleteChannel(_ input: DeleteChannelRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteChannelResponse> {
        return self.client.execute(operation: "DeleteChannel", path: "/prod/channels/{channelId}", httpMethod: .DELETE, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes the input end point
    public func deleteInput(_ input: DeleteInputRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteInputResponse> {
        return self.client.execute(operation: "DeleteInput", path: "/prod/inputs/{inputId}", httpMethod: .DELETE, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Deletes an Input Security Group
    public func deleteInputSecurityGroup(_ input: DeleteInputSecurityGroupRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteInputSecurityGroupResponse> {
        return self.client.execute(operation: "DeleteInputSecurityGroup", path: "/prod/inputSecurityGroups/{inputSecurityGroupId}", httpMethod: .DELETE, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Delete a multiplex. The multiplex must be idle.
    public func deleteMultiplex(_ input: DeleteMultiplexRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteMultiplexResponse> {
        return self.client.execute(operation: "DeleteMultiplex", path: "/prod/multiplexes/{multiplexId}", httpMethod: .DELETE, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Delete a program from a multiplex.
    public func deleteMultiplexProgram(_ input: DeleteMultiplexProgramRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteMultiplexProgramResponse> {
        return self.client.execute(operation: "DeleteMultiplexProgram", path: "/prod/multiplexes/{multiplexId}/programs/{programName}", httpMethod: .DELETE, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Delete an expired reservation.
    public func deleteReservation(_ input: DeleteReservationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteReservationResponse> {
        return self.client.execute(operation: "DeleteReservation", path: "/prod/reservations/{reservationId}", httpMethod: .DELETE, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Delete all schedule actions on a channel.
    public func deleteSchedule(_ input: DeleteScheduleRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteScheduleResponse> {
        return self.client.execute(operation: "DeleteSchedule", path: "/prod/channels/{channelId}/schedule", httpMethod: .DELETE, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Removes tags for a resource
    @discardableResult public func deleteTags(_ input: DeleteTagsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<Void> {
        return self.client.execute(operation: "DeleteTags", path: "/prod/tags/{resource-arn}", httpMethod: .DELETE, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets details about a channel
    public func describeChannel(_ input: DescribeChannelRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeChannelResponse> {
        return self.client.execute(operation: "DescribeChannel", path: "/prod/channels/{channelId}", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Produces details about an input
    public func describeInput(_ input: DescribeInputRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeInputResponse> {
        return self.client.execute(operation: "DescribeInput", path: "/prod/inputs/{inputId}", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets the details for the input device
    public func describeInputDevice(_ input: DescribeInputDeviceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeInputDeviceResponse> {
        return self.client.execute(operation: "DescribeInputDevice", path: "/prod/inputDevices/{inputDeviceId}", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Get the latest thumbnail data for the input device.
    public func describeInputDeviceThumbnail(_ input: DescribeInputDeviceThumbnailRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeInputDeviceThumbnailResponse> {
        return self.client.execute(operation: "DescribeInputDeviceThumbnail", path: "/prod/inputDevices/{inputDeviceId}/thumbnailData", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Produces a summary of an Input Security Group
    public func describeInputSecurityGroup(_ input: DescribeInputSecurityGroupRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeInputSecurityGroupResponse> {
        return self.client.execute(operation: "DescribeInputSecurityGroup", path: "/prod/inputSecurityGroups/{inputSecurityGroupId}", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Gets details about a multiplex.
    public func describeMultiplex(_ input: DescribeMultiplexRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeMultiplexResponse> {
        return self.client.execute(operation: "DescribeMultiplex", path: "/prod/multiplexes/{multiplexId}", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Get the details for a program in a multiplex.
    public func describeMultiplexProgram(_ input: DescribeMultiplexProgramRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeMultiplexProgramResponse> {
        return self.client.execute(operation: "DescribeMultiplexProgram", path: "/prod/multiplexes/{multiplexId}/programs/{programName}", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Get details for an offering.
    public func describeOffering(_ input: DescribeOfferingRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeOfferingResponse> {
        return self.client.execute(operation: "DescribeOffering", path: "/prod/offerings/{offeringId}", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Get details for a reservation.
    public func describeReservation(_ input: DescribeReservationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeReservationResponse> {
        return self.client.execute(operation: "DescribeReservation", path: "/prod/reservations/{reservationId}", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Get a channel schedule
    public func describeSchedule(_ input: DescribeScheduleRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DescribeScheduleResponse> {
        return self.client.execute(operation: "DescribeSchedule", path: "/prod/channels/{channelId}/schedule", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Produces list of channels that have been created
    public func listChannels(_ input: ListChannelsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListChannelsResponse> {
        return self.client.execute(operation: "ListChannels", path: "/prod/channels", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  List input devices
    public func listInputDevices(_ input: ListInputDevicesRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListInputDevicesResponse> {
        return self.client.execute(operation: "ListInputDevices", path: "/prod/inputDevices", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Produces a list of Input Security Groups for an account
    public func listInputSecurityGroups(_ input: ListInputSecurityGroupsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListInputSecurityGroupsResponse> {
        return self.client.execute(operation: "ListInputSecurityGroups", path: "/prod/inputSecurityGroups", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Produces list of inputs that have been created
    public func listInputs(_ input: ListInputsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListInputsResponse> {
        return self.client.execute(operation: "ListInputs", path: "/prod/inputs", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  List the programs that currently exist for a specific multiplex.
    public func listMultiplexPrograms(_ input: ListMultiplexProgramsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListMultiplexProgramsResponse> {
        return self.client.execute(operation: "ListMultiplexPrograms", path: "/prod/multiplexes/{multiplexId}/programs", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Retrieve a list of the existing multiplexes.
    public func listMultiplexes(_ input: ListMultiplexesRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListMultiplexesResponse> {
        return self.client.execute(operation: "ListMultiplexes", path: "/prod/multiplexes", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  List offerings available for purchase.
    public func listOfferings(_ input: ListOfferingsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListOfferingsResponse> {
        return self.client.execute(operation: "ListOfferings", path: "/prod/offerings", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  List purchased reservations.
    public func listReservations(_ input: ListReservationsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListReservationsResponse> {
        return self.client.execute(operation: "ListReservations", path: "/prod/reservations", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Produces list of tags that have been created for a resource
    public func listTagsForResource(_ input: ListTagsForResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListTagsForResourceResponse> {
        return self.client.execute(operation: "ListTagsForResource", path: "/prod/tags/{resource-arn}", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Purchase an offering and create a reservation.
    public func purchaseOffering(_ input: PurchaseOfferingRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<PurchaseOfferingResponse> {
        return self.client.execute(operation: "PurchaseOffering", path: "/prod/offerings/{offeringId}/purchase", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Starts an existing channel
    public func startChannel(_ input: StartChannelRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<StartChannelResponse> {
        return self.client.execute(operation: "StartChannel", path: "/prod/channels/{channelId}/start", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Start (run) the multiplex. Starting the multiplex does not start the channels. You must explicitly start each channel.
    public func startMultiplex(_ input: StartMultiplexRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<StartMultiplexResponse> {
        return self.client.execute(operation: "StartMultiplex", path: "/prod/multiplexes/{multiplexId}/start", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Stops a running channel
    public func stopChannel(_ input: StopChannelRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<StopChannelResponse> {
        return self.client.execute(operation: "StopChannel", path: "/prod/channels/{channelId}/stop", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Stops a running multiplex. If the multiplex isn't running, this action has no effect.
    public func stopMultiplex(_ input: StopMultiplexRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<StopMultiplexResponse> {
        return self.client.execute(operation: "StopMultiplex", path: "/prod/multiplexes/{multiplexId}/stop", httpMethod: .POST, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates a channel.
    public func updateChannel(_ input: UpdateChannelRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateChannelResponse> {
        return self.client.execute(operation: "UpdateChannel", path: "/prod/channels/{channelId}", httpMethod: .PUT, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Changes the class of the channel.
    public func updateChannelClass(_ input: UpdateChannelClassRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateChannelClassResponse> {
        return self.client.execute(operation: "UpdateChannelClass", path: "/prod/channels/{channelId}/channelClass", httpMethod: .PUT, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates an input.
    public func updateInput(_ input: UpdateInputRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateInputResponse> {
        return self.client.execute(operation: "UpdateInput", path: "/prod/inputs/{inputId}", httpMethod: .PUT, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates the parameters for the input device.
    public func updateInputDevice(_ input: UpdateInputDeviceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateInputDeviceResponse> {
        return self.client.execute(operation: "UpdateInputDevice", path: "/prod/inputDevices/{inputDeviceId}", httpMethod: .PUT, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Update an Input Security Group's Whilelists.
    public func updateInputSecurityGroup(_ input: UpdateInputSecurityGroupRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateInputSecurityGroupResponse> {
        return self.client.execute(operation: "UpdateInputSecurityGroup", path: "/prod/inputSecurityGroups/{inputSecurityGroupId}", httpMethod: .PUT, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Updates a multiplex.
    public func updateMultiplex(_ input: UpdateMultiplexRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateMultiplexResponse> {
        return self.client.execute(operation: "UpdateMultiplex", path: "/prod/multiplexes/{multiplexId}", httpMethod: .PUT, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Update a program in a multiplex.
    public func updateMultiplexProgram(_ input: UpdateMultiplexProgramRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateMultiplexProgramResponse> {
        return self.client.execute(operation: "UpdateMultiplexProgram", path: "/prod/multiplexes/{multiplexId}/programs/{programName}", httpMethod: .PUT, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    ///  Update reservation.
    public func updateReservation(_ input: UpdateReservationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateReservationResponse> {
        return self.client.execute(operation: "UpdateReservation", path: "/prod/reservations/{reservationId}", httpMethod: .PUT, serviceConfig: config, input: input, on: eventLoop, logger: logger)
    }

    // MARK: Streaming API Calls

    ///  Get the latest thumbnail data for the input device.
    public func describeInputDeviceThumbnailStreaming(_ input: DescribeInputDeviceThumbnailRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled, _ stream: @escaping (ByteBuffer, EventLoop)->EventLoopFuture<Void>) -> EventLoopFuture<DescribeInputDeviceThumbnailResponse> {
        return self.client.execute(operation: "DescribeInputDeviceThumbnail", path: "/prod/inputDevices/{inputDeviceId}/thumbnailData", httpMethod: .GET, serviceConfig: config, input: input, on: eventLoop, logger: logger, stream: stream)
    }
}
