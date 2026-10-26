// Auto-generated. Do not edit!

// (in-package lane_navi_info_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ConditionType {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ConditionType
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ConditionType
    let len;
    let data = new ConditionType(null);
    // Deserialize message field [type]
    data.type = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lane_navi_info_msgs/ConditionType';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6077c3800042b45e319943481f163e50';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 ALWAYS_VALID = 0
    uint8 SIGN_IS_NOT_VALID_AT_ALL = 5
    uint8 VALID_ONLY_IF_SNOW = 6
    uint8 VALID_ONLY_IF_FOG = 7
    uint8 VALID_ONLY_IF_RAIN = 8
    uint8 VALID_ONLY_BY_DAY = 9
    uint8 VALID_ONLY_BY_NIGHT = 10
    uint8 VALID_DEPENDING_ON_TURN_DIRECTION = 11
    uint8 type
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ConditionType(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    return resolved;
    }
};

// Constants for message
ConditionType.Constants = {
  ALWAYS_VALID: 0,
  SIGN_IS_NOT_VALID_AT_ALL: 5,
  VALID_ONLY_IF_SNOW: 6,
  VALID_ONLY_IF_FOG: 7,
  VALID_ONLY_IF_RAIN: 8,
  VALID_ONLY_BY_DAY: 9,
  VALID_ONLY_BY_NIGHT: 10,
  VALID_DEPENDING_ON_TURN_DIRECTION: 11,
}

module.exports = ConditionType;
