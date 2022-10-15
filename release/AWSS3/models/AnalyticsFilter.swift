// Code generated by smithy-swift-codegen. DO NOT EDIT!



extension S3ClientTypes {
    /// The filter used to describe a set of objects for analyses. A filter must have exactly one prefix, one tag, or one conjunction (AnalyticsAndOperator). If no filter is provided, all objects will be considered in any analysis.
    public enum AnalyticsFilter: Swift.Equatable {
        /// The prefix to use when evaluating an analytics filter.
        case prefix(Swift.String)
        /// The tag to use when evaluating an analytics filter.
        case tag(S3ClientTypes.Tag)
        /// A conjunction (logical AND) of predicates, which is used in evaluating an analytics filter. The operator must have at least two predicates.
        case and(S3ClientTypes.AnalyticsAndOperator)
        case sdkUnknown(Swift.String)
    }

}