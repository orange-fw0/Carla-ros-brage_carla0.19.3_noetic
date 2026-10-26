// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let AebStatusReportData = require('./AebStatusReportData.js');

//-----------------------------------------------------------

class AebStatusReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.aeb_status_data = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('aeb_status_data')) {
        this.aeb_status_data = initObj.aeb_status_data
      }
      else {
        this.aeb_status_data = new AebStatusReportData();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AebStatusReport
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [aeb_status_data]
    bufferOffset = AebStatusReportData.serialize(obj.aeb_status_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AebStatusReport
    let len;
    let data = new AebStatusReport(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [aeb_status_data]
    data.aeb_status_data = AebStatusReportData.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 22;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/AebStatusReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c91c9f34e8112f573a399902202d66e1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 AEB_STATUS_REPORT_DATA = 1
    uint8 available
    endpoint_msgs/AebStatusReportData aeb_status_data
    
    ================================================================================
    MSG: endpoint_msgs/AebStatusReportData
    uint64 timestamp_us
    endpoint_msgs/AebSysStatus aeb_system_status
    endpoint_msgs/AebSysFaultStatus aeb_system_fault_status
    endpoint_msgs/AebBrkJerkResp awb_status
    endpoint_msgs/AebDclResp dcl_status
    endpoint_msgs/HbaStatus hba_status
    endpoint_msgs/AebPrflResp prfl_status
    bool aeb_valid
    endpoint_msgs/FcwStatus fcw_status
    bool fcw_valid
    endpoint_msgs/VseSysState vse_state
    bool vse_valid
    endpoint_msgs/SwcStatus swc_status
    bool swc_valid
    
    ================================================================================
    MSG: endpoint_msgs/AebSysStatus
    uint8 OFF = 0
    uint8 STANDBY = 1
    uint8 DISABLE = 2
    uint8 OVERRIDE = 3
    uint8 ACTIVED = 4
    uint8 RESERVED1 = 5
    uint8 RESERVED2 = 6
    uint8 RESERVED3 = 7
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/AebSysFaultStatus
    uint8 AEB_SYS_FALULT_NO_ERROR = 0
    uint8 AEB_SYS_FALULT_PERFORMANCE_DEGRADATION = 1
    uint8 AEB_SYS_FALULT_SYSTEM_TEMPORARY_UNCAILABLE = 2
    uint8 AEB_SYS_FALULT_SERVICE_REQUIRED = 3
    uint8 AEB_SYS_FALULT_RESERVED1 = 4
    uint8 AEB_SYS_FALULT_RESERVED2 = 5
    uint8 AEB_SYS_FALULT_RESERVED3 = 6
    uint8 AEB_SYS_FALULT_RESERVED4 = 7
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/AebBrkJerkResp
    uint8 AEB_BRAKE_JERK_NO_REQUEST = 0
    uint8 AEB_BRAKE_JERK_REQUEST_HONORED = 1
    uint8 AEB_BRAKE_JERK_LOST_ARBITRATION = 2
    uint8 AEB_BRAKE_JERK_CONTROL_NOT_ALLOWED_ERROR = 3
    uint8 AEB_BRAKE_JERK_PRE_CONDITION_NOT_SATISFIED = 4
    uint8 AEB_BRAKE_JERK_RESERVED = 5
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/AebDclResp
    uint8 AEB_DCL_NO_REQUEST = 0
    uint8 AEB_DCL_REQUEST_HONORED = 1
    uint8 AEB_DCL_REQUEST_LOST_ARBITRATION = 2
    uint8 AEB_DCL_REQUEST_CONTROL_NOT_ALLOWED_ERROR = 3
    uint8 AEB_DCL_REQUEST_PRE_CONDITION_NOT_SATISFIED = 4
    uint8 AEB_DCL_REQUEST_RESERVED1 = 5
    uint8 AEB_DCL_REQUEST_RESERVED2 = 6
    uint8 AEB_DCL_REQUEST_RESERVED3 = 7
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/HbaStatus
    uint8 AEB_HBA_NO_REQUEST = 0
    uint8 AEB_HBA_REQUEST_HONORED = 1
    uint8 AEB_HBA_REQUEST_LOST_ARBITRATION = 2
    uint8 AEB_HBA_REQUEST_CONTROL_NOT_ALLOWED_ERROR = 3
    uint8 AEB_HBA_REQUEST_PRE_CONDITION_NOT_SATISFIED = 4
    uint8 AEB_HBA_REQUEST_RESERVED1 = 5
    uint8 AEB_HBA_REQUEST_RESERVED2 = 6
    uint8 AEB_HBA_REQUEST_RESERVED3 = 7
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/AebPrflResp
    uint8 AEB_PRFL_NO_REQUEST = 0
    uint8 AEB_PRFL_REQUEST_HONORED = 1
    uint8 AEB_PRFL_REQUEST_LOST_ARBITRATION = 2
    uint8 AEB_PRFL_REQUEST_CONTROL_NOT_ALLOWED_ERROR = 3
    uint8 AEB_PRFL_REQUEST_PRE_CONDITION_NOT_SATISFIED = 4
    uint8 AEB_PRFL_REQUEST_RESERVED1 = 5
    uint8 AEB_PRFL_REQUEST_RESERVED2 = 6
    uint8 AEB_PRFL_REQUEST_RESERVED3 = 7
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/FcwStatus
    uint8 OFF = 0
    uint8 STANDBY = 1
    uint8 DISABLE = 2
    uint8 OVERRIDE = 3
    uint8 ACTIVED = 4
    uint8 RESERVED1 = 5
    uint8 RESERVED2 = 6
    uint8 RESERVED3 = 7
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/VseSysState
    uint8 INAVTIVE = 0
    uint8 ACTIVE = 1
    uint8 FAULT = 2
    uint8 WARMING_UP = 3
    uint8 NOT_READY = 4
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/SwcStatus
    uint8 SWC_STATUS_NOT_ACTIVE = 0
    uint8 SWC_STATUS_NORMAL = 1
    uint8 SWC_STATUS_ERROR = 2
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AebStatusReport(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.aeb_status_data !== undefined) {
      resolved.aeb_status_data = AebStatusReportData.Resolve(msg.aeb_status_data)
    }
    else {
      resolved.aeb_status_data = new AebStatusReportData()
    }

    return resolved;
    }
};

// Constants for message
AebStatusReport.Constants = {
  AEB_STATUS_REPORT_DATA: 1,
}

module.exports = AebStatusReport;
