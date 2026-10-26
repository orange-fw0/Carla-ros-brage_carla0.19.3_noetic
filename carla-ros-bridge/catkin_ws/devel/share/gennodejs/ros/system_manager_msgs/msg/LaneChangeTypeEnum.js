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

class LaneChangeTypeEnum {
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
    // Serializes a message object of type LaneChangeTypeEnum
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaneChangeTypeEnum
    let len;
    let data = new LaneChangeTypeEnum(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'system_manager_msgs/LaneChangeTypeEnum';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ebe324a955dd9606b912133a33701b7a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 FORBIDDEN = 0
    uint8 INTERACTIVE = 1
    uint8 REMOVE_FORBIDDEN = 2
    uint8 REMOVE_INTERACTIVE = 3
    uint8 CONFIRM_MODE = 4
    uint8 REMOVE_CONFIRM_MODE = 5
    uint8 CONFIRM_APPROVED = 6
    uint8 CONFIRM_REFUSED = 7
    uint8 ENABLE_EVASIVE = 10
    uint8 DISABLE_EVASIVE = 11
    uint8 FORBIDDEN_INTERACTIVE = 12
    uint8 REMOVE_FORBIDDEN_INTERACTIVE = 13
    uint8 FORBIDDEN_AUTO = 14
    uint8 REMOVE_FORBIDDEN_AUTO = 15
    uint8 FORBIDDEN_NAVI = 16
    uint8 REMOVE_FORBIDDEN_NAVI = 17
    uint8 CONFIRM_TIMEOUT = 18
    uint8 ENABLE_INITIALTIVE_AUTOMOUS = 20
    uint8 ENABLE_RECOMMAND_AUTOMOUS = 21
    uint8 DISABLE_AUTOMOUS = 22
    uint8 ENABLE_PREFERED_LANE = 23
    uint8 DISABLE_PREFERED_LANE = 24
    uint8 LEFT_FIRST_LANE = 25
    uint8 LEFT_SECOND_LANE = 26
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LaneChangeTypeEnum(null);
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
LaneChangeTypeEnum.Constants = {
  FORBIDDEN: 0,
  INTERACTIVE: 1,
  REMOVE_FORBIDDEN: 2,
  REMOVE_INTERACTIVE: 3,
  CONFIRM_MODE: 4,
  REMOVE_CONFIRM_MODE: 5,
  CONFIRM_APPROVED: 6,
  CONFIRM_REFUSED: 7,
  ENABLE_EVASIVE: 10,
  DISABLE_EVASIVE: 11,
  FORBIDDEN_INTERACTIVE: 12,
  REMOVE_FORBIDDEN_INTERACTIVE: 13,
  FORBIDDEN_AUTO: 14,
  REMOVE_FORBIDDEN_AUTO: 15,
  FORBIDDEN_NAVI: 16,
  REMOVE_FORBIDDEN_NAVI: 17,
  CONFIRM_TIMEOUT: 18,
  ENABLE_INITIALTIVE_AUTOMOUS: 20,
  ENABLE_RECOMMAND_AUTOMOUS: 21,
  DISABLE_AUTOMOUS: 22,
  ENABLE_PREFERED_LANE: 23,
  DISABLE_PREFERED_LANE: 24,
  LEFT_FIRST_LANE: 25,
  LEFT_SECOND_LANE: 26,
}

module.exports = LaneChangeTypeEnum;
