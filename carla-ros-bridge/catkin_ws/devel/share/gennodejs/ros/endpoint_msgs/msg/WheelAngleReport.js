// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let WheelAngleReportData = require('./WheelAngleReportData.js');

//-----------------------------------------------------------

class WheelAngleReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.wheel_angle_report_data = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('wheel_angle_report_data')) {
        this.wheel_angle_report_data = initObj.wheel_angle_report_data
      }
      else {
        this.wheel_angle_report_data = new WheelAngleReportData();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WheelAngleReport
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [wheel_angle_report_data]
    bufferOffset = WheelAngleReportData.serialize(obj.wheel_angle_report_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WheelAngleReport
    let len;
    let data = new WheelAngleReport(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [wheel_angle_report_data]
    data.wheel_angle_report_data = WheelAngleReportData.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/WheelAngleReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cdaf5cf35e4a2593cc6d4f4aa9804a97';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 WHEEL_ANGLE_REPORT_DATA = 1
    uint8 available
    endpoint_msgs/WheelAngleReportData wheel_angle_report_data
    
    ================================================================================
    MSG: endpoint_msgs/WheelAngleReportData
    uint64 timestamp_us
    endpoint_msgs/RwsSysStatus rws_state
    float32 front_left
    float32 front_right
    float32 rear_left
    float32 rear_right
    bool valid
    
    ================================================================================
    MSG: endpoint_msgs/RwsSysStatus
    uint8 STANDARD_MODE = 0
    uint8 COMFORTABLE_MODE = 1
    uint8 SPORT_MODE = 2
    uint8 AD_MODE = 3
    uint8 ADLOCK_MODE = 4
    uint8 RESERVED = 5
    bool valid
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WheelAngleReport(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.wheel_angle_report_data !== undefined) {
      resolved.wheel_angle_report_data = WheelAngleReportData.Resolve(msg.wheel_angle_report_data)
    }
    else {
      resolved.wheel_angle_report_data = new WheelAngleReportData()
    }

    return resolved;
    }
};

// Constants for message
WheelAngleReport.Constants = {
  WHEEL_ANGLE_REPORT_DATA: 1,
}

module.exports = WheelAngleReport;
