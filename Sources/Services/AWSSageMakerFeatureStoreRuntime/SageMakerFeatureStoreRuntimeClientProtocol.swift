// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime

/// Contains all data plane API operations and data types for the Amazon SageMaker Feature Store. Use this API to put, delete, and retrieve (get) features from a feature store. Use the following operations to configure your OnlineStore and OfflineStore features, and to create and manage feature groups:
///
/// * [CreateFeatureGroup](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateFeatureGroup.html)
///
/// * [DeleteFeatureGroup](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DeleteFeatureGroup.html)
///
/// * [DescribeFeatureGroup](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DescribeFeatureGroup.html)
///
/// * [ListFeatureGroups](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_ListFeatureGroups.html)
public protocol SageMakerFeatureStoreRuntimeClientProtocol {
    /// Retrieves a batch of Records from a FeatureGroup.
    func batchGetRecord(input: BatchGetRecordInput) async throws -> BatchGetRecordOutputResponse
    /// Deletes a Record from a FeatureGroup. When the DeleteRecord API is called a new record will be added to the OfflineStore and the Record will be removed from the OnlineStore. This record will have a value of True in the is_deleted column.
    func deleteRecord(input: DeleteRecordInput) async throws -> DeleteRecordOutputResponse
    /// Use for OnlineStore serving from a FeatureStore. Only the latest records stored in the OnlineStore can be retrieved. If no Record with RecordIdentifierValue is found, then an empty result is returned.
    func getRecord(input: GetRecordInput) async throws -> GetRecordOutputResponse
    /// Used for data ingestion into the FeatureStore. The PutRecord API writes to both the OnlineStore and OfflineStore. If the record is the latest record for the recordIdentifier, the record is written to both the OnlineStore and OfflineStore. If the record is a historic record, it is written only to the OfflineStore.
    func putRecord(input: PutRecordInput) async throws -> PutRecordOutputResponse
}

public protocol SageMakerFeatureStoreRuntimeClientConfigurationProtocol : AWSClientRuntime.AWSClientConfiguration {
    var endpointResolver: EndpointResolver { get }
}

public enum SageMakerFeatureStoreRuntimeClientTypes {}
