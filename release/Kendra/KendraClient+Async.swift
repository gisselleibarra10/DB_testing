// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension KendraClient {
    /// <p>Removes one or more documents from an index. The documents must have
    ///       been added with the <code>BatchPutDocument</code> operation.</p>
    ///          <p>The documents are deleted asynchronously. You can see the progress of
    ///       the deletion by using AWS CloudWatch. Any error messages related to the
    ///       processing of the batch are sent to you CloudWatch log.</p>
    func batchDeleteDocument(input: BatchDeleteDocumentInput) async throws -> BatchDeleteDocumentOutputResponse
    {
        typealias batchDeleteDocumentContinuation = CheckedContinuation<BatchDeleteDocumentOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: batchDeleteDocumentContinuation) in
            batchDeleteDocument(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Adds one or more documents to an index.</p>
    ///          <p>The <code>BatchPutDocument</code> operation enables you to ingest
    ///       inline documents or a set of documents stored in an Amazon S3 bucket. Use
    ///       this operation to ingest your text and unstructured text into an index,
    ///       add custom attributes to the documents, and to attach an access control
    ///       list to the documents added to the index.</p>
    ///          <p>The documents are indexed asynchronously. You can see the progress of
    ///       the batch using AWS CloudWatch. Any error messages related to processing
    ///       the batch are sent to your AWS CloudWatch log.</p>
    func batchPutDocument(input: BatchPutDocumentInput) async throws -> BatchPutDocumentOutputResponse
    {
        typealias batchPutDocumentContinuation = CheckedContinuation<BatchPutDocumentOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: batchPutDocumentContinuation) in
            batchPutDocument(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Clears existing query suggestions from an index.</p>
    ///         <p>This deletes existing suggestions only, not the queries
    ///             in the query log. After you clear suggestions, Amazon Kendra learns
    ///             new suggestions based on new queries added to the query log
    ///             from the time you cleared suggestions. If you do not see any
    ///             new suggestions, then please allow Amazon Kendra to collect
    ///             enough queries to learn new suggestions.</p>
    func clearQuerySuggestions(input: ClearQuerySuggestionsInput) async throws -> ClearQuerySuggestionsOutputResponse
    {
        typealias clearQuerySuggestionsContinuation = CheckedContinuation<ClearQuerySuggestionsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: clearQuerySuggestionsContinuation) in
            clearQuerySuggestions(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Creates a data source that you use to with an Amazon Kendra index. </p>
    ///          <p>You specify a name, data source connector type and description for
    ///       your data source. You also specify configuration information such as
    ///       document metadata (author, source URI, and so on) and user context
    ///       information.</p>
    ///          <p>
    ///             <code>CreateDataSource</code> is a synchronous operation. The
    ///       operation returns 200 if the data source was successfully created.
    ///       Otherwise, an exception is raised.</p>
    func createDataSource(input: CreateDataSourceInput) async throws -> CreateDataSourceOutputResponse
    {
        typealias createDataSourceContinuation = CheckedContinuation<CreateDataSourceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createDataSourceContinuation) in
            createDataSource(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Creates an new set of frequently asked question (FAQ) questions and answers.</p>
    func createFaq(input: CreateFaqInput) async throws -> CreateFaqOutputResponse
    {
        typealias createFaqContinuation = CheckedContinuation<CreateFaqOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createFaqContinuation) in
            createFaq(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Creates a new Amazon Kendra index. Index creation is an asynchronous
    ///       operation. To determine if index creation has completed, check the
    ///         <code>Status</code> field returned from a call to
    ///         <code>DescribeIndex</code>. The <code>Status</code> field is set to
    ///         <code>ACTIVE</code> when the index is ready to use.</p>
    ///          <p>Once the index is active you can index your documents using the
    ///         <code>BatchPutDocument</code> operation or using one of the supported
    ///       data sources. </p>
    func createIndex(input: CreateIndexInput) async throws -> CreateIndexOutputResponse
    {
        typealias createIndexContinuation = CheckedContinuation<CreateIndexOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createIndexContinuation) in
            createIndex(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Creates a block list to exlcude certain queries from suggestions.</p>
    ///         <p>Any query that contains words or phrases specified in the block
    ///             list is blocked or filtered out from being shown as a suggestion.</p>
    ///         <p>You need to provide the file location of your block list text file
    ///             in your S3 bucket. In your text file, enter each block word or phrase
    ///             on a separate line.</p>
    ///         <p>For information on the current quota limits for block lists, see
    ///             <a href="https://docs.aws.amazon.com/kendra/latest/dg/quotas.html">Quotas
    ///                 for Amazon Kendra</a>.</p>
    func createQuerySuggestionsBlockList(input: CreateQuerySuggestionsBlockListInput) async throws -> CreateQuerySuggestionsBlockListOutputResponse
    {
        typealias createQuerySuggestionsBlockListContinuation = CheckedContinuation<CreateQuerySuggestionsBlockListOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createQuerySuggestionsBlockListContinuation) in
            createQuerySuggestionsBlockList(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Creates a thesaurus for an index. The thesaurus
    ///       contains a list of synonyms in Solr format.</p>
    func createThesaurus(input: CreateThesaurusInput) async throws -> CreateThesaurusOutputResponse
    {
        typealias createThesaurusContinuation = CheckedContinuation<CreateThesaurusOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createThesaurusContinuation) in
            createThesaurus(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Deletes an Amazon Kendra data source. An exception is not thrown if the
    ///       data source is already being deleted. While the data source is being
    ///       deleted, the <code>Status</code> field returned by a call to the
    ///         <code>DescribeDataSource</code> operation is set to
    ///         <code>DELETING</code>. For more information, see <a href="https://docs.aws.amazon.com/kendra/latest/dg/delete-data-source.html">Deleting Data Sources</a>.</p>
    func deleteDataSource(input: DeleteDataSourceInput) async throws -> DeleteDataSourceOutputResponse
    {
        typealias deleteDataSourceContinuation = CheckedContinuation<DeleteDataSourceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteDataSourceContinuation) in
            deleteDataSource(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Removes an FAQ from an index.</p>
    func deleteFaq(input: DeleteFaqInput) async throws -> DeleteFaqOutputResponse
    {
        typealias deleteFaqContinuation = CheckedContinuation<DeleteFaqOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteFaqContinuation) in
            deleteFaq(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Deletes an existing Amazon Kendra index. An exception is not thrown if
    ///       the index is already being deleted. While the index is being deleted, the
    ///         <code>Status</code> field returned by a call to the
    ///         <code>DescribeIndex</code> operation is set to
    ///       <code>DELETING</code>.</p>
    func deleteIndex(input: DeleteIndexInput) async throws -> DeleteIndexOutputResponse
    {
        typealias deleteIndexContinuation = CheckedContinuation<DeleteIndexOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteIndexContinuation) in
            deleteIndex(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Deletes a block list used for query suggestions for an index.</p>
    ///         <p>A deleted block list might not take effect right away. Amazon Kendra
    ///             needs to refresh the entire suggestions list to add back the
    ///             queries that were previously blocked.</p>
    func deleteQuerySuggestionsBlockList(input: DeleteQuerySuggestionsBlockListInput) async throws -> DeleteQuerySuggestionsBlockListOutputResponse
    {
        typealias deleteQuerySuggestionsBlockListContinuation = CheckedContinuation<DeleteQuerySuggestionsBlockListOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteQuerySuggestionsBlockListContinuation) in
            deleteQuerySuggestionsBlockList(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Deletes an existing Amazon Kendra thesaurus.
    ///       </p>
    func deleteThesaurus(input: DeleteThesaurusInput) async throws -> DeleteThesaurusOutputResponse
    {
        typealias deleteThesaurusContinuation = CheckedContinuation<DeleteThesaurusOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteThesaurusContinuation) in
            deleteThesaurus(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Gets information about a Amazon Kendra data source.</p>
    func describeDataSource(input: DescribeDataSourceInput) async throws -> DescribeDataSourceOutputResponse
    {
        typealias describeDataSourceContinuation = CheckedContinuation<DescribeDataSourceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeDataSourceContinuation) in
            describeDataSource(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Gets information about an FAQ list.</p>
    func describeFaq(input: DescribeFaqInput) async throws -> DescribeFaqOutputResponse
    {
        typealias describeFaqContinuation = CheckedContinuation<DescribeFaqOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeFaqContinuation) in
            describeFaq(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Describes an existing Amazon Kendra index</p>
    func describeIndex(input: DescribeIndexInput) async throws -> DescribeIndexOutputResponse
    {
        typealias describeIndexContinuation = CheckedContinuation<DescribeIndexOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeIndexContinuation) in
            describeIndex(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Describes a block list used for query suggestions for an index.</p>
    ///         <p>This is used to check the current settings that are applied to a
    ///             block list.</p>
    func describeQuerySuggestionsBlockList(input: DescribeQuerySuggestionsBlockListInput) async throws -> DescribeQuerySuggestionsBlockListOutputResponse
    {
        typealias describeQuerySuggestionsBlockListContinuation = CheckedContinuation<DescribeQuerySuggestionsBlockListOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeQuerySuggestionsBlockListContinuation) in
            describeQuerySuggestionsBlockList(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Describes the settings of query suggestions for an index.</p>
    ///         <p>This is used to check the current settings applied
    ///             to query suggestions.</p>
    func describeQuerySuggestionsConfig(input: DescribeQuerySuggestionsConfigInput) async throws -> DescribeQuerySuggestionsConfigOutputResponse
    {
        typealias describeQuerySuggestionsConfigContinuation = CheckedContinuation<DescribeQuerySuggestionsConfigOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeQuerySuggestionsConfigContinuation) in
            describeQuerySuggestionsConfig(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Describes an existing Amazon Kendra thesaurus.</p>
    func describeThesaurus(input: DescribeThesaurusInput) async throws -> DescribeThesaurusOutputResponse
    {
        typealias describeThesaurusContinuation = CheckedContinuation<DescribeThesaurusOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeThesaurusContinuation) in
            describeThesaurus(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Fetches the queries that are suggested to your users.</p>
    func getQuerySuggestions(input: GetQuerySuggestionsInput) async throws -> GetQuerySuggestionsOutputResponse
    {
        typealias getQuerySuggestionsContinuation = CheckedContinuation<GetQuerySuggestionsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getQuerySuggestionsContinuation) in
            getQuerySuggestions(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Gets statistics about synchronizing Amazon Kendra with a data
    ///       source.</p>
    func listDataSourceSyncJobs(input: ListDataSourceSyncJobsInput) async throws -> ListDataSourceSyncJobsOutputResponse
    {
        typealias listDataSourceSyncJobsContinuation = CheckedContinuation<ListDataSourceSyncJobsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listDataSourceSyncJobsContinuation) in
            listDataSourceSyncJobs(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Lists the data sources that you have created.</p>
    func listDataSources(input: ListDataSourcesInput) async throws -> ListDataSourcesOutputResponse
    {
        typealias listDataSourcesContinuation = CheckedContinuation<ListDataSourcesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listDataSourcesContinuation) in
            listDataSources(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Gets a list of FAQ lists associated with an index.</p>
    func listFaqs(input: ListFaqsInput) async throws -> ListFaqsOutputResponse
    {
        typealias listFaqsContinuation = CheckedContinuation<ListFaqsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listFaqsContinuation) in
            listFaqs(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Lists the Amazon Kendra indexes that you have created.</p>
    func listIndices(input: ListIndicesInput) async throws -> ListIndicesOutputResponse
    {
        typealias listIndicesContinuation = CheckedContinuation<ListIndicesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listIndicesContinuation) in
            listIndices(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Lists the block lists used for query suggestions for an index.</p>
    ///         <p>For information on the current quota limits for block lists, see
    ///             <a href="https://docs.aws.amazon.com/kendra/latest/dg/quotas.html">Quotas
    ///                 for Amazon Kendra</a>.</p>
    func listQuerySuggestionsBlockLists(input: ListQuerySuggestionsBlockListsInput) async throws -> ListQuerySuggestionsBlockListsOutputResponse
    {
        typealias listQuerySuggestionsBlockListsContinuation = CheckedContinuation<ListQuerySuggestionsBlockListsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listQuerySuggestionsBlockListsContinuation) in
            listQuerySuggestionsBlockLists(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Gets a list of tags associated with a specified resource. Indexes,
    ///       FAQs, and data sources can have tags associated with them.</p>
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    {
        typealias listTagsForResourceContinuation = CheckedContinuation<ListTagsForResourceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listTagsForResourceContinuation) in
            listTagsForResource(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Lists the Amazon Kendra thesauri associated with an index.</p>
    func listThesauri(input: ListThesauriInput) async throws -> ListThesauriOutputResponse
    {
        typealias listThesauriContinuation = CheckedContinuation<ListThesauriOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listThesauriContinuation) in
            listThesauri(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Searches an active index. Use this API to search your documents
    ///          using query. The <code>Query</code> operation enables to do faceted
    ///          search and to filter results based on document attributes.</p>
    ///          <p>It also enables you to provide user context that Amazon Kendra uses
    ///          to enforce document access control in the search results. </p>
    ///          <p>Amazon Kendra searches your index for text content and question and
    ///          answer (FAQ) content. By default the response contains three types of
    ///          results.</p>
    ///          <ul>
    ///             <li>
    ///                <p>Relevant passages</p>
    ///             </li>
    ///             <li>
    ///                <p>Matching FAQs</p>
    ///             </li>
    ///             <li>
    ///                <p>Relevant documents</p>
    ///             </li>
    ///          </ul>
    ///          <p>You can specify that the query return only one type of result using
    ///          the <code>QueryResultTypeConfig</code> parameter.</p>
    ///          <p>Each query returns the 100 most relevant results. </p>
    func query(input: QueryInput) async throws -> QueryOutputResponse
    {
        typealias queryContinuation = CheckedContinuation<QueryOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: queryContinuation) in
            query(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Starts a synchronization job for a data source. If a synchronization
    ///       job is already in progress, Amazon Kendra returns a
    ///         <code>ResourceInUseException</code> exception.</p>
    func startDataSourceSyncJob(input: StartDataSourceSyncJobInput) async throws -> StartDataSourceSyncJobOutputResponse
    {
        typealias startDataSourceSyncJobContinuation = CheckedContinuation<StartDataSourceSyncJobOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: startDataSourceSyncJobContinuation) in
            startDataSourceSyncJob(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Stops a running synchronization job. You can't stop a scheduled
    ///       synchronization job.</p>
    func stopDataSourceSyncJob(input: StopDataSourceSyncJobInput) async throws -> StopDataSourceSyncJobOutputResponse
    {
        typealias stopDataSourceSyncJobContinuation = CheckedContinuation<StopDataSourceSyncJobOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: stopDataSourceSyncJobContinuation) in
            stopDataSourceSyncJob(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Enables you to provide feedback to Amazon Kendra to improve the
    ///             performance of the service. </p>
    func submitFeedback(input: SubmitFeedbackInput) async throws -> SubmitFeedbackOutputResponse
    {
        typealias submitFeedbackContinuation = CheckedContinuation<SubmitFeedbackOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: submitFeedbackContinuation) in
            submitFeedback(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Adds the specified tag to the specified index, FAQ, or data source
    ///       resource. If the tag already exists, the existing value is replaced with
    ///       the new value.</p>
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    {
        typealias tagResourceContinuation = CheckedContinuation<TagResourceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: tagResourceContinuation) in
            tagResource(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Removes a tag from an index, FAQ, or a data source.</p>
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    {
        typealias untagResourceContinuation = CheckedContinuation<UntagResourceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: untagResourceContinuation) in
            untagResource(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Updates an existing Amazon Kendra data source.</p>
    func updateDataSource(input: UpdateDataSourceInput) async throws -> UpdateDataSourceOutputResponse
    {
        typealias updateDataSourceContinuation = CheckedContinuation<UpdateDataSourceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateDataSourceContinuation) in
            updateDataSource(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Updates an existing Amazon Kendra index.</p>
    func updateIndex(input: UpdateIndexInput) async throws -> UpdateIndexOutputResponse
    {
        typealias updateIndexContinuation = CheckedContinuation<UpdateIndexOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateIndexContinuation) in
            updateIndex(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Updates a block list used for query suggestions for an index.</p>
    ///         <p>Updates to a block list might not take effect right away. Amazon Kendra
    ///             needs to refresh the entire suggestions list to apply any updates to the
    ///             block list. Other changes not related to the block list apply immediately.</p>
    ///         <p>If a block list is updating, then you need to wait for the first update to
    ///             finish before submitting another update.</p>
    ///         <p>Amazon Kendra supports partial updates, so you only need to provide the fields
    ///             you want to update.</p>
    func updateQuerySuggestionsBlockList(input: UpdateQuerySuggestionsBlockListInput) async throws -> UpdateQuerySuggestionsBlockListOutputResponse
    {
        typealias updateQuerySuggestionsBlockListContinuation = CheckedContinuation<UpdateQuerySuggestionsBlockListOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateQuerySuggestionsBlockListContinuation) in
            updateQuerySuggestionsBlockList(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Updates the settings of query suggestions for an index.</p>
    ///         <p>Amazon Kendra supports partial updates, so you only need to provide
    ///             the fields you want to update.</p>
    ///         <p>If an update is currently processing (i.e. 'happening'), you
    ///             need to wait for the update to finish before making another update.</p>
    ///         <p>Updates to query suggestions settings might not take effect right away.
    ///             The time for your updated settings to take effect depends on the updates
    ///             made and the number of search queries in your index.</p>
    ///         <p>You can still enable/disable query suggestions at any time.</p>
    func updateQuerySuggestionsConfig(input: UpdateQuerySuggestionsConfigInput) async throws -> UpdateQuerySuggestionsConfigOutputResponse
    {
        typealias updateQuerySuggestionsConfigContinuation = CheckedContinuation<UpdateQuerySuggestionsConfigOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateQuerySuggestionsConfigContinuation) in
            updateQuerySuggestionsConfig(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Updates a thesaurus file associated with an index.</p>
    func updateThesaurus(input: UpdateThesaurusInput) async throws -> UpdateThesaurusOutputResponse
    {
        typealias updateThesaurusContinuation = CheckedContinuation<UpdateThesaurusOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateThesaurusContinuation) in
            updateThesaurus(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

}
#endif
