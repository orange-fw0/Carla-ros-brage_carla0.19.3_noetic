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

class LongitudinalIntention {
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
    // Serializes a message object of type LongitudinalIntention
    // Serialize message field [score]
    bufferOffset = _serializer.float32(obj.score, buffer, bufferOffset);
    // Serialize message field [value]
    bufferOffset = _serializer.uint16(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LongitudinalIntention
    let len;
    let data = new LongitudinalIntention(null);
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
    return 'worldmodel_msgs/LongitudinalIntention';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '56494fdf01aaea0581a10ad868e017ea';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 INVALID = 0
    uint16 ACCELERATE = 1
    uint16 DECELERATE = 2
    uint16 CRUISE = 3
    uint16 START_MOVE = 4
    uint16 STATIONARY = 5
    uint16 REVERSE = 6
    float32 score
    uint16 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LongitudinalIntention(null);
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
LongitudinalIntention.Constants = {
  INVALID: 0,
  ACCELERATE: 1,
  DECELERATE: 2,
  CRUISE: 3,
  START_MOVE: 4,
  STATIONARY: 5,
  REVERSE: 6,
}

module.exports = LongitudinalIntention;
