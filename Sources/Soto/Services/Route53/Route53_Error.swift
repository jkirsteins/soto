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

/// Error enum for Route53
public struct Route53ErrorType: AWSErrorType {
    enum Code: String {
        case concurrentModification = "ConcurrentModification"
        case conflictingDomainExists = "ConflictingDomainExists"
        case conflictingTypes = "ConflictingTypes"
        case delegationSetAlreadyCreated = "DelegationSetAlreadyCreated"
        case delegationSetAlreadyReusable = "DelegationSetAlreadyReusable"
        case delegationSetInUse = "DelegationSetInUse"
        case delegationSetNotAvailable = "DelegationSetNotAvailable"
        case delegationSetNotReusable = "DelegationSetNotReusable"
        case dnssecNotFound = "DNSSECNotFound"
        case healthCheckAlreadyExists = "HealthCheckAlreadyExists"
        case healthCheckInUse = "HealthCheckInUse"
        case healthCheckVersionMismatch = "HealthCheckVersionMismatch"
        case hostedZoneAlreadyExists = "HostedZoneAlreadyExists"
        case hostedZoneNotEmpty = "HostedZoneNotEmpty"
        case hostedZoneNotFound = "HostedZoneNotFound"
        case hostedZoneNotPrivate = "HostedZoneNotPrivate"
        case hostedZonePartiallyDelegated = "HostedZonePartiallyDelegated"
        case incompatibleVersion = "IncompatibleVersion"
        case insufficientCloudWatchLogsResourcePolicy = "InsufficientCloudWatchLogsResourcePolicy"
        case invalidArgument = "InvalidArgument"
        case invalidChangeBatch = "InvalidChangeBatch"
        case invalidDomainName = "InvalidDomainName"
        case invalidInput = "InvalidInput"
        case invalidKMSArn = "InvalidKMSArn"
        case invalidKeySigningKeyName = "InvalidKeySigningKeyName"
        case invalidKeySigningKeyStatus = "InvalidKeySigningKeyStatus"
        case invalidPaginationToken = "InvalidPaginationToken"
        case invalidSigningStatus = "InvalidSigningStatus"
        case invalidTrafficPolicyDocument = "InvalidTrafficPolicyDocument"
        case invalidVPCId = "InvalidVPCId"
        case keySigningKeyAlreadyExists = "KeySigningKeyAlreadyExists"
        case keySigningKeyInParentDSRecord = "KeySigningKeyInParentDSRecord"
        case keySigningKeyInUse = "KeySigningKeyInUse"
        case keySigningKeyWithActiveStatusNotFound = "KeySigningKeyWithActiveStatusNotFound"
        case lastVPCAssociation = "LastVPCAssociation"
        case limitsExceeded = "LimitsExceeded"
        case noSuchChange = "NoSuchChange"
        case noSuchCloudWatchLogsLogGroup = "NoSuchCloudWatchLogsLogGroup"
        case noSuchDelegationSet = "NoSuchDelegationSet"
        case noSuchGeoLocation = "NoSuchGeoLocation"
        case noSuchHealthCheck = "NoSuchHealthCheck"
        case noSuchHostedZone = "NoSuchHostedZone"
        case noSuchKeySigningKey = "NoSuchKeySigningKey"
        case noSuchQueryLoggingConfig = "NoSuchQueryLoggingConfig"
        case noSuchTrafficPolicy = "NoSuchTrafficPolicy"
        case noSuchTrafficPolicyInstance = "NoSuchTrafficPolicyInstance"
        case notAuthorizedException = "NotAuthorizedException"
        case priorRequestNotComplete = "PriorRequestNotComplete"
        case publicZoneVPCAssociation = "PublicZoneVPCAssociation"
        case queryLoggingConfigAlreadyExists = "QueryLoggingConfigAlreadyExists"
        case throttlingException = "ThrottlingException"
        case tooManyHealthChecks = "TooManyHealthChecks"
        case tooManyHostedZones = "TooManyHostedZones"
        case tooManyKeySigningKeys = "TooManyKeySigningKeys"
        case tooManyTrafficPolicies = "TooManyTrafficPolicies"
        case tooManyTrafficPolicyInstances = "TooManyTrafficPolicyInstances"
        case tooManyTrafficPolicyVersionsForCurrentPolicy = "TooManyTrafficPolicyVersionsForCurrentPolicy"
        case tooManyVPCAssociationAuthorizations = "TooManyVPCAssociationAuthorizations"
        case trafficPolicyAlreadyExists = "TrafficPolicyAlreadyExists"
        case trafficPolicyInUse = "TrafficPolicyInUse"
        case trafficPolicyInstanceAlreadyExists = "TrafficPolicyInstanceAlreadyExists"
        case vpcAssociationAuthorizationNotFound = "VPCAssociationAuthorizationNotFound"
        case vpcAssociationNotFound = "VPCAssociationNotFound"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize Route53
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

