// Auto-generated. Do not edit!

// (in-package dms_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let DMSEmotionTypeEnum = require('./DMSEmotionTypeEnum.js');

//-----------------------------------------------------------

class DMSEmotionResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.emotion_type = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('emotion_type')) {
        this.emotion_type = initObj.emotion_type
      }
      else {
        this.emotion_type = new DMSEmotionTypeEnum();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DMSEmotionResult
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [emotion_type]
    bufferOffset = DMSEmotionTypeEnum.serialize(obj.emotion_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DMSEmotionResult
    let len;
    let data = new DMSEmotionResult(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [emotion_type]
    data.emotion_type = DMSEmotionTypeEnum.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dms_msgs/DMSEmotionResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4fbda016f0ca402ea5064aae13dee501';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 UN_AVAILABLE = 0
    uint8 AVAILABLE = 1
    uint8 RESERVED = 2
    uint8 available
    dms_msgs/DMSEmotionTypeEnum emotion_type
    
    ================================================================================
    MSG: dms_msgs/DMSEmotionTypeEnum
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
    const resolved = new DMSEmotionResult(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.emotion_type !== undefined) {
      resolved.emotion_type = DMSEmotionTypeEnum.Resolve(msg.emotion_type)
    }
    else {
      resolved.emotion_type = new DMSEmotionTypeEnum()
    }

    return resolved;
    }
};

// Constants for message
DMSEmotionResult.Constants = {
  UN_AVAILABLE: 0,
  AVAILABLE: 1,
  RESERVED: 2,
}

module.exports = DMSEmotionResult;
