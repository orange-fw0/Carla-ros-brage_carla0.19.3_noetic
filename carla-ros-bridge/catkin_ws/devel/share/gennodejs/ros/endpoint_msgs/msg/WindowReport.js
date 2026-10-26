// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let WindowReportData = require('./WindowReportData.js');

//-----------------------------------------------------------

class WindowReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.window_report_data = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('window_report_data')) {
        this.window_report_data = initObj.window_report_data
      }
      else {
        this.window_report_data = new WindowReportData();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WindowReport
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [window_report_data]
    bufferOffset = WindowReportData.serialize(obj.window_report_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WindowReport
    let len;
    let data = new WindowReport(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [window_report_data]
    data.window_report_data = WindowReportData.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/WindowReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b329f38f5df393116359dbace4ca35c4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 WINDOW_REPORT_DATA = 1
    uint8 available
    endpoint_msgs/WindowReportData window_report_data
    
    ================================================================================
    MSG: endpoint_msgs/WindowReportData
    uint64 timestamp_us
    bool window_lock
    endpoint_msgs/WindowState window_state_left_front
    endpoint_msgs/WindowState window_state_right_front
    endpoint_msgs/WindowState window_state_left_rear
    endpoint_msgs/WindowState window_state_right_rear
    endpoint_msgs/WindowState window_state_top
    bool valid
    
    ================================================================================
    MSG: endpoint_msgs/WindowState
    uint8 WINDOW_CLOSED = 0
    uint8 WINDOW_OPENED = 1
    uint8 WINDOW_MIDDLE = 2
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WindowReport(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.window_report_data !== undefined) {
      resolved.window_report_data = WindowReportData.Resolve(msg.window_report_data)
    }
    else {
      resolved.window_report_data = new WindowReportData()
    }

    return resolved;
    }
};

// Constants for message
WindowReport.Constants = {
  WINDOW_REPORT_DATA: 1,
}

module.exports = WindowReport;
