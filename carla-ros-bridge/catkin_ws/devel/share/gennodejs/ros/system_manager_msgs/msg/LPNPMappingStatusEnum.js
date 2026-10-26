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

class LPNPMappingStatusEnum {
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
    // Serializes a message object of type LPNPMappingStatusEnum
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LPNPMappingStatusEnum
    let len;
    let data = new LPNPMappingStatusEnum(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'system_manager_msgs/LPNPMappingStatusEnum';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '530e5858825296df987685e1fa37ccdf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 SUCCESS = 0
    uint8 MAPPING = 1
    uint8 SAVING_MAP = 2
    uint8 FAILURE = 3
    uint8 MAPPING_IN = 4
    uint8 MAPPING_OUT = 5
    uint8 WAITING_TO_SAVE = 6
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LPNPMappingStatusEnum(null);
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
LPNPMappingStatusEnum.Constants = {
  SUCCESS: 0,
  MAPPING: 1,
  SAVING_MAP: 2,
  FAILURE: 3,
  MAPPING_IN: 4,
  MAPPING_OUT: 5,
  WAITING_TO_SAVE: 6,
}

module.exports = LPNPMappingStatusEnum;
