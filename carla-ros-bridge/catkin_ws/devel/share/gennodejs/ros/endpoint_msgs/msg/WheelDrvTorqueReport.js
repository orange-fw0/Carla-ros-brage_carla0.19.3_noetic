// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let WheelDrvTorqueReportData = require('./WheelDrvTorqueReportData.js');

//-----------------------------------------------------------

class WheelDrvTorqueReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.wheel_drv_torque_report_data = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('wheel_drv_torque_report_data')) {
        this.wheel_drv_torque_report_data = initObj.wheel_drv_torque_report_data
      }
      else {
        this.wheel_drv_torque_report_data = new WheelDrvTorqueReportData();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WheelDrvTorqueReport
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [wheel_drv_torque_report_data]
    bufferOffset = WheelDrvTorqueReportData.serialize(obj.wheel_drv_torque_report_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WheelDrvTorqueReport
    let len;
    let data = new WheelDrvTorqueReport(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [wheel_drv_torque_report_data]
    data.wheel_drv_torque_report_data = WheelDrvTorqueReportData.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 38;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/WheelDrvTorqueReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9e0ffa65f38cffe9e048528b06ed464b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 WHEEL_DRV_TORQUE_REPORT_DATA = 1
    uint8 available
    endpoint_msgs/WheelDrvTorqueReportData wheel_drv_torque_report_data
    
    ================================================================================
    MSG: endpoint_msgs/WheelDrvTorqueReportData
    uint64 timestamp_us
    float32 front_left
    bool front_left_valid
    float32 front_right
    float32 front_right_valid
    float32 rear_left
    float32 rear_left_valid
    float32 rear_right
    float32 rear_right_valid
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WheelDrvTorqueReport(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.wheel_drv_torque_report_data !== undefined) {
      resolved.wheel_drv_torque_report_data = WheelDrvTorqueReportData.Resolve(msg.wheel_drv_torque_report_data)
    }
    else {
      resolved.wheel_drv_torque_report_data = new WheelDrvTorqueReportData()
    }

    return resolved;
    }
};

// Constants for message
WheelDrvTorqueReport.Constants = {
  WHEEL_DRV_TORQUE_REPORT_DATA: 1,
}

module.exports = WheelDrvTorqueReport;
