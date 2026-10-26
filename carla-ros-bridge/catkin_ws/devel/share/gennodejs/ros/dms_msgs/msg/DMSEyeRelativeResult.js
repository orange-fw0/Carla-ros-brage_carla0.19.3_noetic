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

class DMSEyeRelativeResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.left_eye_relative_distance = null;
      this.right_eye_relative_distance = null;
      this.is_left_eye_close = null;
      this.is_right_eye_close = null;
      this.left_eye_close_time = null;
      this.right_eye_close_time = null;
      this.reserved = null;
      this.is_eye_blink = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('left_eye_relative_distance')) {
        this.left_eye_relative_distance = initObj.left_eye_relative_distance
      }
      else {
        this.left_eye_relative_distance = 0.0;
      }
      if (initObj.hasOwnProperty('right_eye_relative_distance')) {
        this.right_eye_relative_distance = initObj.right_eye_relative_distance
      }
      else {
        this.right_eye_relative_distance = 0.0;
      }
      if (initObj.hasOwnProperty('is_left_eye_close')) {
        this.is_left_eye_close = initObj.is_left_eye_close
      }
      else {
        this.is_left_eye_close = false;
      }
      if (initObj.hasOwnProperty('is_right_eye_close')) {
        this.is_right_eye_close = initObj.is_right_eye_close
      }
      else {
        this.is_right_eye_close = false;
      }
      if (initObj.hasOwnProperty('left_eye_close_time')) {
        this.left_eye_close_time = initObj.left_eye_close_time
      }
      else {
        this.left_eye_close_time = 0.0;
      }
      if (initObj.hasOwnProperty('right_eye_close_time')) {
        this.right_eye_close_time = initObj.right_eye_close_time
      }
      else {
        this.right_eye_close_time = 0.0;
      }
      if (initObj.hasOwnProperty('reserved')) {
        this.reserved = initObj.reserved
      }
      else {
        this.reserved = 0.0;
      }
      if (initObj.hasOwnProperty('is_eye_blink')) {
        this.is_eye_blink = initObj.is_eye_blink
      }
      else {
        this.is_eye_blink = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DMSEyeRelativeResult
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [left_eye_relative_distance]
    bufferOffset = _serializer.float32(obj.left_eye_relative_distance, buffer, bufferOffset);
    // Serialize message field [right_eye_relative_distance]
    bufferOffset = _serializer.float32(obj.right_eye_relative_distance, buffer, bufferOffset);
    // Serialize message field [is_left_eye_close]
    bufferOffset = _serializer.bool(obj.is_left_eye_close, buffer, bufferOffset);
    // Serialize message field [is_right_eye_close]
    bufferOffset = _serializer.bool(obj.is_right_eye_close, buffer, bufferOffset);
    // Serialize message field [left_eye_close_time]
    bufferOffset = _serializer.float32(obj.left_eye_close_time, buffer, bufferOffset);
    // Serialize message field [right_eye_close_time]
    bufferOffset = _serializer.float32(obj.right_eye_close_time, buffer, bufferOffset);
    // Serialize message field [reserved]
    bufferOffset = _serializer.float32(obj.reserved, buffer, bufferOffset);
    // Serialize message field [is_eye_blink]
    bufferOffset = _serializer.bool(obj.is_eye_blink, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DMSEyeRelativeResult
    let len;
    let data = new DMSEyeRelativeResult(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [left_eye_relative_distance]
    data.left_eye_relative_distance = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [right_eye_relative_distance]
    data.right_eye_relative_distance = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [is_left_eye_close]
    data.is_left_eye_close = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_right_eye_close]
    data.is_right_eye_close = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [left_eye_close_time]
    data.left_eye_close_time = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [right_eye_close_time]
    data.right_eye_close_time = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [reserved]
    data.reserved = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [is_eye_blink]
    data.is_eye_blink = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dms_msgs/DMSEyeRelativeResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c745f14a4aae2b0ee7a1d42e7ffc04ce';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 UN_AVAILABLE = 0
    uint8 AVAILABLE = 1
    uint8 IS_EYE_BLINK_AVAILABLE = 2
    uint8 available
    float32 left_eye_relative_distance
    float32 right_eye_relative_distance
    bool is_left_eye_close
    bool is_right_eye_close
    float32 left_eye_close_time
    float32 right_eye_close_time
    float32 reserved
    bool is_eye_blink
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DMSEyeRelativeResult(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.left_eye_relative_distance !== undefined) {
      resolved.left_eye_relative_distance = msg.left_eye_relative_distance;
    }
    else {
      resolved.left_eye_relative_distance = 0.0
    }

    if (msg.right_eye_relative_distance !== undefined) {
      resolved.right_eye_relative_distance = msg.right_eye_relative_distance;
    }
    else {
      resolved.right_eye_relative_distance = 0.0
    }

    if (msg.is_left_eye_close !== undefined) {
      resolved.is_left_eye_close = msg.is_left_eye_close;
    }
    else {
      resolved.is_left_eye_close = false
    }

    if (msg.is_right_eye_close !== undefined) {
      resolved.is_right_eye_close = msg.is_right_eye_close;
    }
    else {
      resolved.is_right_eye_close = false
    }

    if (msg.left_eye_close_time !== undefined) {
      resolved.left_eye_close_time = msg.left_eye_close_time;
    }
    else {
      resolved.left_eye_close_time = 0.0
    }

    if (msg.right_eye_close_time !== undefined) {
      resolved.right_eye_close_time = msg.right_eye_close_time;
    }
    else {
      resolved.right_eye_close_time = 0.0
    }

    if (msg.reserved !== undefined) {
      resolved.reserved = msg.reserved;
    }
    else {
      resolved.reserved = 0.0
    }

    if (msg.is_eye_blink !== undefined) {
      resolved.is_eye_blink = msg.is_eye_blink;
    }
    else {
      resolved.is_eye_blink = false
    }

    return resolved;
    }
};

// Constants for message
DMSEyeRelativeResult.Constants = {
  UN_AVAILABLE: 0,
  AVAILABLE: 1,
  IS_EYE_BLINK_AVAILABLE: 2,
}

module.exports = DMSEyeRelativeResult;
