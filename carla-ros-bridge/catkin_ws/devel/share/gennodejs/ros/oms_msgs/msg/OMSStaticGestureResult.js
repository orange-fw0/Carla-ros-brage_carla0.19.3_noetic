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

class OMSStaticGestureResult {
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
    // Serializes a message object of type OMSStaticGestureResult
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    // Serialize message field [score]
    bufferOffset = _serializer.float32(obj.score, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OMSStaticGestureResult
    let len;
    let data = new OMSStaticGestureResult(null);
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
    return 'oms_msgs/OMSStaticGestureResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5f6483eeb794330305e85d635cada1b4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 UNAVAILABLE = 0
    uint8 STATIC_GESTURE_FIST = 1
    uint8 STATIC_GESTURE_ONE = 2
    uint8 STATIC_GESTURE_TWO = 3
    uint8 STATIC_GESTURE_THREE = 4
    uint8 STATIC_GESTURE_FOUR = 5
    uint8 STATIC_GESTURE_FIVE = 6
    uint8 STATIC_GESTURE_SIX = 7
    uint8 STATIC_GESTURE_SEVEN = 8
    uint8 STATIC_GESTURE_EIGHT = 9
    uint8 STATIC_GESTURE_NINE = 10
    uint8 STATIC_GESTURE_OK = 11
    uint8 STATIC_GESTURE_THUMB_UP = 12
    uint8 STATIC_GESTURE_THUMB_LEFT = 13
    uint8 STATIC_GESTURE_THUMB_RIGHT = 14
    uint8 STATIC_GESTURE_THUMB_DOWN = 15
    uint8 STATIC_GESTURE_FINGER_LEFT = 16
    uint8 STATIC_GESTURE_FINGER_RIGHT = 17
    uint8 STATIC_GESTURE_FINGER_UP = 18
    uint8 STATIC_GESTURE_RESERVED1 = 19
    uint8 STATIC_GESTURE_RESERVED2 = 20
    uint8 STATIC_GESTURE_RESERVED3 = 21
    uint8 STATIC_GESTURE_RESERVED4 = 22
    uint8 STATIC_GESTURE_RESERVED5 = 23
    uint8 STATIC_GESTURE_OTHER = 24
    uint8 UNCERTAIN = 25
    uint8 value
    float32 score
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new OMSStaticGestureResult(null);
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
OMSStaticGestureResult.Constants = {
  UNAVAILABLE: 0,
  STATIC_GESTURE_FIST: 1,
  STATIC_GESTURE_ONE: 2,
  STATIC_GESTURE_TWO: 3,
  STATIC_GESTURE_THREE: 4,
  STATIC_GESTURE_FOUR: 5,
  STATIC_GESTURE_FIVE: 6,
  STATIC_GESTURE_SIX: 7,
  STATIC_GESTURE_SEVEN: 8,
  STATIC_GESTURE_EIGHT: 9,
  STATIC_GESTURE_NINE: 10,
  STATIC_GESTURE_OK: 11,
  STATIC_GESTURE_THUMB_UP: 12,
  STATIC_GESTURE_THUMB_LEFT: 13,
  STATIC_GESTURE_THUMB_RIGHT: 14,
  STATIC_GESTURE_THUMB_DOWN: 15,
  STATIC_GESTURE_FINGER_LEFT: 16,
  STATIC_GESTURE_FINGER_RIGHT: 17,
  STATIC_GESTURE_FINGER_UP: 18,
  STATIC_GESTURE_RESERVED1: 19,
  STATIC_GESTURE_RESERVED2: 20,
  STATIC_GESTURE_RESERVED3: 21,
  STATIC_GESTURE_RESERVED4: 22,
  STATIC_GESTURE_RESERVED5: 23,
  STATIC_GESTURE_OTHER: 24,
  UNCERTAIN: 25,
}

module.exports = OMSStaticGestureResult;
