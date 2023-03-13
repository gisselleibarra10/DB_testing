// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime

/// Systems Manager Incident Manager is an incident management console designed to help users mitigate and recover from incidents affecting their Amazon Web Services-hosted applications. An incident is any unplanned interruption or reduction in quality of services. Incident Manager increases incident resolution by notifying responders of impact, highlighting relevant troubleshooting data, and providing collaboration tools to get services back up and running. To achieve the primary goal of reducing the time-to-resolution of critical incidents, Incident Manager automates response plans and enables responder team escalation.
public protocol SSMContactsClientProtocol {
    /// Used to acknowledge an engagement to a contact channel during an incident.
    func acceptPage(input: AcceptPageInput) async throws -> AcceptPageOutputResponse
    /// Activates a contact's contact channel. Incident Manager can't engage a contact until the contact channel has been activated.
    func activateContactChannel(input: ActivateContactChannelInput) async throws -> ActivateContactChannelOutputResponse
    /// Contacts are either the contacts that Incident Manager engages during an incident or the escalation plans that Incident Manager uses to engage contacts in phases during an incident.
    func createContact(input: CreateContactInput) async throws -> CreateContactOutputResponse
    /// A contact channel is the method that Incident Manager uses to engage your contact.
    func createContactChannel(input: CreateContactChannelInput) async throws -> CreateContactChannelOutputResponse
    /// To no longer receive Incident Manager engagements to a contact channel, you can deactivate the channel.
    func deactivateContactChannel(input: DeactivateContactChannelInput) async throws -> DeactivateContactChannelOutputResponse
    /// To remove a contact from Incident Manager, you can delete the contact. Deleting a contact removes them from all escalation plans and related response plans. Deleting an escalation plan removes it from all related response plans. You will have to recreate the contact and its contact channels before you can use it again.
    func deleteContact(input: DeleteContactInput) async throws -> DeleteContactOutputResponse
    /// To no longer receive engagements on a contact channel, you can delete the channel from a contact. Deleting the contact channel removes it from the contact's engagement plan. If you delete the only contact channel for a contact, you won't be able to engage that contact during an incident.
    func deleteContactChannel(input: DeleteContactChannelInput) async throws -> DeleteContactChannelOutputResponse
    /// Incident Manager uses engagements to engage contacts and escalation plans during an incident. Use this command to describe the engagement that occurred during an incident.
    func describeEngagement(input: DescribeEngagementInput) async throws -> DescribeEngagementOutputResponse
    /// Lists details of the engagement to a contact channel.
    func describePage(input: DescribePageInput) async throws -> DescribePageOutputResponse
    /// Retrieves information about the specified contact or escalation plan.
    func getContact(input: GetContactInput) async throws -> GetContactOutputResponse
    /// List details about a specific contact channel.
    func getContactChannel(input: GetContactChannelInput) async throws -> GetContactChannelOutputResponse
    /// Retrieves the resource policies attached to the specified contact or escalation plan.
    func getContactPolicy(input: GetContactPolicyInput) async throws -> GetContactPolicyOutputResponse
    /// Lists all contact channels for the specified contact.
    func listContactChannels(input: ListContactChannelsInput) async throws -> ListContactChannelsOutputResponse
    /// Lists all contacts and escalation plans in Incident Manager.
    func listContacts(input: ListContactsInput) async throws -> ListContactsOutputResponse
    /// Lists all engagements that have happened in an incident.
    func listEngagements(input: ListEngagementsInput) async throws -> ListEngagementsOutputResponse
    /// Lists all of the engagements to contact channels that have been acknowledged.
    func listPageReceipts(input: ListPageReceiptsInput) async throws -> ListPageReceiptsOutputResponse
    /// Lists the engagements to a contact's contact channels.
    func listPagesByContact(input: ListPagesByContactInput) async throws -> ListPagesByContactOutputResponse
    /// Lists the engagements to contact channels that occurred by engaging a contact.
    func listPagesByEngagement(input: ListPagesByEngagementInput) async throws -> ListPagesByEngagementOutputResponse
    /// Lists the tags of an escalation plan or contact.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Adds a resource policy to the specified contact or escalation plan. The resource policy is used to share the contact or escalation plan using Resource Access Manager (RAM). For more information about cross-account sharing, see [Setting up cross-account functionality](https://docs.aws.amazon.com/incident-manager/latest/userguide/xa.html).
    func putContactPolicy(input: PutContactPolicyInput) async throws -> PutContactPolicyOutputResponse
    /// Sends an activation code to a contact channel. The contact can use this code to activate the contact channel in the console or with the ActivateChannel operation. Incident Manager can't engage a contact channel until it has been activated.
    func sendActivationCode(input: SendActivationCodeInput) async throws -> SendActivationCodeOutputResponse
    /// Starts an engagement to a contact or escalation plan. The engagement engages each contact specified in the incident.
    func startEngagement(input: StartEngagementInput) async throws -> StartEngagementOutputResponse
    /// Stops an engagement before it finishes the final stage of the escalation plan or engagement plan. Further contacts aren't engaged.
    func stopEngagement(input: StopEngagementInput) async throws -> StopEngagementOutputResponse
    /// Tags a contact or escalation plan. You can tag only contacts and escalation plans in the first region of your replication set.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Removes tags from the specified resource.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// Updates the contact or escalation plan specified.
    func updateContact(input: UpdateContactInput) async throws -> UpdateContactOutputResponse
    /// Updates a contact's contact channel.
    func updateContactChannel(input: UpdateContactChannelInput) async throws -> UpdateContactChannelOutputResponse
}

public protocol SSMContactsClientConfigurationProtocol : AWSClientRuntime.AWSClientConfiguration {
    var endpointResolver: EndpointResolver { get }
}

public enum SSMContactsClientTypes {}