    /// Another user submitted a request to create, update, or delete the object at the same time that you did. Retry the request.
    public static var concurrentModification: Self { .init(.concurrentModification) }
    /// The cause of this error depends on the operation that you're performing:
    /// 		          Create a public hosted zone: Two hosted zones that have the same name or that have a
    /// 				parent/child relationship (example.com and test.example.com) can't have any common name servers. You tried to create a hosted zone
    /// 				that has the same name as an existing hosted zone or that's the parent or child of an existing hosted zone, and you specified a
    /// 				delegation set that shares one or more name servers with the existing hosted zone. For more information, see
    /// 				CreateReusableDelegationSet.
    /// 			            Create a private hosted zone: A hosted zone with the specified name
    /// 				already exists and is already associated with the Amazon VPC that you specified.    Associate VPCs with a private hosted zone: The VPC that you specified is
    /// 				already associated with another hosted zone that has the same name.
    public static var conflictingDomainExists: Self { .init(.conflictingDomainExists) }
    /// You tried to update a traffic policy instance by using a traffic policy version that has a different DNS type
    /// 			than the current type for the instance. You specified the type in the JSON document in the CreateTrafficPolicy or
    /// 			CreateTrafficPolicyVersionrequest.
    public static var conflictingTypes: Self { .init(.conflictingTypes) }
    /// A delegation set with the same owner and caller reference combination has already been created.
    public static var delegationSetAlreadyCreated: Self { .init(.delegationSetAlreadyCreated) }
    /// The specified delegation set has already been marked as reusable.
    public static var delegationSetAlreadyReusable: Self { .init(.delegationSetAlreadyReusable) }
    /// The specified delegation contains associated hosted zones which must be deleted before the reusable delegation set
    /// 			can be deleted.
    public static var delegationSetInUse: Self { .init(.delegationSetInUse) }
    /// You can create a hosted zone that has the same name as an existing hosted zone (example.com is common), but there is a
    /// 			limit to the number of hosted zones that have the same name. If you get this error, Amazon Route 53 has reached that limit. If you own
    /// 			the domain name and Route 53 generates this error, contact Customer Support.
    public static var delegationSetNotAvailable: Self { .init(.delegationSetNotAvailable) }
    /// A reusable delegation set with the specified ID does not exist.
    public static var delegationSetNotReusable: Self { .init(.delegationSetNotReusable) }
    /// The hosted zone doesn't have any DNSSEC resources.
    public static var dnssecNotFound: Self { .init(.dnssecNotFound) }
    ///  The health check you're attempting to create already exists. Amazon Route 53 returns this error when you submit a request that
    /// 			has the following values:
    /// 		         The same value for CallerReference as an existing health check, and one or more values that differ
    /// 				from the existing health check that has the same caller reference.   The same value for CallerReference as a health check that you created and later deleted,
    /// 				regardless of the other settings in the request.
    public static var healthCheckAlreadyExists: Self { .init(.healthCheckAlreadyExists) }
    /// This error code is not in use.
    public static var healthCheckInUse: Self { .init(.healthCheckInUse) }
    /// The value of HealthCheckVersion in the request doesn't match the value of HealthCheckVersion
    /// 			in the health check.
    public static var healthCheckVersionMismatch: Self { .init(.healthCheckVersionMismatch) }
    /// The hosted zone you're trying to create already exists. Amazon Route 53 returns this error when a hosted zone has already been created
    /// 			with the specified CallerReference.
    public static var hostedZoneAlreadyExists: Self { .init(.hostedZoneAlreadyExists) }
    /// The hosted zone contains resource records that are not SOA or NS records.
    public static var hostedZoneNotEmpty: Self { .init(.hostedZoneNotEmpty) }
    /// The specified HostedZone can't be found.
    public static var hostedZoneNotFound: Self { .init(.hostedZoneNotFound) }
    /// The specified hosted zone is a public hosted zone, not a private hosted zone.
    public static var hostedZoneNotPrivate: Self { .init(.hostedZoneNotPrivate) }
    /// The hosted zone nameservers don't match the parent nameservers. The hosted zone and parent must have the same nameservers.
    public static var hostedZonePartiallyDelegated: Self { .init(.hostedZonePartiallyDelegated) }
    /// The resource you're trying to access is unsupported on this Amazon Route 53 endpoint.
    public static var incompatibleVersion: Self { .init(.incompatibleVersion) }
    /// Amazon Route 53 doesn't have the permissions required to create log streams and send query logs to log streams. Possible causes
    /// 			include the following:
    /// 		         There is no resource policy that specifies the log group ARN in the value for Resource.   The resource policy that includes the log group ARN in the value for Resource doesn't have the
    /// 				necessary permissions.   The resource policy hasn't finished propagating yet.   The Key management service (KMS) key you specified doesn’t exist or it can’t be used with the
    /// 				log group associated with query log. Update or provide a resource policy to grant permissions for the KMS key.
    public static var insufficientCloudWatchLogsResourcePolicy: Self { .init(.insufficientCloudWatchLogsResourcePolicy) }
    /// Parameter name is not valid.
    public static var invalidArgument: Self { .init(.invalidArgument) }
    /// This exception contains a list of messages that might contain one or more error messages. Each error message indicates
    /// 			one error in the change batch.
    public static var invalidChangeBatch: Self { .init(.invalidChangeBatch) }
    /// The specified domain name is not valid.
    public static var invalidDomainName: Self { .init(.invalidDomainName) }
    /// The input is not valid.
    public static var invalidInput: Self { .init(.invalidInput) }
    /// The KeyManagementServiceArn that you specified isn't valid to use with DNSSEC signing.
    public static var invalidKMSArn: Self { .init(.invalidKMSArn) }
    /// The key-signing key (KSK) name that you specified isn't a valid name.
    public static var invalidKeySigningKeyName: Self { .init(.invalidKeySigningKeyName) }
    /// The key-signing key (KSK) status isn't valid or another KSK has the status INTERNAL_FAILURE.
    public static var invalidKeySigningKeyStatus: Self { .init(.invalidKeySigningKeyStatus) }
    /// The value that you specified to get the second or subsequent page of results is invalid.
    public static var invalidPaginationToken: Self { .init(.invalidPaginationToken) }
    /// Your hosted zone status isn't valid for this operation. In the hosted zone, change the status to enable DNSSEC
    /// 			or disable DNSSEC.
    public static var invalidSigningStatus: Self { .init(.invalidSigningStatus) }
    /// The format of the traffic policy document that you specified in the Document element is not valid.
    public static var invalidTrafficPolicyDocument: Self { .init(.invalidTrafficPolicyDocument) }
    /// The VPC ID that you specified either isn't a valid ID or the current account is not authorized to access this VPC.
    public static var invalidVPCId: Self { .init(.invalidVPCId) }
    /// You've already created a key-signing key (KSK) with this name or with the same customer managed key ARN.
    public static var keySigningKeyAlreadyExists: Self { .init(.keySigningKeyAlreadyExists) }
    /// The key-signing key (KSK) is specified in a parent DS record.
    public static var keySigningKeyInParentDSRecord: Self { .init(.keySigningKeyInParentDSRecord) }
    /// The key-signing key (KSK) that you specified can't be deactivated because it's the only KSK for a
    /// 		currently-enabled DNSSEC. Disable DNSSEC signing, or add or enable another KSK.
    public static var keySigningKeyInUse: Self { .init(.keySigningKeyInUse) }
    /// A key-signing key (KSK) with ACTIVE status wasn't found.
    public static var keySigningKeyWithActiveStatusNotFound: Self { .init(.keySigningKeyWithActiveStatusNotFound) }
    /// The VPC that you're trying to disassociate from the private hosted zone is the last VPC that is associated with
    /// 			the hosted zone. Amazon Route 53 doesn't support disassociating the last VPC from a hosted zone.
    public static var lastVPCAssociation: Self { .init(.lastVPCAssociation) }
    /// This operation can't be completed either because the current account has reached the limit on reusable delegation sets
    /// 			that it can create or because you've reached the limit on the number of Amazon VPCs that you can associate with a private hosted zone.
    /// 			To get the current limit on the number of reusable delegation sets, see
    /// 			GetAccountLimit.
    /// 			To get the current limit on the number of Amazon VPCs that you can associate with a private hosted zone, see
    /// 			GetHostedZoneLimit.
    /// 			To request a higher limit, create a case with the Amazon Web Services Support Center.
    public static var limitsExceeded: Self { .init(.limitsExceeded) }
    /// A change with the specified change ID does not exist.
    public static var noSuchChange: Self { .init(.noSuchChange) }
    /// There is no CloudWatch Logs log group with the specified ARN.
    public static var noSuchCloudWatchLogsLogGroup: Self { .init(.noSuchCloudWatchLogsLogGroup) }
    /// A reusable delegation set with the specified ID does not exist.
    public static var noSuchDelegationSet: Self { .init(.noSuchDelegationSet) }
    /// Amazon Route 53 doesn't support the specified geographic location. For a list of supported geolocation codes, see the
    /// 			GeoLocation data type.
    public static var noSuchGeoLocation: Self { .init(.noSuchGeoLocation) }
    /// No health check exists with the specified ID.
    public static var noSuchHealthCheck: Self { .init(.noSuchHealthCheck) }
    /// No hosted zone exists with the ID that you specified.
    public static var noSuchHostedZone: Self { .init(.noSuchHostedZone) }
    /// The specified key-signing key (KSK) doesn't exist.
    public static var noSuchKeySigningKey: Self { .init(.noSuchKeySigningKey) }
    /// There is no DNS query logging configuration with the specified ID.
    public static var noSuchQueryLoggingConfig: Self { .init(.noSuchQueryLoggingConfig) }
    /// No traffic policy exists with the specified ID.
    public static var noSuchTrafficPolicy: Self { .init(.noSuchTrafficPolicy) }
    /// No traffic policy instance exists with the specified ID.
    public static var noSuchTrafficPolicyInstance: Self { .init(.noSuchTrafficPolicyInstance) }
    /// Associating the specified VPC with the specified hosted zone has not been authorized.
    public static var notAuthorizedException: Self { .init(.notAuthorizedException) }
    /// If Amazon Route 53 can't process a request before the next request arrives, it will reject
    /// 			subsequent requests for the same hosted zone and return an HTTP 400 error
    /// 			(Bad request). If Route 53 returns this error repeatedly for the same request, we
    /// 			recommend that you wait, in intervals of increasing duration, before you try the request
    /// 			again.
    public static var priorRequestNotComplete: Self { .init(.priorRequestNotComplete) }
    /// You're trying to associate a VPC with a public hosted zone. Amazon Route 53 doesn't support associating a
    /// 			VPC with a public hosted zone.
    public static var publicZoneVPCAssociation: Self { .init(.publicZoneVPCAssociation) }
    /// You can create only one query logging configuration for a hosted zone, and a query logging configuration already exists
    /// 			for this hosted zone.
    public static var queryLoggingConfigAlreadyExists: Self { .init(.queryLoggingConfigAlreadyExists) }
    /// The limit on the number of requests per second was exceeded.
    public static var throttlingException: Self { .init(.throttlingException) }
    /// This health check can't be created because the current account has reached the limit on the number of active health checks.
    /// 		       For information about default limits, see Limits
    /// 			in the Amazon Route 53 Developer Guide.
    /// 		       For information about how to get the current limit for an account, see
    /// 			GetAccountLimit. To request a
    /// 			higher limit, create a case with the Amazon Web Services Support Center.
    /// 		       You have reached the maximum number of active health checks for an Amazon Web Services account. To request a higher limit,
    /// 			create a case with the Amazon Web Services Support Center.
    public static var tooManyHealthChecks: Self { .init(.tooManyHealthChecks) }
    /// This operation can't be completed either because the current account has reached the limit on the number of hosted zones
    /// 			or because you've reached the limit on the number of hosted zones that can be associated with a reusable delegation set.
    /// 		       For information about default limits, see Limits
    /// 			in the Amazon Route 53 Developer Guide.
    /// 		       To get the current limit on hosted zones that can be created by an account, see
    /// 			GetAccountLimit.
    /// 		       To get the current limit on hosted zones that can be associated with a reusable delegation set, see
    /// 			GetReusableDelegationSetLimit.
    /// 		       To request a higher limit, create a case with the Amazon Web Services Support Center.
    public static var tooManyHostedZones: Self { .init(.tooManyHostedZones) }
    /// You've reached the limit for the number of key-signing keys (KSKs). Remove at least one KSK, and then try again.
    public static var tooManyKeySigningKeys: Self { .init(.tooManyKeySigningKeys) }
    /// This traffic policy can't be created because the current account has reached the limit on the number of traffic policies.
    /// 		       For information about default limits, see Limits
    /// 			in the Amazon Route 53 Developer Guide.
    /// 		       To get the current limit for an account, see
    /// 			GetAccountLimit.
    ///
    /// 		       To request a higher limit, create a case with the Amazon Web Services Support Center.
    public static var tooManyTrafficPolicies: Self { .init(.tooManyTrafficPolicies) }
    /// This traffic policy instance can't be created because the current account has reached the limit on the number of
    /// 			traffic policy instances.
    /// 		       For information about default limits, see
    /// 			Limits
    /// 			in the Amazon Route 53 Developer Guide.
    /// 		       For information about how to get the current limit for an account, see
    /// 			GetAccountLimit.
    /// 		       To request a higher limit, create a case with the Amazon Web Services Support Center.
    public static var tooManyTrafficPolicyInstances: Self { .init(.tooManyTrafficPolicyInstances) }
    /// This traffic policy version can't be created because you've reached the limit of 1000 on the number of versions
    /// 			that you can create for the current traffic policy.
    /// 		       To create more traffic policy versions, you can use
    /// 			GetTrafficPolicy
    /// 			to get the traffic policy document for a specified traffic policy version, and then use
    /// 			CreateTrafficPolicy
    /// 			to create a new traffic policy using the traffic policy document.
    public static var tooManyTrafficPolicyVersionsForCurrentPolicy: Self { .init(.tooManyTrafficPolicyVersionsForCurrentPolicy) }
    /// You've created the maximum number of authorizations that can be created for the specified hosted zone.
    /// 			To authorize another VPC to be associated with the hosted zone, submit a DeleteVPCAssociationAuthorization request
    /// 			to remove an existing authorization. To get a list of existing authorizations, submit a
    /// 			ListVPCAssociationAuthorizations request.
    public static var tooManyVPCAssociationAuthorizations: Self { .init(.tooManyVPCAssociationAuthorizations) }
    /// A traffic policy that has the same value for Name already exists.
    public static var trafficPolicyAlreadyExists: Self { .init(.trafficPolicyAlreadyExists) }
    /// One or more traffic policy instances were created by using the specified traffic policy.
    public static var trafficPolicyInUse: Self { .init(.trafficPolicyInUse) }
    /// There is already a traffic policy instance with the specified ID.
    public static var trafficPolicyInstanceAlreadyExists: Self { .init(.trafficPolicyInstanceAlreadyExists) }
    /// The VPC that you specified is not authorized to be associated with the hosted zone.
    public static var vpcAssociationAuthorizationNotFound: Self { .init(.vpcAssociationAuthorizationNotFound) }
    /// The specified VPC and hosted zone are not currently associated.
    public static var vpcAssociationNotFound: Self { .init(.vpcAssociationNotFound) }
}

extension Route53ErrorType: Equatable {
    public static func == (lhs: Route53ErrorType, rhs: Route53ErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension Route53ErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}
