// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// Amazon Web Services Outposts is a fully managed service that extends Amazon Web Services infrastructure, APIs, and tools to customer premises. By providing local access to Amazon Web Services managed infrastructure, Amazon Web Services Outposts enables customers to build and run applications on premises using the same programming interfaces as in Amazon Web Services Regions, while using local compute and storage resources for lower latency and local data processing needs.
public protocol OutpostsClientProtocol {
    /// Cancels an order for an Outpost.
    func cancelOrder(input: CancelOrderInput) async throws -> CancelOrderOutputResponse
    /// Creates an order for an Outpost.
    func createOrder(input: CreateOrderInput) async throws -> CreateOrderOutputResponse
    /// Creates an Outpost. You can specify AvailabilityZone or AvailabilityZoneId.
    func createOutpost(input: CreateOutpostInput) async throws -> CreateOutpostOutputResponse
    /// Creates a site for an Outpost.
    func createSite(input: CreateSiteInput) async throws -> CreateSiteOutputResponse
    /// Deletes the Outpost.
    func deleteOutpost(input: DeleteOutpostInput) async throws -> DeleteOutpostOutputResponse
    /// Deletes the site.
    func deleteSite(input: DeleteSiteInput) async throws -> DeleteSiteOutputResponse
    /// Gets information about a catalog item.
    func getCatalogItem(input: GetCatalogItemInput) async throws -> GetCatalogItemOutputResponse
    /// Amazon Web Services uses this action to install Outpost servers. Gets information about a specified connection. Use CloudTrail to monitor this action or Amazon Web Services managed policy for Amazon Web Services Outposts to secure it. For more information, see [ Amazon Web Services managed policies for Amazon Web Services Outposts](https://docs.aws.amazon.com/outposts/latest/userguide/security-iam-awsmanpol.html) and [ Logging Amazon Web Services Outposts API calls with Amazon Web Services CloudTrail](https://docs.aws.amazon.com/outposts/latest/userguide/logging-using-cloudtrail.html) in the Amazon Web Services Outposts User Guide.
    func getConnection(input: GetConnectionInput) async throws -> GetConnectionOutputResponse
    /// Gets an order.
    func getOrder(input: GetOrderInput) async throws -> GetOrderOutputResponse
    /// Gets information about the specified Outpost.
    func getOutpost(input: GetOutpostInput) async throws -> GetOutpostOutputResponse
    /// Gets the instance types for the specified Outpost.
    func getOutpostInstanceTypes(input: GetOutpostInstanceTypesInput) async throws -> GetOutpostInstanceTypesOutputResponse
    /// Gets information about the specified Outpost site.
    func getSite(input: GetSiteInput) async throws -> GetSiteOutputResponse
    /// Gets the site address.
    func getSiteAddress(input: GetSiteAddressInput) async throws -> GetSiteAddressOutputResponse
    /// Lists the hardware assets in an Outpost. If you are using Dedicated Hosts on Amazon Web Services Outposts, you can filter your request by host ID to return a list of hardware assets that allocate resources for Dedicated Hosts.
    func listAssets(input: ListAssetsInput) async throws -> ListAssetsOutputResponse
    /// Lists the items in the catalog. Add filters to your request to return a more specific list of results. Use filters to match an item class, storage option, or EC2 family. If you specify multiple filters, the filters are joined with an AND, and the request returns only results that match all of the specified filters.
    func listCatalogItems(input: ListCatalogItemsInput) async throws -> ListCatalogItemsOutputResponse
    /// Lists the Outpost orders for your Amazon Web Services account. You can filter your request by Outpost to return a more specific list of results.
    func listOrders(input: ListOrdersInput) async throws -> ListOrdersOutputResponse
    /// Lists the Outposts for your Amazon Web Services account. Add filters to your request to return a more specific list of results. Use filters to match an Outpost lifecycle status, Availability Zone (us-east-1a), and AZ ID (use1-az1). If you specify multiple filters, the filters are joined with an AND, and the request returns only results that match all of the specified filters.
    func listOutposts(input: ListOutpostsInput) async throws -> ListOutpostsOutputResponse
    /// Lists the Outpost sites for your Amazon Web Services account. Add operating address filters to your request to return a more specific list of results. Use filters to match site city, country code, or state/region of the operating address. If you specify multiple filters, the filters are joined with an AND, and the request returns only results that match all of the specified filters.
    func listSites(input: ListSitesInput) async throws -> ListSitesOutputResponse
    /// Lists the tags for the specified resource.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Amazon Web Services uses this action to install Outpost servers. Starts the connection required for Outpost server installation. Use CloudTrail to monitor this action or Amazon Web Services managed policy for Amazon Web Services Outposts to secure it. For more information, see [ Amazon Web Services managed policies for Amazon Web Services Outposts](https://docs.aws.amazon.com/outposts/latest/userguide/security-iam-awsmanpol.html) and [ Logging Amazon Web Services Outposts API calls with Amazon Web Services CloudTrail](https://docs.aws.amazon.com/outposts/latest/userguide/logging-using-cloudtrail.html) in the Amazon Web Services Outposts User Guide.
    func startConnection(input: StartConnectionInput) async throws -> StartConnectionOutputResponse
    /// Adds tags to the specified resource.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Removes tags from the specified resource.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// Updates an Outpost.
    func updateOutpost(input: UpdateOutpostInput) async throws -> UpdateOutpostOutputResponse
    /// Updates the site.
    func updateSite(input: UpdateSiteInput) async throws -> UpdateSiteOutputResponse
    /// Updates the site address. To update a site address with an order IN_PROGRESS, you must wait for the order to complete or cancel the order. You can update the operating address before you place an order at the site, or after all Outposts that belong to the site have been deactivated.
    func updateSiteAddress(input: UpdateSiteAddressInput) async throws -> UpdateSiteAddressOutputResponse
    /// Update the physical and logistical details for a rack at a site. For more information about hardware requirements for racks, see [Network readiness checklist](https://docs.aws.amazon.com/outposts/latest/userguide/outposts-requirements.html#checklist) in the Amazon Web Services Outposts User Guide. To update a rack at a site with an order of IN_PROGRESS, you must wait for the order to complete or cancel the order.
    func updateSiteRackPhysicalProperties(input: UpdateSiteRackPhysicalPropertiesInput) async throws -> UpdateSiteRackPhysicalPropertiesOutputResponse
}

public enum OutpostsClientTypes {}
