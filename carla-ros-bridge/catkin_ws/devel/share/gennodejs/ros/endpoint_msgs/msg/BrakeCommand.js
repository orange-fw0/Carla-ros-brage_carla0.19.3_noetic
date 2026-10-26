// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let BrakeCommandData = require('./BrakeCommandData.js');

//-----------------------------------------------------------

class BrakeCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.brake_command_data = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('brake_command_data')) {
        this.brake_command_data = initObj.brake_command_data
      }
      else {
        this.brake_command_data = new BrakeCommandData();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BrakeCommand
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [brake_command_data]
    bufferOffset = BrakeCommandData.serialize(obj.brake_command_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BrakeCommand
    let len;
    let data = new BrakeCommand(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [brake_command_data]
    data.brake_command_data = BrakeCommandData.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 21;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/BrakeCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '06db64568b504b0dd22685d0e06d3223';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 BRAKE_COMMAND_DATA = 1
    uint8 available
    endpoint_msgs/BrakeCommandData brake_command_data
    
    ================================================================================
    MSG: endpoint_msgs/BrakeCommandData
    uint64 timestamp_us
    bool brake_enable
    endpoint_msgs/BrakeType brake_type
    float32 brake_command
    endpoint_msgs/BrakeControlType brake_control_type
    endpoint_msgs/AccStandstillType brake_acc_standstill
    bool brake_acc_go
    bool epb_enable
    bool epb_command
    bool auto_hold_command
    
    ================================================================================
    MSG: endpoint_msgs/BrakeType
    uint8 PEDAL = 1
    uint8 DECELERATION = 2
    uint8 MASTER_CYLINDERPRESSURE = 3
    uint8 WHEEL_CYLINDERPRESSURE = 4
    uint8 TORQUE = 5
    uint8 DISTANCE = 6
    uint8 SV = 7
    uint8 RESERVED = 8
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/BrakeControlType
    uint8 NORMAL = 1
    uint8 EMERGENT = 2
    uint8 RESERVED1 = 3
    uint8 RESERVED2 = 4
    uint8 value
    
    ================================================================================
    MSG: endpoint_msgs/AccStandstillType
    uint8 NO_REQUEST = 0
    uint8 REQUEST = 1
    uint8 REMIND_DRIVE_GO = 2
    uint8 RESERVED = 3
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BrakeCommand(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.brake_command_data !== undefined) {
      resolved.brake_command_data = BrakeCommandData.Resolve(msg.brake_command_data)
    }
    else {
      resolved.brake_command_data = new BrakeCommandData()
    }

    return resolved;
    }
};

// Constants for message
BrakeCommand.Constants = {
  BRAKE_COMMAND_DATA: 1,
}

module.exports = BrakeCommand;
