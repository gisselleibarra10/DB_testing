// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// The control plane for Amazon QLDB
public protocol QldbClientProtocol {
    /// Ends a given Amazon QLDB journal stream. Before a stream can be canceled, its current status must be ACTIVE. You can't restart a stream after you cancel it. Canceled QLDB stream resources are subject to a 7-day retention period, so they are automatically deleted after this limit expires.
    func cancelJournalKinesisStream(input: CancelJournalKinesisStreamInput) async throws -> CancelJournalKinesisStreamOutputResponse
    /// Creates a new ledger in your Amazon Web Services account in the current Region.
    func createLedger(input: CreateLedgerInput) async throws -> CreateLedgerOutputResponse
    /// Deletes a ledger and all of its contents. This action is irreversible. If deletion protection is enabled, you must first disable it before you can delete the ledger. You can disable it by calling the UpdateLedger operation to set the flag to false.
    func deleteLedger(input: DeleteLedgerInput) async throws -> DeleteLedgerOutputResponse
    /// Returns detailed information about a given Amazon QLDB journal stream. The output includes the Amazon Resource Name (ARN), stream name, current status, creation time, and the parameters of the original stream creation request. This action does not return any expired journal streams. For more information, see [Expiration for terminal streams](https://docs.aws.amazon.com/qldb/latest/developerguide/streams.create.html#streams.create.states.expiration) in the Amazon QLDB Developer Guide.
    func describeJournalKinesisStream(input: DescribeJournalKinesisStreamInput) async throws -> DescribeJournalKinesisStreamOutputResponse
    /// Returns information about a journal export job, including the ledger name, export ID, creation time, current status, and the parameters of the original export creation request. This action does not return any expired export jobs. For more information, see [Export job expiration](https://docs.aws.amazon.com/qldb/latest/developerguide/export-journal.request.html#export-journal.request.expiration) in the Amazon QLDB Developer Guide. If the export job with the given ExportId doesn't exist, then throws ResourceNotFoundException. If the ledger with the given Name doesn't exist, then throws ResourceNotFoundException.
    func describeJournalS3Export(input: DescribeJournalS3ExportInput) async throws -> DescribeJournalS3ExportOutputResponse
    /// Returns information about a ledger, including its state, permissions mode, encryption at rest settings, and when it was created.
    func describeLedger(input: DescribeLedgerInput) async throws -> DescribeLedgerOutputResponse
    /// Exports journal contents within a date and time range from a ledger into a specified Amazon Simple Storage Service (Amazon S3) bucket. A journal export job can write the data objects in either the text or binary representation of Amazon Ion format, or in JSON Lines text format. In JSON Lines format, each journal block in the exported data object is a valid JSON object that is delimited by a newline. You can use this format to easily integrate JSON exports with analytics tools such as Glue and Amazon Athena because these services can parse newline-delimited JSON automatically. For more information about the format, see [JSON Lines](https://jsonlines.org/). If the ledger with the given Name doesn't exist, then throws ResourceNotFoundException. If the ledger with the given Name is in CREATING status, then throws ResourcePreconditionNotMetException. You can initiate up to two concurrent journal export requests for each ledger. Beyond this limit, journal export requests throw LimitExceededException.
    func exportJournalToS3(input: ExportJournalToS3Input) async throws -> ExportJournalToS3OutputResponse
    /// Returns a block object at a specified address in a journal. Also returns a proof of the specified block for verification if DigestTipAddress is provided. For information about the data contents in a block, see [Journal contents](https://docs.aws.amazon.com/qldb/latest/developerguide/journal-contents.html) in the Amazon QLDB Developer Guide. If the specified ledger doesn't exist or is in DELETING status, then throws ResourceNotFoundException. If the specified ledger is in CREATING status, then throws ResourcePreconditionNotMetException. If no block exists with the specified address, then throws InvalidParameterException.
    func getBlock(input: GetBlockInput) async throws -> GetBlockOutputResponse
    /// Returns the digest of a ledger at the latest committed block in the journal. The response includes a 256-bit hash value and a block address.
    func getDigest(input: GetDigestInput) async throws -> GetDigestOutputResponse
    /// Returns a revision data object for a specified document ID and block address. Also returns a proof of the specified revision for verification if DigestTipAddress is provided.
    func getRevision(input: GetRevisionInput) async throws -> GetRevisionOutputResponse
    /// Returns an array of all Amazon QLDB journal stream descriptors for a given ledger. The output of each stream descriptor includes the same details that are returned by DescribeJournalKinesisStream. This action does not return any expired journal streams. For more information, see [Expiration for terminal streams](https://docs.aws.amazon.com/qldb/latest/developerguide/streams.create.html#streams.create.states.expiration) in the Amazon QLDB Developer Guide. This action returns a maximum of MaxResults items. It is paginated so that you can retrieve all the items by calling ListJournalKinesisStreamsForLedger multiple times.
    func listJournalKinesisStreamsForLedger(input: ListJournalKinesisStreamsForLedgerInput) async throws -> ListJournalKinesisStreamsForLedgerOutputResponse
    /// Returns an array of journal export job descriptions for all ledgers that are associated with the current Amazon Web Services account and Region. This action returns a maximum of MaxResults items, and is paginated so that you can retrieve all the items by calling ListJournalS3Exports multiple times. This action does not return any expired export jobs. For more information, see [Export job expiration](https://docs.aws.amazon.com/qldb/latest/developerguide/export-journal.request.html#export-journal.request.expiration) in the Amazon QLDB Developer Guide.
    func listJournalS3Exports(input: ListJournalS3ExportsInput) async throws -> ListJournalS3ExportsOutputResponse
    /// Returns an array of journal export job descriptions for a specified ledger. This action returns a maximum of MaxResults items, and is paginated so that you can retrieve all the items by calling ListJournalS3ExportsForLedger multiple times. This action does not return any expired export jobs. For more information, see [Export job expiration](https://docs.aws.amazon.com/qldb/latest/developerguide/export-journal.request.html#export-journal.request.expiration) in the Amazon QLDB Developer Guide.
    func listJournalS3ExportsForLedger(input: ListJournalS3ExportsForLedgerInput) async throws -> ListJournalS3ExportsForLedgerOutputResponse
    /// Returns an array of ledger summaries that are associated with the current Amazon Web Services account and Region. This action returns a maximum of 100 items and is paginated so that you can retrieve all the items by calling ListLedgers multiple times.
    func listLedgers(input: ListLedgersInput) async throws -> ListLedgersOutputResponse
    /// Returns all tags for a specified Amazon QLDB resource.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Creates a journal stream for a given Amazon QLDB ledger. The stream captures every document revision that is committed to the ledger's journal and delivers the data to a specified Amazon Kinesis Data Streams resource.
    func streamJournalToKinesis(input: StreamJournalToKinesisInput) async throws -> StreamJournalToKinesisOutputResponse
    /// Adds one or more tags to a specified Amazon QLDB resource. A resource can have up to 50 tags. If you try to create more than 50 tags for a resource, your request fails and returns an error.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Removes one or more tags from a specified Amazon QLDB resource. You can specify up to 50 tag keys to remove.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// Updates properties on a ledger.
    func updateLedger(input: UpdateLedgerInput) async throws -> UpdateLedgerOutputResponse
    /// Updates the permissions mode of a ledger. Before you switch to the STANDARD permissions mode, you must first create all required IAM policies and table tags to avoid disruption to your users. To learn more, see [Migrating to the standard permissions mode](https://docs.aws.amazon.com/qldb/latest/developerguide/ledger-management.basics.html#ledger-mgmt.basics.update-permissions.migrating) in the Amazon QLDB Developer Guide.
    func updateLedgerPermissionsMode(input: UpdateLedgerPermissionsModeInput) async throws -> UpdateLedgerPermissionsModeOutputResponse
}

public enum QldbClientTypes {}
