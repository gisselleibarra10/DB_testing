// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// Amazon Lookout for Equipment is a machine learning service that uses advanced analytics to identify anomalies in machines from sensor data for use in predictive maintenance.
public protocol LookoutEquipmentClientProtocol {
    /// Creates a container for a collection of data being ingested for analysis. The dataset contains the metadata describing where the data is and what the data actually looks like. In other words, it contains the location of the data source, the data schema, and other information. A dataset also contains any tags associated with the ingested data.
    func createDataset(input: CreateDatasetInput) async throws -> CreateDatasetOutputResponse
    /// Creates a scheduled inference. Scheduling an inference is setting up a continuous real-time inference plan to analyze new measurement data. When setting up the schedule, you provide an S3 bucket location for the input data, assign it a delimiter between separate entries in the data, set an offset delay if desired, and set the frequency of inferencing. You must also provide an S3 bucket location for the output data.
    func createInferenceScheduler(input: CreateInferenceSchedulerInput) async throws -> CreateInferenceSchedulerOutputResponse
    /// Creates a label for an event.
    func createLabel(input: CreateLabelInput) async throws -> CreateLabelOutputResponse
    /// Creates a group of labels.
    func createLabelGroup(input: CreateLabelGroupInput) async throws -> CreateLabelGroupOutputResponse
    /// Creates an ML model for data inference. A machine-learning (ML) model is a mathematical model that finds patterns in your data. In Amazon Lookout for Equipment, the model learns the patterns of normal behavior and detects abnormal behavior that could be potential equipment failure (or maintenance events). The models are made by analyzing normal data and abnormalities in machine behavior that have already occurred. Your model is trained using a portion of the data from your dataset and uses that data to learn patterns of normal behavior and abnormal patterns that lead to equipment failure. Another portion of the data is used to evaluate the model's accuracy.
    func createModel(input: CreateModelInput) async throws -> CreateModelOutputResponse
    /// Deletes a dataset and associated artifacts. The operation will check to see if any inference scheduler or data ingestion job is currently using the dataset, and if there isn't, the dataset, its metadata, and any associated data stored in S3 will be deleted. This does not affect any models that used this dataset for training and evaluation, but does prevent it from being used in the future.
    func deleteDataset(input: DeleteDatasetInput) async throws -> DeleteDatasetOutputResponse
    /// Deletes an inference scheduler that has been set up. Already processed output results are not affected.
    func deleteInferenceScheduler(input: DeleteInferenceSchedulerInput) async throws -> DeleteInferenceSchedulerOutputResponse
    /// Deletes a label.
    func deleteLabel(input: DeleteLabelInput) async throws -> DeleteLabelOutputResponse
    /// Deletes a group of labels.
    func deleteLabelGroup(input: DeleteLabelGroupInput) async throws -> DeleteLabelGroupOutputResponse
    /// Deletes an ML model currently available for Amazon Lookout for Equipment. This will prevent it from being used with an inference scheduler, even one that is already set up.
    func deleteModel(input: DeleteModelInput) async throws -> DeleteModelOutputResponse
    /// Provides information on a specific data ingestion job such as creation time, dataset ARN, and status.
    func describeDataIngestionJob(input: DescribeDataIngestionJobInput) async throws -> DescribeDataIngestionJobOutputResponse
    /// Provides a JSON description of the data in each time series dataset, including names, column names, and data types.
    func describeDataset(input: DescribeDatasetInput) async throws -> DescribeDatasetOutputResponse
    /// Specifies information about the inference scheduler being used, including name, model, status, and associated metadata
    func describeInferenceScheduler(input: DescribeInferenceSchedulerInput) async throws -> DescribeInferenceSchedulerOutputResponse
    /// Returns the name of the label.
    func describeLabel(input: DescribeLabelInput) async throws -> DescribeLabelOutputResponse
    /// Returns information about the label group.
    func describeLabelGroup(input: DescribeLabelGroupInput) async throws -> DescribeLabelGroupOutputResponse
    /// Provides a JSON containing the overall information about a specific ML model, including model name and ARN, dataset, training and evaluation information, status, and so on.
    func describeModel(input: DescribeModelInput) async throws -> DescribeModelOutputResponse
    /// Provides a list of all data ingestion jobs, including dataset name and ARN, S3 location of the input data, status, and so on.
    func listDataIngestionJobs(input: ListDataIngestionJobsInput) async throws -> ListDataIngestionJobsOutputResponse
    /// Lists all datasets currently available in your account, filtering on the dataset name.
    func listDatasets(input: ListDatasetsInput) async throws -> ListDatasetsOutputResponse
    /// Lists all inference events that have been found for the specified inference scheduler.
    func listInferenceEvents(input: ListInferenceEventsInput) async throws -> ListInferenceEventsOutputResponse
    /// Lists all inference executions that have been performed by the specified inference scheduler.
    func listInferenceExecutions(input: ListInferenceExecutionsInput) async throws -> ListInferenceExecutionsOutputResponse
    /// Retrieves a list of all inference schedulers currently available for your account.
    func listInferenceSchedulers(input: ListInferenceSchedulersInput) async throws -> ListInferenceSchedulersOutputResponse
    /// Returns a list of the label groups.
    func listLabelGroups(input: ListLabelGroupsInput) async throws -> ListLabelGroupsOutputResponse
    /// Provides a list of labels.
    func listLabels(input: ListLabelsInput) async throws -> ListLabelsOutputResponse
    /// Generates a list of all models in the account, including model name and ARN, dataset, and status.
    func listModels(input: ListModelsInput) async throws -> ListModelsOutputResponse
    /// Lists statistics about the data collected for each of the sensors that have been successfully ingested in the particular dataset. Can also be used to retreive Sensor Statistics for a previous ingestion job.
    func listSensorStatistics(input: ListSensorStatisticsInput) async throws -> ListSensorStatisticsOutputResponse
    /// Lists all the tags for a specified resource, including key and value.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Starts a data ingestion job. Amazon Lookout for Equipment returns the job status.
    func startDataIngestionJob(input: StartDataIngestionJobInput) async throws -> StartDataIngestionJobOutputResponse
    /// Starts an inference scheduler.
    func startInferenceScheduler(input: StartInferenceSchedulerInput) async throws -> StartInferenceSchedulerOutputResponse
    /// Stops an inference scheduler.
    func stopInferenceScheduler(input: StopInferenceSchedulerInput) async throws -> StopInferenceSchedulerOutputResponse
    /// Associates a given tag to a resource in your account. A tag is a key-value pair which can be added to an Amazon Lookout for Equipment resource as metadata. Tags can be used for organizing your resources as well as helping you to search and filter by tag. Multiple tags can be added to a resource, either when you create it, or later. Up to 50 tags can be associated with each resource.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Removes a specific tag from a given resource. The tag is specified by its key.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// Updates an inference scheduler.
    func updateInferenceScheduler(input: UpdateInferenceSchedulerInput) async throws -> UpdateInferenceSchedulerOutputResponse
    /// Updates the label group.
    func updateLabelGroup(input: UpdateLabelGroupInput) async throws -> UpdateLabelGroupOutputResponse
}

public enum LookoutEquipmentClientTypes {}