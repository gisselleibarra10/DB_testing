// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Provides APIs for creating and managing Amazon Forecast resources.</p>
public protocol ForecastqueryClientProtocol {
    /// <p>Retrieves a forecast for a single item, filtered by the supplied criteria.</p>
    ///          <p>The criteria is a key-value pair. The key is either <code>item_id</code> (or the
    ///       equivalent non-timestamp, non-target field) from the <code>TARGET_TIME_SERIES</code> dataset,
    ///       or one of the forecast dimensions specified as part of the <code>FeaturizationConfig</code>
    ///       object.</p>
    ///          <p>By default, <code>QueryForecast</code> returns the complete date range for the filtered
    ///       forecast. You can request a specific date range.</p>
    ///          <p>To get the full forecast, use the <a href="https://docs.aws.amazon.com/en_us/forecast/latest/dg/API_CreateForecastExportJob.html">CreateForecastExportJob</a> operation.</p>
    ///          <note>
    ///             <p>The forecasts generated by Amazon Forecast are in the same timezone as the dataset that was
    ///         used to create the predictor.</p>
    ///          </note>
    func queryForecast(input: QueryForecastInput, completion: @escaping (SdkResult<QueryForecastOutputResponse, QueryForecastOutputError>) -> Void)
}
