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

class RunningModeEnum {
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
    // Serializes a message object of type RunningModeEnum
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RunningModeEnum
    let len;
    let data = new RunningModeEnum(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'system_manager_msgs/RunningModeEnum';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7c1a9e57c3ee71324973934d7b06dd89';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 PILOT = 0
    uint8 PARKING = 1
    uint8 MANUAL_DRIVING = 2
    uint8 PRODUCTION_LINE = 3
    uint8 MEB = 4
    uint8 RADS = 5
    uint8 PILOT_WITH_PSD = 6
    uint8 SENTRY_MODE = 7
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RunningModeEnum(null);
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
RunningModeEnum.Constants = {
  PILOT: 0,
  PARKING: 1,
  MANUAL_DRIVING: 2,
  PRODUCTION_LINE: 3,
  MEB: 4,
  RADS: 5,
  PILOT_WITH_PSD: 6,
  SENTRY_MODE: 7,
}

module.exports = RunningModeEnum;
