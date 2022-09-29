// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// Amazon Connect Customer Profiles Welcome to the Amazon Connect Customer Profiles API Reference. This guide provides information about the Amazon Connect Customer Profiles API, including supported operations, data types, parameters, and schemas. Amazon Connect Customer Profiles is a unified customer profile for your contact center that has pre-built connectors powered by AppFlow that make it easy to combine customer information from third party applications, such as Salesforce (CRM), ServiceNow (ITSM), and your enterprise resource planning (ERP), with contact history from your Amazon Connect contact center. If you're new to Amazon Connect , you might find it helpful to also review the [Amazon Connect Administrator Guide](https://docs.aws.amazon.com/connect/latest/adminguide/what-is-amazon-connect.html).
public protocol CustomerProfilesClientProtocol {
    /// Associates a new key value with a specific profile, such as a Contact Record ContactId. A profile object can have a single unique key and any number of additional keys that can be used to identify the profile that it belongs to.
    func addProfileKey(input: AddProfileKeyInput) async throws -> AddProfileKeyOutputResponse
    /// Creates a domain, which is a container for all customer data, such as customer profile attributes, object types, profile keys, and encryption keys. You can create multiple domains, and each domain can have multiple third-party integrations. Each Amazon Connect instance can be associated with only one domain. Multiple Amazon Connect instances can be associated with one domain. Use this API or [UpdateDomain](https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_UpdateDomain.html) to enable [identity resolution](https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetMatches.html): set Matching to true. To prevent cross-service impersonation when you call this API, see [Cross-service confused deputy prevention](https://docs.aws.amazon.com/connect/latest/adminguide/cross-service-confused-deputy-prevention.html) for sample policies that you should apply.
    func createDomain(input: CreateDomainInput) async throws -> CreateDomainOutputResponse
    /// Creates an integration workflow. An integration workflow is an async process which ingests historic data and sets up an integration for ongoing updates. The supported Amazon AppFlow sources are Salesforce, ServiceNow, and Marketo.
    func createIntegrationWorkflow(input: CreateIntegrationWorkflowInput) async throws -> CreateIntegrationWorkflowOutputResponse
    /// Creates a standard profile. A standard profile represents the following attributes for a customer profile in a domain.
    func createProfile(input: CreateProfileInput) async throws -> CreateProfileOutputResponse
    /// Deletes a specific domain and all of its customer data, such as customer profile attributes and their related objects.
    func deleteDomain(input: DeleteDomainInput) async throws -> DeleteDomainOutputResponse
    /// Removes an integration from a specific domain.
    func deleteIntegration(input: DeleteIntegrationInput) async throws -> DeleteIntegrationOutputResponse
    /// Deletes the standard customer profile and all data pertaining to the profile.
    func deleteProfile(input: DeleteProfileInput) async throws -> DeleteProfileOutputResponse
    /// Removes a searchable key from a customer profile.
    func deleteProfileKey(input: DeleteProfileKeyInput) async throws -> DeleteProfileKeyOutputResponse
    /// Removes an object associated with a profile of a given ProfileObjectType.
    func deleteProfileObject(input: DeleteProfileObjectInput) async throws -> DeleteProfileObjectOutputResponse
    /// Removes a ProfileObjectType from a specific domain as well as removes all the ProfileObjects of that type. It also disables integrations from this specific ProfileObjectType. In addition, it scrubs all of the fields of the standard profile that were populated from this ProfileObjectType.
    func deleteProfileObjectType(input: DeleteProfileObjectTypeInput) async throws -> DeleteProfileObjectTypeOutputResponse
    /// Deletes the specified workflow and all its corresponding resources. This is an async process.
    func deleteWorkflow(input: DeleteWorkflowInput) async throws -> DeleteWorkflowOutputResponse
    /// Tests the auto-merging settings of your Identity Resolution Job without merging your data. It randomly selects a sample of matching groups from the existing matching results, and applies the automerging settings that you provided. You can then view the number of profiles in the sample, the number of matches, and the number of profiles identified to be merged. This enables you to evaluate the accuracy of the attributes in your matching list. You can't view which profiles are matched and would be merged. We strongly recommend you use this API to do a dry run of the automerging process before running the Identity Resolution Job. Include at least two matching attributes. If your matching list includes too few attributes (such as only FirstName or only LastName), there may be a large number of matches. This increases the chances of erroneous merges.
    func getAutoMergingPreview(input: GetAutoMergingPreviewInput) async throws -> GetAutoMergingPreviewOutputResponse
    /// Returns information about a specific domain.
    func getDomain(input: GetDomainInput) async throws -> GetDomainOutputResponse
    /// Returns information about an Identity Resolution Job in a specific domain. Identity Resolution Jobs are set up using the Amazon Connect admin console. For more information, see [Use Identity Resolution to consolidate similar profiles](https://docs.aws.amazon.com/connect/latest/adminguide/use-identity-resolution.html).
    func getIdentityResolutionJob(input: GetIdentityResolutionJobInput) async throws -> GetIdentityResolutionJobOutputResponse
    /// Returns an integration for a domain.
    func getIntegration(input: GetIntegrationInput) async throws -> GetIntegrationOutputResponse
    /// Before calling this API, use [CreateDomain](https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_CreateDomain.html) or [UpdateDomain](https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_UpdateDomain.html) to enable identity resolution: set Matching to true. GetMatches returns potentially matching profiles, based on the results of the latest run of a machine learning process. The process of matching duplicate profiles. If Matching = true, Amazon Connect Customer Profiles starts a weekly batch process called Identity Resolution Job. If you do not specify a date and time for Identity Resolution Job to run, by default it runs every Saturday at 12AM UTC to detect duplicate profiles in your domains. After the Identity Resolution Job completes, use the [GetMatches](https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetMatches.html) API to return and review the results. Or, if you have configured ExportingConfig in the MatchingRequest, you can download the results from S3. Amazon Connect uses the following profile attributes to identify matches:
    ///
    /// * PhoneNumber
    ///
    /// * HomePhoneNumber
    ///
    /// * BusinessPhoneNumber
    ///
    /// * MobilePhoneNumber
    ///
    /// * EmailAddress
    ///
    /// * PersonalEmailAddress
    ///
    /// * BusinessEmailAddress
    ///
    /// * FullName
    ///
    ///
    /// For example, two or more profiles—with spelling mistakes such as John Doe and Jhn Doe, or different casing email addresses such as JOHN_DOE@ANYCOMPANY.COM and johndoe@anycompany.com, or different phone number formats such as 555-010-0000 and +1-555-010-0000—can be detected as belonging to the same customer John Doe and merged into a unified profile.
    func getMatches(input: GetMatchesInput) async throws -> GetMatchesOutputResponse
    /// Returns the object types for a specific domain.
    func getProfileObjectType(input: GetProfileObjectTypeInput) async throws -> GetProfileObjectTypeOutputResponse
    /// Returns the template information for a specific object type. A template is a predefined ProfileObjectType, such as “Salesforce-Account” or “Salesforce-Contact.” When a user sends a ProfileObject, using the PutProfileObject API, with an ObjectTypeName that matches one of the TemplateIds, it uses the mappings from the template.
    func getProfileObjectTypeTemplate(input: GetProfileObjectTypeTemplateInput) async throws -> GetProfileObjectTypeTemplateOutputResponse
    /// Get details of specified workflow.
    func getWorkflow(input: GetWorkflowInput) async throws -> GetWorkflowOutputResponse
    /// Get granular list of steps in workflow.
    func getWorkflowSteps(input: GetWorkflowStepsInput) async throws -> GetWorkflowStepsOutputResponse
    /// Lists all of the integrations associated to a specific URI in the AWS account.
    func listAccountIntegrations(input: ListAccountIntegrationsInput) async throws -> ListAccountIntegrationsOutputResponse
    /// Returns a list of all the domains for an AWS account that have been created.
    func listDomains(input: ListDomainsInput) async throws -> ListDomainsOutputResponse
    /// Lists all of the Identity Resolution Jobs in your domain. The response sorts the list by JobStartTime.
    func listIdentityResolutionJobs(input: ListIdentityResolutionJobsInput) async throws -> ListIdentityResolutionJobsOutputResponse
    /// Lists all of the integrations in your domain.
    func listIntegrations(input: ListIntegrationsInput) async throws -> ListIntegrationsOutputResponse
    /// Returns a list of objects associated with a profile of a given ProfileObjectType.
    func listProfileObjects(input: ListProfileObjectsInput) async throws -> ListProfileObjectsOutputResponse
    /// Lists all of the templates available within the service.
    func listProfileObjectTypes(input: ListProfileObjectTypesInput) async throws -> ListProfileObjectTypesOutputResponse
    /// Lists all of the template information for object types.
    func listProfileObjectTypeTemplates(input: ListProfileObjectTypeTemplatesInput) async throws -> ListProfileObjectTypeTemplatesOutputResponse
    /// Displays the tags associated with an Amazon Connect Customer Profiles resource. In Connect Customer Profiles, domains, profile object types, and integrations can be tagged.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Query to list all workflows.
    func listWorkflows(input: ListWorkflowsInput) async throws -> ListWorkflowsOutputResponse
    /// Runs an AWS Lambda job that does the following:
    ///
    /// * All the profileKeys in the ProfileToBeMerged will be moved to the main profile.
    ///
    /// * All the objects in the ProfileToBeMerged will be moved to the main profile.
    ///
    /// * All the ProfileToBeMerged will be deleted at the end.
    ///
    /// * All the profileKeys in the ProfileIdsToBeMerged will be moved to the main profile.
    ///
    /// * Standard fields are merged as follows:
    ///
    /// * Fields are always "union"-ed if there are no conflicts in standard fields or attributeKeys.
    ///
    /// * When there are conflicting fields:
    ///
    /// * If no SourceProfileIds entry is specified, the main Profile value is always taken.
    ///
    /// * If a SourceProfileIds entry is specified, the specified profileId is always taken, even if it is a NULL value.
    ///
    ///
    ///
    ///
    ///
    ///
    ///
    ///
    /// You can use MergeProfiles together with [GetMatches](https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetMatches.html), which returns potentially matching profiles, or use it with the results of another matching system. After profiles have been merged, they cannot be separated (unmerged).
    func mergeProfiles(input: MergeProfilesInput) async throws -> MergeProfilesOutputResponse
    /// Adds an integration between the service and a third-party service, which includes Amazon AppFlow and Amazon Connect. An integration can belong to only one domain. To add or remove tags on an existing Integration, see [ TagResource ](https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_TagResource.html)/[ UntagResource](https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_UntagResource.html).
    func putIntegration(input: PutIntegrationInput) async throws -> PutIntegrationOutputResponse
    /// Adds additional objects to customer profiles of a given ObjectType. When adding a specific profile object, like a Contact Record, an inferred profile can get created if it is not mapped to an existing profile. The resulting profile will only have a phone number populated in the standard ProfileObject. Any additional Contact Records with the same phone number will be mapped to the same inferred profile. When a ProfileObject is created and if a ProfileObjectType already exists for the ProfileObject, it will provide data to a standard profile depending on the ProfileObjectType definition. PutProfileObject needs an ObjectType, which can be created using PutProfileObjectType.
    func putProfileObject(input: PutProfileObjectInput) async throws -> PutProfileObjectOutputResponse
    /// Defines a ProfileObjectType. To add or remove tags on an existing ObjectType, see [ TagResource](https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_TagResource.html)/[UntagResource](https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_UntagResource.html).
    func putProfileObjectType(input: PutProfileObjectTypeInput) async throws -> PutProfileObjectTypeOutputResponse
    /// Searches for profiles within a specific domain name using name, phone number, email address, account number, or a custom defined index.
    func searchProfiles(input: SearchProfilesInput) async throws -> SearchProfilesOutputResponse
    /// Assigns one or more tags (key-value pairs) to the specified Amazon Connect Customer Profiles resource. Tags can help you organize and categorize your resources. You can also use them to scope user permissions by granting a user permission to access or change only resources with certain tag values. In Connect Customer Profiles, domains, profile object types, and integrations can be tagged. Tags don't have any semantic meaning to AWS and are interpreted strictly as strings of characters. You can use the TagResource action with a resource that already has tags. If you specify a new tag key, this tag is appended to the list of tags associated with the resource. If you specify a tag key that is already associated with the resource, the new tag value that you specify replaces the previous value for that tag. You can associate as many as 50 tags with a resource.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Removes one or more tags from the specified Amazon Connect Customer Profiles resource. In Connect Customer Profiles, domains, profile object types, and integrations can be tagged.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// Updates the properties of a domain, including creating or selecting a dead letter queue or an encryption key. After a domain is created, the name can’t be changed. Use this API or [CreateDomain](https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_CreateDomain.html) to enable [identity resolution](https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetMatches.html): set Matching to true. To prevent cross-service impersonation when you call this API, see [Cross-service confused deputy prevention](https://docs.aws.amazon.com/connect/latest/adminguide/cross-service-confused-deputy-prevention.html) for sample policies that you should apply. To add or remove tags on an existing Domain, see [TagResource](https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_TagResource.html)/[UntagResource](https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_UntagResource.html).
    func updateDomain(input: UpdateDomainInput) async throws -> UpdateDomainOutputResponse
    /// Updates the properties of a profile. The ProfileId is required for updating a customer profile. When calling the UpdateProfile API, specifying an empty string value means that any existing value will be removed. Not specifying a string value means that any value already there will be kept.
    func updateProfile(input: UpdateProfileInput) async throws -> UpdateProfileOutputResponse
}

public enum CustomerProfilesClientTypes {}
