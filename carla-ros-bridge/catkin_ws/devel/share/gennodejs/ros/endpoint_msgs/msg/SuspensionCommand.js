// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SuspensionLevel = require('./SuspensionLevel.js');

//-----------------------------------------------------------

class SuspensionCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.suspension_enable = null;
      this.suspension_adjust_pause = null;
      this.suspension_safety_mode = null;
      this.suspension_level_command = null;
    }
    else {
      if (initObj.hasOwnProperty('suspension_enable')) {
        this.suspension_enable = initObj.suspension_enable
      }
      else {
        this.suspension_enable = false;
      }
      if (initObj.hasOwnProperty('suspension_adjust_pause')) {
        this.suspension_adjust_pause = initObj.suspension_adjust_pause
      }
      else {
        this.suspension_adjust_pause = false;
      }
      if (initObj.hasOwnProperty('suspension_safety_mode')) {
        this.suspension_safety_mode = initObj.suspension_safety_mode
      }
      else {
        this.suspension_safety_mode = false;
      }
      if (initObj.hasOwnProperty('suspension_level_command')) {
        this.suspension_level_command = initObj.suspension_level_command
      }
      else {
        this.suspension_level_command = new SuspensionLevel();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SuspensionCommand
    // Serialize message field [suspension_enable]
    bufferOffset = _serializer.bool(obj.suspension_enable, buffer, bufferOffset);
    // Serialize message field [suspension_adjust_pause]
    bufferOffset = _serializer.bool(obj.suspension_adjust_pause, buffer, bufferOffset);
    // Serialize message field [suspension_safety_mode]
    bufferOffset = _serializer.bool(obj.suspension_safety_mode, buffer, bufferOffset);
    // Serialize message field [suspension_level_command]
    bufferOffset = SuspensionLevel.serialize(obj.suspension_level_command, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SuspensionCommand
    let len;
    let data = new SuspensionCommand(null);
    // Deserialize message field [suspension_enable]
    data.suspension_enable = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [suspension_adjust_pause]
    data.suspension_adjust_pause = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [suspension_safety_mode]
    data.suspension_safety_mode = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [suspension_level_command]
    data.suspension_level_command = SuspensionLevel.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/SuspensionCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ffeb9a9bde5675f34eb1cdac701a006f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool suspension_enable
    bool suspension_adjust_pause
    bool suspension_safety_mode
    endpoint_msgs/SuspensionLevel suspension_level_command
    
    ================================================================================
    MSG: endpoint_msgs/SuspensionLevel
    uint8 SUSPENSION_NONE = 0
    uint8 SUSPENSION_LEVEL1 = 1
    uint8 SUSPENSION_LEVEL2 = 2
    uint8 SUSPENSION_LEVEL3 = 3
    uint8 SUSPENSION_LEVEL4 = 4
    uint8 SUSPENSION_LEVEL5 = 5
    uint8 SUSPENSION_LEVEL6 = 6
    uint8 SUSPENSION_LEVEL7 = 7
    uint8 SUSPENSION_LEVEL8 = 8
    uint8 SUSPENSION_LEVEL9 = 9
    uint8 SUSPENSION_LEVEL10 = 10
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SuspensionCommand(null);
    if (msg.suspension_enable !== undefined) {
      resolved.suspension_enable = msg.suspension_enable;
    }
    else {
      resolved.suspension_enable = false
    }

    if (msg.suspension_adjust_pause !== undefined) {
      resolved.suspension_adjust_pause = msg.suspension_adjust_pause;
    }
    else {
      resolved.suspension_adjust_pause = false
    }

    if (msg.suspension_safety_mode !== undefined) {
      resolved.suspension_safety_mode = msg.suspension_safety_mode;
    }
    else {
      resolved.suspension_safety_mode = false
    }

    if (msg.suspension_level_command !== undefined) {
      resolved.suspension_level_command = SuspensionLevel.Resolve(msg.suspension_level_command)
    }
    else {
      resolved.suspension_level_command = new SuspensionLevel()
    }

    return resolved;
    }
};

module.exports = SuspensionCommand;
