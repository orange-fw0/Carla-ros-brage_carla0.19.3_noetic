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

class DMSDistractionReasonTypeEnum {
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
    // Serializes a message object of type DMSDistractionReasonTypeEnum
    // Serialize message field [value]
    bufferOffset = _serializer.uint16(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DMSDistractionReasonTypeEnum
    let len;
    let data = new DMSDistractionReasonTypeEnum(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dms_msgs/DMSDistractionReasonTypeEnum';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cb8af4ef451f0b2d489859cdfb1873bd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 HEADPOSE_TRIGER_DISTRACTION = 1
    uint16 GAZE_ROI_TRIGER_DISTRACTION = 2
    uint16 HEAD_ROI_TRIGER_DISTRACTION = 4
    uint16 RESERVED = 8
    uint16 RESERVED1 = 16
    uint16 RESERVED2 = 32
    uint16 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DMSDistractionReasonTypeEnum(null);
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
DMSDistractionReasonTypeEnum.Constants = {
  HEADPOSE_TRIGER_DISTRACTION: 1,
  GAZE_ROI_TRIGER_DISTRACTION: 2,
  HEAD_ROI_TRIGER_DISTRACTION: 4,
  RESERVED: 8,
  RESERVED1: 16,
  RESERVED2: 32,
}

module.exports = DMSDistractionReasonTypeEnum;
