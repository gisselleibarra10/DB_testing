// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime

/// Amazon Comprehend is an AWS service for gaining insight into the content of documents. Use these actions to determine the topics contained in your documents, the topics they discuss, the predominant sentiment expressed in them, the predominant language used, and more.
public protocol ComprehendClientProtocol {
    /// Determines the dominant language of the input text for a batch of documents. For a list of languages that Amazon Comprehend can detect, see [Amazon Comprehend Supported Languages](https://docs.aws.amazon.com/comprehend/latest/dg/how-languages.html).
    func batchDetectDominantLanguage(input: BatchDetectDominantLanguageInput) async throws -> BatchDetectDominantLanguageOutputResponse
    /// Inspects the text of a batch of documents for named entities and returns information about them. For more information about named entities, see [Entities](https://docs.aws.amazon.com/comprehend/latest/dg/how-entities.html) in the Comprehend Developer Guide.
    func batchDetectEntities(input: BatchDetectEntitiesInput) async throws -> BatchDetectEntitiesOutputResponse
    /// Detects the key noun phrases found in a batch of documents.
    func batchDetectKeyPhrases(input: BatchDetectKeyPhrasesInput) async throws -> BatchDetectKeyPhrasesOutputResponse
    /// Inspects a batch of documents and returns an inference of the prevailing sentiment, POSITIVE, NEUTRAL, MIXED, or NEGATIVE, in each one.
    func batchDetectSentiment(input: BatchDetectSentimentInput) async throws -> BatchDetectSentimentOutputResponse
    /// Inspects the text of a batch of documents for the syntax and part of speech of the words in the document and returns information about them. For more information, see [Syntax](https://docs.aws.amazon.com/comprehend/latest/dg/how-syntax.html) in the Comprehend Developer Guide.
    func batchDetectSyntax(input: BatchDetectSyntaxInput) async throws -> BatchDetectSyntaxOutputResponse
    /// Inspects a batch of documents and returns a sentiment analysis for each entity identified in the documents. For more information about targeted sentiment, see [Targeted sentiment](https://docs.aws.amazon.com/comprehend/latest/dg/how-targeted-sentiment.html).
    func batchDetectTargetedSentiment(input: BatchDetectTargetedSentimentInput) async throws -> BatchDetectTargetedSentimentOutputResponse
    /// Creates a new document classification request to analyze a single document in real-time, using a previously created and trained custom model and an endpoint. You can input plain text or you can upload a single-page input document (text, PDF, Word, or image). If the system detects errors while processing a page in the input document, the API response includes an entry in Errors that describes the errors. If the system detects a document-level error in your input document, the API returns an InvalidRequestException error response. For details about this exception, see [ Errors in semi-structured documents](https://docs.aws.amazon.com/comprehend/latest/dg/idp-inputs-sync-err.html) in the Comprehend Developer Guide.
    func classifyDocument(input: ClassifyDocumentInput) async throws -> ClassifyDocumentOutputResponse
    /// Analyzes input text for the presence of personally identifiable information (PII) and returns the labels of identified PII entity types such as name, address, bank account number, or phone number.
    func containsPiiEntities(input: ContainsPiiEntitiesInput) async throws -> ContainsPiiEntitiesOutputResponse
    /// Creates a new document classifier that you can use to categorize documents. To create a classifier, you provide a set of training documents that labeled with the categories that you want to use. After the classifier is trained you can use it to categorize a set of labeled documents into the categories. For more information, see [Document Classification](https://docs.aws.amazon.com/comprehend/latest/dg/how-document-classification.html) in the Comprehend Developer Guide.
    func createDocumentClassifier(input: CreateDocumentClassifierInput) async throws -> CreateDocumentClassifierOutputResponse
    /// Creates a model-specific endpoint for synchronous inference for a previously trained custom model For information about endpoints, see [Managing endpoints](https://docs.aws.amazon.com/comprehend/latest/dg/manage-endpoints.html).
    func createEndpoint(input: CreateEndpointInput) async throws -> CreateEndpointOutputResponse
    /// Creates an entity recognizer using submitted files. After your CreateEntityRecognizer request is submitted, you can check job status using the API.
    func createEntityRecognizer(input: CreateEntityRecognizerInput) async throws -> CreateEntityRecognizerOutputResponse
    /// Deletes a previously created document classifier Only those classifiers that are in terminated states (IN_ERROR, TRAINED) will be deleted. If an active inference job is using the model, a ResourceInUseException will be returned. This is an asynchronous action that puts the classifier into a DELETING state, and it is then removed by a background job. Once removed, the classifier disappears from your account and is no longer available for use.
    func deleteDocumentClassifier(input: DeleteDocumentClassifierInput) async throws -> DeleteDocumentClassifierOutputResponse
    /// Deletes a model-specific endpoint for a previously-trained custom model. All endpoints must be deleted in order for the model to be deleted. For information about endpoints, see [Managing endpoints](https://docs.aws.amazon.com/comprehend/latest/dg/manage-endpoints.html).
    func deleteEndpoint(input: DeleteEndpointInput) async throws -> DeleteEndpointOutputResponse
    /// Deletes an entity recognizer. Only those recognizers that are in terminated states (IN_ERROR, TRAINED) will be deleted. If an active inference job is using the model, a ResourceInUseException will be returned. This is an asynchronous action that puts the recognizer into a DELETING state, and it is then removed by a background job. Once removed, the recognizer disappears from your account and is no longer available for use.
    func deleteEntityRecognizer(input: DeleteEntityRecognizerInput) async throws -> DeleteEntityRecognizerOutputResponse
    /// Deletes a resource-based policy that is attached to a custom model.
    func deleteResourcePolicy(input: DeleteResourcePolicyInput) async throws -> DeleteResourcePolicyOutputResponse
    /// Gets the properties associated with a document classification job. Use this operation to get the status of a classification job.
    func describeDocumentClassificationJob(input: DescribeDocumentClassificationJobInput) async throws -> DescribeDocumentClassificationJobOutputResponse
    /// Gets the properties associated with a document classifier.
    func describeDocumentClassifier(input: DescribeDocumentClassifierInput) async throws -> DescribeDocumentClassifierOutputResponse
    /// Gets the properties associated with a dominant language detection job. Use this operation to get the status of a detection job.
    func describeDominantLanguageDetectionJob(input: DescribeDominantLanguageDetectionJobInput) async throws -> DescribeDominantLanguageDetectionJobOutputResponse
    /// Gets the properties associated with a specific endpoint. Use this operation to get the status of an endpoint. For information about endpoints, see [Managing endpoints](https://docs.aws.amazon.com/comprehend/latest/dg/manage-endpoints.html).
    func describeEndpoint(input: DescribeEndpointInput) async throws -> DescribeEndpointOutputResponse
    /// Gets the properties associated with an entities detection job. Use this operation to get the status of a detection job.
    func describeEntitiesDetectionJob(input: DescribeEntitiesDetectionJobInput) async throws -> DescribeEntitiesDetectionJobOutputResponse
    /// Provides details about an entity recognizer including status, S3 buckets containing training data, recognizer metadata, metrics, and so on.
    func describeEntityRecognizer(input: DescribeEntityRecognizerInput) async throws -> DescribeEntityRecognizerOutputResponse
    /// Gets the status and details of an events detection job.
    func describeEventsDetectionJob(input: DescribeEventsDetectionJobInput) async throws -> DescribeEventsDetectionJobOutputResponse
    /// Gets the properties associated with a key phrases detection job. Use this operation to get the status of a detection job.
    func describeKeyPhrasesDetectionJob(input: DescribeKeyPhrasesDetectionJobInput) async throws -> DescribeKeyPhrasesDetectionJobOutputResponse
    /// Gets the properties associated with a PII entities detection job. For example, you can use this operation to get the job status.
    func describePiiEntitiesDetectionJob(input: DescribePiiEntitiesDetectionJobInput) async throws -> DescribePiiEntitiesDetectionJobOutputResponse
    /// Gets the details of a resource-based policy that is attached to a custom model, including the JSON body of the policy.
    func describeResourcePolicy(input: DescribeResourcePolicyInput) async throws -> DescribeResourcePolicyOutputResponse
    /// Gets the properties associated with a sentiment detection job. Use this operation to get the status of a detection job.
    func describeSentimentDetectionJob(input: DescribeSentimentDetectionJobInput) async throws -> DescribeSentimentDetectionJobOutputResponse
    /// Gets the properties associated with a targeted sentiment detection job. Use this operation to get the status of the job.
    func describeTargetedSentimentDetectionJob(input: DescribeTargetedSentimentDetectionJobInput) async throws -> DescribeTargetedSentimentDetectionJobOutputResponse
    /// Gets the properties associated with a topic detection job. Use this operation to get the status of a detection job.
    func describeTopicsDetectionJob(input: DescribeTopicsDetectionJobInput) async throws -> DescribeTopicsDetectionJobOutputResponse
    /// Determines the dominant language of the input text. For a list of languages that Amazon Comprehend can detect, see [Amazon Comprehend Supported Languages](https://docs.aws.amazon.com/comprehend/latest/dg/how-languages.html).
    func detectDominantLanguage(input: DetectDominantLanguageInput) async throws -> DetectDominantLanguageOutputResponse
    /// Detects named entities in input text when you use the pre-trained model. Detects custom entities if you have a custom entity recognition model. When detecting named entities using the pre-trained model, use plain text as the input. For more information about named entities, see [Entities](https://docs.aws.amazon.com/comprehend/latest/dg/how-entities.html) in the Comprehend Developer Guide. When you use a custom entity recognition model, you can input plain text or you can upload a single-page input document (text, PDF, Word, or image). If the system detects errors while processing a page in the input document, the API response includes an entry in Errors for each error. If the system detects a document-level error in your input document, the API returns an InvalidRequestException error response. For details about this exception, see [ Errors in semi-structured documents](https://docs.aws.amazon.com/comprehend/latest/dg/idp-inputs-sync-err.html) in the Comprehend Developer Guide.
    func detectEntities(input: DetectEntitiesInput) async throws -> DetectEntitiesOutputResponse
    /// Detects the key noun phrases found in the text.
    func detectKeyPhrases(input: DetectKeyPhrasesInput) async throws -> DetectKeyPhrasesOutputResponse
    /// Inspects the input text for entities that contain personally identifiable information (PII) and returns information about them.
    func detectPiiEntities(input: DetectPiiEntitiesInput) async throws -> DetectPiiEntitiesOutputResponse
    /// Inspects text and returns an inference of the prevailing sentiment (POSITIVE, NEUTRAL, MIXED, or NEGATIVE).
    func detectSentiment(input: DetectSentimentInput) async throws -> DetectSentimentOutputResponse
    /// Inspects text for syntax and the part of speech of words in the document. For more information, see [Syntax](https://docs.aws.amazon.com/comprehend/latest/dg/how-syntax.html) in the Comprehend Developer Guide.
    func detectSyntax(input: DetectSyntaxInput) async throws -> DetectSyntaxOutputResponse
    /// Inspects the input text and returns a sentiment analysis for each entity identified in the text. For more information about targeted sentiment, see [Targeted sentiment](https://docs.aws.amazon.com/comprehend/latest/dg/how-targeted-sentiment.html).
    func detectTargetedSentiment(input: DetectTargetedSentimentInput) async throws -> DetectTargetedSentimentOutputResponse
    /// Creates a new custom model that replicates a source custom model that you import. The source model can be in your AWS account or another one. If the source model is in another AWS account, then it must have a resource-based policy that authorizes you to import it. The source model must be in the same AWS region that you're using when you import. You can't import a model that's in a different region.
    func importModel(input: ImportModelInput) async throws -> ImportModelOutputResponse
    /// Gets a list of the documentation classification jobs that you have submitted.
    func listDocumentClassificationJobs(input: ListDocumentClassificationJobsInput) async throws -> ListDocumentClassificationJobsOutputResponse
    /// Gets a list of the document classifiers that you have created.
    func listDocumentClassifiers(input: ListDocumentClassifiersInput) async throws -> ListDocumentClassifiersOutputResponse
    /// Gets a list of summaries of the document classifiers that you have created
    func listDocumentClassifierSummaries(input: ListDocumentClassifierSummariesInput) async throws -> ListDocumentClassifierSummariesOutputResponse
    /// Gets a list of the dominant language detection jobs that you have submitted.
    func listDominantLanguageDetectionJobs(input: ListDominantLanguageDetectionJobsInput) async throws -> ListDominantLanguageDetectionJobsOutputResponse
    /// Gets a list of all existing endpoints that you've created. For information about endpoints, see [Managing endpoints](https://docs.aws.amazon.com/comprehend/latest/dg/manage-endpoints.html).
    func listEndpoints(input: ListEndpointsInput) async throws -> ListEndpointsOutputResponse
    /// Gets a list of the entity detection jobs that you have submitted.
    func listEntitiesDetectionJobs(input: ListEntitiesDetectionJobsInput) async throws -> ListEntitiesDetectionJobsOutputResponse
    /// Gets a list of the properties of all entity recognizers that you created, including recognizers currently in training. Allows you to filter the list of recognizers based on criteria such as status and submission time. This call returns up to 500 entity recognizers in the list, with a default number of 100 recognizers in the list. The results of this list are not in any particular order. Please get the list and sort locally if needed.
    func listEntityRecognizers(input: ListEntityRecognizersInput) async throws -> ListEntityRecognizersOutputResponse
    /// Gets a list of summaries for the entity recognizers that you have created.
    func listEntityRecognizerSummaries(input: ListEntityRecognizerSummariesInput) async throws -> ListEntityRecognizerSummariesOutputResponse
    /// Gets a list of the events detection jobs that you have submitted.
    func listEventsDetectionJobs(input: ListEventsDetectionJobsInput) async throws -> ListEventsDetectionJobsOutputResponse
    /// Get a list of key phrase detection jobs that you have submitted.
    func listKeyPhrasesDetectionJobs(input: ListKeyPhrasesDetectionJobsInput) async throws -> ListKeyPhrasesDetectionJobsOutputResponse
    /// Gets a list of the PII entity detection jobs that you have submitted.
    func listPiiEntitiesDetectionJobs(input: ListPiiEntitiesDetectionJobsInput) async throws -> ListPiiEntitiesDetectionJobsOutputResponse
    /// Gets a list of sentiment detection jobs that you have submitted.
    func listSentimentDetectionJobs(input: ListSentimentDetectionJobsInput) async throws -> ListSentimentDetectionJobsOutputResponse
    /// Lists all tags associated with a given Amazon Comprehend resource.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Gets a list of targeted sentiment detection jobs that you have submitted.
    func listTargetedSentimentDetectionJobs(input: ListTargetedSentimentDetectionJobsInput) async throws -> ListTargetedSentimentDetectionJobsOutputResponse
    /// Gets a list of the topic detection jobs that you have submitted.
    func listTopicsDetectionJobs(input: ListTopicsDetectionJobsInput) async throws -> ListTopicsDetectionJobsOutputResponse
    /// Attaches a resource-based policy to a custom model. You can use this policy to authorize an entity in another AWS account to import the custom model, which replicates it in Amazon Comprehend in their account.
    func putResourcePolicy(input: PutResourcePolicyInput) async throws -> PutResourcePolicyOutputResponse
    /// Starts an asynchronous document classification job. Use the operation to track the progress of the job.
    func startDocumentClassificationJob(input: StartDocumentClassificationJobInput) async throws -> StartDocumentClassificationJobOutputResponse
    /// Starts an asynchronous dominant language detection job for a collection of documents. Use the operation to track the status of a job.
    func startDominantLanguageDetectionJob(input: StartDominantLanguageDetectionJobInput) async throws -> StartDominantLanguageDetectionJobOutputResponse
    /// Starts an asynchronous entity detection job for a collection of documents. Use the operation to track the status of a job. This API can be used for either standard entity detection or custom entity recognition. In order to be used for custom entity recognition, the optional EntityRecognizerArn must be used in order to provide access to the recognizer being used to detect the custom entity.
    func startEntitiesDetectionJob(input: StartEntitiesDetectionJobInput) async throws -> StartEntitiesDetectionJobOutputResponse
    /// Starts an asynchronous event detection job for a collection of documents.
    func startEventsDetectionJob(input: StartEventsDetectionJobInput) async throws -> StartEventsDetectionJobOutputResponse
    /// Starts an asynchronous key phrase detection job for a collection of documents. Use the operation to track the status of a job.
    func startKeyPhrasesDetectionJob(input: StartKeyPhrasesDetectionJobInput) async throws -> StartKeyPhrasesDetectionJobOutputResponse
    /// Starts an asynchronous PII entity detection job for a collection of documents.
    func startPiiEntitiesDetectionJob(input: StartPiiEntitiesDetectionJobInput) async throws -> StartPiiEntitiesDetectionJobOutputResponse
    /// Starts an asynchronous sentiment detection job for a collection of documents. Use the operation to track the status of a job.
    func startSentimentDetectionJob(input: StartSentimentDetectionJobInput) async throws -> StartSentimentDetectionJobOutputResponse
    /// Starts an asynchronous targeted sentiment detection job for a collection of documents. Use the operation to track the status of a job.
    func startTargetedSentimentDetectionJob(input: StartTargetedSentimentDetectionJobInput) async throws -> StartTargetedSentimentDetectionJobOutputResponse
    /// Starts an asynchronous topic detection job. Use the DescribeTopicDetectionJob operation to track the status of a job.
    func startTopicsDetectionJob(input: StartTopicsDetectionJobInput) async throws -> StartTopicsDetectionJobOutputResponse
    /// Stops a dominant language detection job in progress. If the job state is IN_PROGRESS the job is marked for termination and put into the STOP_REQUESTED state. If the job completes before it can be stopped, it is put into the COMPLETED state; otherwise the job is stopped and put into the STOPPED state. If the job is in the COMPLETED or FAILED state when you call the StopDominantLanguageDetectionJob operation, the operation returns a 400 Internal Request Exception. When a job is stopped, any documents already processed are written to the output location.
    func stopDominantLanguageDetectionJob(input: StopDominantLanguageDetectionJobInput) async throws -> StopDominantLanguageDetectionJobOutputResponse
    /// Stops an entities detection job in progress. If the job state is IN_PROGRESS the job is marked for termination and put into the STOP_REQUESTED state. If the job completes before it can be stopped, it is put into the COMPLETED state; otherwise the job is stopped and put into the STOPPED state. If the job is in the COMPLETED or FAILED state when you call the StopDominantLanguageDetectionJob operation, the operation returns a 400 Internal Request Exception. When a job is stopped, any documents already processed are written to the output location.
    func stopEntitiesDetectionJob(input: StopEntitiesDetectionJobInput) async throws -> StopEntitiesDetectionJobOutputResponse
    /// Stops an events detection job in progress.
    func stopEventsDetectionJob(input: StopEventsDetectionJobInput) async throws -> StopEventsDetectionJobOutputResponse
    /// Stops a key phrases detection job in progress. If the job state is IN_PROGRESS the job is marked for termination and put into the STOP_REQUESTED state. If the job completes before it can be stopped, it is put into the COMPLETED state; otherwise the job is stopped and put into the STOPPED state. If the job is in the COMPLETED or FAILED state when you call the StopDominantLanguageDetectionJob operation, the operation returns a 400 Internal Request Exception. When a job is stopped, any documents already processed are written to the output location.
    func stopKeyPhrasesDetectionJob(input: StopKeyPhrasesDetectionJobInput) async throws -> StopKeyPhrasesDetectionJobOutputResponse
    /// Stops a PII entities detection job in progress.
    func stopPiiEntitiesDetectionJob(input: StopPiiEntitiesDetectionJobInput) async throws -> StopPiiEntitiesDetectionJobOutputResponse
    /// Stops a sentiment detection job in progress. If the job state is IN_PROGRESS, the job is marked for termination and put into the STOP_REQUESTED state. If the job completes before it can be stopped, it is put into the COMPLETED state; otherwise the job is be stopped and put into the STOPPED state. If the job is in the COMPLETED or FAILED state when you call the StopDominantLanguageDetectionJob operation, the operation returns a 400 Internal Request Exception. When a job is stopped, any documents already processed are written to the output location.
    func stopSentimentDetectionJob(input: StopSentimentDetectionJobInput) async throws -> StopSentimentDetectionJobOutputResponse
    /// Stops a targeted sentiment detection job in progress. If the job state is IN_PROGRESS, the job is marked for termination and put into the STOP_REQUESTED state. If the job completes before it can be stopped, it is put into the COMPLETED state; otherwise the job is be stopped and put into the STOPPED state. If the job is in the COMPLETED or FAILED state when you call the StopDominantLanguageDetectionJob operation, the operation returns a 400 Internal Request Exception. When a job is stopped, any documents already processed are written to the output location.
    func stopTargetedSentimentDetectionJob(input: StopTargetedSentimentDetectionJobInput) async throws -> StopTargetedSentimentDetectionJobOutputResponse
    /// Stops a document classifier training job while in progress. If the training job state is TRAINING, the job is marked for termination and put into the STOP_REQUESTED state. If the training job completes before it can be stopped, it is put into the TRAINED; otherwise the training job is stopped and put into the STOPPED state and the service sends back an HTTP 200 response with an empty HTTP body.
    func stopTrainingDocumentClassifier(input: StopTrainingDocumentClassifierInput) async throws -> StopTrainingDocumentClassifierOutputResponse
    /// Stops an entity recognizer training job while in progress. If the training job state is TRAINING, the job is marked for termination and put into the STOP_REQUESTED state. If the training job completes before it can be stopped, it is put into the TRAINED; otherwise the training job is stopped and putted into the STOPPED state and the service sends back an HTTP 200 response with an empty HTTP body.
    func stopTrainingEntityRecognizer(input: StopTrainingEntityRecognizerInput) async throws -> StopTrainingEntityRecognizerOutputResponse
    /// Associates a specific tag with an Amazon Comprehend resource. A tag is a key-value pair that adds as a metadata to a resource used by Amazon Comprehend. For example, a tag with "Sales" as the key might be added to a resource to indicate its use by the sales department.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Removes a specific tag associated with an Amazon Comprehend resource.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// Updates information about the specified endpoint. For information about endpoints, see [Managing endpoints](https://docs.aws.amazon.com/comprehend/latest/dg/manage-endpoints.html).
    func updateEndpoint(input: UpdateEndpointInput) async throws -> UpdateEndpointOutputResponse
}

public protocol ComprehendClientConfigurationProtocol : AWSClientRuntime.AWSClientConfiguration {
    var endpointResolver: EndpointResolver { get }
}

public enum ComprehendClientTypes {}