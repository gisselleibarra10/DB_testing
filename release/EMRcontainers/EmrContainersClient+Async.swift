// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension EmrContainersClient {
    /// <p>Cancels a job run. A job run is a unit of work, such as a Spark jar, PySpark script, or SparkSQL query, that you submit to Amazon EMR on EKS.</p>
    func cancelJobRun(input: CancelJobRunInput) async throws -> CancelJobRunOutputResponse
    {
        typealias cancelJobRunContinuation = CheckedContinuation<CancelJobRunOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: cancelJobRunContinuation) in
            cancelJobRun(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Creates a managed endpoint. A managed endpoint is a gateway that connects EMR Studio to Amazon EMR on EKS so that EMR Studio can communicate with your virtual cluster.</p>
    func createManagedEndpoint(input: CreateManagedEndpointInput) async throws -> CreateManagedEndpointOutputResponse
    {
        typealias createManagedEndpointContinuation = CheckedContinuation<CreateManagedEndpointOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createManagedEndpointContinuation) in
            createManagedEndpoint(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Creates a virtual cluster. Virtual cluster is a managed entity on Amazon EMR on EKS. You can create, describe, list and delete virtual clusters. They do not consume any additional resource in your system. A single virtual cluster maps to a single Kubernetes namespace. Given this relationship, you can model virtual clusters the same way you model Kubernetes namespaces to meet your requirements.</p>
    func createVirtualCluster(input: CreateVirtualClusterInput) async throws -> CreateVirtualClusterOutputResponse
    {
        typealias createVirtualClusterContinuation = CheckedContinuation<CreateVirtualClusterOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createVirtualClusterContinuation) in
            createVirtualCluster(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Deletes a managed endpoint. A managed endpoint is a gateway that connects EMR Studio to Amazon EMR on EKS so that EMR Studio can communicate with your virtual cluster.</p>
    func deleteManagedEndpoint(input: DeleteManagedEndpointInput) async throws -> DeleteManagedEndpointOutputResponse
    {
        typealias deleteManagedEndpointContinuation = CheckedContinuation<DeleteManagedEndpointOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteManagedEndpointContinuation) in
            deleteManagedEndpoint(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Deletes a virtual cluster. Virtual cluster is a managed entity on Amazon EMR on EKS. You can create, describe, list and delete virtual clusters. They do not consume any additional resource in your system. A single virtual cluster maps to a single Kubernetes namespace. Given this relationship, you can model virtual clusters the same way you model Kubernetes namespaces to meet your requirements.</p>
    func deleteVirtualCluster(input: DeleteVirtualClusterInput) async throws -> DeleteVirtualClusterOutputResponse
    {
        typealias deleteVirtualClusterContinuation = CheckedContinuation<DeleteVirtualClusterOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteVirtualClusterContinuation) in
            deleteVirtualCluster(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Displays detailed information about a job run. A job run is a unit of work, such as a Spark jar, PySpark script, or SparkSQL query, that you submit to Amazon EMR on EKS.</p>
    func describeJobRun(input: DescribeJobRunInput) async throws -> DescribeJobRunOutputResponse
    {
        typealias describeJobRunContinuation = CheckedContinuation<DescribeJobRunOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeJobRunContinuation) in
            describeJobRun(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Displays detailed information about a managed endpoint. A managed endpoint is a gateway that connects EMR Studio to Amazon EMR on EKS so that EMR Studio can communicate with your virtual cluster.</p>
    func describeManagedEndpoint(input: DescribeManagedEndpointInput) async throws -> DescribeManagedEndpointOutputResponse
    {
        typealias describeManagedEndpointContinuation = CheckedContinuation<DescribeManagedEndpointOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeManagedEndpointContinuation) in
            describeManagedEndpoint(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Displays detailed information about a specified virtual cluster. Virtual cluster is a managed entity on Amazon EMR on EKS. You can create, describe, list and delete virtual clusters. They do not consume any additional resource in your system. A single virtual cluster maps to a single Kubernetes namespace. Given this relationship, you can model virtual clusters the same way you model Kubernetes namespaces to meet your requirements.</p>
    func describeVirtualCluster(input: DescribeVirtualClusterInput) async throws -> DescribeVirtualClusterOutputResponse
    {
        typealias describeVirtualClusterContinuation = CheckedContinuation<DescribeVirtualClusterOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeVirtualClusterContinuation) in
            describeVirtualCluster(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Lists job runs based on a set of parameters. A job run is a unit of work, such as a Spark jar, PySpark script, or SparkSQL query, that you submit to Amazon EMR on EKS.</p>
    func listJobRuns(input: ListJobRunsInput) async throws -> ListJobRunsOutputResponse
    {
        typealias listJobRunsContinuation = CheckedContinuation<ListJobRunsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listJobRunsContinuation) in
            listJobRuns(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Lists managed endpoints based on a set of parameters. A managed endpoint is a gateway that connects EMR Studio to Amazon EMR on EKS so that EMR Studio can communicate with your virtual cluster.</p>
    func listManagedEndpoints(input: ListManagedEndpointsInput) async throws -> ListManagedEndpointsOutputResponse
    {
        typealias listManagedEndpointsContinuation = CheckedContinuation<ListManagedEndpointsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listManagedEndpointsContinuation) in
            listManagedEndpoints(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Lists the tags assigned to the resources.</p>
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

    /// <p>Lists information about the specified virtual cluster. Virtual cluster is a managed entity on Amazon EMR on EKS. You can create, describe, list and delete virtual clusters. They do not consume any additional resource in your system. A single virtual cluster maps to a single Kubernetes namespace. Given this relationship, you can model virtual clusters the same way you model Kubernetes namespaces to meet your requirements.</p>
    func listVirtualClusters(input: ListVirtualClustersInput) async throws -> ListVirtualClustersOutputResponse
    {
        typealias listVirtualClustersContinuation = CheckedContinuation<ListVirtualClustersOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listVirtualClustersContinuation) in
            listVirtualClusters(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Starts a job run. A job run is a unit of work, such as a Spark jar, PySpark script, or SparkSQL query, that you submit to Amazon EMR on EKS.</p>
    func startJobRun(input: StartJobRunInput) async throws -> StartJobRunOutputResponse
    {
        typealias startJobRunContinuation = CheckedContinuation<StartJobRunOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: startJobRunContinuation) in
            startJobRun(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// <p>Assigns tags to resources. A tag is a label that you assign to an AWS resource. Each tag consists of a key and an optional value, both of which you define. Tags enable you to categorize your AWS resources by attributes such as purpose, owner, or environment. When you have many resources of the same type, you can quickly identify a specific resource based on the tags you've assigned to it. For example, you can define a set of tags for your Amazon EMR on EKS clusters to help you track each cluster's owner and stack level. We recommend that you devise a consistent set of tag keys for each resource type. You can then search and filter the resources based on the tags that you add.</p>
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

    /// <p>Removes tags from resources.</p>
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

}
#endif
