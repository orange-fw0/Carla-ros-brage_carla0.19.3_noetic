// Auto-generated. Do not edit!

// (in-package planning_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TurnSignal = require('./TurnSignal.js');
let TurnSignalSource = require('./TurnSignalSource.js');

//-----------------------------------------------------------

class TurnSignalCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.turn_signal_data = null;
      this.turn_signal_source = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('turn_signal_data')) {
        this.turn_signal_data = initObj.turn_signal_data
      }
      else {
        this.turn_signal_data = new TurnSignal();
      }
      if (initObj.hasOwnProperty('turn_signal_source')) {
        this.turn_signal_source = initObj.turn_signal_source
      }
      else {
        this.turn_signal_source = new TurnSignalSource();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TurnSignalCommand
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [turn_signal_data]
    bufferOffset = TurnSignal.serialize(obj.turn_signal_data, buffer, bufferOffset);
    // Serialize message field [turn_signal_source]
    bufferOffset = TurnSignalSource.serialize(obj.turn_signal_source, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TurnSignalCommand
    let len;
    let data = new TurnSignalCommand(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [turn_signal_data]
    data.turn_signal_data = TurnSignal.deserialize(buffer, bufferOffset);
    // Deserialize message field [turn_signal_source]
    data.turn_signal_source = TurnSignalSource.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planning_msgs/TurnSignalCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd5992dff01409a9a14e9e8979f4a12de';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 TURN_SIGNAL_DATA = 1
    uint8 TURN_SIGNAL_SOURCE = 2
    uint8 available
    planning_msgs/TurnSignal turn_signal_data
    planning_msgs/TurnSignalSource turn_signal_source
    
    ================================================================================
    MSG: planning_msgs/TurnSignal
    uint8 NONE = 0
    uint8 LEFT = 1
    uint8 RIGHT = 2
    uint8 EMERGENCY_FLASHER = 3
    uint8 value
    
    ================================================================================
    MSG: planning_msgs/TurnSignalSource
    uint8 NONE = 0
    uint8 MAP = 1
    uint8 LC = 2
    uint8 LB = 3
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TurnSignalCommand(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.turn_signal_data !== undefined) {
      resolved.turn_signal_data = TurnSignal.Resolve(msg.turn_signal_data)
    }
    else {
      resolved.turn_signal_data = new TurnSignal()
    }

    if (msg.turn_signal_source !== undefined) {
      resolved.turn_signal_source = TurnSignalSource.Resolve(msg.turn_signal_source)
    }
    else {
      resolved.turn_signal_source = new TurnSignalSource()
    }

    return resolved;
    }
};

// Constants for message
TurnSignalCommand.Constants = {
  TURN_SIGNAL_DATA: 1,
  TURN_SIGNAL_SOURCE: 2,
}

module.exports = TurnSignalCommand;
