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

class L3DMSDrowsinessConfidenceTypeEnum {
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
    // Serializes a message object of type L3DMSDrowsinessConfidenceTypeEnum
    // Serialize message field [value]
    bufferOffset = _serializer.uint16(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type L3DMSDrowsinessConfidenceTypeEnum
    let len;
    let data = new L3DMSDrowsinessConfidenceTypeEnum(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dms_msgs/L3DMSDrowsinessConfidenceTypeEnum';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2ffb67f5fd3d0a4103d5cafc77b18006';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 DROWSINESS_CONFIDENCE_LEVEL_0 = 0
    uint16 DROWSINESS_CONFIDENCE_LEVEL_1 = 1
    uint16 DROWSINESS_CONFIDENCE_LEVEL_2 = 2
    uint16 DROWSINESS_CONFIDENCE_LEVEL_3 = 3
    uint16 DROWSINESS_CONFIDENCE_LEVEL_4 = 4
    uint16 DROWSINESS_CONFIDENCE_LEVEL_5 = 5
    uint16 DROWSINESS_CONFIDENCE_LEVEL_6 = 6
    uint16 DROWSINESS_CONFIDENCE_LEVEL_7 = 7
    uint16 DROWSINESS_CONFIDENCE_LEVEL_8 = 8
    uint16 DROWSINESS_CONFIDENCE_LEVEL_9 = 9
    uint16 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new L3DMSDrowsinessConfidenceTypeEnum(null);
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
L3DMSDrowsinessConfidenceTypeEnum.Constants = {
  DROWSINESS_CONFIDENCE_LEVEL_0: 0,
  DROWSINESS_CONFIDENCE_LEVEL_1: 1,
  DROWSINESS_CONFIDENCE_LEVEL_2: 2,
  DROWSINESS_CONFIDENCE_LEVEL_3: 3,
  DROWSINESS_CONFIDENCE_LEVEL_4: 4,
  DROWSINESS_CONFIDENCE_LEVEL_5: 5,
  DROWSINESS_CONFIDENCE_LEVEL_6: 6,
  DROWSINESS_CONFIDENCE_LEVEL_7: 7,
  DROWSINESS_CONFIDENCE_LEVEL_8: 8,
  DROWSINESS_CONFIDENCE_LEVEL_9: 9,
}

module.exports = L3DMSDrowsinessConfidenceTypeEnum;
