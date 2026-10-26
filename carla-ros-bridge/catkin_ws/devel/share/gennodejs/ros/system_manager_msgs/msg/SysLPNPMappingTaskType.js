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

class SysLPNPMappingTaskType {
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
    // Serializes a message object of type SysLPNPMappingTaskType
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SysLPNPMappingTaskType
    let len;
    let data = new SysLPNPMappingTaskType(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'system_manager_msgs/SysLPNPMappingTaskType';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '643aa78c2bf5665327e398cd393d7fc4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 DROP_OFF = 0
    uint8 PICK_UP = 1
    uint8 PARK_IN = 2
    uint8 PARK_OUT = 3
    uint8 VIRTUAL_PARK_IN = 4
    uint8 NUM = 5
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SysLPNPMappingTaskType(null);
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
SysLPNPMappingTaskType.Constants = {
  DROP_OFF: 0,
  PICK_UP: 1,
  PARK_IN: 2,
  PARK_OUT: 3,
  VIRTUAL_PARK_IN: 4,
  NUM: 5,
}

module.exports = SysLPNPMappingTaskType;
