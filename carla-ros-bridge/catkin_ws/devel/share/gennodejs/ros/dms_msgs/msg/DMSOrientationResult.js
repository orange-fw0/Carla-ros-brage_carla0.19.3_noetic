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

class DMSOrientationResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.orientation_score = null;
      this.orientation = null;
      this.orientation_ori = null;
      this.orientation_wcs = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('orientation_score')) {
        this.orientation_score = initObj.orientation_score
      }
      else {
        this.orientation_score = 0.0;
      }
      if (initObj.hasOwnProperty('orientation')) {
        this.orientation = initObj.orientation
      }
      else {
        this.orientation = new DMSOrientation3f();
      }
      if (initObj.hasOwnProperty('orientation_ori')) {
        this.orientation_ori = initObj.orientation_ori
      }
      else {
        this.orientation_ori = new DMSOrientation3f();
      }
      if (initObj.hasOwnProperty('orientation_wcs')) {
        this.orientation_wcs = initObj.orientation_wcs
      }
      else {
        this.orientation_wcs = new DMSOrientation3f();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DMSOrientationResult
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [orientation_score]
    bufferOffset = _serializer.float32(obj.orientation_score, buffer, bufferOffset);
    // Serialize message field [orientation]
    bufferOffset = DMSOrientation3f.serialize(obj.orientation, buffer, bufferOffset);
    // Serialize message field [orientation_ori]
    bufferOffset = DMSOrientation3f.serialize(obj.orientation_ori, buffer, bufferOffset);
    // Serialize message field [orientation_wcs]
    bufferOffset = DMSOrientation3f.serialize(obj.orientation_wcs, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DMSOrientationResult
    let len;
    let data = new DMSOrientationResult(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [orientation_score]
    data.orientation_score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [orientation]
    data.orientation = DMSOrientation3f.deserialize(buffer, bufferOffset);
    // Deserialize message field [orientation_ori]
    data.orientation_ori = DMSOrientation3f.deserialize(buffer, bufferOffset);
    // Deserialize message field [orientation_wcs]
    data.orientation_wcs = DMSOrientation3f.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 41;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dms_msgs/DMSOrientationResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4670048691d20b91b2ed93dc42461c75';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 ORIENTATION_AVAILABLE = 1
    uint8 ORIENTATION_ORI_AVAILABLE = 2
    uint8 ORIENTATION_WCS_AVAILABLE = 4
    uint8 available
    float32 orientation_score
    dms_msgs/DMSOrientation3f orientation
    dms_msgs/DMSOrientation3f orientation_ori
    dms_msgs/DMSOrientation3f orientation_wcs
    
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
    const resolved = new DMSOrientationResult(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.orientation_score !== undefined) {
      resolved.orientation_score = msg.orientation_score;
    }
    else {
      resolved.orientation_score = 0.0
    }

    if (msg.orientation !== undefined) {
      resolved.orientation = DMSOrientation3f.Resolve(msg.orientation)
    }
    else {
      resolved.orientation = new DMSOrientation3f()
    }

    if (msg.orientation_ori !== undefined) {
      resolved.orientation_ori = DMSOrientation3f.Resolve(msg.orientation_ori)
    }
    else {
      resolved.orientation_ori = new DMSOrientation3f()
    }

    if (msg.orientation_wcs !== undefined) {
      resolved.orientation_wcs = DMSOrientation3f.Resolve(msg.orientation_wcs)
    }
    else {
      resolved.orientation_wcs = new DMSOrientation3f()
    }

    return resolved;
    }
};

// Constants for message
DMSOrientationResult.Constants = {
  ORIENTATION_AVAILABLE: 1,
  ORIENTATION_ORI_AVAILABLE: 2,
  ORIENTATION_WCS_AVAILABLE: 4,
}

module.exports = DMSOrientationResult;
