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

//-----------------------------------------------------------

class ThrottleCommandData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timestamp_us = null;
      this.throttle_enable = null;
      this.throttle_type = null;
      this.throttle_command = null;
    }
    else {
      if (initObj.hasOwnProperty('timestamp_us')) {
        this.timestamp_us = initObj.timestamp_us
      }
      else {
        this.timestamp_us = 0;
      }
      if (initObj.hasOwnProperty('throttle_enable')) {
        this.throttle_enable = initObj.throttle_enable
      }
      else {
        this.throttle_enable = false;
      }
      if (initObj.hasOwnProperty('throttle_type')) {
        this.throttle_type = initObj.throttle_type
      }
      else {
        this.throttle_type = new ThrottleType();
      }
      if (initObj.hasOwnProperty('throttle_command')) {
        this.throttle_command = initObj.throttle_command
      }
      else {
        this.throttle_command = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ThrottleCommandData
    // Serialize message field [timestamp_us]
    bufferOffset = _serializer.uint64(obj.timestamp_us, buffer, bufferOffset);
    // Serialize message field [throttle_enable]
    bufferOffset = _serializer.bool(obj.throttle_enable, buffer, bufferOffset);
    // Serialize message field [throttle_type]
    bufferOffset = ThrottleType.serialize(obj.throttle_type, buffer, bufferOffset);
    // Serialize message field [throttle_command]
    bufferOffset = _serializer.float32(obj.throttle_command, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ThrottleCommandData
    let len;
    let data = new ThrottleCommandData(null);
    // Deserialize message field [timestamp_us]
    data.timestamp_us = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [throttle_enable]
    data.throttle_enable = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [throttle_type]
    data.throttle_type = ThrottleType.deserialize(buffer, bufferOffset);
    // Deserialize message field [throttle_command]
    data.throttle_command = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 14;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/ThrottleCommandData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5fac3cfd380ece3f6d32ce8bb7b2795d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new ThrottleCommandData(null);
    if (msg.timestamp_us !== undefined) {
      resolved.timestamp_us = msg.timestamp_us;
    }
    else {
      resolved.timestamp_us = 0
    }

    if (msg.throttle_enable !== undefined) {
      resolved.throttle_enable = msg.throttle_enable;
    }
    else {
      resolved.throttle_enable = false
    }

    if (msg.throttle_type !== undefined) {
      resolved.throttle_type = ThrottleType.Resolve(msg.throttle_type)
    }
    else {
      resolved.throttle_type = new ThrottleType()
    }

    if (msg.throttle_command !== undefined) {
      resolved.throttle_command = msg.throttle_command;
    }
    else {
      resolved.throttle_command = 0.0
    }

    return resolved;
    }
};

module.exports = ThrottleCommandData;
