// Auto-generated. Do not edit!

// (in-package dms_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let DMSPoint3f = require('./DMSPoint3f.js');

//-----------------------------------------------------------

class DMSFacePositionResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.position_ear_center = null;
      this.position_left_pupil = null;
      this.position_right_pupil = null;
      this.position_ear_center_wcs = null;
      this.position_left_pupil_wcs = null;
      this.position_right_pupil_wcs = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('position_ear_center')) {
        this.position_ear_center = initObj.position_ear_center
      }
      else {
        this.position_ear_center = new DMSPoint3f();
      }
      if (initObj.hasOwnProperty('position_left_pupil')) {
        this.position_left_pupil = initObj.position_left_pupil
      }
      else {
        this.position_left_pupil = new DMSPoint3f();
      }
      if (initObj.hasOwnProperty('position_right_pupil')) {
        this.position_right_pupil = initObj.position_right_pupil
      }
      else {
        this.position_right_pupil = new DMSPoint3f();
      }
      if (initObj.hasOwnProperty('position_ear_center_wcs')) {
        this.position_ear_center_wcs = initObj.position_ear_center_wcs
      }
      else {
        this.position_ear_center_wcs = new DMSPoint3f();
      }
      if (initObj.hasOwnProperty('position_left_pupil_wcs')) {
        this.position_left_pupil_wcs = initObj.position_left_pupil_wcs
      }
      else {
        this.position_left_pupil_wcs = new DMSPoint3f();
      }
      if (initObj.hasOwnProperty('position_right_pupil_wcs')) {
        this.position_right_pupil_wcs = initObj.position_right_pupil_wcs
      }
      else {
        this.position_right_pupil_wcs = new DMSPoint3f();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DMSFacePositionResult
    // Serialize message field [available]
    bufferOffset = _serializer.uint16(obj.available, buffer, bufferOffset);
    // Serialize message field [position_ear_center]
    bufferOffset = DMSPoint3f.serialize(obj.position_ear_center, buffer, bufferOffset);
    // Serialize message field [position_left_pupil]
    bufferOffset = DMSPoint3f.serialize(obj.position_left_pupil, buffer, bufferOffset);
    // Serialize message field [position_right_pupil]
    bufferOffset = DMSPoint3f.serialize(obj.position_right_pupil, buffer, bufferOffset);
    // Serialize message field [position_ear_center_wcs]
    bufferOffset = DMSPoint3f.serialize(obj.position_ear_center_wcs, buffer, bufferOffset);
    // Serialize message field [position_left_pupil_wcs]
    bufferOffset = DMSPoint3f.serialize(obj.position_left_pupil_wcs, buffer, bufferOffset);
    // Serialize message field [position_right_pupil_wcs]
    bufferOffset = DMSPoint3f.serialize(obj.position_right_pupil_wcs, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DMSFacePositionResult
    let len;
    let data = new DMSFacePositionResult(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [position_ear_center]
    data.position_ear_center = DMSPoint3f.deserialize(buffer, bufferOffset);
    // Deserialize message field [position_left_pupil]
    data.position_left_pupil = DMSPoint3f.deserialize(buffer, bufferOffset);
    // Deserialize message field [position_right_pupil]
    data.position_right_pupil = DMSPoint3f.deserialize(buffer, bufferOffset);
    // Deserialize message field [position_ear_center_wcs]
    data.position_ear_center_wcs = DMSPoint3f.deserialize(buffer, bufferOffset);
    // Deserialize message field [position_left_pupil_wcs]
    data.position_left_pupil_wcs = DMSPoint3f.deserialize(buffer, bufferOffset);
    // Deserialize message field [position_right_pupil_wcs]
    data.position_right_pupil_wcs = DMSPoint3f.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 74;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dms_msgs/DMSFacePositionResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9634fb3cdff56293abf22937f8abeea0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 POSITION_EAR_CENTER_AVAILABLE = 1
    uint16 POSITION_LEFT_PUPIL_AVAILABLE = 2
    uint16 POSITION_RIGHT_PUPIL_AVAILABLE = 4
    uint16 POSITION_EAR_CENTER_WCS_AVAILABLE = 8
    uint16 POSITION_LEFT_PUPIL_WCS_AVAILABLE = 16
    uint16 POSITION_RIGHT_PUPIL_WCS_AVAILABLE = 32
    uint16 available
    dms_msgs/DMSPoint3f position_ear_center
    dms_msgs/DMSPoint3f position_left_pupil
    dms_msgs/DMSPoint3f position_right_pupil
    dms_msgs/DMSPoint3f position_ear_center_wcs
    dms_msgs/DMSPoint3f position_left_pupil_wcs
    dms_msgs/DMSPoint3f position_right_pupil_wcs
    
    ================================================================================
    MSG: dms_msgs/DMSPoint3f
    float32 x
    float32 y
    float32 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DMSFacePositionResult(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.position_ear_center !== undefined) {
      resolved.position_ear_center = DMSPoint3f.Resolve(msg.position_ear_center)
    }
    else {
      resolved.position_ear_center = new DMSPoint3f()
    }

    if (msg.position_left_pupil !== undefined) {
      resolved.position_left_pupil = DMSPoint3f.Resolve(msg.position_left_pupil)
    }
    else {
      resolved.position_left_pupil = new DMSPoint3f()
    }

    if (msg.position_right_pupil !== undefined) {
      resolved.position_right_pupil = DMSPoint3f.Resolve(msg.position_right_pupil)
    }
    else {
      resolved.position_right_pupil = new DMSPoint3f()
    }

    if (msg.position_ear_center_wcs !== undefined) {
      resolved.position_ear_center_wcs = DMSPoint3f.Resolve(msg.position_ear_center_wcs)
    }
    else {
      resolved.position_ear_center_wcs = new DMSPoint3f()
    }

    if (msg.position_left_pupil_wcs !== undefined) {
      resolved.position_left_pupil_wcs = DMSPoint3f.Resolve(msg.position_left_pupil_wcs)
    }
    else {
      resolved.position_left_pupil_wcs = new DMSPoint3f()
    }

    if (msg.position_right_pupil_wcs !== undefined) {
      resolved.position_right_pupil_wcs = DMSPoint3f.Resolve(msg.position_right_pupil_wcs)
    }
    else {
      resolved.position_right_pupil_wcs = new DMSPoint3f()
    }

    return resolved;
    }
};

// Constants for message
DMSFacePositionResult.Constants = {
  POSITION_EAR_CENTER_AVAILABLE: 1,
  POSITION_LEFT_PUPIL_AVAILABLE: 2,
  POSITION_RIGHT_PUPIL_AVAILABLE: 4,
  POSITION_EAR_CENTER_WCS_AVAILABLE: 8,
  POSITION_LEFT_PUPIL_WCS_AVAILABLE: 16,
  POSITION_RIGHT_PUPIL_WCS_AVAILABLE: 32,
}

module.exports = DMSFacePositionResult;
