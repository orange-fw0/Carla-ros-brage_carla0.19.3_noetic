// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MotorSpeedReportData = require('./MotorSpeedReportData.js');

//-----------------------------------------------------------

class MotorSpeedReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.motor_speed_report_data_fl = null;
      this.motor_speed_report_data_fr = null;
      this.motor_speed_report_data_rl = null;
      this.motor_speed_report_data_rr = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('motor_speed_report_data_fl')) {
        this.motor_speed_report_data_fl = initObj.motor_speed_report_data_fl
      }
      else {
        this.motor_speed_report_data_fl = new MotorSpeedReportData();
      }
      if (initObj.hasOwnProperty('motor_speed_report_data_fr')) {
        this.motor_speed_report_data_fr = initObj.motor_speed_report_data_fr
      }
      else {
        this.motor_speed_report_data_fr = new MotorSpeedReportData();
      }
      if (initObj.hasOwnProperty('motor_speed_report_data_rl')) {
        this.motor_speed_report_data_rl = initObj.motor_speed_report_data_rl
      }
      else {
        this.motor_speed_report_data_rl = new MotorSpeedReportData();
      }
      if (initObj.hasOwnProperty('motor_speed_report_data_rr')) {
        this.motor_speed_report_data_rr = initObj.motor_speed_report_data_rr
      }
      else {
        this.motor_speed_report_data_rr = new MotorSpeedReportData();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MotorSpeedReport
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [motor_speed_report_data_fl]
    bufferOffset = MotorSpeedReportData.serialize(obj.motor_speed_report_data_fl, buffer, bufferOffset);
    // Serialize message field [motor_speed_report_data_fr]
    bufferOffset = MotorSpeedReportData.serialize(obj.motor_speed_report_data_fr, buffer, bufferOffset);
    // Serialize message field [motor_speed_report_data_rl]
    bufferOffset = MotorSpeedReportData.serialize(obj.motor_speed_report_data_rl, buffer, bufferOffset);
    // Serialize message field [motor_speed_report_data_rr]
    bufferOffset = MotorSpeedReportData.serialize(obj.motor_speed_report_data_rr, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MotorSpeedReport
    let len;
    let data = new MotorSpeedReport(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [motor_speed_report_data_fl]
    data.motor_speed_report_data_fl = MotorSpeedReportData.deserialize(buffer, bufferOffset);
    // Deserialize message field [motor_speed_report_data_fr]
    data.motor_speed_report_data_fr = MotorSpeedReportData.deserialize(buffer, bufferOffset);
    // Deserialize message field [motor_speed_report_data_rl]
    data.motor_speed_report_data_rl = MotorSpeedReportData.deserialize(buffer, bufferOffset);
    // Deserialize message field [motor_speed_report_data_rr]
    data.motor_speed_report_data_rr = MotorSpeedReportData.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 125;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/MotorSpeedReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bc949b95d6d8dc86d0bb61e9b2e01c07';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 MOTOR_SPEED_REPORT_DATA = 1
    uint8 available
    endpoint_msgs/MotorSpeedReportData motor_speed_report_data_fl
    endpoint_msgs/MotorSpeedReportData motor_speed_report_data_fr
    endpoint_msgs/MotorSpeedReportData motor_speed_report_data_rl
    endpoint_msgs/MotorSpeedReportData motor_speed_report_data_rr
    
    ================================================================================
    MSG: endpoint_msgs/MotorSpeedReportData
    endpoint_msgs/MotorSpeedControlStatus motor_speed_control_status
    float32 motor_speed
    float32 motor_raw_speed
    bool motor_raw_speed_valid
    endpoint_msgs/McuStuckStatus mcu_stuck_status
    endpoint_msgs/McuStandstillStatus mcu_standstill_status
    endpoint_msgs/SpdctlFaultMode spdctl_fault_mode
    bool spdctl_valid
    endpoint_msgs/SpdctlRollingbackStatus spdctl_rollingback_status
    float32 mcu_req_torque
    bool mcu_req_torque_valid
    float32 motor_actual_toruqe
    bool motor_actual_toruqe_valid
    float32 motor_wheel_regen_torque
    bool motor_wheel_regen_torque_valid
    bool valid
    
    ================================================================================
    MSG: endpoint_msgs/MotorSpeedControlStatus
    uint8 NONE = 0
    uint8 NO_ACTIVE = 1
    uint8 ACTIVE = 2
    uint8 RESERVED1 = 3
    uint8 RESERVED2 = 4
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/McuStuckStatus
    uint8 NONE = 0
    uint8 NO_STUCK = 1
    uint8 STUCK = 2
    uint8 RESERVED1 = 3
    uint8 RESERVED2 = 4
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/McuStandstillStatus
    uint8 NONE = 0
    uint8 NO_STANDSTILL = 1
    uint8 STANDSTILL = 2
    uint8 RESERVED1 = 3
    uint8 RESERVED2 = 4
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/SpdctlFaultMode
    uint8 NONE = 0
    uint8 NO_FAULT = 1
    uint8 FAULT1 = 2
    uint8 FAULT2 = 3
    uint8 RESERVED1 = 4
    uint8 RESERVED2 = 5
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/SpdctlRollingbackStatus
    uint8 NONE = 0
    uint8 NO_SILDE = 1
    uint8 SILDE = 2
    uint8 RESERVED1 = 3
    uint8 RESERVED2 = 4
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MotorSpeedReport(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.motor_speed_report_data_fl !== undefined) {
      resolved.motor_speed_report_data_fl = MotorSpeedReportData.Resolve(msg.motor_speed_report_data_fl)
    }
    else {
      resolved.motor_speed_report_data_fl = new MotorSpeedReportData()
    }

    if (msg.motor_speed_report_data_fr !== undefined) {
      resolved.motor_speed_report_data_fr = MotorSpeedReportData.Resolve(msg.motor_speed_report_data_fr)
    }
    else {
      resolved.motor_speed_report_data_fr = new MotorSpeedReportData()
    }

    if (msg.motor_speed_report_data_rl !== undefined) {
      resolved.motor_speed_report_data_rl = MotorSpeedReportData.Resolve(msg.motor_speed_report_data_rl)
    }
    else {
      resolved.motor_speed_report_data_rl = new MotorSpeedReportData()
    }

    if (msg.motor_speed_report_data_rr !== undefined) {
      resolved.motor_speed_report_data_rr = MotorSpeedReportData.Resolve(msg.motor_speed_report_data_rr)
    }
    else {
      resolved.motor_speed_report_data_rr = new MotorSpeedReportData()
    }

    return resolved;
    }
};

// Constants for message
MotorSpeedReport.Constants = {
  MOTOR_SPEED_REPORT_DATA: 1,
}

module.exports = MotorSpeedReport;
