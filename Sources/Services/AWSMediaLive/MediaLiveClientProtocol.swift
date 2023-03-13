// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime

/// API for AWS Elemental MediaLive
public protocol MediaLiveClientProtocol {
    /// Accept an incoming input device transfer. The ownership of the device will transfer to your AWS account.
    func acceptInputDeviceTransfer(input: AcceptInputDeviceTransferInput) async throws -> AcceptInputDeviceTransferOutputResponse
    /// Starts delete of resources.
    func batchDelete(input: BatchDeleteInput) async throws -> BatchDeleteOutputResponse
    /// Starts existing resources
    func batchStart(input: BatchStartInput) async throws -> BatchStartOutputResponse
    /// Stops running resources
    func batchStop(input: BatchStopInput) async throws -> BatchStopOutputResponse
    /// Update a channel schedule
    func batchUpdateSchedule(input: BatchUpdateScheduleInput) async throws -> BatchUpdateScheduleOutputResponse
    /// Cancel an input device transfer that you have requested.
    func cancelInputDeviceTransfer(input: CancelInputDeviceTransferInput) async throws -> CancelInputDeviceTransferOutputResponse
    /// Send a request to claim an AWS Elemental device that you have purchased from a third-party vendor. After the request succeeds, you will own the device.
    func claimDevice(input: ClaimDeviceInput) async throws -> ClaimDeviceOutputResponse
    /// Creates a new channel
    func createChannel(input: CreateChannelInput) async throws -> CreateChannelOutputResponse
    /// Create an input
    func createInput(input: CreateInputInput) async throws -> CreateInputOutputResponse
    /// Creates a Input Security Group
    func createInputSecurityGroup(input: CreateInputSecurityGroupInput) async throws -> CreateInputSecurityGroupOutputResponse
    /// Create a new multiplex.
    func createMultiplex(input: CreateMultiplexInput) async throws -> CreateMultiplexOutputResponse
    /// Create a new program in the multiplex.
    func createMultiplexProgram(input: CreateMultiplexProgramInput) async throws -> CreateMultiplexProgramOutputResponse
    /// Create a partner input
    func createPartnerInput(input: CreatePartnerInputInput) async throws -> CreatePartnerInputOutputResponse
    /// Create tags for a resource
    func createTags(input: CreateTagsInput) async throws -> CreateTagsOutputResponse
    /// Starts deletion of channel. The associated outputs are also deleted.
    func deleteChannel(input: DeleteChannelInput) async throws -> DeleteChannelOutputResponse
    /// Deletes the input end point
    func deleteInput(input: DeleteInputInput) async throws -> DeleteInputOutputResponse
    /// Deletes an Input Security Group
    func deleteInputSecurityGroup(input: DeleteInputSecurityGroupInput) async throws -> DeleteInputSecurityGroupOutputResponse
    /// Delete a multiplex. The multiplex must be idle.
    func deleteMultiplex(input: DeleteMultiplexInput) async throws -> DeleteMultiplexOutputResponse
    /// Delete a program from a multiplex.
    func deleteMultiplexProgram(input: DeleteMultiplexProgramInput) async throws -> DeleteMultiplexProgramOutputResponse
    /// Delete an expired reservation.
    func deleteReservation(input: DeleteReservationInput) async throws -> DeleteReservationOutputResponse
    /// Delete all schedule actions on a channel.
    func deleteSchedule(input: DeleteScheduleInput) async throws -> DeleteScheduleOutputResponse
    /// Removes tags for a resource
    func deleteTags(input: DeleteTagsInput) async throws -> DeleteTagsOutputResponse
    /// Gets details about a channel
    func describeChannel(input: DescribeChannelInput) async throws -> DescribeChannelOutputResponse
    /// Produces details about an input
    func describeInput(input: DescribeInputInput) async throws -> DescribeInputOutputResponse
    /// Gets the details for the input device
    func describeInputDevice(input: DescribeInputDeviceInput) async throws -> DescribeInputDeviceOutputResponse
    /// Get the latest thumbnail data for the input device.
    func describeInputDeviceThumbnail(input: DescribeInputDeviceThumbnailInput) async throws -> DescribeInputDeviceThumbnailOutputResponse
    /// Produces a summary of an Input Security Group
    func describeInputSecurityGroup(input: DescribeInputSecurityGroupInput) async throws -> DescribeInputSecurityGroupOutputResponse
    /// Gets details about a multiplex.
    func describeMultiplex(input: DescribeMultiplexInput) async throws -> DescribeMultiplexOutputResponse
    /// Get the details for a program in a multiplex.
    func describeMultiplexProgram(input: DescribeMultiplexProgramInput) async throws -> DescribeMultiplexProgramOutputResponse
    /// Get details for an offering.
    func describeOffering(input: DescribeOfferingInput) async throws -> DescribeOfferingOutputResponse
    /// Get details for a reservation.
    func describeReservation(input: DescribeReservationInput) async throws -> DescribeReservationOutputResponse
    /// Get a channel schedule
    func describeSchedule(input: DescribeScheduleInput) async throws -> DescribeScheduleOutputResponse
    /// Produces list of channels that have been created
    func listChannels(input: ListChannelsInput) async throws -> ListChannelsOutputResponse
    /// List input devices
    func listInputDevices(input: ListInputDevicesInput) async throws -> ListInputDevicesOutputResponse
    /// List input devices that are currently being transferred. List input devices that you are transferring from your AWS account or input devices that another AWS account is transferring to you.
    func listInputDeviceTransfers(input: ListInputDeviceTransfersInput) async throws -> ListInputDeviceTransfersOutputResponse
    /// Produces list of inputs that have been created
    func listInputs(input: ListInputsInput) async throws -> ListInputsOutputResponse
    /// Produces a list of Input Security Groups for an account
    func listInputSecurityGroups(input: ListInputSecurityGroupsInput) async throws -> ListInputSecurityGroupsOutputResponse
    /// Retrieve a list of the existing multiplexes.
    func listMultiplexes(input: ListMultiplexesInput) async throws -> ListMultiplexesOutputResponse
    /// List the programs that currently exist for a specific multiplex.
    func listMultiplexPrograms(input: ListMultiplexProgramsInput) async throws -> ListMultiplexProgramsOutputResponse
    /// List offerings available for purchase.
    func listOfferings(input: ListOfferingsInput) async throws -> ListOfferingsOutputResponse
    /// List purchased reservations.
    func listReservations(input: ListReservationsInput) async throws -> ListReservationsOutputResponse
    /// Produces list of tags that have been created for a resource
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Purchase an offering and create a reservation.
    func purchaseOffering(input: PurchaseOfferingInput) async throws -> PurchaseOfferingOutputResponse
    /// Send a reboot command to the specified input device. The device will begin rebooting within a few seconds of sending the command. When the reboot is complete, the device’s connection status will change to connected.
    func rebootInputDevice(input: RebootInputDeviceInput) async throws -> RebootInputDeviceOutputResponse
    /// Reject the transfer of the specified input device to your AWS account.
    func rejectInputDeviceTransfer(input: RejectInputDeviceTransferInput) async throws -> RejectInputDeviceTransferOutputResponse
    /// Starts an existing channel
    func startChannel(input: StartChannelInput) async throws -> StartChannelOutputResponse
    /// Start a maintenance window for the specified input device. Starting a maintenance window will give the device up to two hours to install software. If the device was streaming prior to the maintenance, it will resume streaming when the software is fully installed. Devices automatically install updates while they are powered on and their MediaLive channels are stopped. A maintenance window allows you to update a device without having to stop MediaLive channels that use the device. The device must remain powered on and connected to the internet for the duration of the maintenance.
    func startInputDeviceMaintenanceWindow(input: StartInputDeviceMaintenanceWindowInput) async throws -> StartInputDeviceMaintenanceWindowOutputResponse
    /// Start (run) the multiplex. Starting the multiplex does not start the channels. You must explicitly start each channel.
    func startMultiplex(input: StartMultiplexInput) async throws -> StartMultiplexOutputResponse
    /// Stops a running channel
    func stopChannel(input: StopChannelInput) async throws -> StopChannelOutputResponse
    /// Stops a running multiplex. If the multiplex isn't running, this action has no effect.
    func stopMultiplex(input: StopMultiplexInput) async throws -> StopMultiplexOutputResponse
    /// Start an input device transfer to another AWS account. After you make the request, the other account must accept or reject the transfer.
    func transferInputDevice(input: TransferInputDeviceInput) async throws -> TransferInputDeviceOutputResponse
    /// Updates a channel.
    func updateChannel(input: UpdateChannelInput) async throws -> UpdateChannelOutputResponse
    /// Changes the class of the channel.
    func updateChannelClass(input: UpdateChannelClassInput) async throws -> UpdateChannelClassOutputResponse
    /// Updates an input.
    func updateInput(input: UpdateInputInput) async throws -> UpdateInputOutputResponse
    /// Updates the parameters for the input device.
    func updateInputDevice(input: UpdateInputDeviceInput) async throws -> UpdateInputDeviceOutputResponse
    /// Update an Input Security Group's Whilelists.
    func updateInputSecurityGroup(input: UpdateInputSecurityGroupInput) async throws -> UpdateInputSecurityGroupOutputResponse
    /// Updates a multiplex.
    func updateMultiplex(input: UpdateMultiplexInput) async throws -> UpdateMultiplexOutputResponse
    /// Update a program in a multiplex.
    func updateMultiplexProgram(input: UpdateMultiplexProgramInput) async throws -> UpdateMultiplexProgramOutputResponse
    /// Update reservation.
    func updateReservation(input: UpdateReservationInput) async throws -> UpdateReservationOutputResponse
}

public protocol MediaLiveClientConfigurationProtocol : AWSClientRuntime.AWSClientConfiguration {
    var endpointResolver: EndpointResolver { get }
}

public enum MediaLiveClientTypes {}
