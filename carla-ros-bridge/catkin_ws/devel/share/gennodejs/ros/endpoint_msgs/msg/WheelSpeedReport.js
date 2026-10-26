// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let WheelSpeedReportData = require('./WheelSpeedReportData.js');

//-----------------------------------------------------------

class WheelSpeedReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.wheel_speed_report_data = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('wheel_speed_report_data')) {
        this.wheel_speed_report_data = initObj.wheel_speed_report_data
      }
      else {
        this.wheel_speed_report_data = new WheelSpeedReportData();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WheelSpeedReport
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [wheel_speed_report_data]
    bufferOffset = WheelSpeedReportData.serialize(obj.wheel_speed_report_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WheelSpeedReport
    let len;
    let data = new WheelSpeedReport(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [wheel_speed_report_data]
    data.wheel_speed_report_data = WheelSpeedReportData.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 42;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/WheelSpeedReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e58af9dffa987dae3ddda85ae019745e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 WHEEL_SPEED_REPORT_DATA = 1
    uint8 available
    endpoint_msgs/WheelSpeedReportData wheel_speed_report_data
    
    ================================================================================
    MSG: endpoint_msgs/WheelSpeedReportData
    uint64 timestamp_us
    float32 front_left
    float32 front_right
    float32 rear_left
    float32 rear_right
    float32 front_left_mps
    float32 front_right_mps
    float32 rear_left_mps
    float32 rear_right_mps
    bool valid
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WheelSpeedReport(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.wheel_speed_report_data !== undefined) {
      resolved.wheel_speed_report_data = WheelSpeedReportData.Resolve(msg.wheel_speed_report_data)
    }
    else {
      resolved.wheel_speed_report_data = new WheelSpeedReportData()
    }

    return resolved;
    }
};

// Constants for message
WheelSpeedReport.Constants = {
  WHEEL_SPEED_REPORT_DATA: 1,
}

module.exports = WheelSpeedReport;
