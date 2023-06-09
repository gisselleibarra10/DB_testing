// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DataBrewClient {
    /// Paginate over `[ListDatasetsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListDatasetsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListDatasetsOutputResponse`
    public func listDatasetsPaginated(input: ListDatasetsInput) -> ClientRuntime.PaginatorSequence<ListDatasetsInput, ListDatasetsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListDatasetsInput, ListDatasetsOutputResponse>(input: input, inputKey: \ListDatasetsInput.nextToken, outputKey: \ListDatasetsOutputResponse.nextToken, paginationFunction: self.listDatasets(input:))
    }
}

extension ListDatasetsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListDatasetsInput {
        return ListDatasetsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListDatasetsInput, Output == ListDatasetsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listDatasetsPaginated`
    /// to access the nested member `[DataBrewClientTypes.Dataset]`
    /// - Returns: `[DataBrewClientTypes.Dataset]`
    public func datasets() async throws -> [DataBrewClientTypes.Dataset] {
        return try await self.asyncCompactMap { item in item.datasets }
    }
}
extension DataBrewClient {
    /// Paginate over `[ListJobRunsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListJobRunsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListJobRunsOutputResponse`
    public func listJobRunsPaginated(input: ListJobRunsInput) -> ClientRuntime.PaginatorSequence<ListJobRunsInput, ListJobRunsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListJobRunsInput, ListJobRunsOutputResponse>(input: input, inputKey: \ListJobRunsInput.nextToken, outputKey: \ListJobRunsOutputResponse.nextToken, paginationFunction: self.listJobRuns(input:))
    }
}

extension ListJobRunsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListJobRunsInput {
        return ListJobRunsInput(
            maxResults: self.maxResults,
            name: self.name,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListJobRunsInput, Output == ListJobRunsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listJobRunsPaginated`
    /// to access the nested member `[DataBrewClientTypes.JobRun]`
    /// - Returns: `[DataBrewClientTypes.JobRun]`
    public func jobRuns() async throws -> [DataBrewClientTypes.JobRun] {
        return try await self.asyncCompactMap { item in item.jobRuns }
    }
}
extension DataBrewClient {
    /// Paginate over `[ListJobsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListJobsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListJobsOutputResponse`
    public func listJobsPaginated(input: ListJobsInput) -> ClientRuntime.PaginatorSequence<ListJobsInput, ListJobsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListJobsInput, ListJobsOutputResponse>(input: input, inputKey: \ListJobsInput.nextToken, outputKey: \ListJobsOutputResponse.nextToken, paginationFunction: self.listJobs(input:))
    }
}

extension ListJobsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListJobsInput {
        return ListJobsInput(
            datasetName: self.datasetName,
            maxResults: self.maxResults,
            nextToken: token,
            projectName: self.projectName
        )}
}

extension PaginatorSequence where Input == ListJobsInput, Output == ListJobsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listJobsPaginated`
    /// to access the nested member `[DataBrewClientTypes.Job]`
    /// - Returns: `[DataBrewClientTypes.Job]`
    public func jobs() async throws -> [DataBrewClientTypes.Job] {
        return try await self.asyncCompactMap { item in item.jobs }
    }
}
extension DataBrewClient {
    /// Paginate over `[ListProjectsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListProjectsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListProjectsOutputResponse`
    public func listProjectsPaginated(input: ListProjectsInput) -> ClientRuntime.PaginatorSequence<ListProjectsInput, ListProjectsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListProjectsInput, ListProjectsOutputResponse>(input: input, inputKey: \ListProjectsInput.nextToken, outputKey: \ListProjectsOutputResponse.nextToken, paginationFunction: self.listProjects(input:))
    }
}

extension ListProjectsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListProjectsInput {
        return ListProjectsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListProjectsInput, Output == ListProjectsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listProjectsPaginated`
    /// to access the nested member `[DataBrewClientTypes.Project]`
    /// - Returns: `[DataBrewClientTypes.Project]`
    public func projects() async throws -> [DataBrewClientTypes.Project] {
        return try await self.asyncCompactMap { item in item.projects }
    }
}
extension DataBrewClient {
    /// Paginate over `[ListRecipesOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListRecipesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListRecipesOutputResponse`
    public func listRecipesPaginated(input: ListRecipesInput) -> ClientRuntime.PaginatorSequence<ListRecipesInput, ListRecipesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListRecipesInput, ListRecipesOutputResponse>(input: input, inputKey: \ListRecipesInput.nextToken, outputKey: \ListRecipesOutputResponse.nextToken, paginationFunction: self.listRecipes(input:))
    }
}

