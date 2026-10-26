// Auto-generated. Do not edit!

// (in-package dms_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let DMSOrientation3f = require('./DMSOrientation3f.js');

//-----------------------------------------------------------

class DMSBasicSignalResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.base_headpose = null;
      this.base_gaze = null;
      this.reserved = null;
      this.reserved1 = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('base_headpose')) {
        this.base_headpose = initObj.base_headpose
      }
      else {
        this.base_headpose = new DMSOrientation3f();
      }
      if (initObj.hasOwnProperty('base_gaze')) {
        this.base_gaze = initObj.base_gaze
      }
      else {
        this.base_gaze = new DMSOrientation3f();
      }
      if (initObj.hasOwnProperty('reserved')) {
        this.reserved = initObj.reserved
      }
      else {
        this.reserved = 0.0;
      }
      if (initObj.hasOwnProperty('reserved1')) {
        this.reserved1 = initObj.reserved1
      }
      else {
        this.reserved1 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DMSBasicSignalResult
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [base_headpose]
    bufferOffset = DMSOrientation3f.serialize(obj.base_headpose, buffer, bufferOffset);
    // Serialize message field [base_gaze]
    bufferOffset = DMSOrientation3f.serialize(obj.base_gaze, buffer, bufferOffset);
    // Serialize message field [reserved]
    bufferOffset = _serializer.float32(obj.reserved, buffer, bufferOffset);
    // Serialize message field [reserved1]
    bufferOffset = _serializer.float32(obj.reserved1, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DMSBasicSignalResult
    let len;
    let data = new DMSBasicSignalResult(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [base_headpose]
    data.base_headpose = DMSOrientation3f.deserialize(buffer, bufferOffset);
    // Deserialize message field [base_gaze]
    data.base_gaze = DMSOrientation3f.deserialize(buffer, bufferOffset);
    // Deserialize message field [reserved]
    data.reserved = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [reserved1]
    data.reserved1 = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 33;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dms_msgs/DMSBasicSignalResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a3f6decf3c0e514f175e7b0711f4841b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 BASE_HEADPOSE_AVAILABLE = 1
    uint8 BASE_GAZE_AVAILABLE = 2
    uint8 RESERVED = 4
    uint8 RESERVED1 = 8
    uint8 available
    dms_msgs/DMSOrientation3f base_headpose
    dms_msgs/DMSOrientation3f base_gaze
    float32 reserved
    float32 reserved1
    
    ================================================================================
    MSG: dms_msgs/DMSOrientation3f
    float32 pitch
    float32 yaw
    float32 roll
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DMSBasicSignalResult(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.base_headpose !== undefined) {
      resolved.base_headpose = DMSOrientation3f.Resolve(msg.base_headpose)
    }
    else {
      resolved.base_headpose = new DMSOrientation3f()
    }

    if (msg.base_gaze !== undefined) {
      resolved.base_gaze = DMSOrientation3f.Resolve(msg.base_gaze)
    }
    else {
      resolved.base_gaze = new DMSOrientation3f()
    }

    if (msg.reserved !== undefined) {
      resolved.reserved = msg.reserved;
    }
    else {
      resolved.reserved = 0.0
    }

    if (msg.reserved1 !== undefined) {
      resolved.reserved1 = msg.reserved1;
    }
    else {
      resolved.reserved1 = 0.0
    }

    return resolved;
    }
};

// Constants for message
DMSBasicSignalResult.Constants = {
  BASE_HEADPOSE_AVAILABLE: 1,
  BASE_GAZE_AVAILABLE: 2,
  RESERVED: 4,
  RESERVED1: 8,
}

module.exports = DMSBasicSignalResult;
