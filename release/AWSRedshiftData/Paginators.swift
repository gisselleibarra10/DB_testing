// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime


/// Paginate over `[DescribeTableOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[DescribeTableInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `DescribeTableOutputResponse`
extension RedshiftDataClient {
    public func describeTablePaginated(input: DescribeTableInput) -> ClientRuntime.PaginatorSequence<DescribeTableInput, DescribeTableOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeTableInput, DescribeTableOutputResponse>(input: input, inputKey: \DescribeTableInput.nextToken, outputKey: \DescribeTableOutputResponse.nextToken, paginationFunction: self.describeTable(input:))
    }
}

extension DescribeTableInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeTableInput {
        return DescribeTableInput(
            clusterIdentifier: self.clusterIdentifier,
            connectedDatabase: self.connectedDatabase,
            database: self.database,
            dbUser: self.dbUser,
            maxResults: self.maxResults,
            nextToken: token,
            schema: self.schema,
            secretArn: self.secretArn,
            table: self.table,
            workgroupName: self.workgroupName
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `describeTablePaginated`
/// to access the nested member `[RedshiftDataClientTypes.ColumnMetadata]`
/// - Returns: `[RedshiftDataClientTypes.ColumnMetadata]`
extension PaginatorSequence where Input == DescribeTableInput, Output == DescribeTableOutputResponse {
    public func columnList() async throws -> [RedshiftDataClientTypes.ColumnMetadata] {
        return try await self.asyncCompactMap { item in item.columnList }
    }
}

/// Paginate over `[GetStatementResultOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[GetStatementResultInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `GetStatementResultOutputResponse`
extension RedshiftDataClient {
    public func getStatementResultPaginated(input: GetStatementResultInput) -> ClientRuntime.PaginatorSequence<GetStatementResultInput, GetStatementResultOutputResponse> {
        return ClientRuntime.PaginatorSequence<GetStatementResultInput, GetStatementResultOutputResponse>(input: input, inputKey: \GetStatementResultInput.nextToken, outputKey: \GetStatementResultOutputResponse.nextToken, paginationFunction: self.getStatementResult(input:))
    }
}

extension GetStatementResultInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetStatementResultInput {
        return GetStatementResultInput(
            id: self.id,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `getStatementResultPaginated`
/// to access the nested member `[[RedshiftDataClientTypes.Field]]`
/// - Returns: `[[RedshiftDataClientTypes.Field]]`
extension PaginatorSequence where Input == GetStatementResultInput, Output == GetStatementResultOutputResponse {
    public func records() async throws -> [[RedshiftDataClientTypes.Field]] {
        return try await self.asyncCompactMap { item in item.records }
    }
}

/// Paginate over `[ListDatabasesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListDatabasesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListDatabasesOutputResponse`
extension RedshiftDataClient {
    public func listDatabasesPaginated(input: ListDatabasesInput) -> ClientRuntime.PaginatorSequence<ListDatabasesInput, ListDatabasesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListDatabasesInput, ListDatabasesOutputResponse>(input: input, inputKey: \ListDatabasesInput.nextToken, outputKey: \ListDatabasesOutputResponse.nextToken, paginationFunction: self.listDatabases(input:))
    }
}

extension ListDatabasesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListDatabasesInput {
        return ListDatabasesInput(
            clusterIdentifier: self.clusterIdentifier,
            database: self.database,
            dbUser: self.dbUser,
            maxResults: self.maxResults,
            nextToken: token,
            secretArn: self.secretArn,
            workgroupName: self.workgroupName
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listDatabasesPaginated`
/// to access the nested member `[Swift.String]`
/// - Returns: `[Swift.String]`
extension PaginatorSequence where Input == ListDatabasesInput, Output == ListDatabasesOutputResponse {
    public func databases() async throws -> [Swift.String] {
        return try await self.asyncCompactMap { item in item.databases }
    }
}

/// Paginate over `[ListSchemasOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListSchemasInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListSchemasOutputResponse`
extension RedshiftDataClient {
    public func listSchemasPaginated(input: ListSchemasInput) -> ClientRuntime.PaginatorSequence<ListSchemasInput, ListSchemasOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListSchemasInput, ListSchemasOutputResponse>(input: input, inputKey: \ListSchemasInput.nextToken, outputKey: \ListSchemasOutputResponse.nextToken, paginationFunction: self.listSchemas(input:))
    }
}

extension ListSchemasInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListSchemasInput {
        return ListSchemasInput(
            clusterIdentifier: self.clusterIdentifier,
            connectedDatabase: self.connectedDatabase,
            database: self.database,
            dbUser: self.dbUser,
            maxResults: self.maxResults,
            nextToken: token,
            schemaPattern: self.schemaPattern,
            secretArn: self.secretArn,
            workgroupName: self.workgroupName
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listSchemasPaginated`
/// to access the nested member `[Swift.String]`
/// - Returns: `[Swift.String]`
extension PaginatorSequence where Input == ListSchemasInput, Output == ListSchemasOutputResponse {
    public func schemas() async throws -> [Swift.String] {
        return try await self.asyncCompactMap { item in item.schemas }
    }
}

/// Paginate over `[ListStatementsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListStatementsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListStatementsOutputResponse`
extension RedshiftDataClient {
    public func listStatementsPaginated(input: ListStatementsInput) -> ClientRuntime.PaginatorSequence<ListStatementsInput, ListStatementsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListStatementsInput, ListStatementsOutputResponse>(input: input, inputKey: \ListStatementsInput.nextToken, outputKey: \ListStatementsOutputResponse.nextToken, paginationFunction: self.listStatements(input:))
    }
}

extension ListStatementsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListStatementsInput {
        return ListStatementsInput(
            maxResults: self.maxResults,
            nextToken: token,
            roleLevel: self.roleLevel,
            statementName: self.statementName,
            status: self.status
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listStatementsPaginated`
/// to access the nested member `[RedshiftDataClientTypes.StatementData]`
/// - Returns: `[RedshiftDataClientTypes.StatementData]`
extension PaginatorSequence where Input == ListStatementsInput, Output == ListStatementsOutputResponse {
    public func statements() async throws -> [RedshiftDataClientTypes.StatementData] {
        return try await self.asyncCompactMap { item in item.statements }
    }
}

/// Paginate over `[ListTablesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListTablesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListTablesOutputResponse`
extension RedshiftDataClient {
    public func listTablesPaginated(input: ListTablesInput) -> ClientRuntime.PaginatorSequence<ListTablesInput, ListTablesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListTablesInput, ListTablesOutputResponse>(input: input, inputKey: \ListTablesInput.nextToken, outputKey: \ListTablesOutputResponse.nextToken, paginationFunction: self.listTables(input:))
    }
}

extension ListTablesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListTablesInput {
        return ListTablesInput(
            clusterIdentifier: self.clusterIdentifier,
            connectedDatabase: self.connectedDatabase,
            database: self.database,
            dbUser: self.dbUser,
            maxResults: self.maxResults,
            nextToken: token,
            schemaPattern: self.schemaPattern,
            secretArn: self.secretArn,
            tablePattern: self.tablePattern,
            workgroupName: self.workgroupName
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listTablesPaginated`
/// to access the nested member `[RedshiftDataClientTypes.TableMember]`
/// - Returns: `[RedshiftDataClientTypes.TableMember]`
extension PaginatorSequence where Input == ListTablesInput, Output == ListTablesOutputResponse {
    public func tables() async throws -> [RedshiftDataClientTypes.TableMember] {
        return try await self.asyncCompactMap { item in item.tables }
    }
}
