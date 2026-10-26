// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let BrakeInfoReportData = require('./BrakeInfoReportData.js');

//-----------------------------------------------------------

class BrakeInfoReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.brake_info_report_data = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('brake_info_report_data')) {
        this.brake_info_report_data = initObj.brake_info_report_data
      }
      else {
        this.brake_info_report_data = new BrakeInfoReportData();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BrakeInfoReport
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [brake_info_report_data]
    bufferOffset = BrakeInfoReportData.serialize(obj.brake_info_report_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BrakeInfoReport
    let len;
    let data = new BrakeInfoReport(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [brake_info_report_data]
    data.brake_info_report_data = BrakeInfoReportData.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 60;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/BrakeInfoReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4217cb9b7eb12b8d3bb88d65609a071a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 BRAKE_INFO_REPORT_DATA = 1
    uint8 available
    endpoint_msgs/BrakeInfoReportData brake_info_report_data
    
    ================================================================================
    MSG: endpoint_msgs/BrakeInfoReportData
    uint64 timestamp_us
    float32 accleration_on_wheel
    float32 lateral_accleration_on_wheel
    bool stationary
    bool abs_active
    bool abs_fault
    bool tcs_active
    bool tcs_fault
    bool msr_active
    bool msr_fault
    bool esp_active
    bool esp_fault
    bool tsr_active
    bool tsr_fault
    bool pressure
    float32 brake_torque_delivery
    bool brake_torque_delivery_valid
    float32 brake_regen_torque_delivery
    bool brake_regen_torque_delivery_valid
    float32 brake_frct_torque_delivery
    bool brake_frct_torque_delivery_valid
    float32 master_pressure_delivery
    bool master_pressure_delivery_valid
    float32 pedal_brake_torque
    bool pedal_brake_torque_valid
    bool pkg_fastswitch_enable
    bool vehicle_block
    endpoint_msgs/VehESPSwitch esp_status
    bool vdc_active
    bool vdc_fault
    uint8 reserved
    
    ================================================================================
    MSG: endpoint_msgs/VehESPSwitch
    uint8 NONE = 0
    uint8 ON = 1
    uint8 OFF = 2
    uint8 RESVERD = 3
    uint8 INVALID = 255
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BrakeInfoReport(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.brake_info_report_data !== undefined) {
      resolved.brake_info_report_data = BrakeInfoReportData.Resolve(msg.brake_info_report_data)
    }
    else {
      resolved.brake_info_report_data = new BrakeInfoReportData()
    }

    return resolved;
    }
};

// Constants for message
BrakeInfoReport.Constants = {
  BRAKE_INFO_REPORT_DATA: 1,
}

module.exports = BrakeInfoReport;
