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

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto/tree/main/CodeGenerator. DO NOT EDIT.

#if compiler(>=5.5) && canImport(_Concurrency)

import SotoCore

@available(macOS 12.0, iOS 15.0, watchOS 8.0, tvOS 15.0, *)
extension LocationService {
    // MARK: Async API Calls

    /// Creates an association between a geofence collection and a tracker resource. This allows the tracker resource to communicate location data to the linked geofence collection.  You can associate up to five geofence collections to each tracker resource.  Currently not supported — Cross-account configurations, such as creating associations between a tracker resource in one account and a geofence collection in another account.
    public func associateTrackerConsumer(_ input: AssociateTrackerConsumerRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssociateTrackerConsumerResponse {
        return try await self.client.execute(operation: "AssociateTrackerConsumer", path: "/tracking/v0/trackers/{TrackerName}/consumers", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "tracking.", logger: logger, on: eventLoop)
    }

    /// Deletes the position history of one or more devices from a tracker resource.
    public func batchDeleteDevicePositionHistory(_ input: BatchDeleteDevicePositionHistoryRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchDeleteDevicePositionHistoryResponse {
        return try await self.client.execute(operation: "BatchDeleteDevicePositionHistory", path: "/tracking/v0/trackers/{TrackerName}/delete-positions", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "tracking.", logger: logger, on: eventLoop)
    }

    /// Deletes a batch of geofences from a geofence collection.  This operation deletes the resource permanently.
    public func batchDeleteGeofence(_ input: BatchDeleteGeofenceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchDeleteGeofenceResponse {
        return try await self.client.execute(operation: "BatchDeleteGeofence", path: "/geofencing/v0/collections/{CollectionName}/delete-geofences", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "geofencing.", logger: logger, on: eventLoop)
    }

    /// Evaluates device positions against the geofence geometries from a given geofence collection. This operation always returns an empty response because geofences are asynchronously evaluated. The evaluation determines if the device has entered or exited a geofenced area, and then publishes one of the following events to Amazon EventBridge:    ENTER if Amazon Location determines that the tracked device has entered a geofenced area.    EXIT if Amazon Location determines that the tracked device has exited a geofenced area.    The last geofence that a device was observed within is tracked for 30 days after the most recent device position update.   Geofence evaluation uses the given device position. It does not account for the optional Accuracy of a DevicePositionUpdate.
    public func batchEvaluateGeofences(_ input: BatchEvaluateGeofencesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchEvaluateGeofencesResponse {
        return try await self.client.execute(operation: "BatchEvaluateGeofences", path: "/geofencing/v0/collections/{CollectionName}/positions", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "geofencing.", logger: logger, on: eventLoop)
    }

    /// Lists the latest device positions for requested devices.
    public func batchGetDevicePosition(_ input: BatchGetDevicePositionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchGetDevicePositionResponse {
        return try await self.client.execute(operation: "BatchGetDevicePosition", path: "/tracking/v0/trackers/{TrackerName}/get-positions", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "tracking.", logger: logger, on: eventLoop)
    }

    /// A batch request for storing geofence geometries into a given geofence collection, or updates the geometry of an existing geofence if a geofence ID is included in the request.
    public func batchPutGeofence(_ input: BatchPutGeofenceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchPutGeofenceResponse {
        return try await self.client.execute(operation: "BatchPutGeofence", path: "/geofencing/v0/collections/{CollectionName}/put-geofences", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "geofencing.", logger: logger, on: eventLoop)
    }

    /// Uploads position update data for one or more devices to a tracker resource. Amazon Location uses the data when it reports the last known device position and position history. Amazon Location retains location data for 30 days.  Position updates are handled based on the PositionFiltering property of the tracker. When PositionFiltering is set to TimeBased, updates are evaluated against linked geofence collections, and location data is stored at a maximum of one position per 30 second interval. If your update frequency is more often than every 30 seconds, only one update per 30 seconds is stored for each unique device ID. When PositionFiltering is set to DistanceBased filtering, location data is stored and evaluated against linked geofence collections only if the device has moved more than 30 m (98.4 ft). When PositionFiltering is set to AccuracyBased filtering, location data is stored and evaluated against linked geofence collections only if the device has moved more than the measured accuracy. For example, if two consecutive updates from a device have a horizontal accuracy of 5 m and 10 m, the second update is neither stored or evaluated if the device has moved less than 15 m. If PositionFiltering is set to AccuracyBased filtering, Amazon Location uses the default value { "Horizontal": 0} when accuracy is not provided on a DevicePositionUpdate.
    public func batchUpdateDevicePosition(_ input: BatchUpdateDevicePositionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchUpdateDevicePositionResponse {
        return try await self.client.execute(operation: "BatchUpdateDevicePosition", path: "/tracking/v0/trackers/{TrackerName}/positions", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "tracking.", logger: logger, on: eventLoop)
    }

    ///  Calculates a route given the following required parameters: DeparturePostiton and DestinationPosition. Requires that you first create a route calculator resource. By default, a request that doesn't specify a departure time uses the best time of day to travel with the best traffic conditions when calculating the route. Additional options include:    Specifying a departure time using either DepartureTime or DepartureNow. This calculates a route based on predictive traffic data at the given time.   You can't specify both DepartureTime and DepartureNow in a single request. Specifying both parameters returns a validation error.     Specifying a travel mode using TravelMode. This lets you specify an additional route preference such as CarModeOptions if traveling by Car, or TruckModeOptions if traveling by Truck.
    public func calculateRoute(_ input: CalculateRouteRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CalculateRouteResponse {
        return try await self.client.execute(operation: "CalculateRoute", path: "/routes/v0/calculators/{CalculatorName}/calculate/route", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "routes.", logger: logger, on: eventLoop)
    }

    /// Creates a geofence collection, which manages and stores geofences.
    public func createGeofenceCollection(_ input: CreateGeofenceCollectionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateGeofenceCollectionResponse {
        return try await self.client.execute(operation: "CreateGeofenceCollection", path: "/geofencing/v0/collections", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "geofencing.", logger: logger, on: eventLoop)
    }

    /// Creates a map resource in your AWS account, which provides map tiles of different styles sourced from global location data providers.
    public func createMap(_ input: CreateMapRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateMapResponse {
        return try await self.client.execute(operation: "CreateMap", path: "/maps/v0/maps", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "maps.", logger: logger, on: eventLoop)
    }

    /// Creates a place index resource in your AWS account. Use a place index resource to geocode addresses and other text queries by using the SearchPlaceIndexForText operation, and reverse geocode coordinates by using the SearchPlaceIndexForPosition operation, and enable autosuggestions by using the SearchPlaceIndexForSuggestions operation.
    public func createPlaceIndex(_ input: CreatePlaceIndexRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePlaceIndexResponse {
        return try await self.client.execute(operation: "CreatePlaceIndex", path: "/places/v0/indexes", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "places.", logger: logger, on: eventLoop)
    }

    /// Creates a route calculator resource in your AWS account. You can send requests to a route calculator resource to estimate travel time, distance, and get directions. A route calculator sources traffic and road network data from your chosen data provider.
    public func createRouteCalculator(_ input: CreateRouteCalculatorRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateRouteCalculatorResponse {
        return try await self.client.execute(operation: "CreateRouteCalculator", path: "/routes/v0/calculators", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "routes.", logger: logger, on: eventLoop)
    }

    /// Creates a tracker resource in your AWS account, which lets you retrieve current and historical location of devices.
    public func createTracker(_ input: CreateTrackerRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTrackerResponse {
        return try await self.client.execute(operation: "CreateTracker", path: "/tracking/v0/trackers", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "tracking.", logger: logger, on: eventLoop)
    }

    /// Deletes a geofence collection from your AWS account.  This operation deletes the resource permanently. If the geofence collection is the target of a tracker resource, the devices will no longer be monitored.
    public func deleteGeofenceCollection(_ input: DeleteGeofenceCollectionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteGeofenceCollectionResponse {
        return try await self.client.execute(operation: "DeleteGeofenceCollection", path: "/geofencing/v0/collections/{CollectionName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, hostPrefix: "geofencing.", logger: logger, on: eventLoop)
    }

    /// Deletes a map resource from your AWS account.  This operation deletes the resource permanently. If the map is being used in an application, the map may not render.
    public func deleteMap(_ input: DeleteMapRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteMapResponse {
        return try await self.client.execute(operation: "DeleteMap", path: "/maps/v0/maps/{MapName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, hostPrefix: "maps.", logger: logger, on: eventLoop)
    }

    /// Deletes a place index resource from your AWS account.  This operation deletes the resource permanently.
    public func deletePlaceIndex(_ input: DeletePlaceIndexRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeletePlaceIndexResponse {
        return try await self.client.execute(operation: "DeletePlaceIndex", path: "/places/v0/indexes/{IndexName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, hostPrefix: "places.", logger: logger, on: eventLoop)
    }

    /// Deletes a route calculator resource from your AWS account.  This operation deletes the resource permanently.
    public func deleteRouteCalculator(_ input: DeleteRouteCalculatorRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRouteCalculatorResponse {
        return try await self.client.execute(operation: "DeleteRouteCalculator", path: "/routes/v0/calculators/{CalculatorName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, hostPrefix: "routes.", logger: logger, on: eventLoop)
    }

    /// Deletes a tracker resource from your AWS account.  This operation deletes the resource permanently. If the tracker resource is in use, you may encounter an error. Make sure that the target resource isn't a dependency for your applications.
    public func deleteTracker(_ input: DeleteTrackerRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteTrackerResponse {
        return try await self.client.execute(operation: "DeleteTracker", path: "/tracking/v0/trackers/{TrackerName}", httpMethod: .DELETE, serviceConfig: self.config, input: input, hostPrefix: "tracking.", logger: logger, on: eventLoop)
    }

    /// Retrieves the geofence collection details.
    public func describeGeofenceCollection(_ input: DescribeGeofenceCollectionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGeofenceCollectionResponse {
        return try await self.client.execute(operation: "DescribeGeofenceCollection", path: "/geofencing/v0/collections/{CollectionName}", httpMethod: .GET, serviceConfig: self.config, input: input, hostPrefix: "geofencing.", logger: logger, on: eventLoop)
    }

    /// Retrieves the map resource details.
    public func describeMap(_ input: DescribeMapRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMapResponse {
        return try await self.client.execute(operation: "DescribeMap", path: "/maps/v0/maps/{MapName}", httpMethod: .GET, serviceConfig: self.config, input: input, hostPrefix: "maps.", logger: logger, on: eventLoop)
    }

    /// Retrieves the place index resource details.
    public func describePlaceIndex(_ input: DescribePlaceIndexRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePlaceIndexResponse {
        return try await self.client.execute(operation: "DescribePlaceIndex", path: "/places/v0/indexes/{IndexName}", httpMethod: .GET, serviceConfig: self.config, input: input, hostPrefix: "places.", logger: logger, on: eventLoop)
    }

    /// Retrieves the route calculator resource details.
    public func describeRouteCalculator(_ input: DescribeRouteCalculatorRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRouteCalculatorResponse {
        return try await self.client.execute(operation: "DescribeRouteCalculator", path: "/routes/v0/calculators/{CalculatorName}", httpMethod: .GET, serviceConfig: self.config, input: input, hostPrefix: "routes.", logger: logger, on: eventLoop)
    }

    /// Retrieves the tracker resource details.
    public func describeTracker(_ input: DescribeTrackerRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTrackerResponse {
        return try await self.client.execute(operation: "DescribeTracker", path: "/tracking/v0/trackers/{TrackerName}", httpMethod: .GET, serviceConfig: self.config, input: input, hostPrefix: "tracking.", logger: logger, on: eventLoop)
    }

    /// Removes the association between a tracker resource and a geofence collection.  Once you unlink a tracker resource from a geofence collection, the tracker positions will no longer be automatically evaluated against geofences.
    public func disassociateTrackerConsumer(_ input: DisassociateTrackerConsumerRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisassociateTrackerConsumerResponse {
        return try await self.client.execute(operation: "DisassociateTrackerConsumer", path: "/tracking/v0/trackers/{TrackerName}/consumers/{ConsumerArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, hostPrefix: "tracking.", logger: logger, on: eventLoop)
    }

    /// Retrieves a device's most recent position according to its sample time.  Device positions are deleted after 30 days.
    public func getDevicePosition(_ input: GetDevicePositionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDevicePositionResponse {
        return try await self.client.execute(operation: "GetDevicePosition", path: "/tracking/v0/trackers/{TrackerName}/devices/{DeviceId}/positions/latest", httpMethod: .GET, serviceConfig: self.config, input: input, hostPrefix: "tracking.", logger: logger, on: eventLoop)
    }

    /// Retrieves the device position history from a tracker resource within a specified range of time.  Device positions are deleted after 30 days.
    public func getDevicePositionHistory(_ input: GetDevicePositionHistoryRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDevicePositionHistoryResponse {
        return try await self.client.execute(operation: "GetDevicePositionHistory", path: "/tracking/v0/trackers/{TrackerName}/devices/{DeviceId}/list-positions", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "tracking.", logger: logger, on: eventLoop)
    }

    /// Retrieves the geofence details from a geofence collection.
    public func getGeofence(_ input: GetGeofenceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetGeofenceResponse {
        return try await self.client.execute(operation: "GetGeofence", path: "/geofencing/v0/collections/{CollectionName}/geofences/{GeofenceId}", httpMethod: .GET, serviceConfig: self.config, input: input, hostPrefix: "geofencing.", logger: logger, on: eventLoop)
    }

    /// Retrieves glyphs used to display labels on a map.
    public func getMapGlyphs(_ input: GetMapGlyphsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetMapGlyphsResponse {
        return try await self.client.execute(operation: "GetMapGlyphs", path: "/maps/v0/maps/{MapName}/glyphs/{FontStack}/{FontUnicodeRange}", httpMethod: .GET, serviceConfig: self.config, input: input, hostPrefix: "maps.", logger: logger, on: eventLoop)
    }

    /// Retrieves the sprite sheet corresponding to a map resource. The sprite sheet is a PNG image paired with a JSON document describing the offsets of individual icons that will be displayed on a rendered map.
    public func getMapSprites(_ input: GetMapSpritesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetMapSpritesResponse {
        return try await self.client.execute(operation: "GetMapSprites", path: "/maps/v0/maps/{MapName}/sprites/{FileName}", httpMethod: .GET, serviceConfig: self.config, input: input, hostPrefix: "maps.", logger: logger, on: eventLoop)
    }

    /// Retrieves the map style descriptor from a map resource.  The style descriptor contains speciﬁcations on how features render on a map. For example, what data to display, what order to display the data in, and the style for the data. Style descriptors follow the Mapbox Style Specification.
    public func getMapStyleDescriptor(_ input: GetMapStyleDescriptorRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetMapStyleDescriptorResponse {
        return try await self.client.execute(operation: "GetMapStyleDescriptor", path: "/maps/v0/maps/{MapName}/style-descriptor", httpMethod: .GET, serviceConfig: self.config, input: input, hostPrefix: "maps.", logger: logger, on: eventLoop)
    }

    /// Retrieves a vector data tile from the map resource. Map tiles are used by clients to render a map. they're addressed using a grid arrangement with an X coordinate, Y coordinate, and Z (zoom) level.  The origin (0, 0) is the top left of the map. Increasing the zoom level by 1 doubles both the X and Y dimensions, so a tile containing data for the entire world at (0/0/0) will be split into 4 tiles at zoom 1 (1/0/0, 1/0/1, 1/1/0, 1/1/1).
    public func getMapTile(_ input: GetMapTileRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetMapTileResponse {
        return try await self.client.execute(operation: "GetMapTile", path: "/maps/v0/maps/{MapName}/tiles/{Z}/{X}/{Y}", httpMethod: .GET, serviceConfig: self.config, input: input, hostPrefix: "maps.", logger: logger, on: eventLoop)
    }

    /// A batch request to retrieve all device positions.
    public func listDevicePositions(_ input: ListDevicePositionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListDevicePositionsResponse {
        return try await self.client.execute(operation: "ListDevicePositions", path: "/tracking/v0/trackers/{TrackerName}/list-positions", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "tracking.", logger: logger, on: eventLoop)
    }

    /// Lists geofence collections in your AWS account.
    public func listGeofenceCollections(_ input: ListGeofenceCollectionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListGeofenceCollectionsResponse {
        return try await self.client.execute(operation: "ListGeofenceCollections", path: "/geofencing/v0/list-collections", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "geofencing.", logger: logger, on: eventLoop)
    }

    /// Lists geofences stored in a given geofence collection.
    public func listGeofences(_ input: ListGeofencesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListGeofencesResponse {
        return try await self.client.execute(operation: "ListGeofences", path: "/geofencing/v0/collections/{CollectionName}/list-geofences", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "geofencing.", logger: logger, on: eventLoop)
    }

    /// Lists map resources in your AWS account.
    public func listMaps(_ input: ListMapsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListMapsResponse {
        return try await self.client.execute(operation: "ListMaps", path: "/maps/v0/list-maps", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "maps.", logger: logger, on: eventLoop)
    }

    /// Lists place index resources in your AWS account.
    public func listPlaceIndexes(_ input: ListPlaceIndexesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListPlaceIndexesResponse {
        return try await self.client.execute(operation: "ListPlaceIndexes", path: "/places/v0/list-indexes", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "places.", logger: logger, on: eventLoop)
    }

    /// Lists route calculator resources in your AWS account.
    public func listRouteCalculators(_ input: ListRouteCalculatorsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListRouteCalculatorsResponse {
        return try await self.client.execute(operation: "ListRouteCalculators", path: "/routes/v0/list-calculators", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "routes.", logger: logger, on: eventLoop)
    }

    /// Returns a list of tags that are applied to the specified Amazon Location resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/tags/{ResourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, hostPrefix: "metadata.", logger: logger, on: eventLoop)
    }

    /// Lists geofence collections currently associated to the given tracker resource.
    public func listTrackerConsumers(_ input: ListTrackerConsumersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTrackerConsumersResponse {
        return try await self.client.execute(operation: "ListTrackerConsumers", path: "/tracking/v0/trackers/{TrackerName}/list-consumers", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "tracking.", logger: logger, on: eventLoop)
    }

    /// Lists tracker resources in your AWS account.
    public func listTrackers(_ input: ListTrackersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTrackersResponse {
        return try await self.client.execute(operation: "ListTrackers", path: "/tracking/v0/list-trackers", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "tracking.", logger: logger, on: eventLoop)
    }

    /// Stores a geofence geometry in a given geofence collection, or updates the geometry of an existing geofence if a geofence ID is included in the request.
    public func putGeofence(_ input: PutGeofenceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutGeofenceResponse {
        return try await self.client.execute(operation: "PutGeofence", path: "/geofencing/v0/collections/{CollectionName}/geofences/{GeofenceId}", httpMethod: .PUT, serviceConfig: self.config, input: input, hostPrefix: "geofencing.", logger: logger, on: eventLoop)
    }

    /// Reverse geocodes a given coordinate and returns a legible address. Allows you to search for Places or points of interest near a given position.
    public func searchPlaceIndexForPosition(_ input: SearchPlaceIndexForPositionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SearchPlaceIndexForPositionResponse {
        return try await self.client.execute(operation: "SearchPlaceIndexForPosition", path: "/places/v0/indexes/{IndexName}/search/position", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "places.", logger: logger, on: eventLoop)
    }

    /// Generates suggestions for addresses and points of interest based on partial or misspelled free-form text. This operation is also known as autocomplete, autosuggest, or fuzzy matching. Optional parameters let you narrow your search results by bounding box or country, or bias your search toward a specific position on the globe.  You can search for suggested place names near a specified position by using BiasPosition, or filter results within a bounding box by using FilterBBox. These parameters are mutually exclusive; using both BiasPosition and FilterBBox in the same command returns an error.
    public func searchPlaceIndexForSuggestions(_ input: SearchPlaceIndexForSuggestionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SearchPlaceIndexForSuggestionsResponse {
        return try await self.client.execute(operation: "SearchPlaceIndexForSuggestions", path: "/places/v0/indexes/{IndexName}/search/suggestions", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "places.", logger: logger, on: eventLoop)
    }

    /// Geocodes free-form text, such as an address, name, city, or region to allow you to search for Places or points of interest.  Optional parameters let you narrow your search results by bounding box or country, or bias your search toward a specific position on the globe.  You can search for places near a given position using BiasPosition, or filter results within a bounding box using FilterBBox. Providing both parameters simultaneously returns an error.  Search results are returned in order of highest to lowest relevance.
    public func searchPlaceIndexForText(_ input: SearchPlaceIndexForTextRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SearchPlaceIndexForTextResponse {
        return try await self.client.execute(operation: "SearchPlaceIndexForText", path: "/places/v0/indexes/{IndexName}/search/text", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "places.", logger: logger, on: eventLoop)
    }

    /// Assigns one or more tags (key-value pairs) to the specified Amazon Location Service resource.  &lt;p&gt;Tags can help you organize and categorize your resources. You can also use them to scope user permissions, by granting a user permission to access or change only resources with certain tag values.&lt;/p&gt; &lt;p&gt;You can use the &lt;code&gt;TagResource&lt;/code&gt; operation with an Amazon Location Service resource that already has tags. If you specify a new tag key for the resource, this tag is appended to the tags already associated with the resource. If you specify a tag key that's already associated with the resource, the new tag value that you specify replaces the previous value for that tag. &lt;/p&gt; &lt;p&gt;You can associate up to 50 tags with a resource.&lt;/p&gt;
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/tags/{ResourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, hostPrefix: "metadata.", logger: logger, on: eventLoop)
    }

    /// Removes one or more tags from the specified Amazon Location resource.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/tags/{ResourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, hostPrefix: "metadata.", logger: logger, on: eventLoop)
    }

    /// Updates the specified properties of a given geofence collection.
    public func updateGeofenceCollection(_ input: UpdateGeofenceCollectionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateGeofenceCollectionResponse {
        return try await self.client.execute(operation: "UpdateGeofenceCollection", path: "/geofencing/v0/collections/{CollectionName}", httpMethod: .PATCH, serviceConfig: self.config, input: input, hostPrefix: "geofencing.", logger: logger, on: eventLoop)
    }

    /// Updates the specified properties of a given map resource.
    public func updateMap(_ input: UpdateMapRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateMapResponse {
        return try await self.client.execute(operation: "UpdateMap", path: "/maps/v0/maps/{MapName}", httpMethod: .PATCH, serviceConfig: self.config, input: input, hostPrefix: "maps.", logger: logger, on: eventLoop)
    }

    /// Updates the specified properties of a given place index resource.
    public func updatePlaceIndex(_ input: UpdatePlaceIndexRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdatePlaceIndexResponse {
        return try await self.client.execute(operation: "UpdatePlaceIndex", path: "/places/v0/indexes/{IndexName}", httpMethod: .PATCH, serviceConfig: self.config, input: input, hostPrefix: "places.", logger: logger, on: eventLoop)
    }

    /// Updates the specified properties for a given route calculator resource.
    public func updateRouteCalculator(_ input: UpdateRouteCalculatorRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateRouteCalculatorResponse {
        return try await self.client.execute(operation: "UpdateRouteCalculator", path: "/routes/v0/calculators/{CalculatorName}", httpMethod: .PATCH, serviceConfig: self.config, input: input, hostPrefix: "routes.", logger: logger, on: eventLoop)
    }

    /// Updates the specified properties of a given tracker resource.
    public func updateTracker(_ input: UpdateTrackerRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateTrackerResponse {
        return try await self.client.execute(operation: "UpdateTracker", path: "/tracking/v0/trackers/{TrackerName}", httpMethod: .PATCH, serviceConfig: self.config, input: input, hostPrefix: "tracking.", logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
