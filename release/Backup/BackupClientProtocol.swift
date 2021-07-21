// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <fullname>AWS Backup</fullname>
///          <p>AWS Backup is a unified backup service designed to protect AWS services and their
///          associated data. AWS Backup simplifies the creation, migration, restoration, and deletion
///          of backups, while also providing reporting and auditing.</p>
public protocol BackupClientProtocol {
    /// <p>Creates a backup plan using a backup plan name and backup rules. A backup plan is a
    ///          document that contains information that AWS Backup uses to schedule tasks that create
    ///          recovery points for resources.</p>
    ///          <p>If you call <code>CreateBackupPlan</code> with a plan that already exists, an
    ///             <code>AlreadyExistsException</code> is returned.</p>
    func createBackupPlan(input: CreateBackupPlanInput, completion: @escaping (SdkResult<CreateBackupPlanOutputResponse, CreateBackupPlanOutputError>) -> Void)
    /// <p>Creates a JSON document that specifies a set of resources to assign to a backup plan.
    ///          Resources can be included by specifying patterns for a <code>ListOfTags</code> and selected
    ///             <code>Resources</code>. </p>
    ///          <p>For example, consider the following patterns:</p>
    ///          <ul>
    ///             <li>
    ///                <p>
    ///                   <code>Resources: "arn:aws:ec2:region:account-id:volume/volume-id"</code>
    ///                </p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>ConditionKey:"department"</code>
    ///                </p>
    ///                <p>
    ///                   <code>ConditionValue:"finance"</code>
    ///                </p>
    ///                <p>
    ///                   <code>ConditionType:"StringEquals"</code>
    ///                </p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>ConditionKey:"importance"</code>
    ///                </p>
    ///                <p>
    ///                   <code>ConditionValue:"critical"</code>
    ///                </p>
    ///                <p>
    ///                   <code>ConditionType:"StringEquals"</code>
    ///                </p>
    ///             </li>
    ///          </ul>
    ///          <p>Using these patterns would back up all Amazon Elastic Block Store (Amazon EBS) volumes
    ///          that are tagged as <code>"department=finance"</code>, <code>"importance=critical"</code>,
    ///          in addition to an EBS volume with the specified volume ID.</p>
    ///          <p>Resources and conditions are additive in that all resources that match the pattern are
    ///          selected. This shouldn't be confused with a logical AND, where all conditions must match.
    ///          The matching patterns are logically put together using the OR operator.
    ///          In other words, all patterns that match are selected for backup.</p>
    func createBackupSelection(input: CreateBackupSelectionInput, completion: @escaping (SdkResult<CreateBackupSelectionOutputResponse, CreateBackupSelectionOutputError>) -> Void)
    /// <p>Creates a logical container where backups are stored. A <code>CreateBackupVault</code>
    ///          request includes a name, optionally one or more resource tags, an encryption key, and a
    ///          request ID.</p>
    ///          <note>
    ///             <p>Sensitive data, such as passport numbers, should not be included the name of a backup
    ///             vault.</p>
    ///          </note>
    func createBackupVault(input: CreateBackupVaultInput, completion: @escaping (SdkResult<CreateBackupVaultOutputResponse, CreateBackupVaultOutputError>) -> Void)
    /// <p>Deletes a backup plan. A backup plan can only be deleted after all associated selections
    ///          of resources have been deleted. Deleting a backup plan deletes the current version of a
    ///          backup plan. Previous versions, if any, will still exist.</p>
    func deleteBackupPlan(input: DeleteBackupPlanInput, completion: @escaping (SdkResult<DeleteBackupPlanOutputResponse, DeleteBackupPlanOutputError>) -> Void)
    /// <p>Deletes the resource selection associated with a backup plan that is specified by the
    ///             <code>SelectionId</code>.</p>
    func deleteBackupSelection(input: DeleteBackupSelectionInput, completion: @escaping (SdkResult<DeleteBackupSelectionOutputResponse, DeleteBackupSelectionOutputError>) -> Void)
    /// <p>Deletes the backup vault identified by its name. A vault can be deleted only if it is
    ///          empty.</p>
    func deleteBackupVault(input: DeleteBackupVaultInput, completion: @escaping (SdkResult<DeleteBackupVaultOutputResponse, DeleteBackupVaultOutputError>) -> Void)
    /// <p>Deletes the policy document that manages permissions on a backup vault.</p>
    func deleteBackupVaultAccessPolicy(input: DeleteBackupVaultAccessPolicyInput, completion: @escaping (SdkResult<DeleteBackupVaultAccessPolicyOutputResponse, DeleteBackupVaultAccessPolicyOutputError>) -> Void)
    /// <p>Deletes event notifications for the specified backup vault.</p>
    func deleteBackupVaultNotifications(input: DeleteBackupVaultNotificationsInput, completion: @escaping (SdkResult<DeleteBackupVaultNotificationsOutputResponse, DeleteBackupVaultNotificationsOutputError>) -> Void)
    /// <p>Deletes the recovery point specified by a recovery point ID.</p>
    ///          <p>If the recovery point ID belongs to a continuous backup, calling this endpoint deletes
    ///          the existing continuous backup and stops future continuous backup.</p>
    func deleteRecoveryPoint(input: DeleteRecoveryPointInput, completion: @escaping (SdkResult<DeleteRecoveryPointOutputResponse, DeleteRecoveryPointOutputError>) -> Void)
    /// <p>Returns backup job details for the specified <code>BackupJobId</code>.</p>
    func describeBackupJob(input: DescribeBackupJobInput, completion: @escaping (SdkResult<DescribeBackupJobOutputResponse, DescribeBackupJobOutputError>) -> Void)
    /// <p>Returns metadata about a backup vault specified by its name.</p>
    func describeBackupVault(input: DescribeBackupVaultInput, completion: @escaping (SdkResult<DescribeBackupVaultOutputResponse, DescribeBackupVaultOutputError>) -> Void)
    /// <p>Returns metadata associated with creating a copy of a resource.</p>
    func describeCopyJob(input: DescribeCopyJobInput, completion: @escaping (SdkResult<DescribeCopyJobOutputResponse, DescribeCopyJobOutputError>) -> Void)
    /// <p>Describes the global settings of the AWS account, including whether it is opted in to
    ///          cross-account backup.</p>
    func describeGlobalSettings(input: DescribeGlobalSettingsInput, completion: @escaping (SdkResult<DescribeGlobalSettingsOutputResponse, DescribeGlobalSettingsOutputError>) -> Void)
    /// <p>Returns information about a saved resource, including the last time it was backed up,
    ///          its Amazon Resource Name (ARN), and the AWS service type of the saved resource.</p>
    func describeProtectedResource(input: DescribeProtectedResourceInput, completion: @escaping (SdkResult<DescribeProtectedResourceOutputResponse, DescribeProtectedResourceOutputError>) -> Void)
    /// <p>Returns metadata associated with a recovery point, including ID, status, encryption, and
    ///          lifecycle.</p>
    func describeRecoveryPoint(input: DescribeRecoveryPointInput, completion: @escaping (SdkResult<DescribeRecoveryPointOutputResponse, DescribeRecoveryPointOutputError>) -> Void)
    /// <p>Returns the current service opt-in settings for the Region. If service-opt-in is enabled
    ///          for a service, AWS Backup tries to protect that service's resources in this Region, when
    ///          the resource is included in an on-demand backup or scheduled backup plan. Otherwise, AWS
    ///          Backup does not try to protect that service's resources in this Region, AWS Backup does not
    ///          try to protect that service's resources in this Region.</p>
    func describeRegionSettings(input: DescribeRegionSettingsInput, completion: @escaping (SdkResult<DescribeRegionSettingsOutputResponse, DescribeRegionSettingsOutputError>) -> Void)
    /// <p>Returns metadata associated with a restore job that is specified by a job ID.</p>
    func describeRestoreJob(input: DescribeRestoreJobInput, completion: @escaping (SdkResult<DescribeRestoreJobOutputResponse, DescribeRestoreJobOutputError>) -> Void)
    /// <p>Deletes the specified continuous backup recovery point from AWS Backup and releases
    ///          control of that continuous backup to the source service, such as Amazon RDS. The source
    ///          service will continue to create and retain continuous backups using the lifecycle that you
    ///          specified in your original backup plan.</p>
    ///          <p>Does not support snapshot backup recovery points.</p>
    func disassociateRecoveryPoint(input: DisassociateRecoveryPointInput, completion: @escaping (SdkResult<DisassociateRecoveryPointOutputResponse, DisassociateRecoveryPointOutputError>) -> Void)
    /// <p>Returns the backup plan that is specified by the plan ID as a backup template.</p>
    func exportBackupPlanTemplate(input: ExportBackupPlanTemplateInput, completion: @escaping (SdkResult<ExportBackupPlanTemplateOutputResponse, ExportBackupPlanTemplateOutputError>) -> Void)
    /// <p>Returns <code>BackupPlan</code> details for the specified <code>BackupPlanId</code>. The
    ///          details are the body of a backup plan in JSON format, in addition to plan metadata.</p>
    func getBackupPlan(input: GetBackupPlanInput, completion: @escaping (SdkResult<GetBackupPlanOutputResponse, GetBackupPlanOutputError>) -> Void)
    /// <p>Returns a valid JSON document specifying a backup plan or an error.</p>
    func getBackupPlanFromJSON(input: GetBackupPlanFromJSONInput, completion: @escaping (SdkResult<GetBackupPlanFromJSONOutputResponse, GetBackupPlanFromJSONOutputError>) -> Void)
    /// <p>Returns the template specified by its <code>templateId</code> as a backup plan.</p>
    func getBackupPlanFromTemplate(input: GetBackupPlanFromTemplateInput, completion: @escaping (SdkResult<GetBackupPlanFromTemplateOutputResponse, GetBackupPlanFromTemplateOutputError>) -> Void)
    /// <p>Returns selection metadata and a document in JSON format that specifies a list of
    ///          resources that are associated with a backup plan.</p>
    func getBackupSelection(input: GetBackupSelectionInput, completion: @escaping (SdkResult<GetBackupSelectionOutputResponse, GetBackupSelectionOutputError>) -> Void)
    /// <p>Returns the access policy document that is associated with the named backup
    ///          vault.</p>
    func getBackupVaultAccessPolicy(input: GetBackupVaultAccessPolicyInput, completion: @escaping (SdkResult<GetBackupVaultAccessPolicyOutputResponse, GetBackupVaultAccessPolicyOutputError>) -> Void)
    /// <p>Returns event notifications for the specified backup vault.</p>
    func getBackupVaultNotifications(input: GetBackupVaultNotificationsInput, completion: @escaping (SdkResult<GetBackupVaultNotificationsOutputResponse, GetBackupVaultNotificationsOutputError>) -> Void)
    /// <p>Returns a set of metadata key-value pairs that were used to create the backup.</p>
    func getRecoveryPointRestoreMetadata(input: GetRecoveryPointRestoreMetadataInput, completion: @escaping (SdkResult<GetRecoveryPointRestoreMetadataOutputResponse, GetRecoveryPointRestoreMetadataOutputError>) -> Void)
    /// <p>Returns the AWS resource types supported by AWS Backup.</p>
    func getSupportedResourceTypes(input: GetSupportedResourceTypesInput, completion: @escaping (SdkResult<GetSupportedResourceTypesOutputResponse, GetSupportedResourceTypesOutputError>) -> Void)
    /// <p>Returns a list of existing backup jobs for an authenticated account for the last 30
    ///          days. For a longer period of time, consider using these <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/monitoring.html">monitoring tools</a>.</p>
    func listBackupJobs(input: ListBackupJobsInput, completion: @escaping (SdkResult<ListBackupJobsOutputResponse, ListBackupJobsOutputError>) -> Void)
    /// <p>Returns a list of existing backup plans for an authenticated account. The list is
    ///          populated only if the advanced option is set for the backup plan. The list contains
    ///          information such as Amazon Resource Names (ARNs), plan IDs, creation and deletion dates,
    ///          version IDs, plan names, and creator request IDs.</p>
    func listBackupPlans(input: ListBackupPlansInput, completion: @escaping (SdkResult<ListBackupPlansOutputResponse, ListBackupPlansOutputError>) -> Void)
    /// <p>Returns metadata of your saved backup plan templates, including the template ID, name,
    ///          and the creation and deletion dates.</p>
    func listBackupPlanTemplates(input: ListBackupPlanTemplatesInput, completion: @escaping (SdkResult<ListBackupPlanTemplatesOutputResponse, ListBackupPlanTemplatesOutputError>) -> Void)
    /// <p>Returns version metadata of your backup plans, including Amazon Resource Names (ARNs),
    ///          backup plan IDs, creation and deletion dates, plan names, and version IDs.</p>
    func listBackupPlanVersions(input: ListBackupPlanVersionsInput, completion: @escaping (SdkResult<ListBackupPlanVersionsOutputResponse, ListBackupPlanVersionsOutputError>) -> Void)
    /// <p>Returns an array containing metadata of the resources associated with the target backup
    ///          plan.</p>
    func listBackupSelections(input: ListBackupSelectionsInput, completion: @escaping (SdkResult<ListBackupSelectionsOutputResponse, ListBackupSelectionsOutputError>) -> Void)
    /// <p>Returns a list of recovery point storage containers along with information about
    ///          them.</p>
    func listBackupVaults(input: ListBackupVaultsInput, completion: @escaping (SdkResult<ListBackupVaultsOutputResponse, ListBackupVaultsOutputError>) -> Void)
    /// <p>Returns metadata about your copy jobs.</p>
    func listCopyJobs(input: ListCopyJobsInput, completion: @escaping (SdkResult<ListCopyJobsOutputResponse, ListCopyJobsOutputError>) -> Void)
    /// <p>Returns an array of resources successfully backed up by AWS Backup, including the time
    ///          the resource was saved, an Amazon Resource Name (ARN) of the resource, and a resource
    ///          type.</p>
    func listProtectedResources(input: ListProtectedResourcesInput, completion: @escaping (SdkResult<ListProtectedResourcesOutputResponse, ListProtectedResourcesOutputError>) -> Void)
    /// <p>Returns detailed information about the recovery points stored in a backup vault.</p>
    func listRecoveryPointsByBackupVault(input: ListRecoveryPointsByBackupVaultInput, completion: @escaping (SdkResult<ListRecoveryPointsByBackupVaultOutputResponse, ListRecoveryPointsByBackupVaultOutputError>) -> Void)
    /// <p>Returns detailed information about recovery points of the type specified by a resource
    ///          Amazon Resource Name (ARN).</p>
    func listRecoveryPointsByResource(input: ListRecoveryPointsByResourceInput, completion: @escaping (SdkResult<ListRecoveryPointsByResourceOutputResponse, ListRecoveryPointsByResourceOutputError>) -> Void)
    /// <p>Returns a list of jobs that AWS Backup initiated to restore a saved resource, including
    ///          metadata about the recovery process.</p>
    func listRestoreJobs(input: ListRestoreJobsInput, completion: @escaping (SdkResult<ListRestoreJobsOutputResponse, ListRestoreJobsOutputError>) -> Void)
    /// <p>Returns a list of key-value pairs assigned to a target recovery point, backup plan, or
    ///          backup vault.</p>
    ///          <note>
    ///             <p>
    ///                <code>ListTags</code> are currently only supported with Amazon EFS backups.</p>
    ///          </note>
    func listTags(input: ListTagsInput, completion: @escaping (SdkResult<ListTagsOutputResponse, ListTagsOutputError>) -> Void)
    /// <p>Sets a resource-based policy that is used to manage access permissions on the target
    ///          backup vault. Requires a backup vault name and an access policy document in JSON
    ///          format.</p>
    func putBackupVaultAccessPolicy(input: PutBackupVaultAccessPolicyInput, completion: @escaping (SdkResult<PutBackupVaultAccessPolicyOutputResponse, PutBackupVaultAccessPolicyOutputError>) -> Void)
    /// <p>Turns on notifications on a backup vault for the specified topic and events.</p>
    func putBackupVaultNotifications(input: PutBackupVaultNotificationsInput, completion: @escaping (SdkResult<PutBackupVaultNotificationsOutputResponse, PutBackupVaultNotificationsOutputError>) -> Void)
    /// <p>Starts an on-demand backup job for the specified resource.</p>
    func startBackupJob(input: StartBackupJobInput, completion: @escaping (SdkResult<StartBackupJobOutputResponse, StartBackupJobOutputError>) -> Void)
    /// <p>Starts a job to create a one-time copy of the specified resource.</p>
    ///          <p>Does not support continuous backups.</p>
    func startCopyJob(input: StartCopyJobInput, completion: @escaping (SdkResult<StartCopyJobOutputResponse, StartCopyJobOutputError>) -> Void)
    /// <p>Recovers the saved resource identified by an Amazon Resource Name (ARN).</p>
    func startRestoreJob(input: StartRestoreJobInput, completion: @escaping (SdkResult<StartRestoreJobOutputResponse, StartRestoreJobOutputError>) -> Void)
    /// <p>Attempts to cancel a job to create a one-time backup of a resource.</p>
    func stopBackupJob(input: StopBackupJobInput, completion: @escaping (SdkResult<StopBackupJobOutputResponse, StopBackupJobOutputError>) -> Void)
    /// <p>Assigns a set of key-value pairs to a recovery point, backup plan, or backup vault
    ///          identified by an Amazon Resource Name (ARN).</p>
    func tagResource(input: TagResourceInput, completion: @escaping (SdkResult<TagResourceOutputResponse, TagResourceOutputError>) -> Void)
    /// <p>Removes a set of key-value pairs from a recovery point, backup plan, or backup vault
    ///          identified by an Amazon Resource Name (ARN)</p>
    func untagResource(input: UntagResourceInput, completion: @escaping (SdkResult<UntagResourceOutputResponse, UntagResourceOutputError>) -> Void)
    /// <p>Updates an existing backup plan identified by its <code>backupPlanId</code> with the
    ///          input document in JSON format. The new version is uniquely identified by a
    ///             <code>VersionId</code>.</p>
    func updateBackupPlan(input: UpdateBackupPlanInput, completion: @escaping (SdkResult<UpdateBackupPlanOutputResponse, UpdateBackupPlanOutputError>) -> Void)
    /// <p>Updates the current global settings for the AWS account. Use the
    ///             <code>DescribeGlobalSettings</code> API to determine the current settings.</p>
    func updateGlobalSettings(input: UpdateGlobalSettingsInput, completion: @escaping (SdkResult<UpdateGlobalSettingsOutputResponse, UpdateGlobalSettingsOutputError>) -> Void)
    /// <p>Sets the transition lifecycle of a recovery point.</p>
    ///          <p>The lifecycle defines when a protected resource is transitioned to cold storage and when
    ///          it expires. AWS Backup transitions and expires backups automatically according to the
    ///          lifecycle that you define.</p>
    ///          <p>Backups transitioned to cold storage must be stored in cold storage for a minimum of 90
    ///          days. Therefore, the “expire after days” setting must be 90 days greater than the
    ///          “transition to cold after days” setting. The “transition to cold after days” setting cannot
    ///          be changed after a backup has been transitioned to cold.</p>
    ///          <p>Only Amazon EFS file system backups can be transitioned to cold storage.</p>
    ///          <p>Does not support continuous backups.</p>
    func updateRecoveryPointLifecycle(input: UpdateRecoveryPointLifecycleInput, completion: @escaping (SdkResult<UpdateRecoveryPointLifecycleOutputResponse, UpdateRecoveryPointLifecycleOutputError>) -> Void)
    /// <p>Updates the current service opt-in settings for the Region. If service-opt-in is enabled
    ///          for a service, AWS Backup tries to protect that service's resources in this Region, when
    ///          the resource is included in an on-demand backup or scheduled backup plan. Otherwise, AWS
    ///          Backup does not try to protect that service's resources in this Region. Use the
    ///             <code>DescribeRegionSettings</code> API to determine the resource types that are
    ///          supported.</p>
    func updateRegionSettings(input: UpdateRegionSettingsInput, completion: @escaping (SdkResult<UpdateRegionSettingsOutputResponse, UpdateRegionSettingsOutputError>) -> Void)
}
