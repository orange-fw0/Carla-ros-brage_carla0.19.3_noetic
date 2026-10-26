// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ThrottleReportData = require('./ThrottleReportData.js');

//-----------------------------------------------------------

class ThrottleReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.throttle_report_data = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('throttle_report_data')) {
        this.throttle_report_data = initObj.throttle_report_data
      }
      else {
        this.throttle_report_data = new ThrottleReportData();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ThrottleReport
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [throttle_report_data]
    bufferOffset = ThrottleReportData.serialize(obj.throttle_report_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ThrottleReport
    let len;
    let data = new ThrottleReport(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [throttle_report_data]
    data.throttle_report_data = ThrottleReportData.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 41;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/ThrottleReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a48388cf1431a355752b5ba78a20f789';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 THROTTLE_REPORT_DATA = 1
    uint8 available
    endpoint_msgs/ThrottleReportData throttle_report_data
    
    ================================================================================
    MSG: endpoint_msgs/ThrottleReportData
    uint64 timestamp_us
    endpoint_msgs/ThrottleType type
    endpoint_msgs/WorkType driver_work_type
    float32 pedal_input
    float32 command
    float32 throttle_output
    bool override
    float32 vcu_max_neg_torque
    float32 vcu_max_pos_torque
    bool vcu_max_neg_torque_valid
    bool vcu_max_pos_torque_valid
    float32 vcu_exec_throttle_torque
    bool vcu_exec_throttle_torque_valid
    bool ready
    bool valid
    
    ================================================================================
    MSG: endpoint_msgs/ThrottleType
    uint8 PEDAL = 0
    uint8 THROTTLE = 1
    uint8 TORQUE = 2
    uint8 ACCELERATION = 3
    uint8 SPEED = 4
    uint8 SV = 5
    uint8 RESERVED = 6
    uint8 value
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ThrottleReport(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.throttle_report_data !== undefined) {
      resolved.throttle_report_data = ThrottleReportData.Resolve(msg.throttle_report_data)
    }
    else {
      resolved.throttle_report_data = new ThrottleReportData()
    }

    return resolved;
    }
};

// Constants for message
ThrottleReport.Constants = {
  THROTTLE_REPORT_DATA: 1,
}

module.exports = ThrottleReport;
