// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let WindowCommandData = require('./WindowCommandData.js');

//-----------------------------------------------------------

class WindowCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.window_command_data = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('window_command_data')) {
        this.window_command_data = initObj.window_command_data
      }
      else {
        this.window_command_data = new WindowCommandData();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WindowCommand
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [window_command_data]
    bufferOffset = WindowCommandData.serialize(obj.window_command_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WindowCommand
    let len;
    let data = new WindowCommand(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [window_command_data]
    data.window_command_data = WindowCommandData.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 15;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/WindowCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '48ff333a635b2a168eadf988567f71f5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 WINDOW_COMMAND_DATA = 1
    uint8 available
    endpoint_msgs/WindowCommandData window_command_data
    
    ================================================================================
    MSG: endpoint_msgs/WindowCommandData
    uint64 timestamp_us
    bool window_lock
    endpoint_msgs/WindowType window_left_front
    endpoint_msgs/WindowType window_right_front
    endpoint_msgs/WindowType window_left_rear
    endpoint_msgs/WindowType window_right_rear
    endpoint_msgs/WindowType window_top
    
    ================================================================================
    MSG: endpoint_msgs/WindowType
    uint8 LIFT_STOP = 0
    uint8 LIFT_UP = 1
    uint8 LIFT_DOWN = 2
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WindowCommand(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.window_command_data !== undefined) {
      resolved.window_command_data = WindowCommandData.Resolve(msg.window_command_data)
    }
    else {
      resolved.window_command_data = new WindowCommandData()
    }

    return resolved;
    }
};

// Constants for message
WindowCommand.Constants = {
  WINDOW_COMMAND_DATA: 1,
}

module.exports = WindowCommand;
