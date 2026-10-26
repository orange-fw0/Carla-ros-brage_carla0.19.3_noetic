// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TurnSignal = require('./TurnSignal.js');

//-----------------------------------------------------------

class TurnSignalCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.turn_signal_enable = null;
      this.turn_signal_state = null;
    }
    else {
      if (initObj.hasOwnProperty('turn_signal_enable')) {
        this.turn_signal_enable = initObj.turn_signal_enable
      }
      else {
        this.turn_signal_enable = false;
      }
      if (initObj.hasOwnProperty('turn_signal_state')) {
        this.turn_signal_state = initObj.turn_signal_state
      }
      else {
        this.turn_signal_state = new TurnSignal();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TurnSignalCommand
    // Serialize message field [turn_signal_enable]
    bufferOffset = _serializer.bool(obj.turn_signal_enable, buffer, bufferOffset);
    // Serialize message field [turn_signal_state]
    bufferOffset = TurnSignal.serialize(obj.turn_signal_state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TurnSignalCommand
    let len;
    let data = new TurnSignalCommand(null);
    // Deserialize message field [turn_signal_enable]
    data.turn_signal_enable = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [turn_signal_state]
    data.turn_signal_state = TurnSignal.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/TurnSignalCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f2879d580ed4b1fcfc2133a5e9fc9408';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool turn_signal_enable
    endpoint_msgs/TurnSignal turn_signal_state
    
    ================================================================================
    MSG: endpoint_msgs/TurnSignal
    uint8 NONE = 0
    uint8 LEFT = 1
    uint8 RIGHT = 2
    uint8 EMERGENCY_FLASHER = 3
    uint8 INVALID = 255
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TurnSignalCommand(null);
    if (msg.turn_signal_enable !== undefined) {
      resolved.turn_signal_enable = msg.turn_signal_enable;
    }
    else {
      resolved.turn_signal_enable = false
    }

    if (msg.turn_signal_state !== undefined) {
      resolved.turn_signal_state = TurnSignal.Resolve(msg.turn_signal_state)
    }
    else {
      resolved.turn_signal_state = new TurnSignal()
    }

    return resolved;
    }
};

module.exports = TurnSignalCommand;
