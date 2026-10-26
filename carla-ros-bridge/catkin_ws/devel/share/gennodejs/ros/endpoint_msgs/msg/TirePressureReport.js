// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TirePressureReportData = require('./TirePressureReportData.js');

//-----------------------------------------------------------

class TirePressureReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.tire_pressure_report_data = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('tire_pressure_report_data')) {
        this.tire_pressure_report_data = initObj.tire_pressure_report_data
      }
      else {
        this.tire_pressure_report_data = new TirePressureReportData();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TirePressureReport
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [tire_pressure_report_data]
    bufferOffset = TirePressureReportData.serialize(obj.tire_pressure_report_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TirePressureReport
    let len;
    let data = new TirePressureReport(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [tire_pressure_report_data]
    data.tire_pressure_report_data = TirePressureReportData.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 26;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/TirePressureReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '99880e90926d831c93e6c0ef60107cde';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 TIRE_PRESSURE_REPORT_DATA = 1
    uint8 available
    endpoint_msgs/TirePressureReportData tire_pressure_report_data
    
    ================================================================================
    MSG: endpoint_msgs/TirePressureReportData
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
    const resolved = new TirePressureReport(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.tire_pressure_report_data !== undefined) {
      resolved.tire_pressure_report_data = TirePressureReportData.Resolve(msg.tire_pressure_report_data)
    }
    else {
      resolved.tire_pressure_report_data = new TirePressureReportData()
    }

    return resolved;
    }
};

// Constants for message
TirePressureReport.Constants = {
  TIRE_PRESSURE_REPORT_DATA: 1,
}

module.exports = TirePressureReport;
