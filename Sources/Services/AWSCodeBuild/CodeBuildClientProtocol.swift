// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime

/// CodeBuild CodeBuild is a fully managed build service in the cloud. CodeBuild compiles your source code, runs unit tests, and produces artifacts that are ready to deploy. CodeBuild eliminates the need to provision, manage, and scale your own build servers. It provides prepackaged build environments for the most popular programming languages and build tools, such as Apache Maven, Gradle, and more. You can also fully customize build environments in CodeBuild to use your own build tools. CodeBuild scales automatically to meet peak build requests. You pay only for the build time you consume. For more information about CodeBuild, see the [CodeBuild User Guide](https://docs.aws.amazon.com/codebuild/latest/userguide/welcome.html).
public protocol CodeBuildClientProtocol {
    /// Deletes one or more builds.
    func batchDeleteBuilds(input: BatchDeleteBuildsInput) async throws -> BatchDeleteBuildsOutputResponse
    /// Retrieves information about one or more batch builds.
    func batchGetBuildBatches(input: BatchGetBuildBatchesInput) async throws -> BatchGetBuildBatchesOutputResponse
    /// Gets information about one or more builds.
    func batchGetBuilds(input: BatchGetBuildsInput) async throws -> BatchGetBuildsOutputResponse
    /// Gets information about one or more build projects.
    func batchGetProjects(input: BatchGetProjectsInput) async throws -> BatchGetProjectsOutputResponse
    /// Returns an array of report groups.
    func batchGetReportGroups(input: BatchGetReportGroupsInput) async throws -> BatchGetReportGroupsOutputResponse
    /// Returns an array of reports.
    func batchGetReports(input: BatchGetReportsInput) async throws -> BatchGetReportsOutputResponse
    /// Creates a build project.
    func createProject(input: CreateProjectInput) async throws -> CreateProjectOutputResponse
    /// Creates a report group. A report group contains a collection of reports.
    func createReportGroup(input: CreateReportGroupInput) async throws -> CreateReportGroupOutputResponse
    /// For an existing CodeBuild build project that has its source code stored in a GitHub or Bitbucket repository, enables CodeBuild to start rebuilding the source code every time a code change is pushed to the repository. If you enable webhooks for an CodeBuild project, and the project is used as a build step in CodePipeline, then two identical builds are created for each commit. One build is triggered through webhooks, and one through CodePipeline. Because billing is on a per-build basis, you are billed for both builds. Therefore, if you are using CodePipeline, we recommend that you disable webhooks in CodeBuild. In the CodeBuild console, clear the Webhook box. For more information, see step 5 in [Change a Build Project's Settings](https://docs.aws.amazon.com/codebuild/latest/userguide/change-project.html#change-project-console).
    func createWebhook(input: CreateWebhookInput) async throws -> CreateWebhookOutputResponse
    /// Deletes a batch build.
    func deleteBuildBatch(input: DeleteBuildBatchInput) async throws -> DeleteBuildBatchOutputResponse
    /// Deletes a build project. When you delete a project, its builds are not deleted.
    func deleteProject(input: DeleteProjectInput) async throws -> DeleteProjectOutputResponse
    /// Deletes a report.
    func deleteReport(input: DeleteReportInput) async throws -> DeleteReportOutputResponse
    /// Deletes a report group. Before you delete a report group, you must delete its reports.
    func deleteReportGroup(input: DeleteReportGroupInput) async throws -> DeleteReportGroupOutputResponse
    /// Deletes a resource policy that is identified by its resource ARN.
    func deleteResourcePolicy(input: DeleteResourcePolicyInput) async throws -> DeleteResourcePolicyOutputResponse
    /// Deletes a set of GitHub, GitHub Enterprise, or Bitbucket source credentials.
    func deleteSourceCredentials(input: DeleteSourceCredentialsInput) async throws -> DeleteSourceCredentialsOutputResponse
    /// For an existing CodeBuild build project that has its source code stored in a GitHub or Bitbucket repository, stops CodeBuild from rebuilding the source code every time a code change is pushed to the repository.
    func deleteWebhook(input: DeleteWebhookInput) async throws -> DeleteWebhookOutputResponse
    /// Retrieves one or more code coverage reports.
    func describeCodeCoverages(input: DescribeCodeCoveragesInput) async throws -> DescribeCodeCoveragesOutputResponse
    /// Returns a list of details about test cases for a report.
    func describeTestCases(input: DescribeTestCasesInput) async throws -> DescribeTestCasesOutputResponse
    /// Analyzes and accumulates test report values for the specified test reports.
    func getReportGroupTrend(input: GetReportGroupTrendInput) async throws -> GetReportGroupTrendOutputResponse
    /// Gets a resource policy that is identified by its resource ARN.
    func getResourcePolicy(input: GetResourcePolicyInput) async throws -> GetResourcePolicyOutputResponse
    /// Imports the source repository credentials for an CodeBuild project that has its source code stored in a GitHub, GitHub Enterprise, or Bitbucket repository.
    func importSourceCredentials(input: ImportSourceCredentialsInput) async throws -> ImportSourceCredentialsOutputResponse
    /// Resets the cache for a project.
    func invalidateProjectCache(input: InvalidateProjectCacheInput) async throws -> InvalidateProjectCacheOutputResponse
    /// Retrieves the identifiers of your build batches in the current region.
    func listBuildBatches(input: ListBuildBatchesInput) async throws -> ListBuildBatchesOutputResponse
    /// Retrieves the identifiers of the build batches for a specific project.
    func listBuildBatchesForProject(input: ListBuildBatchesForProjectInput) async throws -> ListBuildBatchesForProjectOutputResponse
    /// Gets a list of build IDs, with each build ID representing a single build.
    func listBuilds(input: ListBuildsInput) async throws -> ListBuildsOutputResponse
    /// Gets a list of build identifiers for the specified build project, with each build identifier representing a single build.
    func listBuildsForProject(input: ListBuildsForProjectInput) async throws -> ListBuildsForProjectOutputResponse
    /// Gets information about Docker images that are managed by CodeBuild.
    func listCuratedEnvironmentImages(input: ListCuratedEnvironmentImagesInput) async throws -> ListCuratedEnvironmentImagesOutputResponse
    /// Gets a list of build project names, with each build project name representing a single build project.
    func listProjects(input: ListProjectsInput) async throws -> ListProjectsOutputResponse
    /// Gets a list ARNs for the report groups in the current Amazon Web Services account.
    func listReportGroups(input: ListReportGroupsInput) async throws -> ListReportGroupsOutputResponse
    /// Returns a list of ARNs for the reports in the current Amazon Web Services account.
    func listReports(input: ListReportsInput) async throws -> ListReportsOutputResponse
    /// Returns a list of ARNs for the reports that belong to a ReportGroup.
    func listReportsForReportGroup(input: ListReportsForReportGroupInput) async throws -> ListReportsForReportGroupOutputResponse
    /// Gets a list of projects that are shared with other Amazon Web Services accounts or users.
    func listSharedProjects(input: ListSharedProjectsInput) async throws -> ListSharedProjectsOutputResponse
    /// Gets a list of report groups that are shared with other Amazon Web Services accounts or users.
    func listSharedReportGroups(input: ListSharedReportGroupsInput) async throws -> ListSharedReportGroupsOutputResponse
    /// Returns a list of SourceCredentialsInfo objects.
    func listSourceCredentials(input: ListSourceCredentialsInput) async throws -> ListSourceCredentialsOutputResponse
    /// Stores a resource policy for the ARN of a Project or ReportGroup object.
    func putResourcePolicy(input: PutResourcePolicyInput) async throws -> PutResourcePolicyOutputResponse
    /// Restarts a build.
    func retryBuild(input: RetryBuildInput) async throws -> RetryBuildOutputResponse
    /// Restarts a failed batch build. Only batch builds that have failed can be retried.
    func retryBuildBatch(input: RetryBuildBatchInput) async throws -> RetryBuildBatchOutputResponse
    /// Starts running a build.
    func startBuild(input: StartBuildInput) async throws -> StartBuildOutputResponse
    /// Starts a batch build for a project.
    func startBuildBatch(input: StartBuildBatchInput) async throws -> StartBuildBatchOutputResponse
    /// Attempts to stop running a build.
    func stopBuild(input: StopBuildInput) async throws -> StopBuildOutputResponse
    /// Stops a running batch build.
    func stopBuildBatch(input: StopBuildBatchInput) async throws -> StopBuildBatchOutputResponse
    /// Changes the settings of a build project.
    func updateProject(input: UpdateProjectInput) async throws -> UpdateProjectOutputResponse
    /// Changes the public visibility for a project. The project's build results, logs, and artifacts are available to the general public. For more information, see [Public build projects](https://docs.aws.amazon.com/codebuild/latest/userguide/public-builds.html) in the CodeBuild User Guide. The following should be kept in mind when making your projects public:
    ///
    /// * All of a project's build results, logs, and artifacts, including builds that were run when the project was private, are available to the general public.
    ///
    /// * All build logs and artifacts are available to the public. Environment variables, source code, and other sensitive information may have been output to the build logs and artifacts. You must be careful about what information is output to the build logs. Some best practice are:
    ///
    /// * Do not store sensitive values, especially Amazon Web Services access key IDs and secret access keys, in environment variables. We recommend that you use an Amazon EC2 Systems Manager Parameter Store or Secrets Manager to store sensitive values.
    ///
    /// * Follow [Best practices for using webhooks](https://docs.aws.amazon.com/codebuild/latest/userguide/webhooks.html#webhook-best-practices) in the CodeBuild User Guide to limit which entities can trigger a build, and do not store the buildspec in the project itself, to ensure that your webhooks are as secure as possible.
    ///
    ///
    ///
    ///
    /// * A malicious user can use public builds to distribute malicious artifacts. We recommend that you review all pull requests to verify that the pull request is a legitimate change. We also recommend that you validate any artifacts with their checksums to make sure that the correct artifacts are being downloaded.
    func updateProjectVisibility(input: UpdateProjectVisibilityInput) async throws -> UpdateProjectVisibilityOutputResponse
    /// Updates a report group.
    func updateReportGroup(input: UpdateReportGroupInput) async throws -> UpdateReportGroupOutputResponse
    /// Updates the webhook associated with an CodeBuild build project. If you use Bitbucket for your repository, rotateSecret is ignored.
    func updateWebhook(input: UpdateWebhookInput) async throws -> UpdateWebhookOutputResponse
}

public protocol CodeBuildClientConfigurationProtocol : AWSClientRuntime.AWSClientConfiguration {
    var endpointResolver: EndpointResolver { get }
}

public enum CodeBuildClientTypes {}
