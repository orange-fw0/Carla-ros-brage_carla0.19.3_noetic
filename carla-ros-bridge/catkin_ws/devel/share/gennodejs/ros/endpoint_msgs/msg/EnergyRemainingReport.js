// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let EnergyRemainingReportData = require('./EnergyRemainingReportData.js');

//-----------------------------------------------------------

class EnergyRemainingReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.energy_remaining_report_data = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('energy_remaining_report_data')) {
        this.energy_remaining_report_data = initObj.energy_remaining_report_data
      }
      else {
        this.energy_remaining_report_data = new EnergyRemainingReportData();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EnergyRemainingReport
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [energy_remaining_report_data]
    bufferOffset = EnergyRemainingReportData.serialize(obj.energy_remaining_report_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EnergyRemainingReport
    let len;
    let data = new EnergyRemainingReport(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [energy_remaining_report_data]
    data.energy_remaining_report_data = EnergyRemainingReportData.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 18;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/EnergyRemainingReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '67632ed96489635b9c2922977d559b76';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 ENERGY_REMAINING_REPORT_DATA = 1
    uint8 available
    endpoint_msgs/EnergyRemainingReportData energy_remaining_report_data
    
    ================================================================================
    MSG: endpoint_msgs/EnergyRemainingReportData
    uint64 timestamp_us
    float32 level
    float32 remaining_mileage
    bool valid
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EnergyRemainingReport(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.energy_remaining_report_data !== undefined) {
      resolved.energy_remaining_report_data = EnergyRemainingReportData.Resolve(msg.energy_remaining_report_data)
    }
    else {
      resolved.energy_remaining_report_data = new EnergyRemainingReportData()
    }

    return resolved;
    }
};

// Constants for message
EnergyRemainingReport.Constants = {
  ENERGY_REMAINING_REPORT_DATA: 1,
}

module.exports = EnergyRemainingReport;
