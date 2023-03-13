// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime

/// Amazon ElastiCache Amazon ElastiCache is a web service that makes it easier to set up, operate, and scale a distributed cache in the cloud. With ElastiCache, customers get all of the benefits of a high-performance, in-memory cache with less of the administrative burden involved in launching and managing a distributed cache. The service makes setup, scaling, and cluster failure handling much simpler than in a self-managed cache deployment. In addition, through integration with Amazon CloudWatch, customers get enhanced visibility into the key performance statistics associated with their cache and can receive alarms if a part of their cache runs hot.
public protocol ElastiCacheClientProtocol {
    /// A tag is a key-value pair where the key and value are case-sensitive. You can use tags to categorize and track all your ElastiCache resources, with the exception of global replication group. When you add or remove tags on replication groups, those actions will be replicated to all nodes in the replication group. For more information, see [Resource-level permissions](http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/IAM.ResourceLevelPermissions.html). For example, you can use cost-allocation tags to your ElastiCache resources, Amazon generates a cost allocation report as a comma-separated value (CSV) file with your usage and costs aggregated by your tags. You can apply tags that represent business categories (such as cost centers, application names, or owners) to organize your costs across multiple services. For more information, see [Using Cost Allocation Tags in Amazon ElastiCache](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Tagging.html) in the ElastiCache User Guide.
    func addTagsToResource(input: AddTagsToResourceInput) async throws -> AddTagsToResourceOutputResponse
    /// Allows network ingress to a cache security group. Applications using ElastiCache must be running on Amazon EC2, and Amazon EC2 security groups are used as the authorization mechanism. You cannot authorize ingress from an Amazon EC2 security group in one region to an ElastiCache cluster in another region.
    func authorizeCacheSecurityGroupIngress(input: AuthorizeCacheSecurityGroupIngressInput) async throws -> AuthorizeCacheSecurityGroupIngressOutputResponse
    /// Apply the service update. For more information on service updates and applying them, see [Applying Service Updates](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/applying-updates.html).
    func batchApplyUpdateAction(input: BatchApplyUpdateActionInput) async throws -> BatchApplyUpdateActionOutputResponse
    /// Stop the service update. For more information on service updates and stopping them, see [Stopping Service Updates](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/stopping-self-service-updates.html).
    func batchStopUpdateAction(input: BatchStopUpdateActionInput) async throws -> BatchStopUpdateActionOutputResponse
    /// Complete the migration of data.
    func completeMigration(input: CompleteMigrationInput) async throws -> CompleteMigrationOutputResponse
    /// Makes a copy of an existing snapshot. This operation is valid for Redis only. Users or groups that have permissions to use the CopySnapshot operation can create their own Amazon S3 buckets and copy snapshots to it. To control access to your snapshots, use an IAM policy to control who has the ability to use the CopySnapshot operation. For more information about using IAM to control the use of ElastiCache operations, see [Exporting Snapshots](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/backups-exporting.html) and [Authentication & Access Control](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/IAM.html). You could receive the following error messages. Error Messages
    ///
    /// * Error Message: The S3 bucket %s is outside of the region. Solution: Create an Amazon S3 bucket in the same region as your snapshot. For more information, see [Step 1: Create an Amazon S3 Bucket](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/backups-exporting.html#backups-exporting-create-s3-bucket) in the ElastiCache User Guide.
    ///
    /// * Error Message: The S3 bucket %s does not exist. Solution: Create an Amazon S3 bucket in the same region as your snapshot. For more information, see [Step 1: Create an Amazon S3 Bucket](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/backups-exporting.html#backups-exporting-create-s3-bucket) in the ElastiCache User Guide.
    ///
    /// * Error Message: The S3 bucket %s is not owned by the authenticated user. Solution: Create an Amazon S3 bucket in the same region as your snapshot. For more information, see [Step 1: Create an Amazon S3 Bucket](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/backups-exporting.html#backups-exporting-create-s3-bucket) in the ElastiCache User Guide.
    ///
    /// * Error Message: The authenticated user does not have sufficient permissions to perform the desired activity. Solution: Contact your system administrator to get the needed permissions.
    ///
    /// * Error Message: The S3 bucket %s already contains an object with key %s. Solution: Give the TargetSnapshotName a new and unique value. If exporting a snapshot, you could alternatively create a new Amazon S3 bucket and use this same value for TargetSnapshotName.
    ///
    /// * Error Message: ElastiCache has not been granted READ permissions %s on the S3 Bucket. Solution: Add List and Read permissions on the bucket. For more information, see [Step 2: Grant ElastiCache Access to Your Amazon S3 Bucket](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/backups-exporting.html#backups-exporting-grant-access) in the ElastiCache User Guide.
    ///
    /// * Error Message: ElastiCache has not been granted WRITE permissions %s on the S3 Bucket. Solution: Add Upload/Delete permissions on the bucket. For more information, see [Step 2: Grant ElastiCache Access to Your Amazon S3 Bucket](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/backups-exporting.html#backups-exporting-grant-access) in the ElastiCache User Guide.
    ///
    /// * Error Message: ElastiCache has not been granted READ_ACP permissions %s on the S3 Bucket. Solution: Add View Permissions on the bucket. For more information, see [Step 2: Grant ElastiCache Access to Your Amazon S3 Bucket](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/backups-exporting.html#backups-exporting-grant-access) in the ElastiCache User Guide.
    func copySnapshot(input: CopySnapshotInput) async throws -> CopySnapshotOutputResponse
    /// Creates a cluster. All nodes in the cluster run the same protocol-compliant cache engine software, either Memcached or Redis. This operation is not supported for Redis (cluster mode enabled) clusters.
    func createCacheCluster(input: CreateCacheClusterInput) async throws -> CreateCacheClusterOutputResponse
    /// Creates a new Amazon ElastiCache cache parameter group. An ElastiCache cache parameter group is a collection of parameters and their values that are applied to all of the nodes in any cluster or replication group using the CacheParameterGroup. A newly created CacheParameterGroup is an exact duplicate of the default parameter group for the CacheParameterGroupFamily. To customize the newly created CacheParameterGroup you can change the values of specific parameters. For more information, see:
    ///
    /// * [ModifyCacheParameterGroup](https://docs.aws.amazon.com/AmazonElastiCache/latest/APIReference/API_ModifyCacheParameterGroup.html) in the ElastiCache API Reference.
    ///
    /// * [Parameters and Parameter Groups](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/ParameterGroups.html) in the ElastiCache User Guide.
    func createCacheParameterGroup(input: CreateCacheParameterGroupInput) async throws -> CreateCacheParameterGroupOutputResponse
    /// Creates a new cache security group. Use a cache security group to control access to one or more clusters. Cache security groups are only used when you are creating a cluster outside of an Amazon Virtual Private Cloud (Amazon VPC). If you are creating a cluster inside of a VPC, use a cache subnet group instead. For more information, see [CreateCacheSubnetGroup](https://docs.aws.amazon.com/AmazonElastiCache/latest/APIReference/API_CreateCacheSubnetGroup.html).
    func createCacheSecurityGroup(input: CreateCacheSecurityGroupInput) async throws -> CreateCacheSecurityGroupOutputResponse
    /// Creates a new cache subnet group. Use this parameter only when you are creating a cluster in an Amazon Virtual Private Cloud (Amazon VPC).
    func createCacheSubnetGroup(input: CreateCacheSubnetGroupInput) async throws -> CreateCacheSubnetGroupOutputResponse
    /// Global Datastore for Redis offers fully managed, fast, reliable and secure cross-region replication. Using Global Datastore for Redis, you can create cross-region read replica clusters for ElastiCache for Redis to enable low-latency reads and disaster recovery across regions. For more information, see [Replication Across Regions Using Global Datastore](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Redis-Global-Datastore.html).
    ///
    /// * The GlobalReplicationGroupIdSuffix is the name of the Global datastore.
    ///
    /// * The PrimaryReplicationGroupId represents the name of the primary cluster that accepts writes and will replicate updates to the secondary cluster.
    func createGlobalReplicationGroup(input: CreateGlobalReplicationGroupInput) async throws -> CreateGlobalReplicationGroupOutputResponse
    /// Creates a Redis (cluster mode disabled) or a Redis (cluster mode enabled) replication group. This API can be used to create a standalone regional replication group or a secondary replication group associated with a Global datastore. A Redis (cluster mode disabled) replication group is a collection of clusters, where one of the clusters is a read/write primary and the others are read-only replicas. Writes to the primary are asynchronously propagated to the replicas. A Redis cluster-mode enabled cluster is comprised of from 1 to 90 shards (API/CLI: node groups). Each shard has a primary node and up to 5 read-only replica nodes. The configuration can range from 90 shards and 0 replicas to 15 shards and 5 replicas, which is the maximum number or replicas allowed. The node or shard limit can be increased to a maximum of 500 per cluster if the Redis engine version is 5.0.6 or higher. For example, you can choose to configure a 500 node cluster that ranges between 83 shards (one primary and 5 replicas per shard) and 500 shards (single primary and no replicas). Make sure there are enough available IP addresses to accommodate the increase. Common pitfalls include the subnets in the subnet group have too small a CIDR range or the subnets are shared and heavily used by other clusters. For more information, see [Creating a Subnet Group](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/SubnetGroups.Creating.html). For versions below 5.0.6, the limit is 250 per cluster. To request a limit increase, see [Amazon Service Limits](https://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html) and choose the limit type Nodes per cluster per instance type. When a Redis (cluster mode disabled) replication group has been successfully created, you can add one or more read replicas to it, up to a total of 5 read replicas. If you need to increase or decrease the number of node groups (console: shards), you can avail yourself of ElastiCache for Redis' scaling. For more information, see [Scaling ElastiCache for Redis Clusters](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Scaling.html) in the ElastiCache User Guide. This operation is valid for Redis only.
    func createReplicationGroup(input: CreateReplicationGroupInput) async throws -> CreateReplicationGroupOutputResponse
    /// Creates a copy of an entire cluster or replication group at a specific moment in time. This operation is valid for Redis only.
    func createSnapshot(input: CreateSnapshotInput) async throws -> CreateSnapshotOutputResponse
    /// For Redis engine version 6.0 onwards: Creates a Redis user. For more information, see [Using Role Based Access Control (RBAC)](http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Clusters.RBAC.html).
    func createUser(input: CreateUserInput) async throws -> CreateUserOutputResponse
    /// For Redis engine version 6.0 onwards: Creates a Redis user group. For more information, see [Using Role Based Access Control (RBAC)](http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Clusters.RBAC.html)
    func createUserGroup(input: CreateUserGroupInput) async throws -> CreateUserGroupOutputResponse
    /// Decreases the number of node groups in a Global datastore
    func decreaseNodeGroupsInGlobalReplicationGroup(input: DecreaseNodeGroupsInGlobalReplicationGroupInput) async throws -> DecreaseNodeGroupsInGlobalReplicationGroupOutputResponse
    /// Dynamically decreases the number of replicas in a Redis (cluster mode disabled) replication group or the number of replica nodes in one or more node groups (shards) of a Redis (cluster mode enabled) replication group. This operation is performed with no cluster down time.
    func decreaseReplicaCount(input: DecreaseReplicaCountInput) async throws -> DecreaseReplicaCountOutputResponse
    /// Deletes a previously provisioned cluster. DeleteCacheCluster deletes all associated cache nodes, node endpoints and the cluster itself. When you receive a successful response from this operation, Amazon ElastiCache immediately begins deleting the cluster; you cannot cancel or revert this operation. This operation is not valid for:
    ///
    /// * Redis (cluster mode enabled) clusters
    ///
    /// * Redis (cluster mode disabled) clusters
    ///
    /// * A cluster that is the last read replica of a replication group
    ///
    /// * A cluster that is the primary node of a replication group
    ///
    /// * A node group (shard) that has Multi-AZ mode enabled
    ///
    /// * A cluster from a Redis (cluster mode enabled) replication group
    ///
    /// * A cluster that is not in the available state
    func deleteCacheCluster(input: DeleteCacheClusterInput) async throws -> DeleteCacheClusterOutputResponse
    /// Deletes the specified cache parameter group. You cannot delete a cache parameter group if it is associated with any cache clusters. You cannot delete the default cache parameter groups in your account.
    func deleteCacheParameterGroup(input: DeleteCacheParameterGroupInput) async throws -> DeleteCacheParameterGroupOutputResponse
    /// Deletes a cache security group. You cannot delete a cache security group if it is associated with any clusters.
    func deleteCacheSecurityGroup(input: DeleteCacheSecurityGroupInput) async throws -> DeleteCacheSecurityGroupOutputResponse
    /// Deletes a cache subnet group. You cannot delete a default cache subnet group or one that is associated with any clusters.
    func deleteCacheSubnetGroup(input: DeleteCacheSubnetGroupInput) async throws -> DeleteCacheSubnetGroupOutputResponse
    /// Deleting a Global datastore is a two-step process:
    ///
    /// * First, you must [DisassociateGlobalReplicationGroup] to remove the secondary clusters in the Global datastore.
    ///
    /// * Once the Global datastore contains only the primary cluster, you can use the DeleteGlobalReplicationGroup API to delete the Global datastore while retainining the primary cluster using RetainPrimaryReplicationGroup=true.
    ///
    ///
    /// Since the Global Datastore has only a primary cluster, you can delete the Global Datastore while retaining the primary by setting RetainPrimaryReplicationGroup=true. The primary cluster is never deleted when deleting a Global Datastore. It can only be deleted when it no longer is associated with any Global Datastore. When you receive a successful response from this operation, Amazon ElastiCache immediately begins deleting the selected resources; you cannot cancel or revert this operation.
    func deleteGlobalReplicationGroup(input: DeleteGlobalReplicationGroupInput) async throws -> DeleteGlobalReplicationGroupOutputResponse
    /// Deletes an existing replication group. By default, this operation deletes the entire replication group, including the primary/primaries and all of the read replicas. If the replication group has only one primary, you can optionally delete only the read replicas, while retaining the primary by setting RetainPrimaryCluster=true. When you receive a successful response from this operation, Amazon ElastiCache immediately begins deleting the selected resources; you cannot cancel or revert this operation. This operation is valid for Redis only.
    func deleteReplicationGroup(input: DeleteReplicationGroupInput) async throws -> DeleteReplicationGroupOutputResponse
    /// Deletes an existing snapshot. When you receive a successful response from this operation, ElastiCache immediately begins deleting the snapshot; you cannot cancel or revert this operation. This operation is valid for Redis only.
    func deleteSnapshot(input: DeleteSnapshotInput) async throws -> DeleteSnapshotOutputResponse
    /// For Redis engine version 6.0 onwards: Deletes a user. The user will be removed from all user groups and in turn removed from all replication groups. For more information, see [Using Role Based Access Control (RBAC)](http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Clusters.RBAC.html).
    func deleteUser(input: DeleteUserInput) async throws -> DeleteUserOutputResponse
    /// For Redis engine version 6.0 onwards: Deletes a user group. The user group must first be disassociated from the replication group before it can be deleted. For more information, see [Using Role Based Access Control (RBAC)](http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Clusters.RBAC.html).
    func deleteUserGroup(input: DeleteUserGroupInput) async throws -> DeleteUserGroupOutputResponse
    /// Returns information about all provisioned clusters if no cluster identifier is specified, or about a specific cache cluster if a cluster identifier is supplied. By default, abbreviated information about the clusters is returned. You can use the optional ShowCacheNodeInfo flag to retrieve detailed information about the cache nodes associated with the clusters. These details include the DNS address and port for the cache node endpoint. If the cluster is in the creating state, only cluster-level information is displayed until all of the nodes are successfully provisioned. If the cluster is in the deleting state, only cluster-level information is displayed. If cache nodes are currently being added to the cluster, node endpoint information and creation time for the additional nodes are not displayed until they are completely provisioned. When the cluster state is available, the cluster is ready for use. If cache nodes are currently being removed from the cluster, no endpoint information for the removed nodes is displayed.
    func describeCacheClusters(input: DescribeCacheClustersInput) async throws -> DescribeCacheClustersOutputResponse
    /// Returns a list of the available cache engines and their versions.
    func describeCacheEngineVersions(input: DescribeCacheEngineVersionsInput) async throws -> DescribeCacheEngineVersionsOutputResponse
    /// Returns a list of cache parameter group descriptions. If a cache parameter group name is specified, the list contains only the descriptions for that group.
    func describeCacheParameterGroups(input: DescribeCacheParameterGroupsInput) async throws -> DescribeCacheParameterGroupsOutputResponse
    /// Returns the detailed parameter list for a particular cache parameter group.
    func describeCacheParameters(input: DescribeCacheParametersInput) async throws -> DescribeCacheParametersOutputResponse
    /// Returns a list of cache security group descriptions. If a cache security group name is specified, the list contains only the description of that group. This applicable only when you have ElastiCache in Classic setup
    func describeCacheSecurityGroups(input: DescribeCacheSecurityGroupsInput) async throws -> DescribeCacheSecurityGroupsOutputResponse
    /// Returns a list of cache subnet group descriptions. If a subnet group name is specified, the list contains only the description of that group. This is applicable only when you have ElastiCache in VPC setup. All ElastiCache clusters now launch in VPC by default.
    func describeCacheSubnetGroups(input: DescribeCacheSubnetGroupsInput) async throws -> DescribeCacheSubnetGroupsOutputResponse
    /// Returns the default engine and system parameter information for the specified cache engine.
    func describeEngineDefaultParameters(input: DescribeEngineDefaultParametersInput) async throws -> DescribeEngineDefaultParametersOutputResponse
    /// Returns events related to clusters, cache security groups, and cache parameter groups. You can obtain events specific to a particular cluster, cache security group, or cache parameter group by providing the name as a parameter. By default, only the events occurring within the last hour are returned; however, you can retrieve up to 14 days' worth of events if necessary.
    func describeEvents(input: DescribeEventsInput) async throws -> DescribeEventsOutputResponse
    /// Returns information about a particular global replication group. If no identifier is specified, returns information about all Global datastores.
    func describeGlobalReplicationGroups(input: DescribeGlobalReplicationGroupsInput) async throws -> DescribeGlobalReplicationGroupsOutputResponse
    /// Returns information about a particular replication group. If no identifier is specified, DescribeReplicationGroups returns information about all replication groups. This operation is valid for Redis only.
    func describeReplicationGroups(input: DescribeReplicationGroupsInput) async throws -> DescribeReplicationGroupsOutputResponse
    /// Returns information about reserved cache nodes for this account, or about a specified reserved cache node.
    func describeReservedCacheNodes(input: DescribeReservedCacheNodesInput) async throws -> DescribeReservedCacheNodesOutputResponse
    /// Lists available reserved cache node offerings.
    func describeReservedCacheNodesOfferings(input: DescribeReservedCacheNodesOfferingsInput) async throws -> DescribeReservedCacheNodesOfferingsOutputResponse
    /// Returns details of the service updates
    func describeServiceUpdates(input: DescribeServiceUpdatesInput) async throws -> DescribeServiceUpdatesOutputResponse
    /// Returns information about cluster or replication group snapshots. By default, DescribeSnapshots lists all of your snapshots; it can optionally describe a single snapshot, or just the snapshots associated with a particular cache cluster. This operation is valid for Redis only.
    func describeSnapshots(input: DescribeSnapshotsInput) async throws -> DescribeSnapshotsOutputResponse
    /// Returns details of the update actions
    func describeUpdateActions(input: DescribeUpdateActionsInput) async throws -> DescribeUpdateActionsOutputResponse
    /// Returns a list of user groups.
    func describeUserGroups(input: DescribeUserGroupsInput) async throws -> DescribeUserGroupsOutputResponse
    /// Returns a list of users.
    func describeUsers(input: DescribeUsersInput) async throws -> DescribeUsersOutputResponse
    /// Remove a secondary cluster from the Global datastore using the Global datastore name. The secondary cluster will no longer receive updates from the primary cluster, but will remain as a standalone cluster in that Amazon region.
    func disassociateGlobalReplicationGroup(input: DisassociateGlobalReplicationGroupInput) async throws -> DisassociateGlobalReplicationGroupOutputResponse
    /// Used to failover the primary region to a secondary region. The secondary region will become primary, and all other clusters will become secondary.
    func failoverGlobalReplicationGroup(input: FailoverGlobalReplicationGroupInput) async throws -> FailoverGlobalReplicationGroupOutputResponse
    /// Increase the number of node groups in the Global datastore
    func increaseNodeGroupsInGlobalReplicationGroup(input: IncreaseNodeGroupsInGlobalReplicationGroupInput) async throws -> IncreaseNodeGroupsInGlobalReplicationGroupOutputResponse
    /// Dynamically increases the number of replicas in a Redis (cluster mode disabled) replication group or the number of replica nodes in one or more node groups (shards) of a Redis (cluster mode enabled) replication group. This operation is performed with no cluster down time.
    func increaseReplicaCount(input: IncreaseReplicaCountInput) async throws -> IncreaseReplicaCountOutputResponse
    /// Lists all available node types that you can scale your Redis cluster's or replication group's current node type. When you use the ModifyCacheCluster or ModifyReplicationGroup operations to scale your cluster or replication group, the value of the CacheNodeType parameter must be one of the node types returned by this operation.
    func listAllowedNodeTypeModifications(input: ListAllowedNodeTypeModificationsInput) async throws -> ListAllowedNodeTypeModificationsOutputResponse
    /// Lists all tags currently on a named resource. A tag is a key-value pair where the key and value are case-sensitive. You can use tags to categorize and track all your ElastiCache resources, with the exception of global replication group. When you add or remove tags on replication groups, those actions will be replicated to all nodes in the replication group. For more information, see [Resource-level permissions](http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/IAM.ResourceLevelPermissions.html). If the cluster is not in the available state, ListTagsForResource returns an error.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Modifies the settings for a cluster. You can use this operation to change one or more cluster configuration parameters by specifying the parameters and the new values.
    func modifyCacheCluster(input: ModifyCacheClusterInput) async throws -> ModifyCacheClusterOutputResponse
    /// Modifies the parameters of a cache parameter group. You can modify up to 20 parameters in a single request by submitting a list parameter name and value pairs.
    func modifyCacheParameterGroup(input: ModifyCacheParameterGroupInput) async throws -> ModifyCacheParameterGroupOutputResponse
    /// Modifies an existing cache subnet group.
    func modifyCacheSubnetGroup(input: ModifyCacheSubnetGroupInput) async throws -> ModifyCacheSubnetGroupOutputResponse
    /// Modifies the settings for a Global datastore.
    func modifyGlobalReplicationGroup(input: ModifyGlobalReplicationGroupInput) async throws -> ModifyGlobalReplicationGroupOutputResponse
    /// Modifies the settings for a replication group.
    ///
    /// * [Scaling for Amazon ElastiCache for Redis (cluster mode enabled)](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/scaling-redis-cluster-mode-enabled.html) in the ElastiCache User Guide
    ///
    /// * [ModifyReplicationGroupShardConfiguration](https://docs.aws.amazon.com/AmazonElastiCache/latest/APIReference/API_ModifyReplicationGroupShardConfiguration.html) in the ElastiCache API Reference
    ///
    ///
    /// This operation is valid for Redis only.
    func modifyReplicationGroup(input: ModifyReplicationGroupInput) async throws -> ModifyReplicationGroupOutputResponse
    /// Modifies a replication group's shards (node groups) by allowing you to add shards, remove shards, or rebalance the keyspaces among existing shards.
    func modifyReplicationGroupShardConfiguration(input: ModifyReplicationGroupShardConfigurationInput) async throws -> ModifyReplicationGroupShardConfigurationOutputResponse
    /// Changes user password(s) and/or access string.
    func modifyUser(input: ModifyUserInput) async throws -> ModifyUserOutputResponse
    /// Changes the list of users that belong to the user group.
    func modifyUserGroup(input: ModifyUserGroupInput) async throws -> ModifyUserGroupOutputResponse
    /// Allows you to purchase a reserved cache node offering. Reserved nodes are not eligible for cancellation and are non-refundable. For more information, see [Managing Costs with Reserved Nodes](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/reserved-nodes.html) for Redis or [Managing Costs with Reserved Nodes](https://docs.aws.amazon.com/AmazonElastiCache/latest/mem-ug/reserved-nodes.html) for Memcached.
    func purchaseReservedCacheNodesOffering(input: PurchaseReservedCacheNodesOfferingInput) async throws -> PurchaseReservedCacheNodesOfferingOutputResponse
    /// Redistribute slots to ensure uniform distribution across existing shards in the cluster.
    func rebalanceSlotsInGlobalReplicationGroup(input: RebalanceSlotsInGlobalReplicationGroupInput) async throws -> RebalanceSlotsInGlobalReplicationGroupOutputResponse
    /// Reboots some, or all, of the cache nodes within a provisioned cluster. This operation applies any modified cache parameter groups to the cluster. The reboot operation takes place as soon as possible, and results in a momentary outage to the cluster. During the reboot, the cluster status is set to REBOOTING. The reboot causes the contents of the cache (for each cache node being rebooted) to be lost. When the reboot is complete, a cluster event is created. Rebooting a cluster is currently supported on Memcached and Redis (cluster mode disabled) clusters. Rebooting is not supported on Redis (cluster mode enabled) clusters. If you make changes to parameters that require a Redis (cluster mode enabled) cluster reboot for the changes to be applied, see [Rebooting a Cluster](http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/nodes.rebooting.html) for an alternate process.
    func rebootCacheCluster(input: RebootCacheClusterInput) async throws -> RebootCacheClusterOutputResponse
    /// Removes the tags identified by the TagKeys list from the named resource. A tag is a key-value pair where the key and value are case-sensitive. You can use tags to categorize and track all your ElastiCache resources, with the exception of global replication group. When you add or remove tags on replication groups, those actions will be replicated to all nodes in the replication group. For more information, see [Resource-level permissions](http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/IAM.ResourceLevelPermissions.html).
    func removeTagsFromResource(input: RemoveTagsFromResourceInput) async throws -> RemoveTagsFromResourceOutputResponse
    /// Modifies the parameters of a cache parameter group to the engine or system default value. You can reset specific parameters by submitting a list of parameter names. To reset the entire cache parameter group, specify the ResetAllParameters and CacheParameterGroupName parameters.
    func resetCacheParameterGroup(input: ResetCacheParameterGroupInput) async throws -> ResetCacheParameterGroupOutputResponse
    /// Revokes ingress from a cache security group. Use this operation to disallow access from an Amazon EC2 security group that had been previously authorized.
    func revokeCacheSecurityGroupIngress(input: RevokeCacheSecurityGroupIngressInput) async throws -> RevokeCacheSecurityGroupIngressOutputResponse
    /// Start the migration of data.
    func startMigration(input: StartMigrationInput) async throws -> StartMigrationOutputResponse
    /// Represents the input of a TestFailover operation which test automatic failover on a specified node group (called shard in the console) in a replication group (called cluster in the console). This API is designed for testing the behavior of your application in case of ElastiCache failover. It is not designed to be an operational tool for initiating a failover to overcome a problem you may have with the cluster. Moreover, in certain conditions such as large-scale operational events, Amazon may block this API. Note the following
    ///
    /// * A customer can use this operation to test automatic failover on up to 5 shards (called node groups in the ElastiCache API and Amazon CLI) in any rolling 24-hour period.
    ///
    /// * If calling this operation on shards in different clusters (called replication groups in the API and CLI), the calls can be made concurrently.
    ///
    /// * If calling this operation multiple times on different shards in the same Redis (cluster mode enabled) replication group, the first node replacement must complete before a subsequent call can be made.
    ///
    /// * To determine whether the node replacement is complete you can check Events using the Amazon ElastiCache console, the Amazon CLI, or the ElastiCache API. Look for the following automatic failover related events, listed here in order of occurrance:
    ///
    /// * Replication group message: Test Failover API called for node group
    ///
    /// * Cache cluster message: Failover from primary node to replica node completed
    ///
    /// * Replication group message: Failover from primary node to replica node completed
    ///
    /// * Cache cluster message: Recovering cache nodes
    ///
    /// * Cache cluster message: Finished recovery for cache nodes
    ///
    ///
    /// For more information see:
    ///
    /// * [Viewing ElastiCache Events](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/ECEvents.Viewing.html) in the ElastiCache User Guide
    ///
    /// * [DescribeEvents](https://docs.aws.amazon.com/AmazonElastiCache/latest/APIReference/API_DescribeEvents.html) in the ElastiCache API Reference
    ///
    ///
    ///
    ///
    ///
    /// Also see, [Testing Multi-AZ ](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/AutoFailover.html#auto-failover-test) in the ElastiCache User Guide.
    func testFailover(input: TestFailoverInput) async throws -> TestFailoverOutputResponse
}

public protocol ElastiCacheClientConfigurationProtocol : AWSClientRuntime.AWSClientConfiguration {
    var endpointResolver: EndpointResolver { get }
}

public enum ElastiCacheClientTypes {}
