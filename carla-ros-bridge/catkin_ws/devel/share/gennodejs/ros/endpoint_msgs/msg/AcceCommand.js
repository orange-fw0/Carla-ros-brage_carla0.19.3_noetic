// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let AcceCommandData = require('./AcceCommandData.js');

//-----------------------------------------------------------

class AcceCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.acce_command_data = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('acce_command_data')) {
        this.acce_command_data = initObj.acce_command_data
      }
      else {
        this.acce_command_data = new AcceCommandData();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AcceCommand
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [acce_command_data]
    bufferOffset = AcceCommandData.serialize(obj.acce_command_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AcceCommand
    let len;
    let data = new AcceCommand(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [acce_command_data]
    data.acce_command_data = AcceCommandData.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 14;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/AcceCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2f6de581af5b4a3715678c4b86420f26';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 ACCE_COMMAND_DATA = 1
    uint8 available
    endpoint_msgs/AcceCommandData acce_command_data
    
    ================================================================================
    MSG: endpoint_msgs/AcceCommandData
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
    const resolved = new AcceCommand(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.acce_command_data !== undefined) {
      resolved.acce_command_data = AcceCommandData.Resolve(msg.acce_command_data)
    }
    else {
      resolved.acce_command_data = new AcceCommandData()
    }

    return resolved;
    }
};

// Constants for message
AcceCommand.Constants = {
  ACCE_COMMAND_DATA: 1,
}

module.exports = AcceCommand;
