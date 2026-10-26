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

class OMSDynamicGestureEvent {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.value = null;
      this.score = null;
      this.start_time = null;
      this.end_time = null;
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
      if (initObj.hasOwnProperty('start_time')) {
        this.start_time = initObj.start_time
      }
      else {
        this.start_time = 0;
      }
      if (initObj.hasOwnProperty('end_time')) {
        this.end_time = initObj.end_time
      }
      else {
        this.end_time = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OMSDynamicGestureEvent
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    // Serialize message field [score]
    bufferOffset = _serializer.float32(obj.score, buffer, bufferOffset);
    // Serialize message field [start_time]
    bufferOffset = _serializer.uint64(obj.start_time, buffer, bufferOffset);
    // Serialize message field [end_time]
    bufferOffset = _serializer.uint64(obj.end_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OMSDynamicGestureEvent
    let len;
    let data = new OMSDynamicGestureEvent(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [score]
    data.score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [start_time]
    data.start_time = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [end_time]
    data.end_time = _deserializer.uint64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 21;
  }

  static datatype() {
    // Returns string type for a message object
    return 'oms_msgs/OMSDynamicGestureEvent';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '97313da58e48d579dcb48ac49cd095ad';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 UNAVAILABLE = 0
    uint8 DYNAMIC_GESTURE_FINGER_LASER = 1
    uint8 DYNAMIC_GESTURE_FINGER_CIRCLE_LEFT = 2
    uint8 DYNAMIC_GESTURE_FINGER_CIRCLE_RIGHT = 3
    uint8 DYNAMIC_GESTURE_PINCH = 4
    uint8 DYNAMIC_GESTURE_FIST = 5
    uint8 DYNAMIC_GESTURE_GRAB = 6
    uint8 DYNAMIC_GESTURE_PALM = 7
    uint8 DYNAMIC_GESTURE_OK = 8
    uint8 DYNAMIC_GESTURE_THUMBUP_CLICK = 9
    uint8 DYNAMIC_GESTURE_THUMBUP = 10
    uint8 DYNAMIC_GESTURE_GRAB_OR_FIST = 11
    uint8 DYNAMIC_GESTURE_RESERVED1 = 12
    uint8 DYNAMIC_GESTURE_RESERVED2 = 13
    uint8 DYNAMIC_GESTURE_RESERVED3 = 14
    uint8 DYNAMIC_GESTURE_RESERVED4 = 15
    uint8 DYNAMIC_GESTURE_RESERVED5 = 16
    uint8 UNCERTAIN = 17
    uint8 value
    float32 score
    uint64 start_time
    uint64 end_time
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new OMSDynamicGestureEvent(null);
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

    if (msg.start_time !== undefined) {
      resolved.start_time = msg.start_time;
    }
    else {
      resolved.start_time = 0
    }

    if (msg.end_time !== undefined) {
      resolved.end_time = msg.end_time;
    }
    else {
      resolved.end_time = 0
    }

    return resolved;
    }
};

// Constants for message
OMSDynamicGestureEvent.Constants = {
  UNAVAILABLE: 0,
  DYNAMIC_GESTURE_FINGER_LASER: 1,
  DYNAMIC_GESTURE_FINGER_CIRCLE_LEFT: 2,
  DYNAMIC_GESTURE_FINGER_CIRCLE_RIGHT: 3,
  DYNAMIC_GESTURE_PINCH: 4,
  DYNAMIC_GESTURE_FIST: 5,
  DYNAMIC_GESTURE_GRAB: 6,
  DYNAMIC_GESTURE_PALM: 7,
  DYNAMIC_GESTURE_OK: 8,
  DYNAMIC_GESTURE_THUMBUP_CLICK: 9,
  DYNAMIC_GESTURE_THUMBUP: 10,
  DYNAMIC_GESTURE_GRAB_OR_FIST: 11,
  DYNAMIC_GESTURE_RESERVED1: 12,
  DYNAMIC_GESTURE_RESERVED2: 13,
  DYNAMIC_GESTURE_RESERVED3: 14,
  DYNAMIC_GESTURE_RESERVED4: 15,
  DYNAMIC_GESTURE_RESERVED5: 16,
  UNCERTAIN: 17,
}

module.exports = OMSDynamicGestureEvent;
