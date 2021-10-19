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
extension IoTSiteWise {
    // MARK: Async API Calls

    /// Associates a child asset with the given parent asset through a hierarchy defined in the parent asset's model. For more information, see Associating assets in the IoT SiteWise User Guide.
    public func associateAssets(_ input: AssociateAssetsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "AssociateAssets", path: "/assets/{assetId}/associate", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Associates a group (batch) of assets with an IoT SiteWise Monitor project.
    public func batchAssociateProjectAssets(_ input: BatchAssociateProjectAssetsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchAssociateProjectAssetsResponse {
        return try await self.client.execute(operation: "BatchAssociateProjectAssets", path: "/projects/{projectId}/assets/associate", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "monitor.", logger: logger, on: eventLoop)
    }

    /// Disassociates a group (batch) of assets from an IoT SiteWise Monitor project.
    public func batchDisassociateProjectAssets(_ input: BatchDisassociateProjectAssetsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchDisassociateProjectAssetsResponse {
        return try await self.client.execute(operation: "BatchDisassociateProjectAssets", path: "/projects/{projectId}/assets/disassociate", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "monitor.", logger: logger, on: eventLoop)
    }

    /// Sends a list of asset property values to IoT SiteWise. Each value is a timestamp-quality-value (TQV) data point. For more information, see Ingesting data using the API in the IoT SiteWise User Guide. To identify an asset property, you must specify one of the following:   The assetId and propertyId of an asset property.   A propertyAlias, which is a data stream alias (for example, /company/windfarm/3/turbine/7/temperature). To define an asset property's alias, see UpdateAssetProperty.    With respect to Unix epoch time, IoT SiteWise accepts only TQVs that have a timestamp of no more than 7 days in the past and no more than 10 minutes in the future. IoT SiteWise rejects timestamps outside of the inclusive range of [-7 days, +10 minutes] and returns a TimestampOutOfRangeException error. For each asset property, IoT SiteWise overwrites TQVs with duplicate timestamps unless the newer TQV has a different quality. For example, if you store a TQV {T1, GOOD, V1}, then storing {T1, GOOD, V2} replaces the existing TQV.  IoT SiteWise authorizes access to each BatchPutAssetPropertyValue entry individually. For more information, see BatchPutAssetPropertyValue authorization in the IoT SiteWise User Guide.
    public func batchPutAssetPropertyValue(_ input: BatchPutAssetPropertyValueRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchPutAssetPropertyValueResponse {
        return try await self.client.execute(operation: "BatchPutAssetPropertyValue", path: "/properties", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "data.", logger: logger, on: eventLoop)
    }

    /// Creates an access policy that grants the specified identity (Amazon Web Services SSO user, Amazon Web Services SSO group, or IAM user) access to the specified IoT SiteWise Monitor portal or project resource.
    public func createAccessPolicy(_ input: CreateAccessPolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAccessPolicyResponse {
        return try await self.client.execute(operation: "CreateAccessPolicy", path: "/access-policies", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "monitor.", logger: logger, on: eventLoop)
    }

    /// Creates an asset from an existing asset model. For more information, see Creating assets in the IoT SiteWise User Guide.
    public func createAsset(_ input: CreateAssetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAssetResponse {
        return try await self.client.execute(operation: "CreateAsset", path: "/assets", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Creates an asset model from specified property and hierarchy definitions. You create assets from asset models. With asset models, you can easily create assets of the same type that have standardized definitions. Each asset created from a model inherits the asset model's property and hierarchy definitions. For more information, see Defining asset models in the IoT SiteWise User Guide.
    public func createAssetModel(_ input: CreateAssetModelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAssetModelResponse {
        return try await self.client.execute(operation: "CreateAssetModel", path: "/asset-models", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Creates a dashboard in an IoT SiteWise Monitor project.
    public func createDashboard(_ input: CreateDashboardRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDashboardResponse {
        return try await self.client.execute(operation: "CreateDashboard", path: "/dashboards", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "monitor.", logger: logger, on: eventLoop)
    }

    /// Creates a gateway, which is a virtual or edge device that delivers industrial data streams from local servers to IoT SiteWise. For more information, see Ingesting data using a gateway in the IoT SiteWise User Guide.
    public func createGateway(_ input: CreateGatewayRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateGatewayResponse {
        return try await self.client.execute(operation: "CreateGateway", path: "/20200301/gateways", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Creates a portal, which can contain projects and dashboards. IoT SiteWise Monitor uses Amazon Web Services SSO or IAM to authenticate portal users and manage user permissions.  Before you can sign in to a new portal, you must add at least one identity to that portal. For more information, see Adding or removing portal administrators in the IoT SiteWise User Guide.
    public func createPortal(_ input: CreatePortalRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePortalResponse {
        return try await self.client.execute(operation: "CreatePortal", path: "/portals", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "monitor.", logger: logger, on: eventLoop)
    }

    /// Creates a project in the specified portal.
    public func createProject(_ input: CreateProjectRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateProjectResponse {
        return try await self.client.execute(operation: "CreateProject", path: "/projects", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "monitor.", logger: logger, on: eventLoop)
    }

    /// Deletes an access policy that grants the specified identity access to the specified IoT SiteWise Monitor resource. You can use this operation to revoke access to an IoT SiteWise Monitor resource.
    public func deleteAccessPolicy(_ input: DeleteAccessPolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAccessPolicyResponse {
        return try await self.client.execute(operation: "DeleteAccessPolicy", path: "/access-policies/{accessPolicyId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, hostPrefix: "monitor.", logger: logger, on: eventLoop)
    }

    /// Deletes an asset. This action can't be undone. For more information, see Deleting assets and models in the IoT SiteWise User Guide.   You can't delete an asset that's associated to another asset. For more information, see DisassociateAssets.
    public func deleteAsset(_ input: DeleteAssetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAssetResponse {
        return try await self.client.execute(operation: "DeleteAsset", path: "/assets/{assetId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Deletes an asset model. This action can't be undone. You must delete all assets created from an asset model before you can delete the model. Also, you can't delete an asset model if a parent asset model exists that contains a property formula expression that depends on the asset model that you want to delete. For more information, see Deleting assets and models in the IoT SiteWise User Guide.
    public func deleteAssetModel(_ input: DeleteAssetModelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAssetModelResponse {
        return try await self.client.execute(operation: "DeleteAssetModel", path: "/asset-models/{assetModelId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Deletes a dashboard from IoT SiteWise Monitor.
    public func deleteDashboard(_ input: DeleteDashboardRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDashboardResponse {
        return try await self.client.execute(operation: "DeleteDashboard", path: "/dashboards/{dashboardId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, hostPrefix: "monitor.", logger: logger, on: eventLoop)
    }

    /// Deletes a gateway from IoT SiteWise. When you delete a gateway, some of the gateway's files remain in your gateway's file system.
    public func deleteGateway(_ input: DeleteGatewayRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DeleteGateway", path: "/20200301/gateways/{gatewayId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Deletes a portal from IoT SiteWise Monitor.
    public func deletePortal(_ input: DeletePortalRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeletePortalResponse {
        return try await self.client.execute(operation: "DeletePortal", path: "/portals/{portalId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, hostPrefix: "monitor.", logger: logger, on: eventLoop)
    }

    /// Deletes a project from IoT SiteWise Monitor.
    public func deleteProject(_ input: DeleteProjectRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteProjectResponse {
        return try await self.client.execute(operation: "DeleteProject", path: "/projects/{projectId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, hostPrefix: "monitor.", logger: logger, on: eventLoop)
    }

    /// Describes an access policy, which specifies an identity's access to an IoT SiteWise Monitor portal or project.
    public func describeAccessPolicy(_ input: DescribeAccessPolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAccessPolicyResponse {
        return try await self.client.execute(operation: "DescribeAccessPolicy", path: "/access-policies/{accessPolicyId}", httpMethod: .GET, serviceConfig: self.config, input: input, hostPrefix: "monitor.", logger: logger, on: eventLoop)
    }

    /// Retrieves information about an asset.
    public func describeAsset(_ input: DescribeAssetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetResponse {
        return try await self.client.execute(operation: "DescribeAsset", path: "/assets/{assetId}", httpMethod: .GET, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Retrieves information about an asset model.
    public func describeAssetModel(_ input: DescribeAssetModelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetModelResponse {
        return try await self.client.execute(operation: "DescribeAssetModel", path: "/asset-models/{assetModelId}", httpMethod: .GET, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Retrieves information about an asset property.  When you call this operation for an attribute property, this response includes the default attribute value that you define in the asset model. If you update the default value in the model, this operation's response includes the new default value.  This operation doesn't return the value of the asset property. To get the value of an asset property, use GetAssetPropertyValue.
    public func describeAssetProperty(_ input: DescribeAssetPropertyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetPropertyResponse {
        return try await self.client.execute(operation: "DescribeAssetProperty", path: "/assets/{assetId}/properties/{propertyId}", httpMethod: .GET, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Retrieves information about a dashboard.
    public func describeDashboard(_ input: DescribeDashboardRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDashboardResponse {
        return try await self.client.execute(operation: "DescribeDashboard", path: "/dashboards/{dashboardId}", httpMethod: .GET, serviceConfig: self.config, input: input, hostPrefix: "monitor.", logger: logger, on: eventLoop)
    }

    /// Retrieves information about the default encryption configuration for the Amazon Web Services account in the default or specified Region. For more information, see Key management in the IoT SiteWise User Guide.
    public func describeDefaultEncryptionConfiguration(_ input: DescribeDefaultEncryptionConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDefaultEncryptionConfigurationResponse {
        return try await self.client.execute(operation: "DescribeDefaultEncryptionConfiguration", path: "/configuration/account/encryption", httpMethod: .GET, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Retrieves information about a gateway.
    public func describeGateway(_ input: DescribeGatewayRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGatewayResponse {
        return try await self.client.execute(operation: "DescribeGateway", path: "/20200301/gateways/{gatewayId}", httpMethod: .GET, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Retrieves information about a gateway capability configuration. Each gateway capability defines data sources for a gateway. A capability configuration can contain multiple data source configurations. If you define OPC-UA sources for a gateway in the IoT SiteWise console, all of your OPC-UA sources are stored in one capability configuration. To list all capability configurations for a gateway, use DescribeGateway.
    public func describeGatewayCapabilityConfiguration(_ input: DescribeGatewayCapabilityConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGatewayCapabilityConfigurationResponse {
        return try await self.client.execute(operation: "DescribeGatewayCapabilityConfiguration", path: "/20200301/gateways/{gatewayId}/capability/{capabilityNamespace}", httpMethod: .GET, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Retrieves the current IoT SiteWise logging options.
    public func describeLoggingOptions(_ input: DescribeLoggingOptionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLoggingOptionsResponse {
        return try await self.client.execute(operation: "DescribeLoggingOptions", path: "/logging", httpMethod: .GET, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Retrieves information about a portal.
    public func describePortal(_ input: DescribePortalRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePortalResponse {
        return try await self.client.execute(operation: "DescribePortal", path: "/portals/{portalId}", httpMethod: .GET, serviceConfig: self.config, input: input, hostPrefix: "monitor.", logger: logger, on: eventLoop)
    }

    /// Retrieves information about a project.
    public func describeProject(_ input: DescribeProjectRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProjectResponse {
        return try await self.client.execute(operation: "DescribeProject", path: "/projects/{projectId}", httpMethod: .GET, serviceConfig: self.config, input: input, hostPrefix: "monitor.", logger: logger, on: eventLoop)
    }

    /// Retrieves information about the storage configuration for IoT SiteWise.
    public func describeStorageConfiguration(_ input: DescribeStorageConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeStorageConfigurationResponse {
        return try await self.client.execute(operation: "DescribeStorageConfiguration", path: "/configuration/account/storage", httpMethod: .GET, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Disassociates a child asset from the given parent asset through a hierarchy defined in the parent asset's model.
    public func disassociateAssets(_ input: DisassociateAssetsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "DisassociateAssets", path: "/assets/{assetId}/disassociate", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Gets aggregated values for an asset property. For more information, see Querying aggregates in the IoT SiteWise User Guide. To identify an asset property, you must specify one of the following:   The assetId and propertyId of an asset property.   A propertyAlias, which is a data stream alias (for example, /company/windfarm/3/turbine/7/temperature). To define an asset property's alias, see UpdateAssetProperty.
    public func getAssetPropertyAggregates(_ input: GetAssetPropertyAggregatesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetAssetPropertyAggregatesResponse {
        return try await self.client.execute(operation: "GetAssetPropertyAggregates", path: "/properties/aggregates", httpMethod: .GET, serviceConfig: self.config, input: input, hostPrefix: "data.", logger: logger, on: eventLoop)
    }

    /// Gets an asset property's current value. For more information, see Querying current values in the IoT SiteWise User Guide. To identify an asset property, you must specify one of the following:   The assetId and propertyId of an asset property.   A propertyAlias, which is a data stream alias (for example, /company/windfarm/3/turbine/7/temperature). To define an asset property's alias, see UpdateAssetProperty.
    public func getAssetPropertyValue(_ input: GetAssetPropertyValueRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetAssetPropertyValueResponse {
        return try await self.client.execute(operation: "GetAssetPropertyValue", path: "/properties/latest", httpMethod: .GET, serviceConfig: self.config, input: input, hostPrefix: "data.", logger: logger, on: eventLoop)
    }

    /// Gets the history of an asset property's values. For more information, see Querying historical values in the IoT SiteWise User Guide. To identify an asset property, you must specify one of the following:   The assetId and propertyId of an asset property.   A propertyAlias, which is a data stream alias (for example, /company/windfarm/3/turbine/7/temperature). To define an asset property's alias, see UpdateAssetProperty.
    public func getAssetPropertyValueHistory(_ input: GetAssetPropertyValueHistoryRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetAssetPropertyValueHistoryResponse {
        return try await self.client.execute(operation: "GetAssetPropertyValueHistory", path: "/properties/history", httpMethod: .GET, serviceConfig: self.config, input: input, hostPrefix: "data.", logger: logger, on: eventLoop)
    }

    /// Get interpolated values for an asset property for a specified time interval, during a period of time. If your time series is missing data points during the specified time interval,  you can use interpolation to estimate the missing data. For example, you can use this operation to return the interpolated temperature values for a wind turbine every 24 hours over a duration of 7 days. To identify an asset property, you must specify one of the following:   The assetId and propertyId of an asset property.   A propertyAlias, which is a data stream alias (for example, /company/windfarm/3/turbine/7/temperature). To define an asset property's alias, see UpdateAssetProperty.
    public func getInterpolatedAssetPropertyValues(_ input: GetInterpolatedAssetPropertyValuesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetInterpolatedAssetPropertyValuesResponse {
        return try await self.client.execute(operation: "GetInterpolatedAssetPropertyValues", path: "/properties/interpolated", httpMethod: .GET, serviceConfig: self.config, input: input, hostPrefix: "data.", logger: logger, on: eventLoop)
    }

    /// Retrieves a paginated list of access policies for an identity (an Amazon Web Services SSO user, an Amazon Web Services SSO group, or an IAM user) or an IoT SiteWise Monitor resource (a portal or project).
    public func listAccessPolicies(_ input: ListAccessPoliciesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAccessPoliciesResponse {
        return try await self.client.execute(operation: "ListAccessPolicies", path: "/access-policies", httpMethod: .GET, serviceConfig: self.config, input: input, hostPrefix: "monitor.", logger: logger, on: eventLoop)
    }

    /// Retrieves a paginated list of summaries of all asset models.
    public func listAssetModels(_ input: ListAssetModelsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAssetModelsResponse {
        return try await self.client.execute(operation: "ListAssetModels", path: "/asset-models", httpMethod: .GET, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Retrieves a paginated list of asset relationships for an asset. You can use this operation to identify an asset's root asset and all associated assets between that asset and its root.
    public func listAssetRelationships(_ input: ListAssetRelationshipsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAssetRelationshipsResponse {
        return try await self.client.execute(operation: "ListAssetRelationships", path: "/assets/{assetId}/assetRelationships", httpMethod: .GET, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Retrieves a paginated list of asset summaries. You can use this operation to do the following:   List assets based on a specific asset model.   List top-level assets.   You can't use this operation to list all assets. To retrieve summaries for all of your assets, use ListAssetModels to get all of your asset model IDs. Then, use ListAssets to get all assets for each asset model.
    public func listAssets(_ input: ListAssetsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAssetsResponse {
        return try await self.client.execute(operation: "ListAssets", path: "/assets", httpMethod: .GET, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Retrieves a paginated list of associated assets. You can use this operation to do the following:   List child assets associated to a parent asset by a hierarchy that you specify.   List an asset's parent asset.
    public func listAssociatedAssets(_ input: ListAssociatedAssetsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAssociatedAssetsResponse {
        return try await self.client.execute(operation: "ListAssociatedAssets", path: "/assets/{assetId}/hierarchies", httpMethod: .GET, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Retrieves a paginated list of dashboards for an IoT SiteWise Monitor project.
    public func listDashboards(_ input: ListDashboardsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListDashboardsResponse {
        return try await self.client.execute(operation: "ListDashboards", path: "/dashboards", httpMethod: .GET, serviceConfig: self.config, input: input, hostPrefix: "monitor.", logger: logger, on: eventLoop)
    }

    /// Retrieves a paginated list of gateways.
    public func listGateways(_ input: ListGatewaysRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListGatewaysResponse {
        return try await self.client.execute(operation: "ListGateways", path: "/20200301/gateways", httpMethod: .GET, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Retrieves a paginated list of IoT SiteWise Monitor portals.
    public func listPortals(_ input: ListPortalsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListPortalsResponse {
        return try await self.client.execute(operation: "ListPortals", path: "/portals", httpMethod: .GET, serviceConfig: self.config, input: input, hostPrefix: "monitor.", logger: logger, on: eventLoop)
    }

    /// Retrieves a paginated list of assets associated with an IoT SiteWise Monitor project.
    public func listProjectAssets(_ input: ListProjectAssetsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListProjectAssetsResponse {
        return try await self.client.execute(operation: "ListProjectAssets", path: "/projects/{projectId}/assets", httpMethod: .GET, serviceConfig: self.config, input: input, hostPrefix: "monitor.", logger: logger, on: eventLoop)
    }

    /// Retrieves a paginated list of projects for an IoT SiteWise Monitor portal.
    public func listProjects(_ input: ListProjectsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListProjectsResponse {
        return try await self.client.execute(operation: "ListProjects", path: "/projects", httpMethod: .GET, serviceConfig: self.config, input: input, hostPrefix: "monitor.", logger: logger, on: eventLoop)
    }

    /// Retrieves the list of tags for an IoT SiteWise resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/tags", httpMethod: .GET, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Sets the default encryption configuration for the Amazon Web Services account. For more information, see Key management in the IoT SiteWise User Guide.
    public func putDefaultEncryptionConfiguration(_ input: PutDefaultEncryptionConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutDefaultEncryptionConfigurationResponse {
        return try await self.client.execute(operation: "PutDefaultEncryptionConfiguration", path: "/configuration/account/encryption", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Sets logging options for IoT SiteWise.
    public func putLoggingOptions(_ input: PutLoggingOptionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutLoggingOptionsResponse {
        return try await self.client.execute(operation: "PutLoggingOptions", path: "/logging", httpMethod: .PUT, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Configures storage settings for IoT SiteWise.
    public func putStorageConfiguration(_ input: PutStorageConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutStorageConfigurationResponse {
        return try await self.client.execute(operation: "PutStorageConfiguration", path: "/configuration/account/storage", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Adds tags to an IoT SiteWise resource. If a tag already exists for the resource, this operation updates the tag's value.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/tags", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Removes a tag from an IoT SiteWise resource.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/tags", httpMethod: .DELETE, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Updates an existing access policy that specifies an identity's access to an IoT SiteWise Monitor portal or project resource.
    public func updateAccessPolicy(_ input: UpdateAccessPolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateAccessPolicyResponse {
        return try await self.client.execute(operation: "UpdateAccessPolicy", path: "/access-policies/{accessPolicyId}", httpMethod: .PUT, serviceConfig: self.config, input: input, hostPrefix: "monitor.", logger: logger, on: eventLoop)
    }

    /// Updates an asset's name. For more information, see Updating assets and models in the IoT SiteWise User Guide.
    public func updateAsset(_ input: UpdateAssetRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateAssetResponse {
        return try await self.client.execute(operation: "UpdateAsset", path: "/assets/{assetId}", httpMethod: .PUT, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Updates an asset model and all of the assets that were created from the model. Each asset created from the model inherits the updated asset model's property and hierarchy definitions. For more information, see Updating assets and models in the IoT SiteWise User Guide.  This operation overwrites the existing model with the provided model. To avoid deleting your asset model's properties or hierarchies, you must include their IDs and definitions in the updated asset model payload. For more information, see DescribeAssetModel. If you remove a property from an asset model, IoT SiteWise deletes all previous data for that property. If you remove a hierarchy definition from an asset model, IoT SiteWise disassociates every asset associated with that hierarchy. You can't change the type or data type of an existing property.
    public func updateAssetModel(_ input: UpdateAssetModelRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateAssetModelResponse {
        return try await self.client.execute(operation: "UpdateAssetModel", path: "/asset-models/{assetModelId}", httpMethod: .PUT, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Updates an asset property's alias and notification state.  This operation overwrites the property's existing alias and notification state. To keep your existing property's alias or notification state, you must include the existing values in the UpdateAssetProperty request. For more information, see DescribeAssetProperty.
    public func updateAssetProperty(_ input: UpdateAssetPropertyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "UpdateAssetProperty", path: "/assets/{assetId}/properties/{propertyId}", httpMethod: .PUT, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Updates an IoT SiteWise Monitor dashboard.
    public func updateDashboard(_ input: UpdateDashboardRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateDashboardResponse {
        return try await self.client.execute(operation: "UpdateDashboard", path: "/dashboards/{dashboardId}", httpMethod: .PUT, serviceConfig: self.config, input: input, hostPrefix: "monitor.", logger: logger, on: eventLoop)
    }

    /// Updates a gateway's name.
    public func updateGateway(_ input: UpdateGatewayRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws {
        return try await self.client.execute(operation: "UpdateGateway", path: "/20200301/gateways/{gatewayId}", httpMethod: .PUT, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Updates a gateway capability configuration or defines a new capability configuration. Each gateway capability defines data sources for a gateway. A capability configuration can contain multiple data source configurations. If you define OPC-UA sources for a gateway in the IoT SiteWise console, all of your OPC-UA sources are stored in one capability configuration. To list all capability configurations for a gateway, use DescribeGateway.
    public func updateGatewayCapabilityConfiguration(_ input: UpdateGatewayCapabilityConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateGatewayCapabilityConfigurationResponse {
        return try await self.client.execute(operation: "UpdateGatewayCapabilityConfiguration", path: "/20200301/gateways/{gatewayId}/capability", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "api.", logger: logger, on: eventLoop)
    }

    /// Updates an IoT SiteWise Monitor portal.
    public func updatePortal(_ input: UpdatePortalRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdatePortalResponse {
        return try await self.client.execute(operation: "UpdatePortal", path: "/portals/{portalId}", httpMethod: .PUT, serviceConfig: self.config, input: input, hostPrefix: "monitor.", logger: logger, on: eventLoop)
    }

    /// Updates an IoT SiteWise Monitor project.
    public func updateProject(_ input: UpdateProjectRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateProjectResponse {
        return try await self.client.execute(operation: "UpdateProject", path: "/projects/{projectId}", httpMethod: .PUT, serviceConfig: self.config, input: input, hostPrefix: "monitor.", logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
