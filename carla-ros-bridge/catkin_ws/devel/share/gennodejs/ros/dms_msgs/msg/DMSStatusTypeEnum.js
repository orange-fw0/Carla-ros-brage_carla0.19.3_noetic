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

class DMSStatusTypeEnum {
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
    // Serializes a message object of type DMSStatusTypeEnum
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DMSStatusTypeEnum
    let len;
    let data = new DMSStatusTypeEnum(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dms_msgs/DMSStatusTypeEnum';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5d0a7c0b1ee6e9baf81d765548603d71';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 UNKNOWN = 0
    uint8 INITIALIZING = 1
    uint8 INTERNAL_FAULT = 2
    uint8 EXTERNAL_FAULT = 3
    uint8 INVALID_ENVIRONMENT = 4
    uint8 AUTHENTICATION_FAIL = 5
    uint8 INITIALIZ_OK = 6
    uint8 INITIALIZ_FAIL = 7
    uint8 RUNNING_OK = 8
    uint8 RUNNING_FAIL = 9
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DMSStatusTypeEnum(null);
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
DMSStatusTypeEnum.Constants = {
  UNKNOWN: 0,
  INITIALIZING: 1,
  INTERNAL_FAULT: 2,
  EXTERNAL_FAULT: 3,
  INVALID_ENVIRONMENT: 4,
  AUTHENTICATION_FAIL: 5,
  INITIALIZ_OK: 6,
  INITIALIZ_FAIL: 7,
  RUNNING_OK: 8,
  RUNNING_FAIL: 9,
}

module.exports = DMSStatusTypeEnum;
