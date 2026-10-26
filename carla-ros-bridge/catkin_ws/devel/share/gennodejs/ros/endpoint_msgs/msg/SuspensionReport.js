// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SuspensionReportData = require('./SuspensionReportData.js');

//-----------------------------------------------------------

class SuspensionReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.suspension_report_data = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('suspension_report_data')) {
        this.suspension_report_data = initObj.suspension_report_data
      }
      else {
        this.suspension_report_data = new SuspensionReportData();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SuspensionReport
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [suspension_report_data]
    bufferOffset = SuspensionReportData.serialize(obj.suspension_report_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SuspensionReport
    let len;
    let data = new SuspensionReport(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [suspension_report_data]
    data.suspension_report_data = SuspensionReportData.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 30;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/SuspensionReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '16a2437ec979e9b941a155db04e2443b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 SUSPENSION_REPORT_DATA = 1
    uint8 available
    endpoint_msgs/SuspensionReportData suspension_report_data
    
    ================================================================================
    MSG: endpoint_msgs/SuspensionReportData
    uint64 timestamp_us
    bool calibration_completed
    endpoint_msgs/HeightLevel requested_target_level
    endpoint_msgs/HeightLevel cur_height_status
    endpoint_msgs/SuspensionHeight suspension_height
    endpoint_msgs/SuspensionHeightValid suspension_hight_valid
    endpoint_msgs/FailureStatus failure_status
    float32 reserved1
    float32 reserved2
    endpoint_msgs/SuspensionAdjustStatus adjust_status
    
    ================================================================================
    MSG: endpoint_msgs/HeightLevel
    uint8 NONE = 0
    uint8 LEVEL1 = 1
    uint8 LEVEL2 = 2
    uint8 LEVEL3 = 3
    uint8 LEVEL4 = 4
    uint8 LEVEL5 = 5
    uint8 LEVEL6 = 6
    uint8 LEVEL7 = 7
    uint8 LEVEL8 = 8
    uint8 LEVEL9 = 9
    uint8 LEVEL10 = 10
    uint8 RESERVED1 = 11
    uint8 RESERVED2 = 12
    uint8 RESERVED3 = 13
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/SuspensionHeight
    int8 front_left
    int8 front_right
    int8 rear_left
    int8 rear_right
    
    ================================================================================
    MSG: endpoint_msgs/SuspensionHeightValid
    bool front_left
    bool front_right
    bool rear_left
    bool rear_right
    
    ================================================================================
    MSG: endpoint_msgs/FailureStatus
    uint8 NOFAILURE = 0
    uint8 TEMPORARYFAILURE = 1
    uint8 FAILURE = 2
    uint8 RESERVED = 3
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/SuspensionAdjustStatus
    uint8 NOACTION = 0
    uint8 LOWERING = 1
    uint8 LIFTING = 2
    uint8 PENDING = 3
    uint8 ADJUSTING = 4
    uint8 RESERVED = 5
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SuspensionReport(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.suspension_report_data !== undefined) {
      resolved.suspension_report_data = SuspensionReportData.Resolve(msg.suspension_report_data)
    }
    else {
      resolved.suspension_report_data = new SuspensionReportData()
    }

    return resolved;
    }
};

// Constants for message
SuspensionReport.Constants = {
  SUSPENSION_REPORT_DATA: 1,
}

module.exports = SuspensionReport;
