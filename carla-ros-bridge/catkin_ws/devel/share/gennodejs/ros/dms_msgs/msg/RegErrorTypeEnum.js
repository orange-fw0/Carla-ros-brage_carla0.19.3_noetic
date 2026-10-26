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

class RegErrorTypeEnum {
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
    // Serializes a message object of type RegErrorTypeEnum
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RegErrorTypeEnum
    let len;
    let data = new RegErrorTypeEnum(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dms_msgs/RegErrorTypeEnum';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '703b8b24ad4385f3c01adecd25a86cc2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 NO_ERROR = 0
    uint8 CAMERA_ABNORMAL = 1
    uint8 NO_FACE = 2
    uint8 LOW_FACE_QUALITY = 3
    uint8 FACE_NOT_ALIVE = 4
    uint8 LARGE_HEAD_POSE = 5
    uint8 ID_EXISTS = 6
    uint8 FACE_WRITTEN_FAIL = 7
    uint8 TIME_OUT = 8
    uint8 FACE_EXISTS = 9
    uint8 SYSTEM_ERROR = 10
    uint8 RESERVED = 11
    uint8 RESERVED1 = 12
    uint8 RESERVED2 = 13
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RegErrorTypeEnum(null);
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
RegErrorTypeEnum.Constants = {
  NO_ERROR: 0,
  CAMERA_ABNORMAL: 1,
  NO_FACE: 2,
  LOW_FACE_QUALITY: 3,
  FACE_NOT_ALIVE: 4,
  LARGE_HEAD_POSE: 5,
  ID_EXISTS: 6,
  FACE_WRITTEN_FAIL: 7,
  TIME_OUT: 8,
  FACE_EXISTS: 9,
  SYSTEM_ERROR: 10,
  RESERVED: 11,
  RESERVED1: 12,
  RESERVED2: 13,
}

module.exports = RegErrorTypeEnum;
