// Auto-generated. Do not edit!

// (in-package worldmodel_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class LateralIntention {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.score = null;
      this.value = null;
    }
    else {
      if (initObj.hasOwnProperty('score')) {
        this.score = initObj.score
      }
      else {
        this.score = 0.0;
      }
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LateralIntention
    // Serialize message field [score]
    bufferOffset = _serializer.float32(obj.score, buffer, bufferOffset);
    // Serialize message field [value]
    bufferOffset = _serializer.uint16(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LateralIntention
    let len;
    let data = new LateralIntention(null);
    // Deserialize message field [score]
    data.score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [value]
    data.value = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'worldmodel_msgs/LateralIntention';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6df9fbab8ed0f7e0f8401e93000e0f48';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 INVALID = 0
    uint16 GO_STRAIGHT = 1
    uint16 TURN_LEFT = 2
    uint16 TURN_RIGHT = 3
    uint16 U_TURN = 4
    uint16 CHANGE_LANE_LEFT = 5
    uint16 CHANGE_LANE_RIGHT = 6
    float32 score
    uint16 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LateralIntention(null);
    if (msg.score !== undefined) {
      resolved.score = msg.score;
    }
    else {
      resolved.score = 0.0
    }

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
LateralIntention.Constants = {
  INVALID: 0,
  GO_STRAIGHT: 1,
  TURN_LEFT: 2,
  TURN_RIGHT: 3,
  U_TURN: 4,
  CHANGE_LANE_LEFT: 5,
  CHANGE_LANE_RIGHT: 6,
}

module.exports = LateralIntention;
