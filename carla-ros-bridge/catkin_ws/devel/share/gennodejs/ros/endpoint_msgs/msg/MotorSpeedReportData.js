// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MotorSpeedControlStatus = require('./MotorSpeedControlStatus.js');
let McuStuckStatus = require('./McuStuckStatus.js');
let McuStandstillStatus = require('./McuStandstillStatus.js');
let SpdctlFaultMode = require('./SpdctlFaultMode.js');
let SpdctlRollingbackStatus = require('./SpdctlRollingbackStatus.js');

//-----------------------------------------------------------

class MotorSpeedReportData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.motor_speed_control_status = null;
      this.motor_speed = null;
      this.motor_raw_speed = null;
      this.motor_raw_speed_valid = null;
      this.mcu_stuck_status = null;
      this.mcu_standstill_status = null;
      this.spdctl_fault_mode = null;
      this.spdctl_valid = null;
      this.spdctl_rollingback_status = null;
      this.mcu_req_torque = null;
      this.mcu_req_torque_valid = null;
      this.motor_actual_toruqe = null;
      this.motor_actual_toruqe_valid = null;
      this.motor_wheel_regen_torque = null;
      this.motor_wheel_regen_torque_valid = null;
      this.valid = null;
    }
    else {
      if (initObj.hasOwnProperty('motor_speed_control_status')) {
        this.motor_speed_control_status = initObj.motor_speed_control_status
      }
      else {
        this.motor_speed_control_status = new MotorSpeedControlStatus();
      }
      if (initObj.hasOwnProperty('motor_speed')) {
        this.motor_speed = initObj.motor_speed
      }
      else {
        this.motor_speed = 0.0;
      }
      if (initObj.hasOwnProperty('motor_raw_speed')) {
        this.motor_raw_speed = initObj.motor_raw_speed
      }
      else {
        this.motor_raw_speed = 0.0;
      }
      if (initObj.hasOwnProperty('motor_raw_speed_valid')) {
        this.motor_raw_speed_valid = initObj.motor_raw_speed_valid
      }
      else {
        this.motor_raw_speed_valid = false;
      }
      if (initObj.hasOwnProperty('mcu_stuck_status')) {
        this.mcu_stuck_status = initObj.mcu_stuck_status
      }
      else {
        this.mcu_stuck_status = new McuStuckStatus();
      }
      if (initObj.hasOwnProperty('mcu_standstill_status')) {
        this.mcu_standstill_status = initObj.mcu_standstill_status
      }
      else {
        this.mcu_standstill_status = new McuStandstillStatus();
      }
      if (initObj.hasOwnProperty('spdctl_fault_mode')) {
        this.spdctl_fault_mode = initObj.spdctl_fault_mode
      }
      else {
        this.spdctl_fault_mode = new SpdctlFaultMode();
      }
      if (initObj.hasOwnProperty('spdctl_valid')) {
        this.spdctl_valid = initObj.spdctl_valid
      }
      else {
        this.spdctl_valid = false;
      }
      if (initObj.hasOwnProperty('spdctl_rollingback_status')) {
        this.spdctl_rollingback_status = initObj.spdctl_rollingback_status
      }
      else {
        this.spdctl_rollingback_status = new SpdctlRollingbackStatus();
      }
      if (initObj.hasOwnProperty('mcu_req_torque')) {
        this.mcu_req_torque = initObj.mcu_req_torque
      }
      else {
        this.mcu_req_torque = 0.0;
      }
      if (initObj.hasOwnProperty('mcu_req_torque_valid')) {
        this.mcu_req_torque_valid = initObj.mcu_req_torque_valid
      }
      else {
        this.mcu_req_torque_valid = false;
      }
      if (initObj.hasOwnProperty('motor_actual_toruqe')) {
        this.motor_actual_toruqe = initObj.motor_actual_toruqe
      }
      else {
        this.motor_actual_toruqe = 0.0;
      }
      if (initObj.hasOwnProperty('motor_actual_toruqe_valid')) {
        this.motor_actual_toruqe_valid = initObj.motor_actual_toruqe_valid
      }
      else {
        this.motor_actual_toruqe_valid = false;
      }
      if (initObj.hasOwnProperty('motor_wheel_regen_torque')) {
        this.motor_wheel_regen_torque = initObj.motor_wheel_regen_torque
      }
      else {
        this.motor_wheel_regen_torque = 0.0;
      }
      if (initObj.hasOwnProperty('motor_wheel_regen_torque_valid')) {
        this.motor_wheel_regen_torque_valid = initObj.motor_wheel_regen_torque_valid
      }
      else {
        this.motor_wheel_regen_torque_valid = false;
      }
      if (initObj.hasOwnProperty('valid')) {
        this.valid = initObj.valid
      }
      else {
        this.valid = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MotorSpeedReportData
    // Serialize message field [motor_speed_control_status]
    bufferOffset = MotorSpeedControlStatus.serialize(obj.motor_speed_control_status, buffer, bufferOffset);
    // Serialize message field [motor_speed]
    bufferOffset = _serializer.float32(obj.motor_speed, buffer, bufferOffset);
    // Serialize message field [motor_raw_speed]
    bufferOffset = _serializer.float32(obj.motor_raw_speed, buffer, bufferOffset);
    // Serialize message field [motor_raw_speed_valid]
    bufferOffset = _serializer.bool(obj.motor_raw_speed_valid, buffer, bufferOffset);
    // Serialize message field [mcu_stuck_status]
    bufferOffset = McuStuckStatus.serialize(obj.mcu_stuck_status, buffer, bufferOffset);
    // Serialize message field [mcu_standstill_status]
    bufferOffset = McuStandstillStatus.serialize(obj.mcu_standstill_status, buffer, bufferOffset);
    // Serialize message field [spdctl_fault_mode]
    bufferOffset = SpdctlFaultMode.serialize(obj.spdctl_fault_mode, buffer, bufferOffset);
    // Serialize message field [spdctl_valid]
    bufferOffset = _serializer.bool(obj.spdctl_valid, buffer, bufferOffset);
    // Serialize message field [spdctl_rollingback_status]
    bufferOffset = SpdctlRollingbackStatus.serialize(obj.spdctl_rollingback_status, buffer, bufferOffset);
    // Serialize message field [mcu_req_torque]
    bufferOffset = _serializer.float32(obj.mcu_req_torque, buffer, bufferOffset);
    // Serialize message field [mcu_req_torque_valid]
    bufferOffset = _serializer.bool(obj.mcu_req_torque_valid, buffer, bufferOffset);
    // Serialize message field [motor_actual_toruqe]
    bufferOffset = _serializer.float32(obj.motor_actual_toruqe, buffer, bufferOffset);
    // Serialize message field [motor_actual_toruqe_valid]
    bufferOffset = _serializer.bool(obj.motor_actual_toruqe_valid, buffer, bufferOffset);
    // Serialize message field [motor_wheel_regen_torque]
    bufferOffset = _serializer.float32(obj.motor_wheel_regen_torque, buffer, bufferOffset);
    // Serialize message field [motor_wheel_regen_torque_valid]
    bufferOffset = _serializer.bool(obj.motor_wheel_regen_torque_valid, buffer, bufferOffset);
    // Serialize message field [valid]
    bufferOffset = _serializer.bool(obj.valid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MotorSpeedReportData
    let len;
    let data = new MotorSpeedReportData(null);
    // Deserialize message field [motor_speed_control_status]
    data.motor_speed_control_status = MotorSpeedControlStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [motor_speed]
    data.motor_speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [motor_raw_speed]
    data.motor_raw_speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [motor_raw_speed_valid]
    data.motor_raw_speed_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [mcu_stuck_status]
    data.mcu_stuck_status = McuStuckStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [mcu_standstill_status]
    data.mcu_standstill_status = McuStandstillStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [spdctl_fault_mode]
    data.spdctl_fault_mode = SpdctlFaultMode.deserialize(buffer, bufferOffset);
    // Deserialize message field [spdctl_valid]
    data.spdctl_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [spdctl_rollingback_status]
    data.spdctl_rollingback_status = SpdctlRollingbackStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [mcu_req_torque]
    data.mcu_req_torque = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [mcu_req_torque_valid]
    data.mcu_req_torque_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [motor_actual_toruqe]
    data.motor_actual_toruqe = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [motor_actual_toruqe_valid]
    data.motor_actual_toruqe_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [motor_wheel_regen_torque]
    data.motor_wheel_regen_torque = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [motor_wheel_regen_torque_valid]
    data.motor_wheel_regen_torque_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [valid]
    data.valid = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 31;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/MotorSpeedReportData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '78d9de3bca84bb959c33e02d23d6c824';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new MotorSpeedReportData(null);
    if (msg.motor_speed_control_status !== undefined) {
      resolved.motor_speed_control_status = MotorSpeedControlStatus.Resolve(msg.motor_speed_control_status)
    }
    else {
      resolved.motor_speed_control_status = new MotorSpeedControlStatus()
    }

    if (msg.motor_speed !== undefined) {
      resolved.motor_speed = msg.motor_speed;
    }
    else {
      resolved.motor_speed = 0.0
    }

    if (msg.motor_raw_speed !== undefined) {
      resolved.motor_raw_speed = msg.motor_raw_speed;
    }
    else {
      resolved.motor_raw_speed = 0.0
    }

    if (msg.motor_raw_speed_valid !== undefined) {
      resolved.motor_raw_speed_valid = msg.motor_raw_speed_valid;
    }
    else {
      resolved.motor_raw_speed_valid = false
    }

    if (msg.mcu_stuck_status !== undefined) {
      resolved.mcu_stuck_status = McuStuckStatus.Resolve(msg.mcu_stuck_status)
    }
    else {
      resolved.mcu_stuck_status = new McuStuckStatus()
    }

    if (msg.mcu_standstill_status !== undefined) {
      resolved.mcu_standstill_status = McuStandstillStatus.Resolve(msg.mcu_standstill_status)
    }
    else {
      resolved.mcu_standstill_status = new McuStandstillStatus()
    }

    if (msg.spdctl_fault_mode !== undefined) {
      resolved.spdctl_fault_mode = SpdctlFaultMode.Resolve(msg.spdctl_fault_mode)
    }
    else {
      resolved.spdctl_fault_mode = new SpdctlFaultMode()
    }

    if (msg.spdctl_valid !== undefined) {
      resolved.spdctl_valid = msg.spdctl_valid;
    }
    else {
      resolved.spdctl_valid = false
    }

    if (msg.spdctl_rollingback_status !== undefined) {
      resolved.spdctl_rollingback_status = SpdctlRollingbackStatus.Resolve(msg.spdctl_rollingback_status)
    }
    else {
      resolved.spdctl_rollingback_status = new SpdctlRollingbackStatus()
    }

    if (msg.mcu_req_torque !== undefined) {
      resolved.mcu_req_torque = msg.mcu_req_torque;
    }
    else {
      resolved.mcu_req_torque = 0.0
    }

    if (msg.mcu_req_torque_valid !== undefined) {
      resolved.mcu_req_torque_valid = msg.mcu_req_torque_valid;
    }
    else {
      resolved.mcu_req_torque_valid = false
    }

    if (msg.motor_actual_toruqe !== undefined) {
      resolved.motor_actual_toruqe = msg.motor_actual_toruqe;
    }
    else {
      resolved.motor_actual_toruqe = 0.0
    }

    if (msg.motor_actual_toruqe_valid !== undefined) {
      resolved.motor_actual_toruqe_valid = msg.motor_actual_toruqe_valid;
    }
    else {
      resolved.motor_actual_toruqe_valid = false
    }

    if (msg.motor_wheel_regen_torque !== undefined) {
      resolved.motor_wheel_regen_torque = msg.motor_wheel_regen_torque;
    }
    else {
      resolved.motor_wheel_regen_torque = 0.0
    }

    if (msg.motor_wheel_regen_torque_valid !== undefined) {
      resolved.motor_wheel_regen_torque_valid = msg.motor_wheel_regen_torque_valid;
    }
    else {
      resolved.motor_wheel_regen_torque_valid = false
    }

    if (msg.valid !== undefined) {
      resolved.valid = msg.valid;
    }
    else {
      resolved.valid = false
    }

    return resolved;
    }
};

module.exports = MotorSpeedReportData;
