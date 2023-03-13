// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime

/// Alexa for Business helps you use Alexa in your organization. Alexa for Business provides you with the tools to manage Alexa devices, enroll your users, and assign skills, at scale. You can build your own context-aware voice skills using the Alexa Skills Kit and the Alexa for Business API operations. You can also make these available as private skills for your organization. Alexa for Business makes it efficient to voice-enable your products and services, thus providing context-aware voice experiences for your customers. Device makers building with the Alexa Voice Service (AVS) can create fully integrated solutions, register their products with Alexa for Business, and manage them as shared devices in their organization.
public protocol AlexaForBusinessClientProtocol {
    /// Associates a skill with the organization under the customer's AWS account. If a skill is private, the user implicitly accepts access to this skill during enablement.
    func approveSkill(input: ApproveSkillInput) async throws -> ApproveSkillOutputResponse
    /// Associates a contact with a given address book.
    func associateContactWithAddressBook(input: AssociateContactWithAddressBookInput) async throws -> AssociateContactWithAddressBookOutputResponse
    /// Associates a device with the specified network profile.
    func associateDeviceWithNetworkProfile(input: AssociateDeviceWithNetworkProfileInput) async throws -> AssociateDeviceWithNetworkProfileOutputResponse
    /// Associates a device with a given room. This applies all the settings from the room profile to the device, and all the skills in any skill groups added to that room. This operation requires the device to be online, or else a manual sync is required.
    func associateDeviceWithRoom(input: AssociateDeviceWithRoomInput) async throws -> AssociateDeviceWithRoomOutputResponse
    /// Associates a skill group with a given room. This enables all skills in the associated skill group on all devices in the room.
    func associateSkillGroupWithRoom(input: AssociateSkillGroupWithRoomInput) async throws -> AssociateSkillGroupWithRoomOutputResponse
    /// Associates a skill with a skill group.
    func associateSkillWithSkillGroup(input: AssociateSkillWithSkillGroupInput) async throws -> AssociateSkillWithSkillGroupOutputResponse
    /// Makes a private skill available for enrolled users to enable on their devices.
    func associateSkillWithUsers(input: AssociateSkillWithUsersInput) async throws -> AssociateSkillWithUsersOutputResponse
    /// Creates an address book with the specified details.
    func createAddressBook(input: CreateAddressBookInput) async throws -> CreateAddressBookOutputResponse
    /// Creates a recurring schedule for usage reports to deliver to the specified S3 location with a specified daily or weekly interval.
    func createBusinessReportSchedule(input: CreateBusinessReportScheduleInput) async throws -> CreateBusinessReportScheduleOutputResponse
    /// Adds a new conference provider under the user's AWS account.
    func createConferenceProvider(input: CreateConferenceProviderInput) async throws -> CreateConferenceProviderOutputResponse
    /// Creates a contact with the specified details.
    func createContact(input: CreateContactInput) async throws -> CreateContactOutputResponse
    /// Creates a gateway group with the specified details.
    func createGatewayGroup(input: CreateGatewayGroupInput) async throws -> CreateGatewayGroupOutputResponse
    /// Creates a network profile with the specified details.
    func createNetworkProfile(input: CreateNetworkProfileInput) async throws -> CreateNetworkProfileOutputResponse
    /// Creates a new room profile with the specified details.
    func createProfile(input: CreateProfileInput) async throws -> CreateProfileOutputResponse
    /// Creates a room with the specified details.
    func createRoom(input: CreateRoomInput) async throws -> CreateRoomOutputResponse
    /// Creates a skill group with a specified name and description.
    func createSkillGroup(input: CreateSkillGroupInput) async throws -> CreateSkillGroupOutputResponse
    /// Creates a user.
    func createUser(input: CreateUserInput) async throws -> CreateUserOutputResponse
    /// Deletes an address book by the address book ARN.
    func deleteAddressBook(input: DeleteAddressBookInput) async throws -> DeleteAddressBookOutputResponse
    /// Deletes the recurring report delivery schedule with the specified schedule ARN.
    func deleteBusinessReportSchedule(input: DeleteBusinessReportScheduleInput) async throws -> DeleteBusinessReportScheduleOutputResponse
    /// Deletes a conference provider.
    func deleteConferenceProvider(input: DeleteConferenceProviderInput) async throws -> DeleteConferenceProviderOutputResponse
    /// Deletes a contact by the contact ARN.
    func deleteContact(input: DeleteContactInput) async throws -> DeleteContactOutputResponse
    /// Removes a device from Alexa For Business.
    func deleteDevice(input: DeleteDeviceInput) async throws -> DeleteDeviceOutputResponse
    /// When this action is called for a specified shared device, it allows authorized users to delete the device's entire previous history of voice input data and associated response data. This action can be called once every 24 hours for a specific shared device.
    func deleteDeviceUsageData(input: DeleteDeviceUsageDataInput) async throws -> DeleteDeviceUsageDataOutputResponse
    /// Deletes a gateway group.
    func deleteGatewayGroup(input: DeleteGatewayGroupInput) async throws -> DeleteGatewayGroupOutputResponse
    /// Deletes a network profile by the network profile ARN.
    func deleteNetworkProfile(input: DeleteNetworkProfileInput) async throws -> DeleteNetworkProfileOutputResponse
    /// Deletes a room profile by the profile ARN.
    func deleteProfile(input: DeleteProfileInput) async throws -> DeleteProfileOutputResponse
    /// Deletes a room by the room ARN.
    func deleteRoom(input: DeleteRoomInput) async throws -> DeleteRoomOutputResponse
    /// Deletes room skill parameter details by room, skill, and parameter key ID.
    func deleteRoomSkillParameter(input: DeleteRoomSkillParameterInput) async throws -> DeleteRoomSkillParameterOutputResponse
    /// Unlinks a third-party account from a skill.
    func deleteSkillAuthorization(input: DeleteSkillAuthorizationInput) async throws -> DeleteSkillAuthorizationOutputResponse
    /// Deletes a skill group by skill group ARN.
    func deleteSkillGroup(input: DeleteSkillGroupInput) async throws -> DeleteSkillGroupOutputResponse
    /// Deletes a specified user by user ARN and enrollment ARN.
    func deleteUser(input: DeleteUserInput) async throws -> DeleteUserOutputResponse
    /// Disassociates a contact from a given address book.
    func disassociateContactFromAddressBook(input: DisassociateContactFromAddressBookInput) async throws -> DisassociateContactFromAddressBookOutputResponse
    /// Disassociates a device from its current room. The device continues to be connected to the Wi-Fi network and is still registered to the account. The device settings and skills are removed from the room.
    func disassociateDeviceFromRoom(input: DisassociateDeviceFromRoomInput) async throws -> DisassociateDeviceFromRoomOutputResponse
    /// Disassociates a skill from a skill group.
    func disassociateSkillFromSkillGroup(input: DisassociateSkillFromSkillGroupInput) async throws -> DisassociateSkillFromSkillGroupOutputResponse
    /// Makes a private skill unavailable for enrolled users and prevents them from enabling it on their devices.
    func disassociateSkillFromUsers(input: DisassociateSkillFromUsersInput) async throws -> DisassociateSkillFromUsersOutputResponse
    /// Disassociates a skill group from a specified room. This disables all skills in the skill group on all devices in the room.
    func disassociateSkillGroupFromRoom(input: DisassociateSkillGroupFromRoomInput) async throws -> DisassociateSkillGroupFromRoomOutputResponse
    /// Forgets smart home appliances associated to a room.
    func forgetSmartHomeAppliances(input: ForgetSmartHomeAppliancesInput) async throws -> ForgetSmartHomeAppliancesOutputResponse
    /// Gets address the book details by the address book ARN.
    func getAddressBook(input: GetAddressBookInput) async throws -> GetAddressBookOutputResponse
    /// Retrieves the existing conference preferences.
    func getConferencePreference(input: GetConferencePreferenceInput) async throws -> GetConferencePreferenceOutputResponse
    /// Gets details about a specific conference provider.
    func getConferenceProvider(input: GetConferenceProviderInput) async throws -> GetConferenceProviderOutputResponse
    /// Gets the contact details by the contact ARN.
    func getContact(input: GetContactInput) async throws -> GetContactOutputResponse
    /// Gets the details of a device by device ARN.
    func getDevice(input: GetDeviceInput) async throws -> GetDeviceOutputResponse
    /// Retrieves the details of a gateway.
    func getGateway(input: GetGatewayInput) async throws -> GetGatewayOutputResponse
    /// Retrieves the details of a gateway group.
    func getGatewayGroup(input: GetGatewayGroupInput) async throws -> GetGatewayGroupOutputResponse
    /// Retrieves the configured values for the user enrollment invitation email template.
    func getInvitationConfiguration(input: GetInvitationConfigurationInput) async throws -> GetInvitationConfigurationOutputResponse
    /// Gets the network profile details by the network profile ARN.
    func getNetworkProfile(input: GetNetworkProfileInput) async throws -> GetNetworkProfileOutputResponse
    /// Gets the details of a room profile by profile ARN.
    func getProfile(input: GetProfileInput) async throws -> GetProfileOutputResponse
    /// Gets room details by room ARN.
    func getRoom(input: GetRoomInput) async throws -> GetRoomOutputResponse
    /// Gets room skill parameter details by room, skill, and parameter key ARN.
    func getRoomSkillParameter(input: GetRoomSkillParameterInput) async throws -> GetRoomSkillParameterOutputResponse
    /// Gets skill group details by skill group ARN.
    func getSkillGroup(input: GetSkillGroupInput) async throws -> GetSkillGroupOutputResponse
    /// Lists the details of the schedules that a user configured. A download URL of the report associated with each schedule is returned every time this action is called. A new download URL is returned each time, and is valid for 24 hours.
    func listBusinessReportSchedules(input: ListBusinessReportSchedulesInput) async throws -> ListBusinessReportSchedulesOutputResponse
    /// Lists conference providers under a specific AWS account.
    func listConferenceProviders(input: ListConferenceProvidersInput) async throws -> ListConferenceProvidersOutputResponse
    /// Lists the device event history, including device connection status, for up to 30 days.
    func listDeviceEvents(input: ListDeviceEventsInput) async throws -> ListDeviceEventsOutputResponse
    /// Retrieves a list of gateway group summaries. Use GetGatewayGroup to retrieve details of a specific gateway group.
    func listGatewayGroups(input: ListGatewayGroupsInput) async throws -> ListGatewayGroupsOutputResponse
    /// Retrieves a list of gateway summaries. Use GetGateway to retrieve details of a specific gateway. An optional gateway group ARN can be provided to only retrieve gateway summaries of gateways that are associated with that gateway group ARN.
    func listGateways(input: ListGatewaysInput) async throws -> ListGatewaysOutputResponse
    /// Lists all enabled skills in a specific skill group.
    func listSkills(input: ListSkillsInput) async throws -> ListSkillsOutputResponse
    /// Lists all categories in the Alexa skill store.
    func listSkillsStoreCategories(input: ListSkillsStoreCategoriesInput) async throws -> ListSkillsStoreCategoriesOutputResponse
    /// Lists all skills in the Alexa skill store by category.
    func listSkillsStoreSkillsByCategory(input: ListSkillsStoreSkillsByCategoryInput) async throws -> ListSkillsStoreSkillsByCategoryOutputResponse
    /// Lists all of the smart home appliances associated with a room.
    func listSmartHomeAppliances(input: ListSmartHomeAppliancesInput) async throws -> ListSmartHomeAppliancesOutputResponse
    /// Lists all tags for the specified resource.
    func listTags(input: ListTagsInput) async throws -> ListTagsOutputResponse
    /// Sets the conference preferences on a specific conference provider at the account level.
    func putConferencePreference(input: PutConferencePreferenceInput) async throws -> PutConferencePreferenceOutputResponse
    /// Configures the email template for the user enrollment invitation with the specified attributes.
    func putInvitationConfiguration(input: PutInvitationConfigurationInput) async throws -> PutInvitationConfigurationOutputResponse
    /// Updates room skill parameter details by room, skill, and parameter key ID. Not all skills have a room skill parameter.
    func putRoomSkillParameter(input: PutRoomSkillParameterInput) async throws -> PutRoomSkillParameterOutputResponse
    /// Links a user's account to a third-party skill provider. If this API operation is called by an assumed IAM role, the skill being linked must be a private skill. Also, the skill must be owned by the AWS account that assumed the IAM role.
    func putSkillAuthorization(input: PutSkillAuthorizationInput) async throws -> PutSkillAuthorizationOutputResponse
    /// Registers an Alexa-enabled device built by an Original Equipment Manufacturer (OEM) using Alexa Voice Service (AVS).
    func registerAVSDevice(input: RegisterAVSDeviceInput) async throws -> RegisterAVSDeviceOutputResponse
    /// Disassociates a skill from the organization under a user's AWS account. If the skill is a private skill, it moves to an AcceptStatus of PENDING. Any private or public skill that is rejected can be added later by calling the ApproveSkill API.
    func rejectSkill(input: RejectSkillInput) async throws -> RejectSkillOutputResponse
    /// Determines the details for the room from which a skill request was invoked. This operation is used by skill developers. To query ResolveRoom from an Alexa skill, the skill ID needs to be authorized. When the skill is using an AWS Lambda function, the skill is automatically authorized when you publish your skill as a private skill to your AWS account. Skills that are hosted using a custom web service must be manually authorized. To get your skill authorized, contact AWS Support with your AWS account ID that queries the ResolveRoom API and skill ID.
    func resolveRoom(input: ResolveRoomInput) async throws -> ResolveRoomOutputResponse
    /// Revokes an invitation and invalidates the enrollment URL.
    func revokeInvitation(input: RevokeInvitationInput) async throws -> RevokeInvitationOutputResponse
    /// Searches address books and lists the ones that meet a set of filter and sort criteria.
    func searchAddressBooks(input: SearchAddressBooksInput) async throws -> SearchAddressBooksOutputResponse
    /// Searches contacts and lists the ones that meet a set of filter and sort criteria.
    func searchContacts(input: SearchContactsInput) async throws -> SearchContactsOutputResponse
    /// Searches devices and lists the ones that meet a set of filter criteria.
    func searchDevices(input: SearchDevicesInput) async throws -> SearchDevicesOutputResponse
    /// Searches network profiles and lists the ones that meet a set of filter and sort criteria.
    func searchNetworkProfiles(input: SearchNetworkProfilesInput) async throws -> SearchNetworkProfilesOutputResponse
    /// Searches room profiles and lists the ones that meet a set of filter criteria.
    func searchProfiles(input: SearchProfilesInput) async throws -> SearchProfilesOutputResponse
    /// Searches rooms and lists the ones that meet a set of filter and sort criteria.
    func searchRooms(input: SearchRoomsInput) async throws -> SearchRoomsOutputResponse
    /// Searches skill groups and lists the ones that meet a set of filter and sort criteria.
    func searchSkillGroups(input: SearchSkillGroupsInput) async throws -> SearchSkillGroupsOutputResponse
    /// Searches users and lists the ones that meet a set of filter and sort criteria.
    func searchUsers(input: SearchUsersInput) async throws -> SearchUsersOutputResponse
    /// Triggers an asynchronous flow to send text, SSML, or audio announcements to rooms that are identified by a search or filter.
    func sendAnnouncement(input: SendAnnouncementInput) async throws -> SendAnnouncementOutputResponse
    /// Sends an enrollment invitation email with a URL to a user. The URL is valid for 30 days or until you call this operation again, whichever comes first.
    func sendInvitation(input: SendInvitationInput) async throws -> SendInvitationOutputResponse
    /// Resets a device and its account to the known default settings. This clears all information and settings set by previous users in the following ways:
    ///
    /// * Bluetooth - This unpairs all bluetooth devices paired with your echo device.
    ///
    /// * Volume - This resets the echo device's volume to the default value.
    ///
    /// * Notifications - This clears all notifications from your echo device.
    ///
    /// * Lists - This clears all to-do items from your echo device.
    ///
    /// * Settings - This internally syncs the room's profile (if the device is assigned to a room), contacts, address books, delegation access for account linking, and communications (if enabled on the room profile).
    func startDeviceSync(input: StartDeviceSyncInput) async throws -> StartDeviceSyncOutputResponse
    /// Initiates the discovery of any smart home appliances associated with the room.
    func startSmartHomeApplianceDiscovery(input: StartSmartHomeApplianceDiscoveryInput) async throws -> StartSmartHomeApplianceDiscoveryOutputResponse
    /// Adds metadata tags to a specified resource.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Removes metadata tags from a specified resource.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// Updates address book details by the address book ARN.
    func updateAddressBook(input: UpdateAddressBookInput) async throws -> UpdateAddressBookOutputResponse
    /// Updates the configuration of the report delivery schedule with the specified schedule ARN.
    func updateBusinessReportSchedule(input: UpdateBusinessReportScheduleInput) async throws -> UpdateBusinessReportScheduleOutputResponse
    /// Updates an existing conference provider's settings.
    func updateConferenceProvider(input: UpdateConferenceProviderInput) async throws -> UpdateConferenceProviderOutputResponse
    /// Updates the contact details by the contact ARN.
    func updateContact(input: UpdateContactInput) async throws -> UpdateContactOutputResponse
    /// Updates the device name by device ARN.
    func updateDevice(input: UpdateDeviceInput) async throws -> UpdateDeviceOutputResponse
    /// Updates the details of a gateway. If any optional field is not provided, the existing corresponding value is left unmodified.
    func updateGateway(input: UpdateGatewayInput) async throws -> UpdateGatewayOutputResponse
    /// Updates the details of a gateway group. If any optional field is not provided, the existing corresponding value is left unmodified.
    func updateGatewayGroup(input: UpdateGatewayGroupInput) async throws -> UpdateGatewayGroupOutputResponse
    /// Updates a network profile by the network profile ARN.
    func updateNetworkProfile(input: UpdateNetworkProfileInput) async throws -> UpdateNetworkProfileOutputResponse
    /// Updates an existing room profile by room profile ARN.
    func updateProfile(input: UpdateProfileInput) async throws -> UpdateProfileOutputResponse
    /// Updates room details by room ARN.
    func updateRoom(input: UpdateRoomInput) async throws -> UpdateRoomOutputResponse
    /// Updates skill group details by skill group ARN.
    func updateSkillGroup(input: UpdateSkillGroupInput) async throws -> UpdateSkillGroupOutputResponse
}

public protocol AlexaForBusinessClientConfigurationProtocol : AWSClientRuntime.AWSClientConfiguration {
    var endpointResolver: EndpointResolver { get }
}

public enum AlexaForBusinessClientTypes {}
