// Auto-generated. Do not edit!

// (in-package dms_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class DelErrorTypeEnum {
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
    // Serializes a message object of type DelErrorTypeEnum
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DelErrorTypeEnum
    let len;
    let data = new DelErrorTypeEnum(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dms_msgs/DelErrorTypeEnum';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '711563fcfb145942355331bac6bd88a1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 NO_ERROR = 0
    uint8 NO_USER = 1
    uint8 TIME_OUT = 2
    uint8 SYSTEM_ERROR = 3
    uint8 RESERVED = 4
    uint8 RESERVED1 = 5
    uint8 RESERVED2 = 6
    uint8 RESERVED3 = 7
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DelErrorTypeEnum(null);
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
DelErrorTypeEnum.Constants = {
  NO_ERROR: 0,
  NO_USER: 1,
  TIME_OUT: 2,
  SYSTEM_ERROR: 3,
  RESERVED: 4,
  RESERVED1: 5,
  RESERVED2: 6,
  RESERVED3: 7,
}

module.exports = DelErrorTypeEnum;
