// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SpeedCommandData = require('./SpeedCommandData.js');

//-----------------------------------------------------------

class SpeedCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.speed_command_data = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('speed_command_data')) {
        this.speed_command_data = initObj.speed_command_data
      }
      else {
        this.speed_command_data = new SpeedCommandData();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SpeedCommand
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [speed_command_data]
    bufferOffset = SpeedCommandData.serialize(obj.speed_command_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SpeedCommand
    let len;
    let data = new SpeedCommand(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [speed_command_data]
    data.speed_command_data = SpeedCommandData.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 33;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/SpeedCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a76bd53896f49e2b39dd5a952c5ca801';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 SPEED_COMMAND_DATA = 1
    uint8 available
    endpoint_msgs/SpeedCommandData speed_command_data
    
    ================================================================================
    MSG: endpoint_msgs/SpeedCommandData
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
    const resolved = new SpeedCommand(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.speed_command_data !== undefined) {
      resolved.speed_command_data = SpeedCommandData.Resolve(msg.speed_command_data)
    }
    else {
      resolved.speed_command_data = new SpeedCommandData()
    }

    return resolved;
    }
};

// Constants for message
SpeedCommand.Constants = {
  SPEED_COMMAND_DATA: 1,
}

module.exports = SpeedCommand;
