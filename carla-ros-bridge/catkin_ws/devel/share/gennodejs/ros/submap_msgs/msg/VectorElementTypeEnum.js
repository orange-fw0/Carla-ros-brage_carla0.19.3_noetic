// Auto-generated. Do not edit!

// (in-package submap_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class VectorElementTypeEnum {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.value = null;
      this.score = null;
    }
    else {
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = 0;
      }
      if (initObj.hasOwnProperty('score')) {
        this.score = initObj.score
      }
      else {
        this.score = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VectorElementTypeEnum
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    // Serialize message field [score]
    bufferOffset = _serializer.float32(obj.score, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VectorElementTypeEnum
    let len;
    let data = new VectorElementTypeEnum(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [score]
    data.score = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'submap_msgs/VectorElementTypeEnum';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '56240e7d54f815cdee95dc93b1995eb7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 UNKNOWN = 0
    uint8 GATE = 1
    uint8 ARROW = 2
    uint8 STOP_LINE = 3
    uint8 DASH_LINE = 4
    uint8 SPEED_BUMP = 5
    uint8 ZWBRA_LINE = 6
    uint8 DDLD_ROAD_BOUNDARY = 7
    uint8 DDLD_LANE_BOUNDARY = 8
    uint8 DDLD_STOP_LINE = 9
    uint8 DDLD_CROSS_WALK = 10
    uint8 DDLD_ROAD_MARK = 11
    uint8 DDLD_TRAFFIC_SIGN = 12
    uint8 DDLD_TRAFFIC_LIGHT = 13
    uint8 value
    float32 score
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VectorElementTypeEnum(null);
    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = 0
    }

    if (msg.score !== undefined) {
      resolved.score = msg.score;
    }
    else {
      resolved.score = 0.0
    }

    return resolved;
    }
};

// Constants for message
VectorElementTypeEnum.Constants = {
  UNKNOWN: 0,
  GATE: 1,
  ARROW: 2,
  STOP_LINE: 3,
  DASH_LINE: 4,
  SPEED_BUMP: 5,
  ZWBRA_LINE: 6,
  DDLD_ROAD_BOUNDARY: 7,
  DDLD_LANE_BOUNDARY: 8,
  DDLD_STOP_LINE: 9,
  DDLD_CROSS_WALK: 10,
  DDLD_ROAD_MARK: 11,
  DDLD_TRAFFIC_SIGN: 12,
  DDLD_TRAFFIC_LIGHT: 13,
}

module.exports = VectorElementTypeEnum;
