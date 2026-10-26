// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let WheelFrctTorqueReportData = require('./WheelFrctTorqueReportData.js');

//-----------------------------------------------------------

class WheelFrctTorqueReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.wheel_frct_torque_report_data = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('wheel_frct_torque_report_data')) {
        this.wheel_frct_torque_report_data = initObj.wheel_frct_torque_report_data
      }
      else {
        this.wheel_frct_torque_report_data = new WheelFrctTorqueReportData();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WheelFrctTorqueReport
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [wheel_frct_torque_report_data]
    bufferOffset = WheelFrctTorqueReportData.serialize(obj.wheel_frct_torque_report_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WheelFrctTorqueReport
    let len;
    let data = new WheelFrctTorqueReport(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [wheel_frct_torque_report_data]
    data.wheel_frct_torque_report_data = WheelFrctTorqueReportData.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 26;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/WheelFrctTorqueReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '52516e6244acda6483e926a006c64bd4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 WHEEL_FRCT_TORQUE_REPORT_DATA = 1
    uint8 available
    endpoint_msgs/WheelFrctTorqueReportData wheel_frct_torque_report_data
    
    ================================================================================
    MSG: endpoint_msgs/WheelFrctTorqueReportData
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
    const resolved = new WheelFrctTorqueReport(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.wheel_frct_torque_report_data !== undefined) {
      resolved.wheel_frct_torque_report_data = WheelFrctTorqueReportData.Resolve(msg.wheel_frct_torque_report_data)
    }
    else {
      resolved.wheel_frct_torque_report_data = new WheelFrctTorqueReportData()
    }

    return resolved;
    }
};

// Constants for message
WheelFrctTorqueReport.Constants = {
  WHEEL_FRCT_TORQUE_REPORT_DATA: 1,
}

module.exports = WheelFrctTorqueReport;
