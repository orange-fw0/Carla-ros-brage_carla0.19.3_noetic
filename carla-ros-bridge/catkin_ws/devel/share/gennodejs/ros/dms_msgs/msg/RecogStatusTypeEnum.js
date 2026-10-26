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

class RecogStatusTypeEnum {
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
    // Serializes a message object of type RecogStatusTypeEnum
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RecogStatusTypeEnum
    let len;
    let data = new RecogStatusTypeEnum(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dms_msgs/RecogStatusTypeEnum';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ef1e39c4275d80eb9b2f3de6e067ffe3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 NO_ACTION = 0
    uint8 Recognizing = 1
    uint8 Recog_SUCCESS = 2
    uint8 Recog_FAIL = 3
    uint8 RESERVED = 4
    uint8 RESERVED1 = 5
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RecogStatusTypeEnum(null);
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
RecogStatusTypeEnum.Constants = {
  NO_ACTION: 0,
  RECOGNIZING: 1,
  RECOG_SUCCESS: 2,
  RECOG_FAIL: 3,
  RESERVED: 4,
  RESERVED1: 5,
}

module.exports = RecogStatusTypeEnum;
