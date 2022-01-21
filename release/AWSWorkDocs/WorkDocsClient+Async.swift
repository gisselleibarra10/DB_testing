// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5) && canImport(_Concurrency)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension WorkDocsClient {
    /// Aborts the upload of the specified document version that was previously initiated by [InitiateDocumentVersionUpload]. The client should make this call only when it no longer intends to upload the document version, or fails to do so.
    func abortDocumentVersionUpload(input: AbortDocumentVersionUploadInput) async throws -> AbortDocumentVersionUploadOutputResponse
    {
        typealias abortDocumentVersionUploadContinuation = CheckedContinuation<AbortDocumentVersionUploadOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: abortDocumentVersionUploadContinuation) in
            abortDocumentVersionUpload(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Activates the specified user. Only active users can access Amazon WorkDocs.
    func activateUser(input: ActivateUserInput) async throws -> ActivateUserOutputResponse
    {
        typealias activateUserContinuation = CheckedContinuation<ActivateUserOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: activateUserContinuation) in
            activateUser(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a set of permissions for the specified folder or document. The resource permissions are overwritten if the principals already have different permissions.
    func addResourcePermissions(input: AddResourcePermissionsInput) async throws -> AddResourcePermissionsOutputResponse
    {
        typealias addResourcePermissionsContinuation = CheckedContinuation<AddResourcePermissionsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: addResourcePermissionsContinuation) in
            addResourcePermissions(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Adds a new comment to the specified document version.
    func createComment(input: CreateCommentInput) async throws -> CreateCommentOutputResponse
    {
        typealias createCommentContinuation = CheckedContinuation<CreateCommentOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createCommentContinuation) in
            createComment(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Adds one or more custom properties to the specified resource (a folder, document, or version).
    func createCustomMetadata(input: CreateCustomMetadataInput) async throws -> CreateCustomMetadataOutputResponse
    {
        typealias createCustomMetadataContinuation = CheckedContinuation<CreateCustomMetadataOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createCustomMetadataContinuation) in
            createCustomMetadata(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a folder with the specified name and parent folder.
    func createFolder(input: CreateFolderInput) async throws -> CreateFolderOutputResponse
    {
        typealias createFolderContinuation = CheckedContinuation<CreateFolderOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createFolderContinuation) in
            createFolder(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Adds the specified list of labels to the given resource (a document or folder)
    func createLabels(input: CreateLabelsInput) async throws -> CreateLabelsOutputResponse
    {
        typealias createLabelsContinuation = CheckedContinuation<CreateLabelsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createLabelsContinuation) in
            createLabels(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Configure Amazon WorkDocs to use Amazon SNS notifications. The endpoint receives a confirmation message, and must confirm the subscription. For more information, see [Subscribe to Notifications](https://docs.aws.amazon.com/workdocs/latest/developerguide/subscribe-notifications.html) in the Amazon WorkDocs Developer Guide.
    func createNotificationSubscription(input: CreateNotificationSubscriptionInput) async throws -> CreateNotificationSubscriptionOutputResponse
    {
        typealias createNotificationSubscriptionContinuation = CheckedContinuation<CreateNotificationSubscriptionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createNotificationSubscriptionContinuation) in
            createNotificationSubscription(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a user in a Simple AD or Microsoft AD directory. The status of a newly created user is "ACTIVE". New users can access Amazon WorkDocs.
    func createUser(input: CreateUserInput) async throws -> CreateUserOutputResponse
    {
        typealias createUserContinuation = CheckedContinuation<CreateUserOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createUserContinuation) in
            createUser(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deactivates the specified user, which revokes the user's access to Amazon WorkDocs.
    func deactivateUser(input: DeactivateUserInput) async throws -> DeactivateUserOutputResponse
    {
        typealias deactivateUserContinuation = CheckedContinuation<DeactivateUserOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deactivateUserContinuation) in
            deactivateUser(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes the specified comment from the document version.
    func deleteComment(input: DeleteCommentInput) async throws -> DeleteCommentOutputResponse
    {
        typealias deleteCommentContinuation = CheckedContinuation<DeleteCommentOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteCommentContinuation) in
            deleteComment(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes custom metadata from the specified resource.
    func deleteCustomMetadata(input: DeleteCustomMetadataInput) async throws -> DeleteCustomMetadataOutputResponse
    {
        typealias deleteCustomMetadataContinuation = CheckedContinuation<DeleteCustomMetadataOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteCustomMetadataContinuation) in
            deleteCustomMetadata(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Permanently deletes the specified document and its associated metadata.
    func deleteDocument(input: DeleteDocumentInput) async throws -> DeleteDocumentOutputResponse
    {
        typealias deleteDocumentContinuation = CheckedContinuation<DeleteDocumentOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteDocumentContinuation) in
            deleteDocument(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Permanently deletes the specified folder and its contents.
    func deleteFolder(input: DeleteFolderInput) async throws -> DeleteFolderOutputResponse
    {
        typealias deleteFolderContinuation = CheckedContinuation<DeleteFolderOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteFolderContinuation) in
            deleteFolder(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes the contents of the specified folder.
    func deleteFolderContents(input: DeleteFolderContentsInput) async throws -> DeleteFolderContentsOutputResponse
    {
        typealias deleteFolderContentsContinuation = CheckedContinuation<DeleteFolderContentsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteFolderContentsContinuation) in
            deleteFolderContents(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes the specified list of labels from a resource.
    func deleteLabels(input: DeleteLabelsInput) async throws -> DeleteLabelsOutputResponse
    {
        typealias deleteLabelsContinuation = CheckedContinuation<DeleteLabelsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteLabelsContinuation) in
            deleteLabels(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes the specified subscription from the specified organization.
    func deleteNotificationSubscription(input: DeleteNotificationSubscriptionInput) async throws -> DeleteNotificationSubscriptionOutputResponse
    {
        typealias deleteNotificationSubscriptionContinuation = CheckedContinuation<DeleteNotificationSubscriptionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteNotificationSubscriptionContinuation) in
            deleteNotificationSubscription(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes the specified user from a Simple AD or Microsoft AD directory.
    func deleteUser(input: DeleteUserInput) async throws -> DeleteUserOutputResponse
    {
        typealias deleteUserContinuation = CheckedContinuation<DeleteUserOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteUserContinuation) in
            deleteUser(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Describes the user activities in a specified time period.
    func describeActivities(input: DescribeActivitiesInput) async throws -> DescribeActivitiesOutputResponse
    {
        typealias describeActivitiesContinuation = CheckedContinuation<DescribeActivitiesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeActivitiesContinuation) in
            describeActivities(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// List all the comments for the specified document version.
    func describeComments(input: DescribeCommentsInput) async throws -> DescribeCommentsOutputResponse
    {
        typealias describeCommentsContinuation = CheckedContinuation<DescribeCommentsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeCommentsContinuation) in
            describeComments(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves the document versions for the specified document. By default, only active versions are returned.
    func describeDocumentVersions(input: DescribeDocumentVersionsInput) async throws -> DescribeDocumentVersionsOutputResponse
    {
        typealias describeDocumentVersionsContinuation = CheckedContinuation<DescribeDocumentVersionsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeDocumentVersionsContinuation) in
            describeDocumentVersions(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Describes the contents of the specified folder, including its documents and subfolders. By default, Amazon WorkDocs returns the first 100 active document and folder metadata items. If there are more results, the response includes a marker that you can use to request the next set of results. You can also request initialized documents.
    func describeFolderContents(input: DescribeFolderContentsInput) async throws -> DescribeFolderContentsOutputResponse
    {
        typealias describeFolderContentsContinuation = CheckedContinuation<DescribeFolderContentsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeFolderContentsContinuation) in
            describeFolderContents(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Describes the groups specified by the query. Groups are defined by the underlying Active Directory.
    func describeGroups(input: DescribeGroupsInput) async throws -> DescribeGroupsOutputResponse
    {
        typealias describeGroupsContinuation = CheckedContinuation<DescribeGroupsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeGroupsContinuation) in
            describeGroups(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists the specified notification subscriptions.
    func describeNotificationSubscriptions(input: DescribeNotificationSubscriptionsInput) async throws -> DescribeNotificationSubscriptionsOutputResponse
    {
        typealias describeNotificationSubscriptionsContinuation = CheckedContinuation<DescribeNotificationSubscriptionsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeNotificationSubscriptionsContinuation) in
            describeNotificationSubscriptions(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Describes the permissions of a specified resource.
    func describeResourcePermissions(input: DescribeResourcePermissionsInput) async throws -> DescribeResourcePermissionsOutputResponse
    {
        typealias describeResourcePermissionsContinuation = CheckedContinuation<DescribeResourcePermissionsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeResourcePermissionsContinuation) in
            describeResourcePermissions(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Describes the current user's special folders; the RootFolder and the RecycleBin. RootFolder is the root of user's files and folders and RecycleBin is the root of recycled items. This is not a valid action for SigV4 (administrative API) clients. This action requires an authentication token. To get an authentication token, register an application with Amazon WorkDocs. For more information, see [Authentication and Access Control for User Applications](https://docs.aws.amazon.com/workdocs/latest/developerguide/wd-auth-user.html) in the Amazon WorkDocs Developer Guide.
    func describeRootFolders(input: DescribeRootFoldersInput) async throws -> DescribeRootFoldersOutputResponse
    {
        typealias describeRootFoldersContinuation = CheckedContinuation<DescribeRootFoldersOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeRootFoldersContinuation) in
            describeRootFolders(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Describes the specified users. You can describe all users or filter the results (for example, by status or organization). By default, Amazon WorkDocs returns the first 24 active or pending users. If there are more results, the response includes a marker that you can use to request the next set of results.
    func describeUsers(input: DescribeUsersInput) async throws -> DescribeUsersOutputResponse
    {
        typealias describeUsersContinuation = CheckedContinuation<DescribeUsersOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeUsersContinuation) in
            describeUsers(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves details of the current user for whom the authentication token was generated. This is not a valid action for SigV4 (administrative API) clients. This action requires an authentication token. To get an authentication token, register an application with Amazon WorkDocs. For more information, see [Authentication and Access Control for User Applications](https://docs.aws.amazon.com/workdocs/latest/developerguide/wd-auth-user.html) in the Amazon WorkDocs Developer Guide.
    func getCurrentUser(input: GetCurrentUserInput) async throws -> GetCurrentUserOutputResponse
    {
        typealias getCurrentUserContinuation = CheckedContinuation<GetCurrentUserOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getCurrentUserContinuation) in
            getCurrentUser(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves details of a document.
    func getDocument(input: GetDocumentInput) async throws -> GetDocumentOutputResponse
    {
        typealias getDocumentContinuation = CheckedContinuation<GetDocumentOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getDocumentContinuation) in
            getDocument(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves the path information (the hierarchy from the root folder) for the requested document. By default, Amazon WorkDocs returns a maximum of 100 levels upwards from the requested document and only includes the IDs of the parent folders in the path. You can limit the maximum number of levels. You can also request the names of the parent folders.
    func getDocumentPath(input: GetDocumentPathInput) async throws -> GetDocumentPathOutputResponse
    {
        typealias getDocumentPathContinuation = CheckedContinuation<GetDocumentPathOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getDocumentPathContinuation) in
            getDocumentPath(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves version metadata for the specified document.
    func getDocumentVersion(input: GetDocumentVersionInput) async throws -> GetDocumentVersionOutputResponse
    {
        typealias getDocumentVersionContinuation = CheckedContinuation<GetDocumentVersionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getDocumentVersionContinuation) in
            getDocumentVersion(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves the metadata of the specified folder.
    func getFolder(input: GetFolderInput) async throws -> GetFolderOutputResponse
    {
        typealias getFolderContinuation = CheckedContinuation<GetFolderOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getFolderContinuation) in
            getFolder(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves the path information (the hierarchy from the root folder) for the specified folder. By default, Amazon WorkDocs returns a maximum of 100 levels upwards from the requested folder and only includes the IDs of the parent folders in the path. You can limit the maximum number of levels. You can also request the parent folder names.
    func getFolderPath(input: GetFolderPathInput) async throws -> GetFolderPathOutputResponse
    {
        typealias getFolderPathContinuation = CheckedContinuation<GetFolderPathOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getFolderPathContinuation) in
            getFolderPath(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves a collection of resources, including folders and documents. The only CollectionType supported is SHARED_WITH_ME.
    func getResources(input: GetResourcesInput) async throws -> GetResourcesOutputResponse
    {
        typealias getResourcesContinuation = CheckedContinuation<GetResourcesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getResourcesContinuation) in
            getResources(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a new document object and version object. The client specifies the parent folder ID and name of the document to upload. The ID is optionally specified when creating a new version of an existing document. This is the first step to upload a document. Next, upload the document to the URL returned from the call, and then call [UpdateDocumentVersion]. To cancel the document upload, call [AbortDocumentVersionUpload].
    func initiateDocumentVersionUpload(input: InitiateDocumentVersionUploadInput) async throws -> InitiateDocumentVersionUploadOutputResponse
    {
        typealias initiateDocumentVersionUploadContinuation = CheckedContinuation<InitiateDocumentVersionUploadOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: initiateDocumentVersionUploadContinuation) in
            initiateDocumentVersionUpload(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Removes all the permissions from the specified resource.
    func removeAllResourcePermissions(input: RemoveAllResourcePermissionsInput) async throws -> RemoveAllResourcePermissionsOutputResponse
    {
        typealias removeAllResourcePermissionsContinuation = CheckedContinuation<RemoveAllResourcePermissionsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: removeAllResourcePermissionsContinuation) in
            removeAllResourcePermissions(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Removes the permission for the specified principal from the specified resource.
    func removeResourcePermission(input: RemoveResourcePermissionInput) async throws -> RemoveResourcePermissionOutputResponse
    {
        typealias removeResourcePermissionContinuation = CheckedContinuation<RemoveResourcePermissionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: removeResourcePermissionContinuation) in
            removeResourcePermission(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Updates the specified attributes of a document. The user must have access to both the document and its parent folder, if applicable.
    func updateDocument(input: UpdateDocumentInput) async throws -> UpdateDocumentOutputResponse
    {
        typealias updateDocumentContinuation = CheckedContinuation<UpdateDocumentOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateDocumentContinuation) in
            updateDocument(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Changes the status of the document version to ACTIVE. Amazon WorkDocs also sets its document container to ACTIVE. This is the last step in a document upload, after the client uploads the document to an S3-presigned URL returned by [InitiateDocumentVersionUpload].
    func updateDocumentVersion(input: UpdateDocumentVersionInput) async throws -> UpdateDocumentVersionOutputResponse
    {
        typealias updateDocumentVersionContinuation = CheckedContinuation<UpdateDocumentVersionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateDocumentVersionContinuation) in
            updateDocumentVersion(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Updates the specified attributes of the specified folder. The user must have access to both the folder and its parent folder, if applicable.
    func updateFolder(input: UpdateFolderInput) async throws -> UpdateFolderOutputResponse
    {
        typealias updateFolderContinuation = CheckedContinuation<UpdateFolderOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateFolderContinuation) in
            updateFolder(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Updates the specified attributes of the specified user, and grants or revokes administrative privileges to the Amazon WorkDocs site.
    func updateUser(input: UpdateUserInput) async throws -> UpdateUserOutputResponse
    {
        typealias updateUserContinuation = CheckedContinuation<UpdateUserOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateUserContinuation) in
            updateUser(input: input) { result in
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