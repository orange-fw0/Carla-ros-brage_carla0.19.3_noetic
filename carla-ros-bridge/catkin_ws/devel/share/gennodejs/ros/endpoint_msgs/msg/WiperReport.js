// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let WiperReportData = require('./WiperReportData.js');

//-----------------------------------------------------------

class WiperReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.wiper_report_data = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('wiper_report_data')) {
        this.wiper_report_data = initObj.wiper_report_data
      }
      else {
        this.wiper_report_data = new WiperReportData();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WiperReport
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [wiper_report_data]
    bufferOffset = WiperReportData.serialize(obj.wiper_report_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WiperReport
    let len;
    let data = new WiperReport(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [wiper_report_data]
    data.wiper_report_data = WiperReportData.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/WiperReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'aae3c58e902eb64e17b4b2bd6b41ae95';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 WIPER_REPORT_DATA = 1
    uint8 available
    endpoint_msgs/WiperReportData wiper_report_data
    
    ================================================================================
    MSG: endpoint_msgs/WiperReportData
    uint64 timestamp_us
    endpoint_msgs/WorkType driver_work_type
    endpoint_msgs/WiperStateType front_wiper_state
    endpoint_msgs/WiperStateType rear_wiper_state
    bool valid
    
    ================================================================================
    MSG: endpoint_msgs/WorkType
    uint8 MANUALPILOT = 0
    uint8 AUTOPILOT_PILOT = 1
    uint8 AUTOPILOT_APA = 2
    uint8 AUTOPILOT_ACC = 3
    uint8 AUTOPILOT_RESERVED1 = 4
    uint8 AUTOPILOT_RESERVED2 = 5
    uint8 AUTOPILOT_RESERVED3 = 6
    uint8 AUTOPILOT_RESERVED4 = 7
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/WiperStateType
    uint8 OFF = 0
    uint8 AUTO_OFF = 1
    uint8 AUTO_MOVING = 2
    uint8 MANUAL_OFF = 3
    uint8 MANUAL_ON = 4
    uint8 MANUAL_LOW = 5
    uint8 MANUAL_HIGH = 6
    uint8 MIST_FLICK = 7
    uint8 WASH = 8
    uint8 AUTO_LOW = 9
    uint8 AUTO_HIGH = 10
    uint8 COURTESY_WIPE = 11
    uint8 AUTO_ADJUST = 12
    uint8 RESERVED = 13
    uint8 STALLED = 14
    uint8 NONE = 15
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WiperReport(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.wiper_report_data !== undefined) {
      resolved.wiper_report_data = WiperReportData.Resolve(msg.wiper_report_data)
    }
    else {
      resolved.wiper_report_data = new WiperReportData()
    }

    return resolved;
    }
};

// Constants for message
WiperReport.Constants = {
  WIPER_REPORT_DATA: 1,
}

module.exports = WiperReport;
