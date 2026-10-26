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

class L3DMSDistractionConfidenceTypeEnum {
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
    // Serializes a message object of type L3DMSDistractionConfidenceTypeEnum
    // Serialize message field [value]
    bufferOffset = _serializer.uint16(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type L3DMSDistractionConfidenceTypeEnum
    let len;
    let data = new L3DMSDistractionConfidenceTypeEnum(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dms_msgs/L3DMSDistractionConfidenceTypeEnum';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '26a1aac810af23af74a0b0c0863f997e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 NOT_AVAILABLE_CONFIDENCE = 0
    uint16 DISTRACTION_CONFIDENCE_LEVEL_1 = 1
    uint16 DISTRACTION_CONFIDENCE_LEVEL_2 = 2
    uint16 DISTRACTION_CONFIDENCE_LEVEL_3 = 3
    uint16 DISTRACTION_CONFIDENCE_LEVEL_4 = 4
    uint16 DISTRACTION_CONFIDENCE_LEVEL_5 = 5
    uint16 DISTRACTION_CONFIDENCE_LEVEL_6 = 6
    uint16 DISTRACTION_CONFIDENCE_LEVEL_7 = 7
    uint16 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new L3DMSDistractionConfidenceTypeEnum(null);
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
L3DMSDistractionConfidenceTypeEnum.Constants = {
  NOT_AVAILABLE_CONFIDENCE: 0,
  DISTRACTION_CONFIDENCE_LEVEL_1: 1,
  DISTRACTION_CONFIDENCE_LEVEL_2: 2,
  DISTRACTION_CONFIDENCE_LEVEL_3: 3,
  DISTRACTION_CONFIDENCE_LEVEL_4: 4,
  DISTRACTION_CONFIDENCE_LEVEL_5: 5,
  DISTRACTION_CONFIDENCE_LEVEL_6: 6,
  DISTRACTION_CONFIDENCE_LEVEL_7: 7,
}

module.exports = L3DMSDistractionConfidenceTypeEnum;
