// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let WireControlTypeCommandData = require('./WireControlTypeCommandData.js');

//-----------------------------------------------------------

class WireControlTypeCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.wire_control_command_data = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('wire_control_command_data')) {
        this.wire_control_command_data = initObj.wire_control_command_data
      }
      else {
        this.wire_control_command_data = new WireControlTypeCommandData();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WireControlTypeCommand
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [wire_control_command_data]
    bufferOffset = WireControlTypeCommandData.serialize(obj.wire_control_command_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WireControlTypeCommand
    let len;
    let data = new WireControlTypeCommand(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [wire_control_command_data]
    data.wire_control_command_data = WireControlTypeCommandData.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/WireControlTypeCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8feecdf63f47b53b2d0bd3053eca8d62';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 WIRE_CONTROL_TYPE_COMMAND_DATA = 1
    uint8 available
    endpoint_msgs/WireControlTypeCommandData wire_control_command_data
    
    ================================================================================
    MSG: endpoint_msgs/WireControlTypeCommandData
    uint64 timestamp_us
    endpoint_msgs/WireControlType wire_type
    
    ================================================================================
    MSG: endpoint_msgs/WireControlType
    uint8 SYETEM_REQ_NONE = 0
    uint8 SYSTEM_REQ_PILOT = 1
    uint8 SYSTEM_REQ_APA = 2
    uint8 SYSTEM_REQ_ACC = 3
    uint8 SYSTEM_REQ_AVP = 4
    uint8 SYSTEM_REQ_LVP = 5
    uint8 SYSTEM_REQ_MRC = 6
    uint8 RESERVED = 7
    uint8 wire_control_type
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WireControlTypeCommand(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.wire_control_command_data !== undefined) {
      resolved.wire_control_command_data = WireControlTypeCommandData.Resolve(msg.wire_control_command_data)
    }
    else {
      resolved.wire_control_command_data = new WireControlTypeCommandData()
    }

    return resolved;
    }
};

// Constants for message
WireControlTypeCommand.Constants = {
  WIRE_CONTROL_TYPE_COMMAND_DATA: 1,
}

module.exports = WireControlTypeCommand;
