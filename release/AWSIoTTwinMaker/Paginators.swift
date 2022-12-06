// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime


/// Paginate over `[ExecuteQueryOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ExecuteQueryInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ExecuteQueryOutputResponse`
extension IoTTwinMakerClient {
    public func executeQueryPaginated(input: ExecuteQueryInput) -> ClientRuntime.PaginatorSequence<ExecuteQueryInput, ExecuteQueryOutputResponse> {
        return ClientRuntime.PaginatorSequence<ExecuteQueryInput, ExecuteQueryOutputResponse>(input: input, inputKey: \ExecuteQueryInput.nextToken, outputKey: \ExecuteQueryOutputResponse.nextToken, paginationFunction: self.executeQuery(input:))
    }
}

extension ExecuteQueryInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ExecuteQueryInput {
        return ExecuteQueryInput(
            maxResults: self.maxResults,
            nextToken: token,
            queryStatement: self.queryStatement,
            workspaceId: self.workspaceId
        )}
}

/// Paginate over `[GetPropertyValueOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[GetPropertyValueInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `GetPropertyValueOutputResponse`
extension IoTTwinMakerClient {
    public func getPropertyValuePaginated(input: GetPropertyValueInput) -> ClientRuntime.PaginatorSequence<GetPropertyValueInput, GetPropertyValueOutputResponse> {
        return ClientRuntime.PaginatorSequence<GetPropertyValueInput, GetPropertyValueOutputResponse>(input: input, inputKey: \GetPropertyValueInput.nextToken, outputKey: \GetPropertyValueOutputResponse.nextToken, paginationFunction: self.getPropertyValue(input:))
    }
}

extension GetPropertyValueInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetPropertyValueInput {
        return GetPropertyValueInput(
            componentName: self.componentName,
            componentTypeId: self.componentTypeId,
            entityId: self.entityId,
            maxResults: self.maxResults,
            nextToken: token,
            propertyGroupName: self.propertyGroupName,
            selectedProperties: self.selectedProperties,
            tabularConditions: self.tabularConditions,
            workspaceId: self.workspaceId
        )}
}

/// Paginate over `[GetPropertyValueHistoryOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[GetPropertyValueHistoryInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `GetPropertyValueHistoryOutputResponse`
extension IoTTwinMakerClient {
    public func getPropertyValueHistoryPaginated(input: GetPropertyValueHistoryInput) -> ClientRuntime.PaginatorSequence<GetPropertyValueHistoryInput, GetPropertyValueHistoryOutputResponse> {
        return ClientRuntime.PaginatorSequence<GetPropertyValueHistoryInput, GetPropertyValueHistoryOutputResponse>(input: input, inputKey: \GetPropertyValueHistoryInput.nextToken, outputKey: \GetPropertyValueHistoryOutputResponse.nextToken, paginationFunction: self.getPropertyValueHistory(input:))
    }
}

extension GetPropertyValueHistoryInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetPropertyValueHistoryInput {
        return GetPropertyValueHistoryInput(
            componentName: self.componentName,
            componentTypeId: self.componentTypeId,
            endDateTime: self.endDateTime,
            endTime: self.endTime,
            entityId: self.entityId,
            interpolation: self.interpolation,
            maxResults: self.maxResults,
            nextToken: token,
            orderByTime: self.orderByTime,
            propertyFilters: self.propertyFilters,
            selectedProperties: self.selectedProperties,
            startDateTime: self.startDateTime,
            startTime: self.startTime,
            workspaceId: self.workspaceId
        )}
}

/// Paginate over `[ListComponentTypesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListComponentTypesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListComponentTypesOutputResponse`
extension IoTTwinMakerClient {
    public func listComponentTypesPaginated(input: ListComponentTypesInput) -> ClientRuntime.PaginatorSequence<ListComponentTypesInput, ListComponentTypesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListComponentTypesInput, ListComponentTypesOutputResponse>(input: input, inputKey: \ListComponentTypesInput.nextToken, outputKey: \ListComponentTypesOutputResponse.nextToken, paginationFunction: self.listComponentTypes(input:))
    }
}

extension ListComponentTypesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListComponentTypesInput {
        return ListComponentTypesInput(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            workspaceId: self.workspaceId
        )}
}

/// Paginate over `[ListEntitiesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListEntitiesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListEntitiesOutputResponse`
extension IoTTwinMakerClient {
    public func listEntitiesPaginated(input: ListEntitiesInput) -> ClientRuntime.PaginatorSequence<ListEntitiesInput, ListEntitiesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListEntitiesInput, ListEntitiesOutputResponse>(input: input, inputKey: \ListEntitiesInput.nextToken, outputKey: \ListEntitiesOutputResponse.nextToken, paginationFunction: self.listEntities(input:))
    }
}

extension ListEntitiesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListEntitiesInput {
        return ListEntitiesInput(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            workspaceId: self.workspaceId
        )}
}

/// Paginate over `[ListScenesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListScenesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListScenesOutputResponse`
extension IoTTwinMakerClient {
    public func listScenesPaginated(input: ListScenesInput) -> ClientRuntime.PaginatorSequence<ListScenesInput, ListScenesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListScenesInput, ListScenesOutputResponse>(input: input, inputKey: \ListScenesInput.nextToken, outputKey: \ListScenesOutputResponse.nextToken, paginationFunction: self.listScenes(input:))
    }
}

extension ListScenesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListScenesInput {
        return ListScenesInput(
            maxResults: self.maxResults,
            nextToken: token,
            workspaceId: self.workspaceId
        )}
}

/// Paginate over `[ListWorkspacesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListWorkspacesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListWorkspacesOutputResponse`
extension IoTTwinMakerClient {
    public func listWorkspacesPaginated(input: ListWorkspacesInput) -> ClientRuntime.PaginatorSequence<ListWorkspacesInput, ListWorkspacesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListWorkspacesInput, ListWorkspacesOutputResponse>(input: input, inputKey: \ListWorkspacesInput.nextToken, outputKey: \ListWorkspacesOutputResponse.nextToken, paginationFunction: self.listWorkspaces(input:))
    }
}

extension ListWorkspacesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListWorkspacesInput {
        return ListWorkspacesInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}
