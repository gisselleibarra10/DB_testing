// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>AWS IoT Events monitors your equipment or device fleets for failures or changes in operation, and
///       triggers actions when such events occur. You can use AWS IoT Events Data API commands to send inputs to
///       detectors, list detectors, and view or update a detector's status.</p>
///          <p> For more information, see <a href="https://docs.aws.amazon.com/iotevents/latest/developerguide/what-is-iotevents.html">What is AWS IoT Events?</a> in the
///         <i>AWS IoT Events Developer Guide</i>.</p>
public protocol IotEventsDataClientProtocol {
    /// <p>Acknowledges one or more alarms. The alarms change to the <code>ACKNOWLEDGED</code> state
    ///       after you acknowledge them.</p>
    func batchAcknowledgeAlarm(input: BatchAcknowledgeAlarmInput, completion: @escaping (SdkResult<BatchAcknowledgeAlarmOutputResponse, BatchAcknowledgeAlarmOutputError>) -> Void)
    /// <p>Disables one or more alarms. The alarms change to the <code>DISABLED</code> state after
    ///       you disable them.</p>
    func batchDisableAlarm(input: BatchDisableAlarmInput, completion: @escaping (SdkResult<BatchDisableAlarmOutputResponse, BatchDisableAlarmOutputError>) -> Void)
    /// <p>Enables one or more alarms. The alarms change to the <code>NORMAL</code> state after you
    ///       enable them.</p>
    func batchEnableAlarm(input: BatchEnableAlarmInput, completion: @escaping (SdkResult<BatchEnableAlarmOutputResponse, BatchEnableAlarmOutputError>) -> Void)
    /// <p>Sends a set of messages to the AWS IoT Events system. Each message payload is transformed into
    ///       the input you specify (<code>"inputName"</code>) and ingested into any detectors that monitor
    ///       that input. If multiple messages are sent, the order in which the messages are processed isn't
    ///       guaranteed. To guarantee ordering, you must send messages one at a time and wait for a
    ///       successful response.</p>
    func batchPutMessage(input: BatchPutMessageInput, completion: @escaping (SdkResult<BatchPutMessageOutputResponse, BatchPutMessageOutputError>) -> Void)
    /// <p>Resets one or more alarms. The alarms return to the <code>NORMAL</code> state after you
    ///       reset them.</p>
    func batchResetAlarm(input: BatchResetAlarmInput, completion: @escaping (SdkResult<BatchResetAlarmOutputResponse, BatchResetAlarmOutputError>) -> Void)
    /// <p>Changes one or more alarms to the snooze mode. The alarms change to the
    ///         <code>SNOOZE_DISABLED</code> state after you set them to the snooze mode.</p>
    func batchSnoozeAlarm(input: BatchSnoozeAlarmInput, completion: @escaping (SdkResult<BatchSnoozeAlarmOutputResponse, BatchSnoozeAlarmOutputError>) -> Void)
    /// <p>Updates the state, variable values, and timer settings of one or more detectors
    ///       (instances) of a specified detector model.</p>
    func batchUpdateDetector(input: BatchUpdateDetectorInput, completion: @escaping (SdkResult<BatchUpdateDetectorOutputResponse, BatchUpdateDetectorOutputError>) -> Void)
    /// <p>Retrieves information about an alarm.</p>
    func describeAlarm(input: DescribeAlarmInput, completion: @escaping (SdkResult<DescribeAlarmOutputResponse, DescribeAlarmOutputError>) -> Void)
    /// <p>Returns information about the specified detector (instance).</p>
    func describeDetector(input: DescribeDetectorInput, completion: @escaping (SdkResult<DescribeDetectorOutputResponse, DescribeDetectorOutputError>) -> Void)
    /// <p>Lists one or more alarms. The operation returns only the metadata associated with each
    ///       alarm.</p>
    func listAlarms(input: ListAlarmsInput, completion: @escaping (SdkResult<ListAlarmsOutputResponse, ListAlarmsOutputError>) -> Void)
    /// <p>Lists detectors (the instances of a detector model).</p>
    func listDetectors(input: ListDetectorsInput, completion: @escaping (SdkResult<ListDetectorsOutputResponse, ListDetectorsOutputError>) -> Void)
}