extension ListRecipesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListRecipesInput {
        return ListRecipesInput(
            maxResults: self.maxResults,
            nextToken: token,
            recipeVersion: self.recipeVersion
        )}
}

extension PaginatorSequence where Input == ListRecipesInput, Output == ListRecipesOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listRecipesPaginated`
    /// to access the nested member `[DataBrewClientTypes.Recipe]`
    /// - Returns: `[DataBrewClientTypes.Recipe]`
    public func recipes() async throws -> [DataBrewClientTypes.Recipe] {
        return try await self.asyncCompactMap { item in item.recipes }
    }
}
extension DataBrewClient {
    /// Paginate over `[ListRecipeVersionsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListRecipeVersionsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListRecipeVersionsOutputResponse`
    public func listRecipeVersionsPaginated(input: ListRecipeVersionsInput) -> ClientRuntime.PaginatorSequence<ListRecipeVersionsInput, ListRecipeVersionsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListRecipeVersionsInput, ListRecipeVersionsOutputResponse>(input: input, inputKey: \ListRecipeVersionsInput.nextToken, outputKey: \ListRecipeVersionsOutputResponse.nextToken, paginationFunction: self.listRecipeVersions(input:))
    }
}

extension ListRecipeVersionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListRecipeVersionsInput {
        return ListRecipeVersionsInput(
            maxResults: self.maxResults,
            name: self.name,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListRecipeVersionsInput, Output == ListRecipeVersionsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listRecipeVersionsPaginated`
    /// to access the nested member `[DataBrewClientTypes.Recipe]`
    /// - Returns: `[DataBrewClientTypes.Recipe]`
    public func recipes() async throws -> [DataBrewClientTypes.Recipe] {
        return try await self.asyncCompactMap { item in item.recipes }
    }
}
extension DataBrewClient {
    /// Paginate over `[ListRulesetsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListRulesetsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListRulesetsOutputResponse`
    public func listRulesetsPaginated(input: ListRulesetsInput) -> ClientRuntime.PaginatorSequence<ListRulesetsInput, ListRulesetsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListRulesetsInput, ListRulesetsOutputResponse>(input: input, inputKey: \ListRulesetsInput.nextToken, outputKey: \ListRulesetsOutputResponse.nextToken, paginationFunction: self.listRulesets(input:))
    }
}

extension ListRulesetsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListRulesetsInput {
        return ListRulesetsInput(
            maxResults: self.maxResults,
            nextToken: token,
            targetArn: self.targetArn
        )}
}

extension PaginatorSequence where Input == ListRulesetsInput, Output == ListRulesetsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listRulesetsPaginated`
    /// to access the nested member `[DataBrewClientTypes.RulesetItem]`
    /// - Returns: `[DataBrewClientTypes.RulesetItem]`
    public func rulesets() async throws -> [DataBrewClientTypes.RulesetItem] {
        return try await self.asyncCompactMap { item in item.rulesets }
    }
}
extension DataBrewClient {
    /// Paginate over `[ListSchedulesOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListSchedulesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListSchedulesOutputResponse`
    public func listSchedulesPaginated(input: ListSchedulesInput) -> ClientRuntime.PaginatorSequence<ListSchedulesInput, ListSchedulesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListSchedulesInput, ListSchedulesOutputResponse>(input: input, inputKey: \ListSchedulesInput.nextToken, outputKey: \ListSchedulesOutputResponse.nextToken, paginationFunction: self.listSchedules(input:))
    }
}

extension ListSchedulesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListSchedulesInput {
        return ListSchedulesInput(
            jobName: self.jobName,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListSchedulesInput, Output == ListSchedulesOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listSchedulesPaginated`
    /// to access the nested member `[DataBrewClientTypes.Schedule]`
    /// - Returns: `[DataBrewClientTypes.Schedule]`
    public func schedules() async throws -> [DataBrewClientTypes.Schedule] {
        return try await self.asyncCompactMap { item in item.schedules }
    }
}
