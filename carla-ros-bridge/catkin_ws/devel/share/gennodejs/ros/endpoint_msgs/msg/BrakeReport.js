// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let BrakeReportData = require('./BrakeReportData.js');

//-----------------------------------------------------------

class BrakeReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.brake_report_data = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('brake_report_data')) {
        this.brake_report_data = initObj.brake_report_data
      }
      else {
        this.brake_report_data = new BrakeReportData();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BrakeReport
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [brake_report_data]
    bufferOffset = BrakeReportData.serialize(obj.brake_report_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BrakeReport
    let len;
    let data = new BrakeReport(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [brake_report_data]
    data.brake_report_data = BrakeReportData.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 31;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/BrakeReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5d0730876c9eaa82cf827c44cc09db2f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 BRAKE_REPORT_DATA = 1
    uint8 available
    endpoint_msgs/BrakeReportData brake_report_data
    
    ================================================================================
    MSG: endpoint_msgs/BrakeReportData
    uint64 timestamp_us
    endpoint_msgs/WorkType driver_work_type
    endpoint_msgs/BrakeType brake_type
    float32 pedal_input
    float32 brake_command
    float32 brake_output
    bool override
    float32 ahb_exec_brake_force
    bool ahb_exec_brake_force_valid
    bool ready
    bool valid
    
    ================================================================================
    MSG: endpoint_msgs/WorkType
    uint8 MANUALPILOT = 0
    uint8 AUTOPILOT_PILOT = 1
    uint8 AUTOPILOT_APA = 2
    uint8 AUTOPILOT_ACC = 3
    uint8 AUTOPILOT_RESERVED1 = 4
    uint8 AUTOPILOT_RESERVED2 = 5
    uint8 AUTOPILOT_RESERVED3 = 6
    uint8 AUTOPILOT_RESERVED4 = 7
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/BrakeType
    uint8 PEDAL = 1
    uint8 DECELERATION = 2
    uint8 MASTER_CYLINDERPRESSURE = 3
    uint8 WHEEL_CYLINDERPRESSURE = 4
    uint8 TORQUE = 5
    uint8 DISTANCE = 6
    uint8 SV = 7
    uint8 RESERVED = 8
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BrakeReport(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.brake_report_data !== undefined) {
      resolved.brake_report_data = BrakeReportData.Resolve(msg.brake_report_data)
    }
    else {
      resolved.brake_report_data = new BrakeReportData()
    }

    return resolved;
    }
};

// Constants for message
BrakeReport.Constants = {
  BRAKE_REPORT_DATA: 1,
}

module.exports = BrakeReport;
