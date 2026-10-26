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

class DMSGazeResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.gaze_left_score = null;
      this.gaze_right_score = null;
      this.gaze_center_score = null;
      this.gaze_left = null;
      this.gaze_right = null;
      this.gaze_center = null;
      this.gaze_left_wcs = null;
      this.gaze_right_wcs = null;
      this.gaze_center_wcs = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('gaze_left_score')) {
        this.gaze_left_score = initObj.gaze_left_score
      }
      else {
        this.gaze_left_score = 0.0;
      }
      if (initObj.hasOwnProperty('gaze_right_score')) {
        this.gaze_right_score = initObj.gaze_right_score
      }
      else {
        this.gaze_right_score = 0.0;
      }
      if (initObj.hasOwnProperty('gaze_center_score')) {
        this.gaze_center_score = initObj.gaze_center_score
      }
      else {
        this.gaze_center_score = 0.0;
      }
      if (initObj.hasOwnProperty('gaze_left')) {
        this.gaze_left = initObj.gaze_left
      }
      else {
        this.gaze_left = new DMSOrientation3f();
      }
      if (initObj.hasOwnProperty('gaze_right')) {
        this.gaze_right = initObj.gaze_right
      }
      else {
        this.gaze_right = new DMSOrientation3f();
      }
      if (initObj.hasOwnProperty('gaze_center')) {
        this.gaze_center = initObj.gaze_center
      }
      else {
        this.gaze_center = new DMSOrientation3f();
      }
      if (initObj.hasOwnProperty('gaze_left_wcs')) {
        this.gaze_left_wcs = initObj.gaze_left_wcs
      }
      else {
        this.gaze_left_wcs = new DMSOrientation3f();
      }
      if (initObj.hasOwnProperty('gaze_right_wcs')) {
        this.gaze_right_wcs = initObj.gaze_right_wcs
      }
      else {
        this.gaze_right_wcs = new DMSOrientation3f();
      }
      if (initObj.hasOwnProperty('gaze_center_wcs')) {
        this.gaze_center_wcs = initObj.gaze_center_wcs
      }
      else {
        this.gaze_center_wcs = new DMSOrientation3f();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DMSGazeResult
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [gaze_left_score]
    bufferOffset = _serializer.float32(obj.gaze_left_score, buffer, bufferOffset);
    // Serialize message field [gaze_right_score]
    bufferOffset = _serializer.float32(obj.gaze_right_score, buffer, bufferOffset);
    // Serialize message field [gaze_center_score]
    bufferOffset = _serializer.float32(obj.gaze_center_score, buffer, bufferOffset);
    // Serialize message field [gaze_left]
    bufferOffset = DMSOrientation3f.serialize(obj.gaze_left, buffer, bufferOffset);
    // Serialize message field [gaze_right]
    bufferOffset = DMSOrientation3f.serialize(obj.gaze_right, buffer, bufferOffset);
    // Serialize message field [gaze_center]
    bufferOffset = DMSOrientation3f.serialize(obj.gaze_center, buffer, bufferOffset);
    // Serialize message field [gaze_left_wcs]
    bufferOffset = DMSOrientation3f.serialize(obj.gaze_left_wcs, buffer, bufferOffset);
    // Serialize message field [gaze_right_wcs]
    bufferOffset = DMSOrientation3f.serialize(obj.gaze_right_wcs, buffer, bufferOffset);
    // Serialize message field [gaze_center_wcs]
    bufferOffset = DMSOrientation3f.serialize(obj.gaze_center_wcs, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DMSGazeResult
    let len;
    let data = new DMSGazeResult(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [gaze_left_score]
    data.gaze_left_score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [gaze_right_score]
    data.gaze_right_score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [gaze_center_score]
    data.gaze_center_score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [gaze_left]
    data.gaze_left = DMSOrientation3f.deserialize(buffer, bufferOffset);
    // Deserialize message field [gaze_right]
    data.gaze_right = DMSOrientation3f.deserialize(buffer, bufferOffset);
    // Deserialize message field [gaze_center]
    data.gaze_center = DMSOrientation3f.deserialize(buffer, bufferOffset);
    // Deserialize message field [gaze_left_wcs]
    data.gaze_left_wcs = DMSOrientation3f.deserialize(buffer, bufferOffset);
    // Deserialize message field [gaze_right_wcs]
    data.gaze_right_wcs = DMSOrientation3f.deserialize(buffer, bufferOffset);
    // Deserialize message field [gaze_center_wcs]
    data.gaze_center_wcs = DMSOrientation3f.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 85;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dms_msgs/DMSGazeResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '548994173c65d7ee11da7a6c3921887a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 GAZE_SCORE_AVAILABLE = 1
    uint8 GAZE_ORIENTATION_AVAILABLE = 2
    uint8 GAZE_ORIENTATION_WCS_AVAILABLE = 4
    uint8 available
    float32 gaze_left_score
    float32 gaze_right_score
    float32 gaze_center_score
    dms_msgs/DMSOrientation3f gaze_left
    dms_msgs/DMSOrientation3f gaze_right
    dms_msgs/DMSOrientation3f gaze_center
    dms_msgs/DMSOrientation3f gaze_left_wcs
    dms_msgs/DMSOrientation3f gaze_right_wcs
    dms_msgs/DMSOrientation3f gaze_center_wcs
    
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
    const resolved = new DMSGazeResult(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.gaze_left_score !== undefined) {
      resolved.gaze_left_score = msg.gaze_left_score;
    }
    else {
      resolved.gaze_left_score = 0.0
    }

    if (msg.gaze_right_score !== undefined) {
      resolved.gaze_right_score = msg.gaze_right_score;
    }
    else {
      resolved.gaze_right_score = 0.0
    }

    if (msg.gaze_center_score !== undefined) {
      resolved.gaze_center_score = msg.gaze_center_score;
    }
    else {
      resolved.gaze_center_score = 0.0
    }

    if (msg.gaze_left !== undefined) {
      resolved.gaze_left = DMSOrientation3f.Resolve(msg.gaze_left)
    }
    else {
      resolved.gaze_left = new DMSOrientation3f()
    }

    if (msg.gaze_right !== undefined) {
      resolved.gaze_right = DMSOrientation3f.Resolve(msg.gaze_right)
    }
    else {
      resolved.gaze_right = new DMSOrientation3f()
    }

    if (msg.gaze_center !== undefined) {
      resolved.gaze_center = DMSOrientation3f.Resolve(msg.gaze_center)
    }
    else {
      resolved.gaze_center = new DMSOrientation3f()
    }

    if (msg.gaze_left_wcs !== undefined) {
      resolved.gaze_left_wcs = DMSOrientation3f.Resolve(msg.gaze_left_wcs)
    }
    else {
      resolved.gaze_left_wcs = new DMSOrientation3f()
    }

    if (msg.gaze_right_wcs !== undefined) {
      resolved.gaze_right_wcs = DMSOrientation3f.Resolve(msg.gaze_right_wcs)
    }
    else {
      resolved.gaze_right_wcs = new DMSOrientation3f()
    }

    if (msg.gaze_center_wcs !== undefined) {
      resolved.gaze_center_wcs = DMSOrientation3f.Resolve(msg.gaze_center_wcs)
    }
    else {
      resolved.gaze_center_wcs = new DMSOrientation3f()
    }

    return resolved;
    }
};

// Constants for message
DMSGazeResult.Constants = {
  GAZE_SCORE_AVAILABLE: 1,
  GAZE_ORIENTATION_AVAILABLE: 2,
  GAZE_ORIENTATION_WCS_AVAILABLE: 4,
}

module.exports = DMSGazeResult;
