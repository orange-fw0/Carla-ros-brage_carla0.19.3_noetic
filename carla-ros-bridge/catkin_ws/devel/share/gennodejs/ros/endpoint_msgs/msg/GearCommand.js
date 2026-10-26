// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let GearCommandData = require('./GearCommandData.js');

//-----------------------------------------------------------

class GearCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.gear_command_data = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('gear_command_data')) {
        this.gear_command_data = initObj.gear_command_data
      }
      else {
        this.gear_command_data = new GearCommandData();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GearCommand
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [gear_command_data]
    bufferOffset = GearCommandData.serialize(obj.gear_command_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GearCommand
    let len;
    let data = new GearCommand(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [gear_command_data]
    data.gear_command_data = GearCommandData.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 11;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/GearCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '15582187c9de1557d187ccf881085401';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 GEAR_COMMAND_DATA = 1
    uint8 available
    endpoint_msgs/GearCommandData gear_command_data
    
    ================================================================================
    MSG: endpoint_msgs/GearCommandData
    uint64 timestamp_us
    bool gear_enable
    endpoint_msgs/Gear gear_type
    
    ================================================================================
    MSG: endpoint_msgs/Gear
    uint8 NONE = 0
    uint8 PARK = 1
    uint8 REVERSE = 2
    uint8 NEUTRAL = 3
    uint8 DRIVE = 4
    uint8 LOW = 5
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GearCommand(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.gear_command_data !== undefined) {
      resolved.gear_command_data = GearCommandData.Resolve(msg.gear_command_data)
    }
    else {
      resolved.gear_command_data = new GearCommandData()
    }

    return resolved;
    }
};

// Constants for message
GearCommand.Constants = {
  GEAR_COMMAND_DATA: 1,
}

module.exports = GearCommand;
