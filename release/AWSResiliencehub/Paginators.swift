// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime


/// Paginate over `[ListAlarmRecommendationsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListAlarmRecommendationsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListAlarmRecommendationsOutputResponse`
extension ResiliencehubClient {
    public func listAlarmRecommendationsPaginated(input: ListAlarmRecommendationsInput) -> ClientRuntime.PaginatorSequence<ListAlarmRecommendationsInput, ListAlarmRecommendationsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListAlarmRecommendationsInput, ListAlarmRecommendationsOutputResponse>(input: input, inputKey: \ListAlarmRecommendationsInput.nextToken, outputKey: \ListAlarmRecommendationsOutputResponse.nextToken, paginationFunction: self.listAlarmRecommendations(input:))
    }
}

extension ListAlarmRecommendationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListAlarmRecommendationsInput {
        return ListAlarmRecommendationsInput(
            assessmentArn: self.assessmentArn,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[ListAppAssessmentsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListAppAssessmentsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListAppAssessmentsOutputResponse`
extension ResiliencehubClient {
    public func listAppAssessmentsPaginated(input: ListAppAssessmentsInput) -> ClientRuntime.PaginatorSequence<ListAppAssessmentsInput, ListAppAssessmentsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListAppAssessmentsInput, ListAppAssessmentsOutputResponse>(input: input, inputKey: \ListAppAssessmentsInput.nextToken, outputKey: \ListAppAssessmentsOutputResponse.nextToken, paginationFunction: self.listAppAssessments(input:))
    }
}

extension ListAppAssessmentsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListAppAssessmentsInput {
        return ListAppAssessmentsInput(
            appArn: self.appArn,
            assessmentName: self.assessmentName,
            assessmentStatus: self.assessmentStatus,
            complianceStatus: self.complianceStatus,
            invoker: self.invoker,
            maxResults: self.maxResults,
            nextToken: token,
            reverseOrder: self.reverseOrder
        )}
}

/// Paginate over `[ListAppComponentCompliancesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListAppComponentCompliancesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListAppComponentCompliancesOutputResponse`
extension ResiliencehubClient {
    public func listAppComponentCompliancesPaginated(input: ListAppComponentCompliancesInput) -> ClientRuntime.PaginatorSequence<ListAppComponentCompliancesInput, ListAppComponentCompliancesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListAppComponentCompliancesInput, ListAppComponentCompliancesOutputResponse>(input: input, inputKey: \ListAppComponentCompliancesInput.nextToken, outputKey: \ListAppComponentCompliancesOutputResponse.nextToken, paginationFunction: self.listAppComponentCompliances(input:))
    }
}

extension ListAppComponentCompliancesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListAppComponentCompliancesInput {
        return ListAppComponentCompliancesInput(
            assessmentArn: self.assessmentArn,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[ListAppComponentRecommendationsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListAppComponentRecommendationsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListAppComponentRecommendationsOutputResponse`
extension ResiliencehubClient {
    public func listAppComponentRecommendationsPaginated(input: ListAppComponentRecommendationsInput) -> ClientRuntime.PaginatorSequence<ListAppComponentRecommendationsInput, ListAppComponentRecommendationsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListAppComponentRecommendationsInput, ListAppComponentRecommendationsOutputResponse>(input: input, inputKey: \ListAppComponentRecommendationsInput.nextToken, outputKey: \ListAppComponentRecommendationsOutputResponse.nextToken, paginationFunction: self.listAppComponentRecommendations(input:))
    }
}

extension ListAppComponentRecommendationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListAppComponentRecommendationsInput {
        return ListAppComponentRecommendationsInput(
            assessmentArn: self.assessmentArn,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[ListAppsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListAppsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListAppsOutputResponse`
extension ResiliencehubClient {
    public func listAppsPaginated(input: ListAppsInput) -> ClientRuntime.PaginatorSequence<ListAppsInput, ListAppsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListAppsInput, ListAppsOutputResponse>(input: input, inputKey: \ListAppsInput.nextToken, outputKey: \ListAppsOutputResponse.nextToken, paginationFunction: self.listApps(input:))
    }
}

extension ListAppsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListAppsInput {
        return ListAppsInput(
            appArn: self.appArn,
            maxResults: self.maxResults,
            name: self.name,
            nextToken: token
        )}
}

/// Paginate over `[ListAppVersionResourceMappingsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListAppVersionResourceMappingsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListAppVersionResourceMappingsOutputResponse`
extension ResiliencehubClient {
    public func listAppVersionResourceMappingsPaginated(input: ListAppVersionResourceMappingsInput) -> ClientRuntime.PaginatorSequence<ListAppVersionResourceMappingsInput, ListAppVersionResourceMappingsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListAppVersionResourceMappingsInput, ListAppVersionResourceMappingsOutputResponse>(input: input, inputKey: \ListAppVersionResourceMappingsInput.nextToken, outputKey: \ListAppVersionResourceMappingsOutputResponse.nextToken, paginationFunction: self.listAppVersionResourceMappings(input:))
    }
}

extension ListAppVersionResourceMappingsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListAppVersionResourceMappingsInput {
        return ListAppVersionResourceMappingsInput(
            appArn: self.appArn,
            appVersion: self.appVersion,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[ListAppVersionResourcesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListAppVersionResourcesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListAppVersionResourcesOutputResponse`
extension ResiliencehubClient {
    public func listAppVersionResourcesPaginated(input: ListAppVersionResourcesInput) -> ClientRuntime.PaginatorSequence<ListAppVersionResourcesInput, ListAppVersionResourcesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListAppVersionResourcesInput, ListAppVersionResourcesOutputResponse>(input: input, inputKey: \ListAppVersionResourcesInput.nextToken, outputKey: \ListAppVersionResourcesOutputResponse.nextToken, paginationFunction: self.listAppVersionResources(input:))
    }
}

extension ListAppVersionResourcesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListAppVersionResourcesInput {
        return ListAppVersionResourcesInput(
            appArn: self.appArn,
            appVersion: self.appVersion,
            maxResults: self.maxResults,
            nextToken: token,
            resolutionId: self.resolutionId
        )}
}

/// Paginate over `[ListAppVersionsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListAppVersionsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListAppVersionsOutputResponse`
extension ResiliencehubClient {
    public func listAppVersionsPaginated(input: ListAppVersionsInput) -> ClientRuntime.PaginatorSequence<ListAppVersionsInput, ListAppVersionsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListAppVersionsInput, ListAppVersionsOutputResponse>(input: input, inputKey: \ListAppVersionsInput.nextToken, outputKey: \ListAppVersionsOutputResponse.nextToken, paginationFunction: self.listAppVersions(input:))
    }
}

extension ListAppVersionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListAppVersionsInput {
        return ListAppVersionsInput(
            appArn: self.appArn,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[ListRecommendationTemplatesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListRecommendationTemplatesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListRecommendationTemplatesOutputResponse`
extension ResiliencehubClient {
    public func listRecommendationTemplatesPaginated(input: ListRecommendationTemplatesInput) -> ClientRuntime.PaginatorSequence<ListRecommendationTemplatesInput, ListRecommendationTemplatesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListRecommendationTemplatesInput, ListRecommendationTemplatesOutputResponse>(input: input, inputKey: \ListRecommendationTemplatesInput.nextToken, outputKey: \ListRecommendationTemplatesOutputResponse.nextToken, paginationFunction: self.listRecommendationTemplates(input:))
    }
}

extension ListRecommendationTemplatesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListRecommendationTemplatesInput {
        return ListRecommendationTemplatesInput(
            assessmentArn: self.assessmentArn,
            maxResults: self.maxResults,
            name: self.name,
            nextToken: token,
            recommendationTemplateArn: self.recommendationTemplateArn,
            reverseOrder: self.reverseOrder,
            status: self.status
        )}
}

/// Paginate over `[ListResiliencyPoliciesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListResiliencyPoliciesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListResiliencyPoliciesOutputResponse`
extension ResiliencehubClient {
    public func listResiliencyPoliciesPaginated(input: ListResiliencyPoliciesInput) -> ClientRuntime.PaginatorSequence<ListResiliencyPoliciesInput, ListResiliencyPoliciesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListResiliencyPoliciesInput, ListResiliencyPoliciesOutputResponse>(input: input, inputKey: \ListResiliencyPoliciesInput.nextToken, outputKey: \ListResiliencyPoliciesOutputResponse.nextToken, paginationFunction: self.listResiliencyPolicies(input:))
    }
}

extension ListResiliencyPoliciesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListResiliencyPoliciesInput {
        return ListResiliencyPoliciesInput(
            maxResults: self.maxResults,
            nextToken: token,
            policyName: self.policyName
        )}
}

/// Paginate over `[ListSopRecommendationsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListSopRecommendationsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListSopRecommendationsOutputResponse`
extension ResiliencehubClient {
    public func listSopRecommendationsPaginated(input: ListSopRecommendationsInput) -> ClientRuntime.PaginatorSequence<ListSopRecommendationsInput, ListSopRecommendationsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListSopRecommendationsInput, ListSopRecommendationsOutputResponse>(input: input, inputKey: \ListSopRecommendationsInput.nextToken, outputKey: \ListSopRecommendationsOutputResponse.nextToken, paginationFunction: self.listSopRecommendations(input:))
    }
}

extension ListSopRecommendationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListSopRecommendationsInput {
        return ListSopRecommendationsInput(
            assessmentArn: self.assessmentArn,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[ListSuggestedResiliencyPoliciesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListSuggestedResiliencyPoliciesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListSuggestedResiliencyPoliciesOutputResponse`
extension ResiliencehubClient {
    public func listSuggestedResiliencyPoliciesPaginated(input: ListSuggestedResiliencyPoliciesInput) -> ClientRuntime.PaginatorSequence<ListSuggestedResiliencyPoliciesInput, ListSuggestedResiliencyPoliciesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListSuggestedResiliencyPoliciesInput, ListSuggestedResiliencyPoliciesOutputResponse>(input: input, inputKey: \ListSuggestedResiliencyPoliciesInput.nextToken, outputKey: \ListSuggestedResiliencyPoliciesOutputResponse.nextToken, paginationFunction: self.listSuggestedResiliencyPolicies(input:))
    }
}

extension ListSuggestedResiliencyPoliciesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListSuggestedResiliencyPoliciesInput {
        return ListSuggestedResiliencyPoliciesInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[ListTestRecommendationsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListTestRecommendationsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListTestRecommendationsOutputResponse`
extension ResiliencehubClient {
    public func listTestRecommendationsPaginated(input: ListTestRecommendationsInput) -> ClientRuntime.PaginatorSequence<ListTestRecommendationsInput, ListTestRecommendationsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListTestRecommendationsInput, ListTestRecommendationsOutputResponse>(input: input, inputKey: \ListTestRecommendationsInput.nextToken, outputKey: \ListTestRecommendationsOutputResponse.nextToken, paginationFunction: self.listTestRecommendations(input:))
    }
}

extension ListTestRecommendationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListTestRecommendationsInput {
        return ListTestRecommendationsInput(
            assessmentArn: self.assessmentArn,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[ListUnsupportedAppVersionResourcesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListUnsupportedAppVersionResourcesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListUnsupportedAppVersionResourcesOutputResponse`
extension ResiliencehubClient {
    public func listUnsupportedAppVersionResourcesPaginated(input: ListUnsupportedAppVersionResourcesInput) -> ClientRuntime.PaginatorSequence<ListUnsupportedAppVersionResourcesInput, ListUnsupportedAppVersionResourcesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListUnsupportedAppVersionResourcesInput, ListUnsupportedAppVersionResourcesOutputResponse>(input: input, inputKey: \ListUnsupportedAppVersionResourcesInput.nextToken, outputKey: \ListUnsupportedAppVersionResourcesOutputResponse.nextToken, paginationFunction: self.listUnsupportedAppVersionResources(input:))
    }
}

extension ListUnsupportedAppVersionResourcesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListUnsupportedAppVersionResourcesInput {
        return ListUnsupportedAppVersionResourcesInput(
            appArn: self.appArn,
            appVersion: self.appVersion,
            maxResults: self.maxResults,
            nextToken: token,
            resolutionId: self.resolutionId
        )}
}
