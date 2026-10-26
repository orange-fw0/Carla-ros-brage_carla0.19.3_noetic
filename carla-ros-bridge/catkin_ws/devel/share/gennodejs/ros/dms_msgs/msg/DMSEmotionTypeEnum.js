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

class DMSEmotionTypeEnum {
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
    // Serializes a message object of type DMSEmotionTypeEnum
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DMSEmotionTypeEnum
    let len;
    let data = new DMSEmotionTypeEnum(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dms_msgs/DMSEmotionTypeEnum';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '084ae889afb12e7377fba9bef0324b1d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 DMS_EXPRESSION_ANGRY = 0
    uint8 DMS_EXPRESSION_FEAR = 1
    uint8 DMS_EXPRESSION_HAPPY = 2
    uint8 DMS_EXPRESSION_SAD = 3
    uint8 DMS_EXPRESSION_SURPRISE = 4
    uint8 DMS_EXPRESSION_NEUTRAL = 5
    uint8 DMS_EXPRESSION_RESERVED = 6
    uint8 DMS_EXPRESSION_RESERVED1 = 7
    uint8 DMS_EXPRESSION_RESERVED2 = 8
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DMSEmotionTypeEnum(null);
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
DMSEmotionTypeEnum.Constants = {
  DMS_EXPRESSION_ANGRY: 0,
  DMS_EXPRESSION_FEAR: 1,
  DMS_EXPRESSION_HAPPY: 2,
  DMS_EXPRESSION_SAD: 3,
  DMS_EXPRESSION_SURPRISE: 4,
  DMS_EXPRESSION_NEUTRAL: 5,
  DMS_EXPRESSION_RESERVED: 6,
  DMS_EXPRESSION_RESERVED1: 7,
  DMS_EXPRESSION_RESERVED2: 8,
}

module.exports = DMSEmotionTypeEnum;
