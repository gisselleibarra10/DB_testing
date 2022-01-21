// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5) && canImport(_Concurrency)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension DataBrewClient {
    /// Deletes one or more versions of a recipe at a time. The entire request will be rejected if:
    ///
    /// * The recipe does not exist.
    ///
    /// * There is an invalid version identifier in the list of versions.
    ///
    /// * The version list is empty.
    ///
    /// * The version list size exceeds 50.
    ///
    /// * The version list contains duplicate entries.
    ///
    ///
    /// The request will complete successfully, but with partial failures, if:
    ///
    /// * A version does not exist.
    ///
    /// * A version is being used by a job.
    ///
    /// * You specify LATEST_WORKING, but it's being used by a project.
    ///
    /// * The version fails to be deleted.
    ///
    ///
    /// The LATEST_WORKING version will only be deleted if the recipe has no other versions. If you try to delete LATEST_WORKING while other versions exist (or if they can't be deleted), then LATEST_WORKING will be listed as partial failure in the response.
    func batchDeleteRecipeVersion(input: BatchDeleteRecipeVersionInput) async throws -> BatchDeleteRecipeVersionOutputResponse
    {
        typealias batchDeleteRecipeVersionContinuation = CheckedContinuation<BatchDeleteRecipeVersionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: batchDeleteRecipeVersionContinuation) in
            batchDeleteRecipeVersion(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a new DataBrew dataset.
    func createDataset(input: CreateDatasetInput) async throws -> CreateDatasetOutputResponse
    {
        typealias createDatasetContinuation = CheckedContinuation<CreateDatasetOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createDatasetContinuation) in
            createDataset(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a new job to analyze a dataset and create its data profile.
    func createProfileJob(input: CreateProfileJobInput) async throws -> CreateProfileJobOutputResponse
    {
        typealias createProfileJobContinuation = CheckedContinuation<CreateProfileJobOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createProfileJobContinuation) in
            createProfileJob(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a new DataBrew project.
    func createProject(input: CreateProjectInput) async throws -> CreateProjectOutputResponse
    {
        typealias createProjectContinuation = CheckedContinuation<CreateProjectOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createProjectContinuation) in
            createProject(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a new DataBrew recipe.
    func createRecipe(input: CreateRecipeInput) async throws -> CreateRecipeOutputResponse
    {
        typealias createRecipeContinuation = CheckedContinuation<CreateRecipeOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createRecipeContinuation) in
            createRecipe(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a new job to transform input data, using steps defined in an existing Glue DataBrew recipe
    func createRecipeJob(input: CreateRecipeJobInput) async throws -> CreateRecipeJobOutputResponse
    {
        typealias createRecipeJobContinuation = CheckedContinuation<CreateRecipeJobOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createRecipeJobContinuation) in
            createRecipeJob(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a new ruleset that can be used in a profile job to validate the data quality of a dataset.
    func createRuleset(input: CreateRulesetInput) async throws -> CreateRulesetOutputResponse
    {
        typealias createRulesetContinuation = CheckedContinuation<CreateRulesetOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createRulesetContinuation) in
            createRuleset(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a new schedule for one or more DataBrew jobs. Jobs can be run at a specific date and time, or at regular intervals.
    func createSchedule(input: CreateScheduleInput) async throws -> CreateScheduleOutputResponse
    {
        typealias createScheduleContinuation = CheckedContinuation<CreateScheduleOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createScheduleContinuation) in
            createSchedule(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes a dataset from DataBrew.
    func deleteDataset(input: DeleteDatasetInput) async throws -> DeleteDatasetOutputResponse
    {
        typealias deleteDatasetContinuation = CheckedContinuation<DeleteDatasetOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteDatasetContinuation) in
            deleteDataset(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes the specified DataBrew job.
    func deleteJob(input: DeleteJobInput) async throws -> DeleteJobOutputResponse
    {
        typealias deleteJobContinuation = CheckedContinuation<DeleteJobOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteJobContinuation) in
            deleteJob(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes an existing DataBrew project.
    func deleteProject(input: DeleteProjectInput) async throws -> DeleteProjectOutputResponse
    {
        typealias deleteProjectContinuation = CheckedContinuation<DeleteProjectOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteProjectContinuation) in
            deleteProject(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes a single version of a DataBrew recipe.
    func deleteRecipeVersion(input: DeleteRecipeVersionInput) async throws -> DeleteRecipeVersionOutputResponse
    {
        typealias deleteRecipeVersionContinuation = CheckedContinuation<DeleteRecipeVersionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteRecipeVersionContinuation) in
            deleteRecipeVersion(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes a ruleset.
    func deleteRuleset(input: DeleteRulesetInput) async throws -> DeleteRulesetOutputResponse
    {
        typealias deleteRulesetContinuation = CheckedContinuation<DeleteRulesetOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteRulesetContinuation) in
            deleteRuleset(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes the specified DataBrew schedule.
    func deleteSchedule(input: DeleteScheduleInput) async throws -> DeleteScheduleOutputResponse
    {
        typealias deleteScheduleContinuation = CheckedContinuation<DeleteScheduleOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteScheduleContinuation) in
            deleteSchedule(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns the definition of a specific DataBrew dataset.
    func describeDataset(input: DescribeDatasetInput) async throws -> DescribeDatasetOutputResponse
    {
        typealias describeDatasetContinuation = CheckedContinuation<DescribeDatasetOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeDatasetContinuation) in
            describeDataset(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns the definition of a specific DataBrew job.
    func describeJob(input: DescribeJobInput) async throws -> DescribeJobOutputResponse
    {
        typealias describeJobContinuation = CheckedContinuation<DescribeJobOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeJobContinuation) in
            describeJob(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Represents one run of a DataBrew job.
    func describeJobRun(input: DescribeJobRunInput) async throws -> DescribeJobRunOutputResponse
    {
        typealias describeJobRunContinuation = CheckedContinuation<DescribeJobRunOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeJobRunContinuation) in
            describeJobRun(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns the definition of a specific DataBrew project.
    func describeProject(input: DescribeProjectInput) async throws -> DescribeProjectOutputResponse
    {
        typealias describeProjectContinuation = CheckedContinuation<DescribeProjectOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeProjectContinuation) in
            describeProject(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns the definition of a specific DataBrew recipe corresponding to a particular version.
    func describeRecipe(input: DescribeRecipeInput) async throws -> DescribeRecipeOutputResponse
    {
        typealias describeRecipeContinuation = CheckedContinuation<DescribeRecipeOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeRecipeContinuation) in
            describeRecipe(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves detailed information about the ruleset.
    func describeRuleset(input: DescribeRulesetInput) async throws -> DescribeRulesetOutputResponse
    {
        typealias describeRulesetContinuation = CheckedContinuation<DescribeRulesetOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeRulesetContinuation) in
            describeRuleset(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns the definition of a specific DataBrew schedule.
    func describeSchedule(input: DescribeScheduleInput) async throws -> DescribeScheduleOutputResponse
    {
        typealias describeScheduleContinuation = CheckedContinuation<DescribeScheduleOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeScheduleContinuation) in
            describeSchedule(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists all of the DataBrew datasets.
    func listDatasets(input: ListDatasetsInput) async throws -> ListDatasetsOutputResponse
    {
        typealias listDatasetsContinuation = CheckedContinuation<ListDatasetsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listDatasetsContinuation) in
            listDatasets(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists all of the previous runs of a particular DataBrew job.
    func listJobRuns(input: ListJobRunsInput) async throws -> ListJobRunsOutputResponse
    {
        typealias listJobRunsContinuation = CheckedContinuation<ListJobRunsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listJobRunsContinuation) in
            listJobRuns(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists all of the DataBrew jobs that are defined.
    func listJobs(input: ListJobsInput) async throws -> ListJobsOutputResponse
    {
        typealias listJobsContinuation = CheckedContinuation<ListJobsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listJobsContinuation) in
            listJobs(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists all of the DataBrew projects that are defined.
    func listProjects(input: ListProjectsInput) async throws -> ListProjectsOutputResponse
    {
        typealias listProjectsContinuation = CheckedContinuation<ListProjectsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listProjectsContinuation) in
            listProjects(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists the versions of a particular DataBrew recipe, except for LATEST_WORKING.
    func listRecipeVersions(input: ListRecipeVersionsInput) async throws -> ListRecipeVersionsOutputResponse
    {
        typealias listRecipeVersionsContinuation = CheckedContinuation<ListRecipeVersionsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listRecipeVersionsContinuation) in
            listRecipeVersions(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists all of the DataBrew recipes that are defined.
    func listRecipes(input: ListRecipesInput) async throws -> ListRecipesOutputResponse
    {
        typealias listRecipesContinuation = CheckedContinuation<ListRecipesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listRecipesContinuation) in
            listRecipes(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// List all rulesets available in the current account or rulesets associated with a specific resource (dataset).
    func listRulesets(input: ListRulesetsInput) async throws -> ListRulesetsOutputResponse
    {
        typealias listRulesetsContinuation = CheckedContinuation<ListRulesetsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listRulesetsContinuation) in
            listRulesets(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists the DataBrew schedules that are defined.
    func listSchedules(input: ListSchedulesInput) async throws -> ListSchedulesOutputResponse
    {
        typealias listSchedulesContinuation = CheckedContinuation<ListSchedulesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listSchedulesContinuation) in
            listSchedules(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists all the tags for a DataBrew resource.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    {
        typealias listTagsForResourceContinuation = CheckedContinuation<ListTagsForResourceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listTagsForResourceContinuation) in
            listTagsForResource(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Publishes a new version of a DataBrew recipe.
    func publishRecipe(input: PublishRecipeInput) async throws -> PublishRecipeOutputResponse
    {
        typealias publishRecipeContinuation = CheckedContinuation<PublishRecipeOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: publishRecipeContinuation) in
            publishRecipe(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Performs a recipe step within an interactive DataBrew session that's currently open.
    func sendProjectSessionAction(input: SendProjectSessionActionInput) async throws -> SendProjectSessionActionOutputResponse
    {
        typealias sendProjectSessionActionContinuation = CheckedContinuation<SendProjectSessionActionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: sendProjectSessionActionContinuation) in
            sendProjectSessionAction(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Runs a DataBrew job.
    func startJobRun(input: StartJobRunInput) async throws -> StartJobRunOutputResponse
    {
        typealias startJobRunContinuation = CheckedContinuation<StartJobRunOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: startJobRunContinuation) in
            startJobRun(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates an interactive session, enabling you to manipulate data in a DataBrew project.
    func startProjectSession(input: StartProjectSessionInput) async throws -> StartProjectSessionOutputResponse
    {
        typealias startProjectSessionContinuation = CheckedContinuation<StartProjectSessionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: startProjectSessionContinuation) in
            startProjectSession(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Stops a particular run of a job.
    func stopJobRun(input: StopJobRunInput) async throws -> StopJobRunOutputResponse
    {
        typealias stopJobRunContinuation = CheckedContinuation<StopJobRunOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: stopJobRunContinuation) in
            stopJobRun(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Adds metadata tags to a DataBrew resource, such as a dataset, project, recipe, job, or schedule.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    {
        typealias tagResourceContinuation = CheckedContinuation<TagResourceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: tagResourceContinuation) in
            tagResource(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Removes metadata tags from a DataBrew resource.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    {
        typealias untagResourceContinuation = CheckedContinuation<UntagResourceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: untagResourceContinuation) in
            untagResource(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Modifies the definition of an existing DataBrew dataset.
    func updateDataset(input: UpdateDatasetInput) async throws -> UpdateDatasetOutputResponse
    {
        typealias updateDatasetContinuation = CheckedContinuation<UpdateDatasetOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateDatasetContinuation) in
            updateDataset(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Modifies the definition of an existing profile job.
    func updateProfileJob(input: UpdateProfileJobInput) async throws -> UpdateProfileJobOutputResponse
    {
        typealias updateProfileJobContinuation = CheckedContinuation<UpdateProfileJobOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateProfileJobContinuation) in
            updateProfileJob(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Modifies the definition of an existing DataBrew project.
    func updateProject(input: UpdateProjectInput) async throws -> UpdateProjectOutputResponse
    {
        typealias updateProjectContinuation = CheckedContinuation<UpdateProjectOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateProjectContinuation) in
            updateProject(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Modifies the definition of the LATEST_WORKING version of a DataBrew recipe.
    func updateRecipe(input: UpdateRecipeInput) async throws -> UpdateRecipeOutputResponse
    {
        typealias updateRecipeContinuation = CheckedContinuation<UpdateRecipeOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateRecipeContinuation) in
            updateRecipe(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Modifies the definition of an existing DataBrew recipe job.
    func updateRecipeJob(input: UpdateRecipeJobInput) async throws -> UpdateRecipeJobOutputResponse
    {
        typealias updateRecipeJobContinuation = CheckedContinuation<UpdateRecipeJobOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateRecipeJobContinuation) in
            updateRecipeJob(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Updates specified ruleset.
    func updateRuleset(input: UpdateRulesetInput) async throws -> UpdateRulesetOutputResponse
    {
        typealias updateRulesetContinuation = CheckedContinuation<UpdateRulesetOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateRulesetContinuation) in
            updateRuleset(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Modifies the definition of an existing DataBrew schedule.
    func updateSchedule(input: UpdateScheduleInput) async throws -> UpdateScheduleOutputResponse
    {
        typealias updateScheduleContinuation = CheckedContinuation<UpdateScheduleOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateScheduleContinuation) in
            updateSchedule(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

}
#endif