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
extension CloudSearch {
    // MARK: Async API Calls

    /// Indexes the search suggestions. For more information, see Configuring Suggesters in the Amazon CloudSearch Developer Guide.
    public func buildSuggesters(_ input: BuildSuggestersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BuildSuggestersResponse {
        return try await self.client.execute(operation: "BuildSuggesters", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new search domain. For more information, see Creating a Search Domain in the Amazon CloudSearch Developer Guide.
    public func createDomain(_ input: CreateDomainRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDomainResponse {
        return try await self.client.execute(operation: "CreateDomain", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Configures an analysis scheme that can be applied to a text or text-array field to define language-specific text processing options. For more information, see Configuring Analysis Schemes in the Amazon CloudSearch Developer Guide.
    public func defineAnalysisScheme(_ input: DefineAnalysisSchemeRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DefineAnalysisSchemeResponse {
        return try await self.client.execute(operation: "DefineAnalysisScheme", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Configures an Expression for the search domain. Used to create new expressions and modify existing ones.  If the expression exists, the new configuration replaces the old one. For more information, see Configuring Expressions in the Amazon CloudSearch Developer Guide.
    public func defineExpression(_ input: DefineExpressionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DefineExpressionResponse {
        return try await self.client.execute(operation: "DefineExpression", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Configures an IndexField for the search domain. Used to create new fields and modify existing ones. You must specify the name of the domain you are configuring and an index field configuration. The index field configuration specifies a unique name, the index field type, and the options you want to configure for the field. The options you can specify depend on the IndexFieldType. If the field exists, the new configuration replaces the old one. For more information, see Configuring Index Fields in the Amazon CloudSearch Developer Guide.
    public func defineIndexField(_ input: DefineIndexFieldRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DefineIndexFieldResponse {
        return try await self.client.execute(operation: "DefineIndexField", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Configures a suggester for a domain. A suggester enables you to display possible matches before users finish typing their queries. When you configure a suggester, you must specify the name of the text field you want to search for possible matches and a unique name for the suggester. For more information, see Getting Search Suggestions in the Amazon CloudSearch Developer Guide.
    public func defineSuggester(_ input: DefineSuggesterRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DefineSuggesterResponse {
        return try await self.client.execute(operation: "DefineSuggester", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an analysis scheme. For more information, see Configuring Analysis Schemes in the Amazon CloudSearch Developer Guide.
    public func deleteAnalysisScheme(_ input: DeleteAnalysisSchemeRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAnalysisSchemeResponse {
        return try await self.client.execute(operation: "DeleteAnalysisScheme", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Permanently deletes a search domain and all of its data. Once a domain has been deleted, it cannot be recovered. For more information, see Deleting a Search  Domain in the Amazon CloudSearch Developer Guide.
    public func deleteDomain(_ input: DeleteDomainRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDomainResponse {
        return try await self.client.execute(operation: "DeleteDomain", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes an Expression from the search domain. For more information, see Configuring Expressions in the Amazon CloudSearch Developer Guide.
    public func deleteExpression(_ input: DeleteExpressionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteExpressionResponse {
        return try await self.client.execute(operation: "DeleteExpression", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes an IndexField from the search domain. For more information, see Configuring Index Fields in the Amazon CloudSearch Developer Guide.
    public func deleteIndexField(_ input: DeleteIndexFieldRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteIndexFieldResponse {
        return try await self.client.execute(operation: "DeleteIndexField", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a suggester. For more information, see Getting Search Suggestions in the Amazon CloudSearch Developer Guide.
    public func deleteSuggester(_ input: DeleteSuggesterRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteSuggesterResponse {
        return try await self.client.execute(operation: "DeleteSuggester", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the analysis schemes configured for a domain. An analysis scheme defines language-specific text processing options for a text field. Can be limited to specific analysis schemes by name.  By default, shows all analysis schemes and includes any pending changes to the configuration. Set the Deployed option to true to show the active configuration and exclude pending changes.  For more information, see Configuring Analysis Schemes in the Amazon CloudSearch Developer Guide.
    public func describeAnalysisSchemes(_ input: DescribeAnalysisSchemesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAnalysisSchemesResponse {
        return try await self.client.execute(operation: "DescribeAnalysisSchemes", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the availability options configured for a domain. By default, shows the configuration with any pending changes. Set the Deployed option to true to show the active configuration and exclude pending changes. For more information, see  Configuring Availability Options in the Amazon CloudSearch Developer Guide.
    public func describeAvailabilityOptions(_ input: DescribeAvailabilityOptionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAvailabilityOptionsResponse {
        return try await self.client.execute(operation: "DescribeAvailabilityOptions", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the domain's endpoint options, specifically whether all requests to the domain must arrive over HTTPS. For more information, see  Configuring Domain Endpoint Options in the Amazon CloudSearch Developer Guide.
    public func describeDomainEndpointOptions(_ input: DescribeDomainEndpointOptionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDomainEndpointOptionsResponse {
        return try await self.client.execute(operation: "DescribeDomainEndpointOptions", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about the search domains owned by this account. Can be limited to specific domains. Shows all domains by default. To get the number of searchable documents in a domain, use the console or submit a matchall request to your domain's search endpoint: q=matchall&amp;q.parser=structured&amp;size=0. For more information, see Getting Information about a Search Domain in the Amazon CloudSearch Developer Guide.
    public func describeDomains(_ input: DescribeDomainsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDomainsResponse {
        return try await self.client.execute(operation: "DescribeDomains", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the expressions configured for the search domain. Can be limited to specific expressions by name. By default, shows all expressions and includes any pending changes to the configuration. Set the Deployed option to true to show the active configuration and exclude pending changes. For more information, see  Configuring Expressions in the Amazon CloudSearch Developer Guide.
    public func describeExpressions(_ input: DescribeExpressionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeExpressionsResponse {
        return try await self.client.execute(operation: "DescribeExpressions", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about the index fields configured for the search domain. Can be limited to specific fields by name.  By default, shows all fields and includes any pending changes to the configuration. Set the Deployed option to true to show the active configuration and exclude pending changes. For more information, see Getting Domain Information in the Amazon CloudSearch Developer Guide.
    public func describeIndexFields(_ input: DescribeIndexFieldsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIndexFieldsResponse {
        return try await self.client.execute(operation: "DescribeIndexFields", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the scaling parameters configured for a domain. A domain's scaling parameters specify the desired search instance type and replication count. For more information, see   Configuring Scaling Options in the Amazon CloudSearch Developer Guide.
    public func describeScalingParameters(_ input: DescribeScalingParametersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeScalingParametersResponse {
        return try await self.client.execute(operation: "DescribeScalingParameters", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets information about the access policies that control access to the domain's document and search endpoints. By default, shows the configuration with any pending changes. Set the Deployed option to true to show the active configuration and exclude pending changes. For more information, see Configuring Access for a Search Domain in the Amazon CloudSearch Developer Guide.
    public func describeServiceAccessPolicies(_ input: DescribeServiceAccessPoliciesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeServiceAccessPoliciesResponse {
        return try await self.client.execute(operation: "DescribeServiceAccessPolicies", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Gets the suggesters configured for a domain. A suggester enables you to display possible matches before users finish typing their queries.  Can be limited to specific suggesters by name.  By default, shows all suggesters and includes any pending changes to the configuration. Set the Deployed option to true to show the active configuration and exclude pending changes.  For more information, see Getting Search Suggestions in the Amazon CloudSearch Developer Guide.
    public func describeSuggesters(_ input: DescribeSuggestersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSuggestersResponse {
        return try await self.client.execute(operation: "DescribeSuggesters", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Tells the search domain to start indexing its documents using the latest indexing options. This operation must be invoked to activate options whose OptionStatus is  RequiresIndexDocuments.
    public func indexDocuments(_ input: IndexDocumentsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> IndexDocumentsResponse {
        return try await self.client.execute(operation: "IndexDocuments", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all search domains owned by an account.
    public func listDomainNames(logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListDomainNamesResponse {
        return try await self.client.execute(operation: "ListDomainNames", path: "/", httpMethod: .POST, serviceConfig: self.config, logger: logger, on: eventLoop)
    }

    /// Configures the availability options for a domain. Enabling the Multi-AZ option expands an Amazon CloudSearch domain to an additional Availability Zone in the same Region to increase fault tolerance in the event of a service disruption. Changes to the Multi-AZ option can take about half an hour to become active. For more information, see Configuring Availability Options in the Amazon CloudSearch Developer Guide.
    public func updateAvailabilityOptions(_ input: UpdateAvailabilityOptionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateAvailabilityOptionsResponse {
        return try await self.client.execute(operation: "UpdateAvailabilityOptions", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the domain's endpoint options, specifically whether all requests to the domain must arrive over HTTPS. For more information, see Configuring Domain Endpoint Options in the Amazon CloudSearch Developer Guide.
    public func updateDomainEndpointOptions(_ input: UpdateDomainEndpointOptionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateDomainEndpointOptionsResponse {
        return try await self.client.execute(operation: "UpdateDomainEndpointOptions", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Configures scaling parameters for a domain. A domain's scaling parameters specify the desired search instance type and replication count. Amazon CloudSearch will still automatically scale your domain based on the volume of data and traffic, but not below the desired instance type and replication count. If the Multi-AZ option is enabled, these values control the resources used per Availability Zone. For more information, see Configuring Scaling Options in the Amazon CloudSearch Developer Guide.
    public func updateScalingParameters(_ input: UpdateScalingParametersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateScalingParametersResponse {
        return try await self.client.execute(operation: "UpdateScalingParameters", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Configures the access rules that control access to the domain's document and search endpoints. For more information, see  Configuring Access for an Amazon CloudSearch Domain.
    public func updateServiceAccessPolicies(_ input: UpdateServiceAccessPoliciesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateServiceAccessPoliciesResponse {
        return try await self.client.execute(operation: "UpdateServiceAccessPolicies", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)
