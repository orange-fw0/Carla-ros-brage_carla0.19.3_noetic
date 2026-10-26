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

class DMSHeadPoseResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.headpose_score = null;
      this.headpose = null;
      this.headpose_wcs = null;
      this.is_head_movement = null;
      this.l2_is_head_movement = null;
      this.l3_is_head_movement = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('headpose_score')) {
        this.headpose_score = initObj.headpose_score
      }
      else {
        this.headpose_score = 0.0;
      }
      if (initObj.hasOwnProperty('headpose')) {
        this.headpose = initObj.headpose
      }
      else {
        this.headpose = new DMSOrientation3f();
      }
      if (initObj.hasOwnProperty('headpose_wcs')) {
        this.headpose_wcs = initObj.headpose_wcs
      }
      else {
        this.headpose_wcs = new DMSOrientation3f();
      }
      if (initObj.hasOwnProperty('is_head_movement')) {
        this.is_head_movement = initObj.is_head_movement
      }
      else {
        this.is_head_movement = false;
      }
      if (initObj.hasOwnProperty('l2_is_head_movement')) {
        this.l2_is_head_movement = initObj.l2_is_head_movement
      }
      else {
        this.l2_is_head_movement = false;
      }
      if (initObj.hasOwnProperty('l3_is_head_movement')) {
        this.l3_is_head_movement = initObj.l3_is_head_movement
      }
      else {
        this.l3_is_head_movement = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DMSHeadPoseResult
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [headpose_score]
    bufferOffset = _serializer.float32(obj.headpose_score, buffer, bufferOffset);
    // Serialize message field [headpose]
    bufferOffset = DMSOrientation3f.serialize(obj.headpose, buffer, bufferOffset);
    // Serialize message field [headpose_wcs]
    bufferOffset = DMSOrientation3f.serialize(obj.headpose_wcs, buffer, bufferOffset);
    // Serialize message field [is_head_movement]
    bufferOffset = _serializer.bool(obj.is_head_movement, buffer, bufferOffset);
    // Serialize message field [l2_is_head_movement]
    bufferOffset = _serializer.bool(obj.l2_is_head_movement, buffer, bufferOffset);
    // Serialize message field [l3_is_head_movement]
    bufferOffset = _serializer.bool(obj.l3_is_head_movement, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DMSHeadPoseResult
    let len;
    let data = new DMSHeadPoseResult(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [headpose_score]
    data.headpose_score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [headpose]
    data.headpose = DMSOrientation3f.deserialize(buffer, bufferOffset);
    // Deserialize message field [headpose_wcs]
    data.headpose_wcs = DMSOrientation3f.deserialize(buffer, bufferOffset);
    // Deserialize message field [is_head_movement]
    data.is_head_movement = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [l2_is_head_movement]
    data.l2_is_head_movement = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [l3_is_head_movement]
    data.l3_is_head_movement = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dms_msgs/DMSHeadPoseResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '59cdb4b01fae2170a0bbb018d0c12d3a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 HEADPOSE_AVAILABLE = 1
    uint8 HEADPOSE_WCS_AVAILABLE = 2
    uint8 HEAD_MOVEMENT_AVAILABLE = 4
    uint8 L2_HEAD_MOVEMENT_AVAILABLE = 8
    uint8 L3_HEAD_MOVEMENT_AVAILABLE = 16
    uint8 available
    float32 headpose_score
    dms_msgs/DMSOrientation3f headpose
    dms_msgs/DMSOrientation3f headpose_wcs
    bool is_head_movement
    bool l2_is_head_movement
    bool l3_is_head_movement
    
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
    const resolved = new DMSHeadPoseResult(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.headpose_score !== undefined) {
      resolved.headpose_score = msg.headpose_score;
    }
    else {
      resolved.headpose_score = 0.0
    }

    if (msg.headpose !== undefined) {
      resolved.headpose = DMSOrientation3f.Resolve(msg.headpose)
    }
    else {
      resolved.headpose = new DMSOrientation3f()
    }

    if (msg.headpose_wcs !== undefined) {
      resolved.headpose_wcs = DMSOrientation3f.Resolve(msg.headpose_wcs)
    }
    else {
      resolved.headpose_wcs = new DMSOrientation3f()
    }

    if (msg.is_head_movement !== undefined) {
      resolved.is_head_movement = msg.is_head_movement;
    }
    else {
      resolved.is_head_movement = false
    }

    if (msg.l2_is_head_movement !== undefined) {
      resolved.l2_is_head_movement = msg.l2_is_head_movement;
    }
    else {
      resolved.l2_is_head_movement = false
    }

    if (msg.l3_is_head_movement !== undefined) {
      resolved.l3_is_head_movement = msg.l3_is_head_movement;
    }
    else {
      resolved.l3_is_head_movement = false
    }

    return resolved;
    }
};

// Constants for message
DMSHeadPoseResult.Constants = {
  HEADPOSE_AVAILABLE: 1,
  HEADPOSE_WCS_AVAILABLE: 2,
  HEAD_MOVEMENT_AVAILABLE: 4,
  L2_HEAD_MOVEMENT_AVAILABLE: 8,
  L3_HEAD_MOVEMENT_AVAILABLE: 16,
}

module.exports = DMSHeadPoseResult;
