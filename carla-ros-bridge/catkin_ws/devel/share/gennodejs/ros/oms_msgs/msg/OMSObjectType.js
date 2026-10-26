// Auto-generated. Do not edit!

// (in-package oms_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class OMSObjectType {
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
    // Serializes a message object of type OMSObjectType
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    // Serialize message field [score]
    bufferOffset = _serializer.float32(obj.score, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OMSObjectType
    let len;
    let data = new OMSObjectType(null);
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
    return 'oms_msgs/OMSObjectType';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a643d2bc103096035a5c6a2eae13a0be';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 UNAVAILABLE = 0
    uint8 COMPUTER = 1
    uint8 PAD = 2
    uint8 WALLET = 3
    uint8 BACKPACK = 4
    uint8 HANDBAG = 5
    uint8 PHONE = 6
    uint8 CHILD_SEAT_HARD = 7
    uint8 CHILD_SEAT_SOFT = 8
    uint8 CHILD_SEAT_BASKET = 9
    uint8 CHILD_SEAT_UNUSUAL = 10
    uint8 CAT = 11
    uint8 DOG = 12
    uint8 RESERVED1 = 13
    uint8 RESERVED2 = 14
    uint8 RESERVED3 = 15
    uint8 RESERVED4 = 16
    uint8 RESERVED5 = 17
    uint8 UNCERTAIN = 18
    uint8 value
    float32 score
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new OMSObjectType(null);
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
OMSObjectType.Constants = {
  UNAVAILABLE: 0,
  COMPUTER: 1,
  PAD: 2,
  WALLET: 3,
  BACKPACK: 4,
  HANDBAG: 5,
  PHONE: 6,
  CHILD_SEAT_HARD: 7,
  CHILD_SEAT_SOFT: 8,
  CHILD_SEAT_BASKET: 9,
  CHILD_SEAT_UNUSUAL: 10,
  CAT: 11,
  DOG: 12,
  RESERVED1: 13,
  RESERVED2: 14,
  RESERVED3: 15,
  RESERVED4: 16,
  RESERVED5: 17,
  UNCERTAIN: 18,
}

module.exports = OMSObjectType;
