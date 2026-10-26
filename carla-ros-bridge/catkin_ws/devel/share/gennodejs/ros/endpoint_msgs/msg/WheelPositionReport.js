// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let WheelPositionReportData = require('./WheelPositionReportData.js');

//-----------------------------------------------------------

class WheelPositionReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.wheel_position_report_data = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('wheel_position_report_data')) {
        this.wheel_position_report_data = initObj.wheel_position_report_data
      }
      else {
        this.wheel_position_report_data = new WheelPositionReportData();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WheelPositionReport
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [wheel_position_report_data]
    bufferOffset = WheelPositionReportData.serialize(obj.wheel_position_report_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WheelPositionReport
    let len;
    let data = new WheelPositionReport(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [wheel_position_report_data]
    data.wheel_position_report_data = WheelPositionReportData.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 18;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/WheelPositionReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fb35a5946173d79e5b1c24ec1f5a7e36';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 WHEEL_POSITION_REPORT_DATA = 1
    uint8 available
    endpoint_msgs/WheelPositionReportData wheel_position_report_data
    
    ================================================================================
    MSG: endpoint_msgs/WheelPositionReportData
    uint64 timestamp_us
    int16 front_left
    int16 front_right
    int16 rear_left
    int16 rear_right
    bool valid
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WheelPositionReport(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.wheel_position_report_data !== undefined) {
      resolved.wheel_position_report_data = WheelPositionReportData.Resolve(msg.wheel_position_report_data)
    }
    else {
      resolved.wheel_position_report_data = new WheelPositionReportData()
    }

    return resolved;
    }
};

// Constants for message
WheelPositionReport.Constants = {
  WHEEL_POSITION_REPORT_DATA: 1,
}

module.exports = WheelPositionReport;
