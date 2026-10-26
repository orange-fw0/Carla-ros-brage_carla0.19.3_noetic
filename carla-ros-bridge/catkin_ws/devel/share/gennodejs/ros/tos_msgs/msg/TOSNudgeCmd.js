// Auto-generated. Do not edit!

// (in-package tos_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TOSNudgeEnum = require('./TOSNudgeEnum.js');

//-----------------------------------------------------------

class TOSNudgeCmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.nudge_cmd = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('nudge_cmd')) {
        this.nudge_cmd = initObj.nudge_cmd
      }
      else {
        this.nudge_cmd = new TOSNudgeEnum();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TOSNudgeCmd
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [nudge_cmd]
    bufferOffset = TOSNudgeEnum.serialize(obj.nudge_cmd, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TOSNudgeCmd
    let len;
    let data = new TOSNudgeCmd(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [nudge_cmd]
    data.nudge_cmd = TOSNudgeEnum.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tos_msgs/TOSNudgeCmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3da070feb8c0502073d1773f4c54b9b8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 available
    tos_msgs/TOSNudgeEnum nudge_cmd
    
    ================================================================================
    MSG: tos_msgs/TOSNudgeEnum
    uint8 NONE = 0
    uint8 LEFT = 1
    uint8 RIGHT = 2
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TOSNudgeCmd(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.nudge_cmd !== undefined) {
      resolved.nudge_cmd = TOSNudgeEnum.Resolve(msg.nudge_cmd)
    }
    else {
      resolved.nudge_cmd = new TOSNudgeEnum()
    }

    return resolved;
    }
};

module.exports = TOSNudgeCmd;
