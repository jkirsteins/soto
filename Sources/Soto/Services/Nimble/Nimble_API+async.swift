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
extension Nimble {
    // MARK: Async API Calls

    /// Accept EULAs.
    public func acceptEulas(_ input: AcceptEulasRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AcceptEulasResponse {
        return try await self.client.execute(operation: "AcceptEulas", path: "/2020-08-01/studios/{studioId}/eula-acceptances", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Create a launch profile.
    public func createLaunchProfile(_ input: CreateLaunchProfileRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLaunchProfileResponse {
        return try await self.client.execute(operation: "CreateLaunchProfile", path: "/2020-08-01/studios/{studioId}/launch-profiles", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a streaming image resource in a studio.
    public func createStreamingImage(_ input: CreateStreamingImageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateStreamingImageResponse {
        return try await self.client.execute(operation: "CreateStreamingImage", path: "/2020-08-01/studios/{studioId}/streaming-images", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a streaming session in a studio. After invoking this operation, you must poll GetStreamingSession until the streaming session is in state READY.
    public func createStreamingSession(_ input: CreateStreamingSessionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateStreamingSessionResponse {
        return try await self.client.execute(operation: "CreateStreamingSession", path: "/2020-08-01/studios/{studioId}/streaming-sessions", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a streaming session stream for a streaming session. After invoking this API, invoke GetStreamingSessionStream with the returned streamId to poll the resource until it is in state READY.
    public func createStreamingSessionStream(_ input: CreateStreamingSessionStreamRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateStreamingSessionStreamResponse {
        return try await self.client.execute(operation: "CreateStreamingSessionStream", path: "/2020-08-01/studios/{studioId}/streaming-sessions/{sessionId}/streams", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Create a new Studio. When creating a Studio, two IAM roles must be provided: the admin role and the user Role. These roles are assumed by your users when they log in to the Nimble Studio portal. The user role must have the AmazonNimbleStudio-StudioUser managed policy attached for the portal to function properly. The Admin Role must have the AmazonNimbleStudio-StudioAdmin managed policy attached for the portal to function properly. You may optionally specify a KMS key in the StudioEncryptionConfiguration. In Nimble Studio, resource names, descriptions, initialization scripts, and other data you provide are always encrypted at rest using an KMS key. By default, this key is owned by Amazon Web Services and managed on your behalf. You may provide your own KMS key when calling CreateStudio to encrypt this data using a key you own and manage. When providing an KMS key during studio creation, Nimble Studio creates KMS grants in your account to provide your studio user and admin roles access to these KMS keys. If you delete this grant, the studio will no longer be accessible to your portal users. If you delete the studio KMS key, your studio will no longer be accessible.
    public func createStudio(_ input: CreateStudioRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateStudioResponse {
        return try await self.client.execute(operation: "CreateStudio", path: "/2020-08-01/studios", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a studio component resource.
    public func createStudioComponent(_ input: CreateStudioComponentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateStudioComponentResponse {
        return try await self.client.execute(operation: "CreateStudioComponent", path: "/2020-08-01/studios/{studioId}/studio-components", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Permanently delete a launch profile.
    public func deleteLaunchProfile(_ input: DeleteLaunchProfileRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteLaunchProfileResponse {
        return try await self.client.execute(operation: "DeleteLaunchProfile", path: "/2020-08-01/studios/{studioId}/launch-profiles/{launchProfileId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Delete a user from launch profile membership.
    public func deleteLaunchProfileMember(_ input: DeleteLaunchProfileMemberRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteLaunchProfileMemberResponse {
        return try await self.client.execute(operation: "DeleteLaunchProfileMember", path: "/2020-08-01/studios/{studioId}/launch-profiles/{launchProfileId}/membership/{principalId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Delete streaming image.
    public func deleteStreamingImage(_ input: DeleteStreamingImageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteStreamingImageResponse {
        return try await self.client.execute(operation: "DeleteStreamingImage", path: "/2020-08-01/studios/{studioId}/streaming-images/{streamingImageId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes streaming session resource. After invoking this operation, use GetStreamingSession to poll the resource until it transitions to a DELETED state. A streaming session will count against your streaming session quota until it is marked DELETED.
    public func deleteStreamingSession(_ input: DeleteStreamingSessionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteStreamingSessionResponse {
        return try await self.client.execute(operation: "DeleteStreamingSession", path: "/2020-08-01/studios/{studioId}/streaming-sessions/{sessionId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Delete a studio resource.
    public func deleteStudio(_ input: DeleteStudioRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteStudioResponse {
        return try await self.client.execute(operation: "DeleteStudio", path: "/2020-08-01/studios/{studioId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a studio component resource.
    public func deleteStudioComponent(_ input: DeleteStudioComponentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteStudioComponentResponse {
        return try await self.client.execute(operation: "DeleteStudioComponent", path: "/2020-08-01/studios/{studioId}/studio-components/{studioComponentId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Delete a user from studio membership.
    public func deleteStudioMember(_ input: DeleteStudioMemberRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteStudioMemberResponse {
        return try await self.client.execute(operation: "DeleteStudioMember", path: "/2020-08-01/studios/{studioId}/membership/{principalId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Get Eula.
    public func getEula(_ input: GetEulaRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetEulaResponse {
        return try await self.client.execute(operation: "GetEula", path: "/2020-08-01/eulas/{eulaId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Get a launch profile.
    public func getLaunchProfile(_ input: GetLaunchProfileRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetLaunchProfileResponse {
        return try await self.client.execute(operation: "GetLaunchProfile", path: "/2020-08-01/studios/{studioId}/launch-profiles/{launchProfileId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Launch profile details include the launch profile resource and summary information of resources that are used by, or available to, the launch profile. This includes the name and description of all studio components used by the launch profiles, and the name and description of streaming images that can be used with this launch profile.
    public func getLaunchProfileDetails(_ input: GetLaunchProfileDetailsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetLaunchProfileDetailsResponse {
        return try await self.client.execute(operation: "GetLaunchProfileDetails", path: "/2020-08-01/studios/{studioId}/launch-profiles/{launchProfileId}/details", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Get a launch profile initialization.
    public func getLaunchProfileInitialization(_ input: GetLaunchProfileInitializationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetLaunchProfileInitializationResponse {
        return try await self.client.execute(operation: "GetLaunchProfileInitialization", path: "/2020-08-01/studios/{studioId}/launch-profiles/{launchProfileId}/init", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Get a user persona in launch profile membership.
    public func getLaunchProfileMember(_ input: GetLaunchProfileMemberRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetLaunchProfileMemberResponse {
        return try await self.client.execute(operation: "GetLaunchProfileMember", path: "/2020-08-01/studios/{studioId}/launch-profiles/{launchProfileId}/membership/{principalId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Get streaming image.
    public func getStreamingImage(_ input: GetStreamingImageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetStreamingImageResponse {
        return try await self.client.execute(operation: "GetStreamingImage", path: "/2020-08-01/studios/{studioId}/streaming-images/{streamingImageId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets StreamingSession resource. anvoke this operation to poll for a streaming session state while creating or deleting a session.
    public func getStreamingSession(_ input: GetStreamingSessionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetStreamingSessionResponse {
        return try await self.client.execute(operation: "GetStreamingSession", path: "/2020-08-01/studios/{studioId}/streaming-sessions/{sessionId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets a StreamingSessionStream for a streaming session. Invoke this operation to poll the resource after invoking CreateStreamingSessionStream. After the StreamingSessionStream changes to the state READY, the url property will contain a stream to be used with the DCV streaming client.
    public func getStreamingSessionStream(_ input: GetStreamingSessionStreamRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetStreamingSessionStreamResponse {
        return try await self.client.execute(operation: "GetStreamingSessionStream", path: "/2020-08-01/studios/{studioId}/streaming-sessions/{sessionId}/streams/{streamId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Get a Studio resource.
    public func getStudio(_ input: GetStudioRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetStudioResponse {
        return try await self.client.execute(operation: "GetStudio", path: "/2020-08-01/studios/{studioId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets a studio component resource.
    public func getStudioComponent(_ input: GetStudioComponentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetStudioComponentResponse {
        return try await self.client.execute(operation: "GetStudioComponent", path: "/2020-08-01/studios/{studioId}/studio-components/{studioComponentId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Get a user's membership in a studio.
    public func getStudioMember(_ input: GetStudioMemberRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetStudioMemberResponse {
        return try await self.client.execute(operation: "GetStudioMember", path: "/2020-08-01/studios/{studioId}/membership/{principalId}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List Eula Acceptances.
    public func listEulaAcceptances(_ input: ListEulaAcceptancesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListEulaAcceptancesResponse {
        return try await self.client.execute(operation: "ListEulaAcceptances", path: "/2020-08-01/studios/{studioId}/eula-acceptances", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List Eulas.
    public func listEulas(_ input: ListEulasRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListEulasResponse {
        return try await self.client.execute(operation: "ListEulas", path: "/2020-08-01/eulas", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Get all users in a given launch profile membership.
    public func listLaunchProfileMembers(_ input: ListLaunchProfileMembersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListLaunchProfileMembersResponse {
        return try await self.client.execute(operation: "ListLaunchProfileMembers", path: "/2020-08-01/studios/{studioId}/launch-profiles/{launchProfileId}/membership", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List all the launch profiles a studio.
    public func listLaunchProfiles(_ input: ListLaunchProfilesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListLaunchProfilesResponse {
        return try await self.client.execute(operation: "ListLaunchProfiles", path: "/2020-08-01/studios/{studioId}/launch-profiles", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List the streaming image resources available to this studio. This list will contain both images provided by Amazon Web Services, as well as streaming images that you have created in your studio.
    public func listStreamingImages(_ input: ListStreamingImagesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListStreamingImagesResponse {
        return try await self.client.execute(operation: "ListStreamingImages", path: "/2020-08-01/studios/{studioId}/streaming-images", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the streaming image resources in a studio.
    public func listStreamingSessions(_ input: ListStreamingSessionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListStreamingSessionsResponse {
        return try await self.client.execute(operation: "ListStreamingSessions", path: "/2020-08-01/studios/{studioId}/streaming-sessions", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the StudioComponents in a studio.
    public func listStudioComponents(_ input: ListStudioComponentsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListStudioComponentsResponse {
        return try await self.client.execute(operation: "ListStudioComponents", path: "/2020-08-01/studios/{studioId}/studio-components", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Get all users in a given studio membership.
    public func listStudioMembers(_ input: ListStudioMembersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListStudioMembersResponse {
        return try await self.client.execute(operation: "ListStudioMembers", path: "/2020-08-01/studios/{studioId}/membership", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List studios in your Amazon Web Services account in the requested Amazon Web Services Region.
    public func listStudios(_ input: ListStudiosRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListStudiosResponse {
        return try await self.client.execute(operation: "ListStudios", path: "/2020-08-01/studios", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the tags for a resource, given its Amazon Resource Names (ARN). This operation supports ARNs for all resource types in Nimble Studio that support tags, including studio, studio component, launch profile, streaming image, and streaming session. All resources that can be tagged will contain an ARN property, so you do not have to create this ARN yourself.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/2020-08-01/tags/{resourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Add/update users with given persona to launch profile membership.
    public func putLaunchProfileMembers(_ input: PutLaunchProfileMembersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutLaunchProfileMembersResponse {
        return try await self.client.execute(operation: "PutLaunchProfileMembers", path: "/2020-08-01/studios/{studioId}/launch-profiles/{launchProfileId}/membership", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Add/update users with given persona to studio membership.
    public func putStudioMembers(_ input: PutStudioMembersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutStudioMembersResponse {
        return try await self.client.execute(operation: "PutStudioMembers", path: "/2020-08-01/studios/{studioId}/membership", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Transitions sessions from the STOPPED state into the READY state. The START_IN_PROGRESS state is the intermediate state between the STOPPED and READY states.
    public func startStreamingSession(_ input: StartStreamingSessionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartStreamingSessionResponse {
        return try await self.client.execute(operation: "StartStreamingSession", path: "/2020-08-01/studios/{studioId}/streaming-sessions/{sessionId}/start", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Repairs the Amazon Web Services SSO configuration for a given studio. If the studio has a valid Amazon Web Services SSO configuration currently associated with it, this operation will fail with a validation error. If the studio does not have a valid Amazon Web Services SSO configuration currently associated with it, then a new Amazon Web Services SSO application is created for the studio and the studio is changed to the READY state. After the Amazon Web Services SSO application is repaired, you must use the Amazon Nimble Studio console to add administrators and users to your studio.
    public func startStudioSSOConfigurationRepair(_ input: StartStudioSSOConfigurationRepairRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartStudioSSOConfigurationRepairResponse {
        return try await self.client.execute(operation: "StartStudioSSOConfigurationRepair", path: "/2020-08-01/studios/{studioId}/sso-configuration", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Transitions sessions from the READY state into the STOPPED state. The STOP_IN_PROGRESS state is the intermediate state between the READY and STOPPED states.
    public func stopStreamingSession(_ input: StopStreamingSessionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopStreamingSessionResponse {
        return try await self.client.execute(operation: "StopStreamingSession", path: "/2020-08-01/studios/{studioId}/streaming-sessions/{sessionId}/stop", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates tags for a resource, given its ARN.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/2020-08-01/tags/{resourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the tags for a resource.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/2020-08-01/tags/{resourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Update a launch profile.
    public func updateLaunchProfile(_ input: UpdateLaunchProfileRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateLaunchProfileResponse {
        return try await self.client.execute(operation: "UpdateLaunchProfile", path: "/2020-08-01/studios/{studioId}/launch-profiles/{launchProfileId}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Update a user persona in launch profile membership.
    public func updateLaunchProfileMember(_ input: UpdateLaunchProfileMemberRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateLaunchProfileMemberResponse {
        return try await self.client.execute(operation: "UpdateLaunchProfileMember", path: "/2020-08-01/studios/{studioId}/launch-profiles/{launchProfileId}/membership/{principalId}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Update streaming image.
    public func updateStreamingImage(_ input: UpdateStreamingImageRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateStreamingImageResponse {
        return try await self.client.execute(operation: "UpdateStreamingImage", path: "/2020-08-01/studios/{studioId}/streaming-images/{streamingImageId}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Update a Studio resource. Currently, this operation only supports updating the displayName of your studio.
    public func updateStudio(_ input: UpdateStudioRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateStudioResponse {
        return try await self.client.execute(operation: "UpdateStudio", path: "/2020-08-01/studios/{studioId}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a studio component resource.
    public func updateStudioComponent(_ input: UpdateStudioComponentRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateStudioComponentResponse {
        return try await self.client.execute(operation: "UpdateStudioComponent", path: "/2020-08-01/studios/{studioId}/studio-components/{studioComponentId}", httpMethod: .PATCH, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
