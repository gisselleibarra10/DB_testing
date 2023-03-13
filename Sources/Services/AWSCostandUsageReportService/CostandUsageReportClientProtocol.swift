// Code generated by smithy-swift-codegen. DO NOT EDIT!

import AWSClientRuntime
import ClientRuntime

/// The AWS Cost and Usage Report API enables you to programmatically create, query, and delete AWS Cost and Usage report definitions. AWS Cost and Usage reports track the monthly AWS costs and usage associated with your AWS account. The report contains line items for each unique combination of AWS product, usage type, and operation that your AWS account uses. You can configure the AWS Cost and Usage report to show only the data that you want, using the AWS Cost and Usage API. Service Endpoint The AWS Cost and Usage Report API provides the following endpoint:
///
/// * cur.us-east-1.amazonaws.com
public protocol CostandUsageReportClientProtocol {
    /// Deletes the specified report.
    func deleteReportDefinition(input: DeleteReportDefinitionInput) async throws -> DeleteReportDefinitionOutputResponse
    /// Lists the AWS Cost and Usage reports available to this account.
    func describeReportDefinitions(input: DescribeReportDefinitionsInput) async throws -> DescribeReportDefinitionsOutputResponse
    /// Allows you to programatically update your report preferences.
    func modifyReportDefinition(input: ModifyReportDefinitionInput) async throws -> ModifyReportDefinitionOutputResponse
    /// Creates a new report using the description that you provide.
    func putReportDefinition(input: PutReportDefinitionInput) async throws -> PutReportDefinitionOutputResponse
}

public protocol CostandUsageReportClientConfigurationProtocol : AWSClientRuntime.AWSClientConfiguration {
    var endpointResolver: EndpointResolver { get }
}

public enum CostandUsageReportClientTypes {}
