// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Amazon HealthLake is a HIPAA eligibile service that allows customers to store,
///          transform, query, and analyze their FHIR-formatted data in a consistent fashion in the cloud.</p>
public protocol HealthLakeClientProtocol {
    /// <p>Creates a Data Store that can ingest and export FHIR formatted data.</p>
    func createFHIRDatastore(input: CreateFHIRDatastoreInput, completion: @escaping (SdkResult<CreateFHIRDatastoreOutputResponse, CreateFHIRDatastoreOutputError>) -> Void)
    /// <p>Deletes a Data Store. </p>
    func deleteFHIRDatastore(input: DeleteFHIRDatastoreInput, completion: @escaping (SdkResult<DeleteFHIRDatastoreOutputResponse, DeleteFHIRDatastoreOutputError>) -> Void)
    /// <p>Gets the properties associated with the FHIR Data Store, including the Data Store ID,
    ///          Data Store ARN, Data Store name, Data Store status, created at, Data Store type version, and
    ///          Data Store endpoint.</p>
    func describeFHIRDatastore(input: DescribeFHIRDatastoreInput, completion: @escaping (SdkResult<DescribeFHIRDatastoreOutputResponse, DescribeFHIRDatastoreOutputError>) -> Void)
    /// <p>Displays the properties of a FHIR export job, including the ID, ARN, name, and the status of the job.</p>
    func describeFHIRExportJob(input: DescribeFHIRExportJobInput, completion: @escaping (SdkResult<DescribeFHIRExportJobOutputResponse, DescribeFHIRExportJobOutputError>) -> Void)
    /// <p>Displays the properties of a FHIR import job, including the ID, ARN, name, and the status of the job.</p>
    func describeFHIRImportJob(input: DescribeFHIRImportJobInput, completion: @escaping (SdkResult<DescribeFHIRImportJobOutputResponse, DescribeFHIRImportJobOutputError>) -> Void)
    /// <p>Lists all FHIR Data Stores that are in the user’s account, regardless of Data Store
    ///          status.</p>
    func listFHIRDatastores(input: ListFHIRDatastoresInput, completion: @escaping (SdkResult<ListFHIRDatastoresOutputResponse, ListFHIRDatastoresOutputError>) -> Void)
    /// <p>Begins a FHIR export job.</p>
    func startFHIRExportJob(input: StartFHIRExportJobInput, completion: @escaping (SdkResult<StartFHIRExportJobOutputResponse, StartFHIRExportJobOutputError>) -> Void)
    /// <p>Begins a FHIR Import job.</p>
    func startFHIRImportJob(input: StartFHIRImportJobInput, completion: @escaping (SdkResult<StartFHIRImportJobOutputResponse, StartFHIRImportJobOutputError>) -> Void)
}
