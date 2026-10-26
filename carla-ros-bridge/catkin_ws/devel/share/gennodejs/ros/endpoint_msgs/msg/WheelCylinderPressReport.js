// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let WheelCylinderPressReportData = require('./WheelCylinderPressReportData.js');

//-----------------------------------------------------------

class WheelCylinderPressReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.wheel_cylinder_press_report_data = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('wheel_cylinder_press_report_data')) {
        this.wheel_cylinder_press_report_data = initObj.wheel_cylinder_press_report_data
      }
      else {
        this.wheel_cylinder_press_report_data = new WheelCylinderPressReportData();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WheelCylinderPressReport
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [wheel_cylinder_press_report_data]
    bufferOffset = WheelCylinderPressReportData.serialize(obj.wheel_cylinder_press_report_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WheelCylinderPressReport
    let len;
    let data = new WheelCylinderPressReport(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [wheel_cylinder_press_report_data]
    data.wheel_cylinder_press_report_data = WheelCylinderPressReportData.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 26;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/WheelCylinderPressReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4d51347d2d1ff717fe5efbd77c6a005a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 WHEEL_CYLINDER_PRESS_REPORT_DATA = 1
    uint8 available
    endpoint_msgs/WheelCylinderPressReportData wheel_cylinder_press_report_data
    
    ================================================================================
    MSG: endpoint_msgs/WheelCylinderPressReportData
    uint64 timestamp_us
    float32 front_left
    float32 front_right
    float32 rear_left
    float32 rear_right
    bool valid
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WheelCylinderPressReport(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.wheel_cylinder_press_report_data !== undefined) {
      resolved.wheel_cylinder_press_report_data = WheelCylinderPressReportData.Resolve(msg.wheel_cylinder_press_report_data)
    }
    else {
      resolved.wheel_cylinder_press_report_data = new WheelCylinderPressReportData()
    }

    return resolved;
    }
};

// Constants for message
WheelCylinderPressReport.Constants = {
  WHEEL_CYLINDER_PRESS_REPORT_DATA: 1,
}

module.exports = WheelCylinderPressReport;
