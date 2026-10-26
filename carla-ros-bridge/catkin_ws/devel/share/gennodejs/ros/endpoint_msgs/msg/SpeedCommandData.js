// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TargetControlMotor = require('./TargetControlMotor.js');
let TargetControlMode = require('./TargetControlMode.js');

//-----------------------------------------------------------

class SpeedCommandData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.speed_enable = null;
      this.toque_unload_enable = null;
      this.speed_command = null;
      this.torque_ffwd_command = null;
      this.target_control_motor = null;
      this.target_control_mode = null;
      this.wheel_torque_lim_max = null;
      this.wheel_torque_lim_min = null;
      this.wheel_torque_rate_max = null;
      this.wheel_torque_rate_min = null;
      this.torque_unload_rate = null;
    }
    else {
      if (initObj.hasOwnProperty('speed_enable')) {
        this.speed_enable = initObj.speed_enable
      }
      else {
        this.speed_enable = false;
      }
      if (initObj.hasOwnProperty('toque_unload_enable')) {
        this.toque_unload_enable = initObj.toque_unload_enable
      }
      else {
        this.toque_unload_enable = false;
      }
      if (initObj.hasOwnProperty('speed_command')) {
        this.speed_command = initObj.speed_command
      }
      else {
        this.speed_command = 0.0;
      }
      if (initObj.hasOwnProperty('torque_ffwd_command')) {
        this.torque_ffwd_command = initObj.torque_ffwd_command
      }
      else {
        this.torque_ffwd_command = 0.0;
      }
      if (initObj.hasOwnProperty('target_control_motor')) {
        this.target_control_motor = initObj.target_control_motor
      }
      else {
        this.target_control_motor = new TargetControlMotor();
      }
      if (initObj.hasOwnProperty('target_control_mode')) {
        this.target_control_mode = initObj.target_control_mode
      }
      else {
        this.target_control_mode = new TargetControlMode();
      }
      if (initObj.hasOwnProperty('wheel_torque_lim_max')) {
        this.wheel_torque_lim_max = initObj.wheel_torque_lim_max
      }
      else {
        this.wheel_torque_lim_max = 0.0;
      }
      if (initObj.hasOwnProperty('wheel_torque_lim_min')) {
        this.wheel_torque_lim_min = initObj.wheel_torque_lim_min
      }
      else {
        this.wheel_torque_lim_min = 0.0;
      }
      if (initObj.hasOwnProperty('wheel_torque_rate_max')) {
        this.wheel_torque_rate_max = initObj.wheel_torque_rate_max
      }
      else {
        this.wheel_torque_rate_max = 0.0;
      }
      if (initObj.hasOwnProperty('wheel_torque_rate_min')) {
        this.wheel_torque_rate_min = initObj.wheel_torque_rate_min
      }
      else {
        this.wheel_torque_rate_min = 0.0;
      }
      if (initObj.hasOwnProperty('torque_unload_rate')) {
        this.torque_unload_rate = initObj.torque_unload_rate
      }
      else {
        this.torque_unload_rate = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SpeedCommandData
    // Serialize message field [speed_enable]
    bufferOffset = _serializer.bool(obj.speed_enable, buffer, bufferOffset);
    // Serialize message field [toque_unload_enable]
    bufferOffset = _serializer.bool(obj.toque_unload_enable, buffer, bufferOffset);
    // Serialize message field [speed_command]
    bufferOffset = _serializer.float32(obj.speed_command, buffer, bufferOffset);
    // Serialize message field [torque_ffwd_command]
    bufferOffset = _serializer.float32(obj.torque_ffwd_command, buffer, bufferOffset);
    // Serialize message field [target_control_motor]
    bufferOffset = TargetControlMotor.serialize(obj.target_control_motor, buffer, bufferOffset);
    // Serialize message field [target_control_mode]
    bufferOffset = TargetControlMode.serialize(obj.target_control_mode, buffer, bufferOffset);
    // Serialize message field [wheel_torque_lim_max]
    bufferOffset = _serializer.float32(obj.wheel_torque_lim_max, buffer, bufferOffset);
    // Serialize message field [wheel_torque_lim_min]
    bufferOffset = _serializer.float32(obj.wheel_torque_lim_min, buffer, bufferOffset);
    // Serialize message field [wheel_torque_rate_max]
    bufferOffset = _serializer.float32(obj.wheel_torque_rate_max, buffer, bufferOffset);
    // Serialize message field [wheel_torque_rate_min]
    bufferOffset = _serializer.float32(obj.wheel_torque_rate_min, buffer, bufferOffset);
    // Serialize message field [torque_unload_rate]
    bufferOffset = _serializer.float32(obj.torque_unload_rate, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SpeedCommandData
    let len;
    let data = new SpeedCommandData(null);
    // Deserialize message field [speed_enable]
    data.speed_enable = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [toque_unload_enable]
    data.toque_unload_enable = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [speed_command]
    data.speed_command = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [torque_ffwd_command]
    data.torque_ffwd_command = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [target_control_motor]
    data.target_control_motor = TargetControlMotor.deserialize(buffer, bufferOffset);
    // Deserialize message field [target_control_mode]
    data.target_control_mode = TargetControlMode.deserialize(buffer, bufferOffset);
    // Deserialize message field [wheel_torque_lim_max]
    data.wheel_torque_lim_max = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [wheel_torque_lim_min]
    data.wheel_torque_lim_min = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [wheel_torque_rate_max]
    data.wheel_torque_rate_max = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [wheel_torque_rate_min]
    data.wheel_torque_rate_min = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [torque_unload_rate]
    data.torque_unload_rate = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/SpeedCommandData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eeb860bee7aa67ec8ce4d5fe72162bb8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool speed_enable
    bool toque_unload_enable
    float32 speed_command
    float32 torque_ffwd_command
    endpoint_msgs/TargetControlMotor target_control_motor
    endpoint_msgs/TargetControlMode target_control_mode
    float32 wheel_torque_lim_max
    float32 wheel_torque_lim_min
    float32 wheel_torque_rate_max
    float32 wheel_torque_rate_min
    float32 torque_unload_rate
    
    ================================================================================
    MSG: endpoint_msgs/TargetControlMotor
    uint8 FL = 0
    uint8 FR = 1
    uint8 RL = 2
    uint8 RR = 3
    uint8 FLFR = 4
    uint8 RLRR = 5
    uint8 RESERVED1 = 6
    uint8 RESERVED2 = 7
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/TargetControlMode
    uint8 NONE = 0
    uint8 TORQUE = 1
    uint8 SPEED = 2
    uint8 RESERVE = 3
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SpeedCommandData(null);
    if (msg.speed_enable !== undefined) {
      resolved.speed_enable = msg.speed_enable;
    }
    else {
      resolved.speed_enable = false
    }

    if (msg.toque_unload_enable !== undefined) {
      resolved.toque_unload_enable = msg.toque_unload_enable;
    }
    else {
      resolved.toque_unload_enable = false
    }

    if (msg.speed_command !== undefined) {
      resolved.speed_command = msg.speed_command;
    }
    else {
      resolved.speed_command = 0.0
    }

    if (msg.torque_ffwd_command !== undefined) {
      resolved.torque_ffwd_command = msg.torque_ffwd_command;
    }
    else {
      resolved.torque_ffwd_command = 0.0
    }

    if (msg.target_control_motor !== undefined) {
      resolved.target_control_motor = TargetControlMotor.Resolve(msg.target_control_motor)
    }
    else {
      resolved.target_control_motor = new TargetControlMotor()
    }

    if (msg.target_control_mode !== undefined) {
      resolved.target_control_mode = TargetControlMode.Resolve(msg.target_control_mode)
    }
    else {
      resolved.target_control_mode = new TargetControlMode()
    }

    if (msg.wheel_torque_lim_max !== undefined) {
      resolved.wheel_torque_lim_max = msg.wheel_torque_lim_max;
    }
    else {
      resolved.wheel_torque_lim_max = 0.0
    }

    if (msg.wheel_torque_lim_min !== undefined) {
      resolved.wheel_torque_lim_min = msg.wheel_torque_lim_min;
    }
    else {
      resolved.wheel_torque_lim_min = 0.0
    }

    if (msg.wheel_torque_rate_max !== undefined) {
      resolved.wheel_torque_rate_max = msg.wheel_torque_rate_max;
    }
    else {
      resolved.wheel_torque_rate_max = 0.0
    }

    if (msg.wheel_torque_rate_min !== undefined) {
      resolved.wheel_torque_rate_min = msg.wheel_torque_rate_min;
    }
    else {
      resolved.wheel_torque_rate_min = 0.0
    }

    if (msg.torque_unload_rate !== undefined) {
      resolved.torque_unload_rate = msg.torque_unload_rate;
    }
    else {
      resolved.torque_unload_rate = 0.0
    }

    return resolved;
    }
};

module.exports = SpeedCommandData;
