// Auto-generated. Do not edit!

// (in-package dms_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let DMSPoint2f = require('./DMSPoint2f.js');
let DMSPoint3f = require('./DMSPoint3f.js');

//-----------------------------------------------------------

class DMSKeypointsResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.keypoint_score = null;
      this.keypoints = null;
      this.keypoints_left_eye = null;
      this.keypoints_right_eye = null;
      this.keypoints_pupil = null;
      this.keypoints3d = null;
      this.keypoints3d_wcs = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('keypoint_score')) {
        this.keypoint_score = initObj.keypoint_score
      }
      else {
        this.keypoint_score = 0.0;
      }
      if (initObj.hasOwnProperty('keypoints')) {
        this.keypoints = initObj.keypoints
      }
      else {
        this.keypoints = [];
      }
      if (initObj.hasOwnProperty('keypoints_left_eye')) {
        this.keypoints_left_eye = initObj.keypoints_left_eye
      }
      else {
        this.keypoints_left_eye = [];
      }
      if (initObj.hasOwnProperty('keypoints_right_eye')) {
        this.keypoints_right_eye = initObj.keypoints_right_eye
      }
      else {
        this.keypoints_right_eye = [];
      }
      if (initObj.hasOwnProperty('keypoints_pupil')) {
        this.keypoints_pupil = initObj.keypoints_pupil
      }
      else {
        this.keypoints_pupil = [];
      }
      if (initObj.hasOwnProperty('keypoints3d')) {
        this.keypoints3d = initObj.keypoints3d
      }
      else {
        this.keypoints3d = [];
      }
      if (initObj.hasOwnProperty('keypoints3d_wcs')) {
        this.keypoints3d_wcs = initObj.keypoints3d_wcs
      }
      else {
        this.keypoints3d_wcs = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DMSKeypointsResult
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [keypoint_score]
    bufferOffset = _serializer.float32(obj.keypoint_score, buffer, bufferOffset);
    // Serialize message field [keypoints]
    // Serialize the length for message field [keypoints]
    bufferOffset = _serializer.uint32(obj.keypoints.length, buffer, bufferOffset);
    obj.keypoints.forEach((val) => {
      bufferOffset = DMSPoint2f.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [keypoints_left_eye]
    // Serialize the length for message field [keypoints_left_eye]
    bufferOffset = _serializer.uint32(obj.keypoints_left_eye.length, buffer, bufferOffset);
    obj.keypoints_left_eye.forEach((val) => {
      bufferOffset = DMSPoint2f.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [keypoints_right_eye]
    // Serialize the length for message field [keypoints_right_eye]
    bufferOffset = _serializer.uint32(obj.keypoints_right_eye.length, buffer, bufferOffset);
    obj.keypoints_right_eye.forEach((val) => {
      bufferOffset = DMSPoint2f.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [keypoints_pupil]
    // Serialize the length for message field [keypoints_pupil]
    bufferOffset = _serializer.uint32(obj.keypoints_pupil.length, buffer, bufferOffset);
    obj.keypoints_pupil.forEach((val) => {
      bufferOffset = DMSPoint2f.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [keypoints3d]
    // Serialize the length for message field [keypoints3d]
    bufferOffset = _serializer.uint32(obj.keypoints3d.length, buffer, bufferOffset);
    obj.keypoints3d.forEach((val) => {
      bufferOffset = DMSPoint3f.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [keypoints3d_wcs]
    // Serialize the length for message field [keypoints3d_wcs]
    bufferOffset = _serializer.uint32(obj.keypoints3d_wcs.length, buffer, bufferOffset);
    obj.keypoints3d_wcs.forEach((val) => {
      bufferOffset = DMSPoint3f.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DMSKeypointsResult
    let len;
    let data = new DMSKeypointsResult(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [keypoint_score]
    data.keypoint_score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [keypoints]
    // Deserialize array length for message field [keypoints]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.keypoints = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.keypoints[i] = DMSPoint2f.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [keypoints_left_eye]
    // Deserialize array length for message field [keypoints_left_eye]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.keypoints_left_eye = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.keypoints_left_eye[i] = DMSPoint2f.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [keypoints_right_eye]
    // Deserialize array length for message field [keypoints_right_eye]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.keypoints_right_eye = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.keypoints_right_eye[i] = DMSPoint2f.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [keypoints_pupil]
    // Deserialize array length for message field [keypoints_pupil]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.keypoints_pupil = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.keypoints_pupil[i] = DMSPoint2f.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [keypoints3d]
    // Deserialize array length for message field [keypoints3d]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.keypoints3d = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.keypoints3d[i] = DMSPoint3f.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [keypoints3d_wcs]
    // Deserialize array length for message field [keypoints3d_wcs]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.keypoints3d_wcs = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.keypoints3d_wcs[i] = DMSPoint3f.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.keypoints.length;
    length += 8 * object.keypoints_left_eye.length;
    length += 8 * object.keypoints_right_eye.length;
    length += 8 * object.keypoints_pupil.length;
    length += 12 * object.keypoints3d.length;
    length += 12 * object.keypoints3d_wcs.length;
    return length + 29;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dms_msgs/DMSKeypointsResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd3e2f698008751ea1fc252e991281640';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 KEYPOINTS_2D_AVAILABLE = 1
    uint8 KEYPOINTS_3D_AVAILABLE = 2
    uint8 KEYPOINTS_3D_WCS_AVAILABLE = 4
    uint8 available
    float32 keypoint_score
    dms_msgs/DMSPoint2f[] keypoints
    dms_msgs/DMSPoint2f[] keypoints_left_eye
    dms_msgs/DMSPoint2f[] keypoints_right_eye
    dms_msgs/DMSPoint2f[] keypoints_pupil
    dms_msgs/DMSPoint3f[] keypoints3d
    dms_msgs/DMSPoint3f[] keypoints3d_wcs
    
    ================================================================================
    MSG: dms_msgs/DMSPoint2f
    float32 x
    float32 y
    
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
    const resolved = new DMSKeypointsResult(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.keypoint_score !== undefined) {
      resolved.keypoint_score = msg.keypoint_score;
    }
    else {
      resolved.keypoint_score = 0.0
    }

    if (msg.keypoints !== undefined) {
      resolved.keypoints = new Array(msg.keypoints.length);
      for (let i = 0; i < resolved.keypoints.length; ++i) {
        resolved.keypoints[i] = DMSPoint2f.Resolve(msg.keypoints[i]);
      }
    }
    else {
      resolved.keypoints = []
    }

    if (msg.keypoints_left_eye !== undefined) {
      resolved.keypoints_left_eye = new Array(msg.keypoints_left_eye.length);
      for (let i = 0; i < resolved.keypoints_left_eye.length; ++i) {
        resolved.keypoints_left_eye[i] = DMSPoint2f.Resolve(msg.keypoints_left_eye[i]);
      }
    }
    else {
      resolved.keypoints_left_eye = []
    }

    if (msg.keypoints_right_eye !== undefined) {
      resolved.keypoints_right_eye = new Array(msg.keypoints_right_eye.length);
      for (let i = 0; i < resolved.keypoints_right_eye.length; ++i) {
        resolved.keypoints_right_eye[i] = DMSPoint2f.Resolve(msg.keypoints_right_eye[i]);
      }
    }
    else {
      resolved.keypoints_right_eye = []
    }

    if (msg.keypoints_pupil !== undefined) {
      resolved.keypoints_pupil = new Array(msg.keypoints_pupil.length);
      for (let i = 0; i < resolved.keypoints_pupil.length; ++i) {
        resolved.keypoints_pupil[i] = DMSPoint2f.Resolve(msg.keypoints_pupil[i]);
      }
    }
    else {
      resolved.keypoints_pupil = []
    }

    if (msg.keypoints3d !== undefined) {
      resolved.keypoints3d = new Array(msg.keypoints3d.length);
      for (let i = 0; i < resolved.keypoints3d.length; ++i) {
        resolved.keypoints3d[i] = DMSPoint3f.Resolve(msg.keypoints3d[i]);
      }
    }
    else {
      resolved.keypoints3d = []
    }

    if (msg.keypoints3d_wcs !== undefined) {
      resolved.keypoints3d_wcs = new Array(msg.keypoints3d_wcs.length);
      for (let i = 0; i < resolved.keypoints3d_wcs.length; ++i) {
        resolved.keypoints3d_wcs[i] = DMSPoint3f.Resolve(msg.keypoints3d_wcs[i]);
      }
    }
    else {
      resolved.keypoints3d_wcs = []
    }

    return resolved;
    }
};

// Constants for message
DMSKeypointsResult.Constants = {
  KEYPOINTS_2D_AVAILABLE: 1,
  KEYPOINTS_3D_AVAILABLE: 2,
  KEYPOINTS_3D_WCS_AVAILABLE: 4,
}

module.exports = DMSKeypointsResult;
