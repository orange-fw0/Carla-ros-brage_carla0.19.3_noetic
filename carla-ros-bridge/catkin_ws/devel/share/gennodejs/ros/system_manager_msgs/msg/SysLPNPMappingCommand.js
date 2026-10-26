// Auto-generated. Do not edit!

// (in-package system_manager_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class SysLPNPMappingCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.value = null;
    }
    else {
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SysLPNPMappingCommand
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SysLPNPMappingCommand
    let len;
    let data = new SysLPNPMappingCommand(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'system_manager_msgs/SysLPNPMappingCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0cc954be2b276c6a59ac2a7d95f3a812';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 START_SILENT_MODE = 0
    uint8 START_USER_MODE = 1
    uint8 FINISH = 2
    uint8 ABORT = 3
    uint8 BACK_TO_SILENT_MODE = 4
    uint8 SAVE = 5
    uint8 RESET_BUFFER = 6
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SysLPNPMappingCommand(null);
    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = 0
    }

    return resolved;
    }
};

// Constants for message
SysLPNPMappingCommand.Constants = {
  START_SILENT_MODE: 0,
  START_USER_MODE: 1,
  FINISH: 2,
  ABORT: 3,
  BACK_TO_SILENT_MODE: 4,
  SAVE: 5,
  RESET_BUFFER: 6,
}

module.exports = SysLPNPMappingCommand;
