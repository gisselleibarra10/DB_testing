// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime

/// Welcome to the Audit Manager API reference. This guide is for developers who need detailed information about the Audit Manager API operations, data types, and errors. Audit Manager is a service that provides automated evidence collection so that you can continually audit your Amazon Web Services usage. You can use it to assess the effectiveness of your controls, manage risk, and simplify compliance. Audit Manager provides prebuilt frameworks that structure and automate assessments for a given compliance standard. Frameworks include a prebuilt collection of controls with descriptions and testing procedures. These controls are grouped according to the requirements of the specified compliance standard or regulation. You can also customize frameworks and controls to support internal audits with specific requirements. Use the following links to get started with the Audit Manager API:
///
/// * [Actions](https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_Operations.html): An alphabetical list of all Audit Manager API operations.
///
/// * [Data types](https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_Types.html): An alphabetical list of all Audit Manager data types.
///
/// * [Common parameters](https://docs.aws.amazon.com/audit-manager/latest/APIReference/CommonParameters.html): Parameters that all Query operations can use.
///
/// * [Common errors](https://docs.aws.amazon.com/audit-manager/latest/APIReference/CommonErrors.html): Client and server errors that all operations can return.
///
///
/// If you're new to Audit Manager, we recommend that you review the [ Audit Manager User Guide](https://docs.aws.amazon.com/audit-manager/latest/userguide/what-is.html).
public protocol AuditManagerClientProtocol {
    /// Associates an evidence folder to an assessment report in a Audit Manager assessment.
    func associateAssessmentReportEvidenceFolder(input: AssociateAssessmentReportEvidenceFolderInput) async throws -> AssociateAssessmentReportEvidenceFolderOutputResponse
    /// Associates a list of evidence to an assessment report in an Audit Manager assessment.
    func batchAssociateAssessmentReportEvidence(input: BatchAssociateAssessmentReportEvidenceInput) async throws -> BatchAssociateAssessmentReportEvidenceOutputResponse
    /// Creates a batch of delegations for an assessment in Audit Manager.
    func batchCreateDelegationByAssessment(input: BatchCreateDelegationByAssessmentInput) async throws -> BatchCreateDelegationByAssessmentOutputResponse
    /// Deletes a batch of delegations for an assessment in Audit Manager.
    func batchDeleteDelegationByAssessment(input: BatchDeleteDelegationByAssessmentInput) async throws -> BatchDeleteDelegationByAssessmentOutputResponse
    /// Disassociates a list of evidence from an assessment report in Audit Manager.
    func batchDisassociateAssessmentReportEvidence(input: BatchDisassociateAssessmentReportEvidenceInput) async throws -> BatchDisassociateAssessmentReportEvidenceOutputResponse
    /// Uploads one or more pieces of evidence to a control in an Audit Manager assessment. You can upload manual evidence from any Amazon Simple Storage Service (Amazon S3) bucket by specifying the S3 URI of the evidence. You must upload manual evidence to your S3 bucket before you can upload it to your assessment. For instructions, see [CreateBucket](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucket.html) and [PutObject](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html) in the Amazon Simple Storage Service API Reference. The following restrictions apply to this action:
    ///
    /// * Maximum size of an individual evidence file: 100 MB
    ///
    /// * Number of daily manual evidence uploads per control: 100
    ///
    /// * Supported file formats: See [Supported file types for manual evidence](https://docs.aws.amazon.com/audit-manager/latest/userguide/upload-evidence.html#supported-manual-evidence-files) in the Audit Manager User Guide
    ///
    ///
    /// For more information about Audit Manager service restrictions, see [Quotas and restrictions for Audit Manager](https://docs.aws.amazon.com/audit-manager/latest/userguide/service-quotas.html).
    func batchImportEvidenceToAssessmentControl(input: BatchImportEvidenceToAssessmentControlInput) async throws -> BatchImportEvidenceToAssessmentControlOutputResponse
    /// Creates an assessment in Audit Manager.
    func createAssessment(input: CreateAssessmentInput) async throws -> CreateAssessmentOutputResponse
    /// Creates a custom framework in Audit Manager.
    func createAssessmentFramework(input: CreateAssessmentFrameworkInput) async throws -> CreateAssessmentFrameworkOutputResponse
    /// Creates an assessment report for the specified assessment.
    func createAssessmentReport(input: CreateAssessmentReportInput) async throws -> CreateAssessmentReportOutputResponse
    /// Creates a new custom control in Audit Manager.
    func createControl(input: CreateControlInput) async throws -> CreateControlOutputResponse
    /// Deletes an assessment in Audit Manager.
    func deleteAssessment(input: DeleteAssessmentInput) async throws -> DeleteAssessmentOutputResponse
    /// Deletes a custom framework in Audit Manager.
    func deleteAssessmentFramework(input: DeleteAssessmentFrameworkInput) async throws -> DeleteAssessmentFrameworkOutputResponse
    /// Deletes a share request for a custom framework in Audit Manager.
    func deleteAssessmentFrameworkShare(input: DeleteAssessmentFrameworkShareInput) async throws -> DeleteAssessmentFrameworkShareOutputResponse
    /// Deletes an assessment report in Audit Manager. When you run the DeleteAssessmentReport operation, Audit Manager attempts to delete the following data:
    ///
    /// * The specified assessment report that’s stored in your S3 bucket
    ///
    /// * The associated metadata that’s stored in Audit Manager
    ///
    ///
    /// If Audit Manager can’t access the assessment report in your S3 bucket, the report isn’t deleted. In this event, the DeleteAssessmentReport operation doesn’t fail. Instead, it proceeds to delete the associated metadata only. You must then delete the assessment report from the S3 bucket yourself. This scenario happens when Audit Manager receives a 403 (Forbidden) or 404 (Not Found) error from Amazon S3. To avoid this, make sure that your S3 bucket is available, and that you configured the correct permissions for Audit Manager to delete resources in your S3 bucket. For an example permissions policy that you can use, see [Assessment report destination permissions](https://docs.aws.amazon.com/audit-manager/latest/userguide/security_iam_id-based-policy-examples.html#full-administrator-access-assessment-report-destination) in the Audit Manager User Guide. For information about the issues that could cause a 403 (Forbidden) or 404 (Not Found) error from Amazon S3, see [List of Error Codes](https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#ErrorCodeList) in the Amazon Simple Storage Service API Reference.
    func deleteAssessmentReport(input: DeleteAssessmentReportInput) async throws -> DeleteAssessmentReportOutputResponse
    /// Deletes a custom control in Audit Manager.
    func deleteControl(input: DeleteControlInput) async throws -> DeleteControlOutputResponse
    /// Deregisters an account in Audit Manager. When you deregister your account from Audit Manager, your data isn’t deleted. If you want to delete your resource data, you must perform that task separately before you deregister your account. Either, you can do this in the Audit Manager console. Or, you can use one of the delete API operations that are provided by Audit Manager. To delete your Audit Manager resource data, see the following instructions:
    ///
    /// * [DeleteAssessment](https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_DeleteAssessment.html) (see also: [Deleting an assessment](https://docs.aws.amazon.com/audit-manager/latest/userguide/delete-assessment.html) in the Audit Manager User Guide)
    ///
    /// * [DeleteAssessmentFramework](https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_DeleteAssessmentFramework.html) (see also: [Deleting a custom framework](https://docs.aws.amazon.com/audit-manager/latest/userguide/delete-custom-framework.html) in the Audit Manager User Guide)
    ///
    /// * [DeleteAssessmentFrameworkShare](https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_DeleteAssessmentFrameworkShare.html) (see also: [Deleting a share request](https://docs.aws.amazon.com/audit-manager/latest/userguide/deleting-shared-framework-requests.html) in the Audit Manager User Guide)
    ///
    /// * [DeleteAssessmentReport](https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_DeleteAssessmentReport.html) (see also: [Deleting an assessment report](https://docs.aws.amazon.com/audit-manager/latest/userguide/generate-assessment-report.html#delete-assessment-report-steps) in the Audit Manager User Guide)
    ///
    /// * [DeleteControl](https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_DeleteControl.html) (see also: [Deleting a custom control](https://docs.aws.amazon.com/audit-manager/latest/userguide/delete-controls.html) in the Audit Manager User Guide)
    ///
    ///
    /// At this time, Audit Manager doesn't provide an option to delete evidence. All available delete operations are listed above.
    func deregisterAccount(input: DeregisterAccountInput) async throws -> DeregisterAccountOutputResponse
    /// Removes the specified Amazon Web Services account as a delegated administrator for Audit Manager. When you remove a delegated administrator from your Audit Manager settings, you continue to have access to the evidence that you previously collected under that account. This is also the case when you deregister a delegated administrator from Organizations. However, Audit Manager will stop collecting and attaching evidence to that delegated administrator account moving forward. Keep in mind the following cleanup task if you use evidence finder: Before you use your management account to remove a delegated administrator, make sure that the current delegated administrator account signs in to Audit Manager and disables evidence finder first. Disabling evidence finder automatically deletes the event data store that was created in their account when they enabled evidence finder. If this task isn’t completed, the event data store remains in their account. In this case, we recommend that the original delegated administrator goes to CloudTrail Lake and manually [deletes the event data store](https://docs.aws.amazon.com/userguide/awscloudtrail/latest/userguide/query-eds-disable-termination.html). This cleanup task is necessary to ensure that you don't end up with multiple event data stores. Audit Manager will ignore an unused event data store after you remove or change a delegated administrator account. However, the unused event data store continues to incur storage costs from CloudTrail Lake if you don't delete it. When you deregister a delegated administrator account for Audit Manager, the data for that account isn’t deleted. If you want to delete resource data for a delegated administrator account, you must perform that task separately before you deregister the account. Either, you can do this in the Audit Manager console. Or, you can use one of the delete API operations that are provided by Audit Manager. To delete your Audit Manager resource data, see the following instructions:
    ///
    /// * [DeleteAssessment](https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_DeleteAssessment.html) (see also: [Deleting an assessment](https://docs.aws.amazon.com/audit-manager/latest/userguide/delete-assessment.html) in the Audit Manager User Guide)
    ///
    /// * [DeleteAssessmentFramework](https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_DeleteAssessmentFramework.html) (see also: [Deleting a custom framework](https://docs.aws.amazon.com/audit-manager/latest/userguide/delete-custom-framework.html) in the Audit Manager User Guide)
    ///
    /// * [DeleteAssessmentFrameworkShare](https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_DeleteAssessmentFrameworkShare.html) (see also: [Deleting a share request](https://docs.aws.amazon.com/audit-manager/latest/userguide/deleting-shared-framework-requests.html) in the Audit Manager User Guide)
    ///
    /// * [DeleteAssessmentReport](https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_DeleteAssessmentReport.html) (see also: [Deleting an assessment report](https://docs.aws.amazon.com/audit-manager/latest/userguide/generate-assessment-report.html#delete-assessment-report-steps) in the Audit Manager User Guide)
    ///
    /// * [DeleteControl](https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_DeleteControl.html) (see also: [Deleting a custom control](https://docs.aws.amazon.com/audit-manager/latest/userguide/delete-controls.html) in the Audit Manager User Guide)
    ///
    ///
    /// At this time, Audit Manager doesn't provide an option to delete evidence. All available delete operations are listed above.
    func deregisterOrganizationAdminAccount(input: DeregisterOrganizationAdminAccountInput) async throws -> DeregisterOrganizationAdminAccountOutputResponse
    /// Disassociates an evidence folder from the specified assessment report in Audit Manager.
    func disassociateAssessmentReportEvidenceFolder(input: DisassociateAssessmentReportEvidenceFolderInput) async throws -> DisassociateAssessmentReportEvidenceFolderOutputResponse
    /// Returns the registration status of an account in Audit Manager.
    func getAccountStatus(input: GetAccountStatusInput) async throws -> GetAccountStatusOutputResponse
    /// Returns an assessment from Audit Manager.
    func getAssessment(input: GetAssessmentInput) async throws -> GetAssessmentOutputResponse
    /// Returns a framework from Audit Manager.
    func getAssessmentFramework(input: GetAssessmentFrameworkInput) async throws -> GetAssessmentFrameworkOutputResponse
    /// Returns the URL of an assessment report in Audit Manager.
    func getAssessmentReportUrl(input: GetAssessmentReportUrlInput) async throws -> GetAssessmentReportUrlOutputResponse
    /// Returns a list of changelogs from Audit Manager.
    func getChangeLogs(input: GetChangeLogsInput) async throws -> GetChangeLogsOutputResponse
    /// Returns a control from Audit Manager.
    func getControl(input: GetControlInput) async throws -> GetControlOutputResponse
    /// Returns a list of delegations from an audit owner to a delegate.
    func getDelegations(input: GetDelegationsInput) async throws -> GetDelegationsOutputResponse
    /// Returns evidence from Audit Manager.
    func getEvidence(input: GetEvidenceInput) async throws -> GetEvidenceOutputResponse
    /// Returns all evidence from a specified evidence folder in Audit Manager.
    func getEvidenceByEvidenceFolder(input: GetEvidenceByEvidenceFolderInput) async throws -> GetEvidenceByEvidenceFolderOutputResponse
    /// Returns an evidence folder from the specified assessment in Audit Manager.
    func getEvidenceFolder(input: GetEvidenceFolderInput) async throws -> GetEvidenceFolderOutputResponse
    /// Returns the evidence folders from a specified assessment in Audit Manager.
    func getEvidenceFoldersByAssessment(input: GetEvidenceFoldersByAssessmentInput) async throws -> GetEvidenceFoldersByAssessmentOutputResponse
    /// Returns a list of evidence folders that are associated with a specified control of an assessment in Audit Manager.
    func getEvidenceFoldersByAssessmentControl(input: GetEvidenceFoldersByAssessmentControlInput) async throws -> GetEvidenceFoldersByAssessmentControlOutputResponse
    /// Gets the latest analytics data for all your current active assessments.
    func getInsights(input: GetInsightsInput) async throws -> GetInsightsOutputResponse
    /// Gets the latest analytics data for a specific active assessment.
    func getInsightsByAssessment(input: GetInsightsByAssessmentInput) async throws -> GetInsightsByAssessmentOutputResponse
    /// Returns the name of the delegated Amazon Web Services administrator account for the organization.
    func getOrganizationAdminAccount(input: GetOrganizationAdminAccountInput) async throws -> GetOrganizationAdminAccountOutputResponse
    /// Returns a list of all of the Amazon Web Services that you can choose to include in your assessment. When you [create an assessment](https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_CreateAssessment.html), specify which of these services you want to include to narrow the assessment's [scope](https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_Scope.html).
    func getServicesInScope(input: GetServicesInScopeInput) async throws -> GetServicesInScopeOutputResponse
    /// Returns the settings for the specified Amazon Web Services account.
    func getSettings(input: GetSettingsInput) async throws -> GetSettingsOutputResponse
    /// Lists the latest analytics data for controls within a specific control domain and a specific active assessment. Control insights are listed only if the control belongs to the control domain and assessment that was specified. Moreover, the control must have collected evidence on the lastUpdated date of controlInsightsByAssessment. If neither of these conditions are met, no data is listed for that control.
    func listAssessmentControlInsightsByControlDomain(input: ListAssessmentControlInsightsByControlDomainInput) async throws -> ListAssessmentControlInsightsByControlDomainOutputResponse
    /// Returns a list of the frameworks that are available in the Audit Manager framework library.
    func listAssessmentFrameworks(input: ListAssessmentFrameworksInput) async throws -> ListAssessmentFrameworksOutputResponse
    /// Returns a list of sent or received share requests for custom frameworks in Audit Manager.
    func listAssessmentFrameworkShareRequests(input: ListAssessmentFrameworkShareRequestsInput) async throws -> ListAssessmentFrameworkShareRequestsOutputResponse
    /// Returns a list of assessment reports created in Audit Manager.
    func listAssessmentReports(input: ListAssessmentReportsInput) async throws -> ListAssessmentReportsOutputResponse
    /// Returns a list of current and past assessments from Audit Manager.
    func listAssessments(input: ListAssessmentsInput) async throws -> ListAssessmentsOutputResponse
    /// Lists the latest analytics data for control domains across all of your active assessments. A control domain is listed only if at least one of the controls within that domain collected evidence on the lastUpdated date of controlDomainInsights. If this condition isn’t met, no data is listed for that control domain.
    func listControlDomainInsights(input: ListControlDomainInsightsInput) async throws -> ListControlDomainInsightsOutputResponse
    /// Lists analytics data for control domains within a specified active assessment. A control domain is listed only if at least one of the controls within that domain collected evidence on the lastUpdated date of controlDomainInsights. If this condition isn’t met, no data is listed for that domain.
    func listControlDomainInsightsByAssessment(input: ListControlDomainInsightsByAssessmentInput) async throws -> ListControlDomainInsightsByAssessmentOutputResponse
    /// Lists the latest analytics data for controls within a specific control domain across all active assessments. Control insights are listed only if the control belongs to the control domain that was specified and the control collected evidence on the lastUpdated date of controlInsightsMetadata. If neither of these conditions are met, no data is listed for that control.
    func listControlInsightsByControlDomain(input: ListControlInsightsByControlDomainInput) async throws -> ListControlInsightsByControlDomainOutputResponse
    /// Returns a list of controls from Audit Manager.
    func listControls(input: ListControlsInput) async throws -> ListControlsOutputResponse
    /// Returns a list of keywords that are pre-mapped to the specified control data source.
    func listKeywordsForDataSource(input: ListKeywordsForDataSourceInput) async throws -> ListKeywordsForDataSourceOutputResponse
    /// Returns a list of all Audit Manager notifications.
    func listNotifications(input: ListNotificationsInput) async throws -> ListNotificationsOutputResponse
    /// Returns a list of tags for the specified resource in Audit Manager.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Enables Audit Manager for the specified Amazon Web Services account.
    func registerAccount(input: RegisterAccountInput) async throws -> RegisterAccountOutputResponse
    /// Enables an Amazon Web Services account within the organization as the delegated administrator for Audit Manager.
    func registerOrganizationAdminAccount(input: RegisterOrganizationAdminAccountInput) async throws -> RegisterOrganizationAdminAccountOutputResponse
    /// Creates a share request for a custom framework in Audit Manager. The share request specifies a recipient and notifies them that a custom framework is available. Recipients have 120 days to accept or decline the request. If no action is taken, the share request expires. When you create a share request, Audit Manager stores a snapshot of your custom framework in the US East (N. Virginia) Amazon Web Services Region. Audit Manager also stores a backup of the same snapshot in the US West (Oregon) Amazon Web Services Region. Audit Manager deletes the snapshot and the backup snapshot when one of the following events occurs:
    ///
    /// * The sender revokes the share request.
    ///
    /// * The recipient declines the share request.
    ///
    /// * The recipient encounters an error and doesn't successfully accept the share request.
    ///
    /// * The share request expires before the recipient responds to the request.
    ///
    ///
    /// When a sender [resends a share request](https://docs.aws.amazon.com/audit-manager/latest/userguide/framework-sharing.html#framework-sharing-resend), the snapshot is replaced with an updated version that corresponds with the latest version of the custom framework. When a recipient accepts a share request, the snapshot is replicated into their Amazon Web Services account under the Amazon Web Services Region that was specified in the share request. When you invoke the StartAssessmentFrameworkShare API, you are about to share a custom framework with another Amazon Web Services account. You may not share a custom framework that is derived from a standard framework if the standard framework is designated as not eligible for sharing by Amazon Web Services, unless you have obtained permission to do so from the owner of the standard framework. To learn more about which standard frameworks are eligible for sharing, see [Framework sharing eligibility](https://docs.aws.amazon.com/audit-manager/latest/userguide/share-custom-framework-concepts-and-terminology.html#eligibility) in the Audit Manager User Guide.
    func startAssessmentFrameworkShare(input: StartAssessmentFrameworkShareInput) async throws -> StartAssessmentFrameworkShareOutputResponse
    /// Tags the specified resource in Audit Manager.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Removes a tag from a resource in Audit Manager.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// Edits an Audit Manager assessment.
    func updateAssessment(input: UpdateAssessmentInput) async throws -> UpdateAssessmentOutputResponse
    /// Updates a control within an assessment in Audit Manager.
    func updateAssessmentControl(input: UpdateAssessmentControlInput) async throws -> UpdateAssessmentControlOutputResponse
    /// Updates the status of a control set in an Audit Manager assessment.
    func updateAssessmentControlSetStatus(input: UpdateAssessmentControlSetStatusInput) async throws -> UpdateAssessmentControlSetStatusOutputResponse
    /// Updates a custom framework in Audit Manager.
    func updateAssessmentFramework(input: UpdateAssessmentFrameworkInput) async throws -> UpdateAssessmentFrameworkOutputResponse
    /// Updates a share request for a custom framework in Audit Manager.
    func updateAssessmentFrameworkShare(input: UpdateAssessmentFrameworkShareInput) async throws -> UpdateAssessmentFrameworkShareOutputResponse
    /// Updates the status of an assessment in Audit Manager.
    func updateAssessmentStatus(input: UpdateAssessmentStatusInput) async throws -> UpdateAssessmentStatusOutputResponse
    /// Updates a custom control in Audit Manager.
    func updateControl(input: UpdateControlInput) async throws -> UpdateControlOutputResponse
    /// Updates Audit Manager settings for the current user account.
    func updateSettings(input: UpdateSettingsInput) async throws -> UpdateSettingsOutputResponse
    /// Validates the integrity of an assessment report in Audit Manager.
    func validateAssessmentReportIntegrity(input: ValidateAssessmentReportIntegrityInput) async throws -> ValidateAssessmentReportIntegrityOutputResponse
}

public protocol AuditManagerClientConfigurationProtocol : AWSClientRuntime.AWSClientConfiguration {
    var endpointResolver: EndpointResolver { get }
}

public enum AuditManagerClientTypes {}
