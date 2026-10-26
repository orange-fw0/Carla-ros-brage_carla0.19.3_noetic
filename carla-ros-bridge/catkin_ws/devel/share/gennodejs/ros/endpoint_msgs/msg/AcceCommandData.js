// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class AcceCommandData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timestamp_us = null;
      this.command_value = null;
      this.acce_command_enable = null;
    }
    else {
      if (initObj.hasOwnProperty('timestamp_us')) {
        this.timestamp_us = initObj.timestamp_us
      }
      else {
        this.timestamp_us = 0;
      }
      if (initObj.hasOwnProperty('command_value')) {
        this.command_value = initObj.command_value
      }
      else {
        this.command_value = 0.0;
      }
      if (initObj.hasOwnProperty('acce_command_enable')) {
        this.acce_command_enable = initObj.acce_command_enable
      }
      else {
        this.acce_command_enable = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AcceCommandData
    // Serialize message field [timestamp_us]
    bufferOffset = _serializer.uint64(obj.timestamp_us, buffer, bufferOffset);
    // Serialize message field [command_value]
    bufferOffset = _serializer.float32(obj.command_value, buffer, bufferOffset);
    // Serialize message field [acce_command_enable]
    bufferOffset = _serializer.bool(obj.acce_command_enable, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AcceCommandData
    let len;
    let data = new AcceCommandData(null);
    // Deserialize message field [timestamp_us]
    data.timestamp_us = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [command_value]
    data.command_value = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [acce_command_enable]
    data.acce_command_enable = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/AcceCommandData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '929517698b792fe3c6915383573116b6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 timestamp_us
    float32 command_value
    bool acce_command_enable
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AcceCommandData(null);
    if (msg.timestamp_us !== undefined) {
      resolved.timestamp_us = msg.timestamp_us;
    }
    else {
      resolved.timestamp_us = 0
    }

    if (msg.command_value !== undefined) {
      resolved.command_value = msg.command_value;
    }
    else {
      resolved.command_value = 0.0
    }

    if (msg.acce_command_enable !== undefined) {
      resolved.acce_command_enable = msg.acce_command_enable;
    }
    else {
      resolved.acce_command_enable = false
    }

    return resolved;
    }
};

module.exports = AcceCommandData;
