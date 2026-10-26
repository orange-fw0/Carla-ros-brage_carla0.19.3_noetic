// Auto-generated. Do not edit!

// (in-package perception_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class SpeedSignSpeedEnum {
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
    // Serializes a message object of type SpeedSignSpeedEnum
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SpeedSignSpeedEnum
    let len;
    let data = new SpeedSignSpeedEnum(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/SpeedSignSpeedEnum';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4acea4b006c25bf4c677269c6c288a0e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 SPEED_SIGN_SPEED_UNKNOWN = 0
    uint8 SPEED_SIGN_SPEED_5 = 1
    uint8 SPEED_SIGN_SPEED_10 = 2
    uint8 SPEED_SIGN_SPEED_15 = 3
    uint8 SPEED_SIGN_SPEED_20 = 4
    uint8 SPEED_SIGN_SPEED_25 = 5
    uint8 SPEED_SIGN_SPEED_30 = 6
    uint8 SPEED_SIGN_SPEED_35 = 7
    uint8 SPEED_SIGN_SPEED_40 = 8
    uint8 SPEED_SIGN_SPEED_50 = 9
    uint8 SPEED_SIGN_SPEED_60 = 10
    uint8 SPEED_SIGN_SPEED_70 = 11
    uint8 SPEED_SIGN_SPEED_80 = 12
    uint8 SPEED_SIGN_SPEED_90 = 13
    uint8 SPEED_SIGN_SPEED_100 = 14
    uint8 SPEED_SIGN_SPEED_110 = 15
    uint8 SPEED_SIGN_SPEED_120 = 16
    uint8 SPEED_SIGN_SPEED_130 = 17
    uint8 SPEED_SIGN_SPEED_140 = 18
    uint8 SPEED_SIGN_SPEED_45 = 19
    uint8 SPEED_SIGN_SPEED_55 = 20
    uint8 SPEED_SIGN_SPEED_65 = 21
    uint8 SPEED_SIGN_SPEED_75 = 22
    uint8 SPEED_SIGN_SPEED_85 = 23
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SpeedSignSpeedEnum(null);
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
SpeedSignSpeedEnum.Constants = {
  SPEED_SIGN_SPEED_UNKNOWN: 0,
  SPEED_SIGN_SPEED_5: 1,
  SPEED_SIGN_SPEED_10: 2,
  SPEED_SIGN_SPEED_15: 3,
  SPEED_SIGN_SPEED_20: 4,
  SPEED_SIGN_SPEED_25: 5,
  SPEED_SIGN_SPEED_30: 6,
  SPEED_SIGN_SPEED_35: 7,
  SPEED_SIGN_SPEED_40: 8,
  SPEED_SIGN_SPEED_50: 9,
  SPEED_SIGN_SPEED_60: 10,
  SPEED_SIGN_SPEED_70: 11,
  SPEED_SIGN_SPEED_80: 12,
  SPEED_SIGN_SPEED_90: 13,
  SPEED_SIGN_SPEED_100: 14,
  SPEED_SIGN_SPEED_110: 15,
  SPEED_SIGN_SPEED_120: 16,
  SPEED_SIGN_SPEED_130: 17,
  SPEED_SIGN_SPEED_140: 18,
  SPEED_SIGN_SPEED_45: 19,
  SPEED_SIGN_SPEED_55: 20,
  SPEED_SIGN_SPEED_65: 21,
  SPEED_SIGN_SPEED_75: 22,
  SPEED_SIGN_SPEED_85: 23,
}

module.exports = SpeedSignSpeedEnum;
