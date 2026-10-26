// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ThrottleType = require('./ThrottleType.js');
let WorkType = require('./WorkType.js');

//-----------------------------------------------------------

class ThrottleReportData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timestamp_us = null;
      this.type = null;
      this.driver_work_type = null;
      this.pedal_input = null;
      this.command = null;
      this.throttle_output = null;
      this.override = null;
      this.vcu_max_neg_torque = null;
      this.vcu_max_pos_torque = null;
      this.vcu_max_neg_torque_valid = null;
      this.vcu_max_pos_torque_valid = null;
      this.vcu_exec_throttle_torque = null;
      this.vcu_exec_throttle_torque_valid = null;
      this.ready = null;
      this.valid = null;
    }
    else {
      if (initObj.hasOwnProperty('timestamp_us')) {
        this.timestamp_us = initObj.timestamp_us
      }
      else {
        this.timestamp_us = 0;
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = new ThrottleType();
      }
      if (initObj.hasOwnProperty('driver_work_type')) {
        this.driver_work_type = initObj.driver_work_type
      }
      else {
        this.driver_work_type = new WorkType();
      }
      if (initObj.hasOwnProperty('pedal_input')) {
        this.pedal_input = initObj.pedal_input
      }
      else {
        this.pedal_input = 0.0;
      }
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = 0.0;
      }
      if (initObj.hasOwnProperty('throttle_output')) {
        this.throttle_output = initObj.throttle_output
      }
      else {
        this.throttle_output = 0.0;
      }
      if (initObj.hasOwnProperty('override')) {
        this.override = initObj.override
      }
      else {
        this.override = false;
      }
      if (initObj.hasOwnProperty('vcu_max_neg_torque')) {
        this.vcu_max_neg_torque = initObj.vcu_max_neg_torque
      }
      else {
        this.vcu_max_neg_torque = 0.0;
      }
      if (initObj.hasOwnProperty('vcu_max_pos_torque')) {
        this.vcu_max_pos_torque = initObj.vcu_max_pos_torque
      }
      else {
        this.vcu_max_pos_torque = 0.0;
      }
      if (initObj.hasOwnProperty('vcu_max_neg_torque_valid')) {
        this.vcu_max_neg_torque_valid = initObj.vcu_max_neg_torque_valid
      }
      else {
        this.vcu_max_neg_torque_valid = false;
      }
      if (initObj.hasOwnProperty('vcu_max_pos_torque_valid')) {
        this.vcu_max_pos_torque_valid = initObj.vcu_max_pos_torque_valid
      }
      else {
        this.vcu_max_pos_torque_valid = false;
      }
      if (initObj.hasOwnProperty('vcu_exec_throttle_torque')) {
        this.vcu_exec_throttle_torque = initObj.vcu_exec_throttle_torque
      }
      else {
        this.vcu_exec_throttle_torque = 0.0;
      }
      if (initObj.hasOwnProperty('vcu_exec_throttle_torque_valid')) {
        this.vcu_exec_throttle_torque_valid = initObj.vcu_exec_throttle_torque_valid
      }
      else {
        this.vcu_exec_throttle_torque_valid = false;
      }
      if (initObj.hasOwnProperty('ready')) {
        this.ready = initObj.ready
      }
      else {
        this.ready = false;
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
    // Serializes a message object of type ThrottleReportData
    // Serialize message field [timestamp_us]
    bufferOffset = _serializer.uint64(obj.timestamp_us, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = ThrottleType.serialize(obj.type, buffer, bufferOffset);
    // Serialize message field [driver_work_type]
    bufferOffset = WorkType.serialize(obj.driver_work_type, buffer, bufferOffset);
    // Serialize message field [pedal_input]
    bufferOffset = _serializer.float32(obj.pedal_input, buffer, bufferOffset);
    // Serialize message field [command]
    bufferOffset = _serializer.float32(obj.command, buffer, bufferOffset);
    // Serialize message field [throttle_output]
    bufferOffset = _serializer.float32(obj.throttle_output, buffer, bufferOffset);
    // Serialize message field [override]
    bufferOffset = _serializer.bool(obj.override, buffer, bufferOffset);
    // Serialize message field [vcu_max_neg_torque]
    bufferOffset = _serializer.float32(obj.vcu_max_neg_torque, buffer, bufferOffset);
    // Serialize message field [vcu_max_pos_torque]
    bufferOffset = _serializer.float32(obj.vcu_max_pos_torque, buffer, bufferOffset);
    // Serialize message field [vcu_max_neg_torque_valid]
    bufferOffset = _serializer.bool(obj.vcu_max_neg_torque_valid, buffer, bufferOffset);
    // Serialize message field [vcu_max_pos_torque_valid]
    bufferOffset = _serializer.bool(obj.vcu_max_pos_torque_valid, buffer, bufferOffset);
    // Serialize message field [vcu_exec_throttle_torque]
    bufferOffset = _serializer.float32(obj.vcu_exec_throttle_torque, buffer, bufferOffset);
    // Serialize message field [vcu_exec_throttle_torque_valid]
    bufferOffset = _serializer.bool(obj.vcu_exec_throttle_torque_valid, buffer, bufferOffset);
    // Serialize message field [ready]
    bufferOffset = _serializer.bool(obj.ready, buffer, bufferOffset);
    // Serialize message field [valid]
    bufferOffset = _serializer.bool(obj.valid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ThrottleReportData
    let len;
    let data = new ThrottleReportData(null);
    // Deserialize message field [timestamp_us]
    data.timestamp_us = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = ThrottleType.deserialize(buffer, bufferOffset);
    // Deserialize message field [driver_work_type]
    data.driver_work_type = WorkType.deserialize(buffer, bufferOffset);
    // Deserialize message field [pedal_input]
    data.pedal_input = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [command]
    data.command = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [throttle_output]
    data.throttle_output = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [override]
    data.override = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [vcu_max_neg_torque]
    data.vcu_max_neg_torque = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vcu_max_pos_torque]
    data.vcu_max_pos_torque = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vcu_max_neg_torque_valid]
    data.vcu_max_neg_torque_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [vcu_max_pos_torque_valid]
    data.vcu_max_pos_torque_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [vcu_exec_throttle_torque]
    data.vcu_exec_throttle_torque = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vcu_exec_throttle_torque_valid]
    data.vcu_exec_throttle_torque_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [ready]
    data.ready = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [valid]
    data.valid = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/ThrottleReportData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '49ebd9dca1e8f74993b8da2ab73bd493';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new ThrottleReportData(null);
    if (msg.timestamp_us !== undefined) {
      resolved.timestamp_us = msg.timestamp_us;
    }
    else {
      resolved.timestamp_us = 0
    }

    if (msg.type !== undefined) {
      resolved.type = ThrottleType.Resolve(msg.type)
    }
    else {
      resolved.type = new ThrottleType()
    }

    if (msg.driver_work_type !== undefined) {
      resolved.driver_work_type = WorkType.Resolve(msg.driver_work_type)
    }
    else {
      resolved.driver_work_type = new WorkType()
    }

    if (msg.pedal_input !== undefined) {
      resolved.pedal_input = msg.pedal_input;
    }
    else {
      resolved.pedal_input = 0.0
    }

    if (msg.command !== undefined) {
      resolved.command = msg.command;
    }
    else {
      resolved.command = 0.0
    }

    if (msg.throttle_output !== undefined) {
      resolved.throttle_output = msg.throttle_output;
    }
    else {
      resolved.throttle_output = 0.0
    }

    if (msg.override !== undefined) {
      resolved.override = msg.override;
    }
    else {
      resolved.override = false
    }

    if (msg.vcu_max_neg_torque !== undefined) {
      resolved.vcu_max_neg_torque = msg.vcu_max_neg_torque;
    }
    else {
      resolved.vcu_max_neg_torque = 0.0
    }

    if (msg.vcu_max_pos_torque !== undefined) {
      resolved.vcu_max_pos_torque = msg.vcu_max_pos_torque;
    }
    else {
      resolved.vcu_max_pos_torque = 0.0
    }

    if (msg.vcu_max_neg_torque_valid !== undefined) {
      resolved.vcu_max_neg_torque_valid = msg.vcu_max_neg_torque_valid;
    }
    else {
      resolved.vcu_max_neg_torque_valid = false
    }

    if (msg.vcu_max_pos_torque_valid !== undefined) {
      resolved.vcu_max_pos_torque_valid = msg.vcu_max_pos_torque_valid;
    }
    else {
      resolved.vcu_max_pos_torque_valid = false
    }

    if (msg.vcu_exec_throttle_torque !== undefined) {
      resolved.vcu_exec_throttle_torque = msg.vcu_exec_throttle_torque;
    }
    else {
      resolved.vcu_exec_throttle_torque = 0.0
    }

    if (msg.vcu_exec_throttle_torque_valid !== undefined) {
      resolved.vcu_exec_throttle_torque_valid = msg.vcu_exec_throttle_torque_valid;
    }
    else {
      resolved.vcu_exec_throttle_torque_valid = false
    }

    if (msg.ready !== undefined) {
      resolved.ready = msg.ready;
    }
    else {
      resolved.ready = false
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

module.exports = ThrottleReportData;
