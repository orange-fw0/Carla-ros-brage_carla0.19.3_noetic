// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ThrottleCommandData = require('./ThrottleCommandData.js');

//-----------------------------------------------------------

class ThrottleCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.throttle_command_data = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('throttle_command_data')) {
        this.throttle_command_data = initObj.throttle_command_data
      }
      else {
        this.throttle_command_data = new ThrottleCommandData();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ThrottleCommand
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [throttle_command_data]
    bufferOffset = ThrottleCommandData.serialize(obj.throttle_command_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ThrottleCommand
    let len;
    let data = new ThrottleCommand(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [throttle_command_data]
    data.throttle_command_data = ThrottleCommandData.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 15;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/ThrottleCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '316b02c950b344be768d1ff4cdaa63b9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 THROTTLE_COMMAND_DATA = 1
    uint8 available
    endpoint_msgs/ThrottleCommandData throttle_command_data
    
    ================================================================================
    MSG: endpoint_msgs/ThrottleCommandData
    uint64 timestamp_us
    bool throttle_enable
    endpoint_msgs/ThrottleType throttle_type
    float32 throttle_command
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ThrottleCommand(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.throttle_command_data !== undefined) {
      resolved.throttle_command_data = ThrottleCommandData.Resolve(msg.throttle_command_data)
    }
    else {
      resolved.throttle_command_data = new ThrottleCommandData()
    }

    return resolved;
    }
};

// Constants for message
ThrottleCommand.Constants = {
  THROTTLE_COMMAND_DATA: 1,
}

module.exports = ThrottleCommand;
