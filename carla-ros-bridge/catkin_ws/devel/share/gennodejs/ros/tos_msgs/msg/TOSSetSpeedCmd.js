// Auto-generated. Do not edit!

// (in-package tos_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class TOSSetSpeedCmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.tos_set_speed = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('tos_set_speed')) {
        this.tos_set_speed = initObj.tos_set_speed
      }
      else {
        this.tos_set_speed = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TOSSetSpeedCmd
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [tos_set_speed]
    bufferOffset = _serializer.float64(obj.tos_set_speed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TOSSetSpeedCmd
    let len;
    let data = new TOSSetSpeedCmd(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [tos_set_speed]
    data.tos_set_speed = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tos_msgs/TOSSetSpeedCmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f16660392dbc6c56c5fcd09450314119';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 available
    float64 tos_set_speed
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TOSSetSpeedCmd(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.tos_set_speed !== undefined) {
      resolved.tos_set_speed = msg.tos_set_speed;
    }
    else {
      resolved.tos_set_speed = 0.0
    }

    return resolved;
    }
};

module.exports = TOSSetSpeedCmd;
