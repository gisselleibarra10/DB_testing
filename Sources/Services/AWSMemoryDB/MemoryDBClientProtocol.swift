// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime

/// MemoryDB for Redis is a fully managed, Redis-compatible, in-memory database that delivers ultra-fast performance and Multi-AZ durability for modern applications built using microservices architectures. MemoryDB stores the entire database in-memory, enabling low latency and high throughput data access. It is compatible with Redis, a popular open source data store, enabling you to leverage Redis’ flexible and friendly data structures, APIs, and commands.
public protocol MemoryDBClientProtocol {
    /// Apply the service update to a list of clusters supplied. For more information on service updates and applying them, see [Applying the service updates](https://docs.aws.amazon.com/MemoryDB/latest/devguide/managing-updates.html#applying-updates).
    func batchUpdateCluster(input: BatchUpdateClusterInput) async throws -> BatchUpdateClusterOutputResponse
    /// Makes a copy of an existing snapshot.
    func copySnapshot(input: CopySnapshotInput) async throws -> CopySnapshotOutputResponse
    /// Creates an Access Control List. For more information, see [Authenticating users with Access Contol Lists (ACLs)](https://docs.aws.amazon.com/MemoryDB/latest/devguide/clusters.acls.html).
    func createACL(input: CreateACLInput) async throws -> CreateACLOutputResponse
    /// Creates a cluster. All nodes in the cluster run the same protocol-compliant engine software.
    func createCluster(input: CreateClusterInput) async throws -> CreateClusterOutputResponse
    /// Creates a new MemoryDB parameter group. A parameter group is a collection of parameters and their values that are applied to all of the nodes in any cluster. For more information, see [Configuring engine parameters using parameter groups](https://docs.aws.amazon.com/MemoryDB/latest/devguide/parametergroups.html).
    func createParameterGroup(input: CreateParameterGroupInput) async throws -> CreateParameterGroupOutputResponse
    /// Creates a copy of an entire cluster at a specific moment in time.
    func createSnapshot(input: CreateSnapshotInput) async throws -> CreateSnapshotOutputResponse
    /// Creates a subnet group. A subnet group is a collection of subnets (typically private) that you can designate for your clusters running in an Amazon Virtual Private Cloud (VPC) environment. When you create a cluster in an Amazon VPC, you must specify a subnet group. MemoryDB uses that subnet group to choose a subnet and IP addresses within that subnet to associate with your nodes. For more information, see [Subnets and subnet groups](https://docs.aws.amazon.com/MemoryDB/latest/devguide/subnetgroups.html).
    func createSubnetGroup(input: CreateSubnetGroupInput) async throws -> CreateSubnetGroupOutputResponse
    /// Creates a MemoryDB user. For more information, see [Authenticating users with Access Contol Lists (ACLs)](https://docs.aws.amazon.com/MemoryDB/latest/devguide/clusters.acls.html).
    func createUser(input: CreateUserInput) async throws -> CreateUserOutputResponse
    /// Deletes an Access Control List. The ACL must first be disassociated from the cluster before it can be deleted. For more information, see [Authenticating users with Access Contol Lists (ACLs)](https://docs.aws.amazon.com/MemoryDB/latest/devguide/clusters.acls.html).
    func deleteACL(input: DeleteACLInput) async throws -> DeleteACLOutputResponse
    /// Deletes a cluster. It also deletes all associated nodes and node endpoints
    func deleteCluster(input: DeleteClusterInput) async throws -> DeleteClusterOutputResponse
    /// Deletes the specified parameter group. You cannot delete a parameter group if it is associated with any clusters. You cannot delete the default parameter groups in your account.
    func deleteParameterGroup(input: DeleteParameterGroupInput) async throws -> DeleteParameterGroupOutputResponse
    /// Deletes an existing snapshot. When you receive a successful response from this operation, MemoryDB immediately begins deleting the snapshot; you cannot cancel or revert this operation.
    func deleteSnapshot(input: DeleteSnapshotInput) async throws -> DeleteSnapshotOutputResponse
    /// Deletes a subnet group. You cannot delete a default subnet group or one that is associated with any clusters.
    func deleteSubnetGroup(input: DeleteSubnetGroupInput) async throws -> DeleteSubnetGroupOutputResponse
    /// Deletes a user. The user will be removed from all ACLs and in turn removed from all clusters.
    func deleteUser(input: DeleteUserInput) async throws -> DeleteUserOutputResponse
    /// Returns a list of ACLs
    func describeACLs(input: DescribeACLsInput) async throws -> DescribeACLsOutputResponse
    /// Returns information about all provisioned clusters if no cluster identifier is specified, or about a specific cluster if a cluster name is supplied.
    func describeClusters(input: DescribeClustersInput) async throws -> DescribeClustersOutputResponse
    /// Returns a list of the available Redis engine versions.
    func describeEngineVersions(input: DescribeEngineVersionsInput) async throws -> DescribeEngineVersionsOutputResponse
    /// Returns events related to clusters, security groups, and parameter groups. You can obtain events specific to a particular cluster, security group, or parameter group by providing the name as a parameter. By default, only the events occurring within the last hour are returned; however, you can retrieve up to 14 days' worth of events if necessary.
    func describeEvents(input: DescribeEventsInput) async throws -> DescribeEventsOutputResponse
    /// Returns a list of parameter group descriptions. If a parameter group name is specified, the list contains only the descriptions for that group.
    func describeParameterGroups(input: DescribeParameterGroupsInput) async throws -> DescribeParameterGroupsOutputResponse
    /// Returns the detailed parameter list for a particular parameter group.
    func describeParameters(input: DescribeParametersInput) async throws -> DescribeParametersOutputResponse
    /// Returns information about reserved nodes for this account, or about a specified reserved node.
    func describeReservedNodes(input: DescribeReservedNodesInput) async throws -> DescribeReservedNodesOutputResponse
    /// Lists available reserved node offerings.
    func describeReservedNodesOfferings(input: DescribeReservedNodesOfferingsInput) async throws -> DescribeReservedNodesOfferingsOutputResponse
    /// Returns details of the service updates
    func describeServiceUpdates(input: DescribeServiceUpdatesInput) async throws -> DescribeServiceUpdatesOutputResponse
    /// Returns information about cluster snapshots. By default, DescribeSnapshots lists all of your snapshots; it can optionally describe a single snapshot, or just the snapshots associated with a particular cluster.
    func describeSnapshots(input: DescribeSnapshotsInput) async throws -> DescribeSnapshotsOutputResponse
    /// Returns a list of subnet group descriptions. If a subnet group name is specified, the list contains only the description of that group.
    func describeSubnetGroups(input: DescribeSubnetGroupsInput) async throws -> DescribeSubnetGroupsOutputResponse
    /// Returns a list of users.
    func describeUsers(input: DescribeUsersInput) async throws -> DescribeUsersOutputResponse
    /// Used to failover a shard. This API is designed for testing the behavior of your application in case of MemoryDB failover. It is not designed to be used as a production-level tool for initiating a failover to overcome a problem you may have with the cluster. Moreover, in certain conditions such as large scale operational events, Amazon may block this API.
    func failoverShard(input: FailoverShardInput) async throws -> FailoverShardOutputResponse
    /// Lists all available node types that you can scale to from your cluster's current node type. When you use the UpdateCluster operation to scale your cluster, the value of the NodeType parameter must be one of the node types returned by this operation.
    func listAllowedNodeTypeUpdates(input: ListAllowedNodeTypeUpdatesInput) async throws -> ListAllowedNodeTypeUpdatesOutputResponse
    /// Lists all tags currently on a named resource. A tag is a key-value pair where the key and value are case-sensitive. You can use tags to categorize and track your MemoryDB resources. For more information, see [Tagging your MemoryDB resources](https://docs.aws.amazon.com/MemoryDB/latest/devguide/Tagging-Resources.html)
    func listTags(input: ListTagsInput) async throws -> ListTagsOutputResponse
    /// Allows you to purchase a reserved node offering. Reserved nodes are not eligible for cancellation and are non-refundable.
    func purchaseReservedNodesOffering(input: PurchaseReservedNodesOfferingInput) async throws -> PurchaseReservedNodesOfferingOutputResponse
    /// Modifies the parameters of a parameter group to the engine or system default value. You can reset specific parameters by submitting a list of parameter names. To reset the entire parameter group, specify the AllParameters and ParameterGroupName parameters.
    func resetParameterGroup(input: ResetParameterGroupInput) async throws -> ResetParameterGroupOutputResponse
    /// A tag is a key-value pair where the key and value are case-sensitive. You can use tags to categorize and track all your MemoryDB resources. When you add or remove tags on clusters, those actions will be replicated to all nodes in the cluster. For more information, see [Resource-level permissions](https://docs.aws.amazon.com/MemoryDB/latest/devguide/iam.resourcelevelpermissions.html). For example, you can use cost-allocation tags to your MemoryDB resources, Amazon generates a cost allocation report as a comma-separated value (CSV) file with your usage and costs aggregated by your tags. You can apply tags that represent business categories (such as cost centers, application names, or owners) to organize your costs across multiple services. For more information, see [Using Cost Allocation Tags](https://docs.aws.amazon.com/MemoryDB/latest/devguide/tagging.html).
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Use this operation to remove tags on a resource
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// Changes the list of users that belong to the Access Control List.
    func updateACL(input: UpdateACLInput) async throws -> UpdateACLOutputResponse
    /// Modifies the settings for a cluster. You can use this operation to change one or more cluster configuration settings by specifying the settings and the new values.
    func updateCluster(input: UpdateClusterInput) async throws -> UpdateClusterOutputResponse
    /// Updates the parameters of a parameter group. You can modify up to 20 parameters in a single request by submitting a list parameter name and value pairs.
    func updateParameterGroup(input: UpdateParameterGroupInput) async throws -> UpdateParameterGroupOutputResponse
    /// Updates a subnet group. For more information, see [Updating a subnet group](https://docs.aws.amazon.com/MemoryDB/latest/devguide/ubnetGroups.Modifying.html)
    func updateSubnetGroup(input: UpdateSubnetGroupInput) async throws -> UpdateSubnetGroupOutputResponse
    /// Changes user password(s) and/or access string.
    func updateUser(input: UpdateUserInput) async throws -> UpdateUserOutputResponse
}

public protocol MemoryDBClientConfigurationProtocol : AWSClientRuntime.AWSClientConfiguration {
    var endpointResolver: EndpointResolver { get }
}

public enum MemoryDBClientTypes {}
