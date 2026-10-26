// Auto-generated. Do not edit!

// (in-package oms_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let OMSRect2f = require('./OMSRect2f.js');
let OMSPoint2f = require('./OMSPoint2f.js');

//-----------------------------------------------------------

class OMSBodyDetResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.value = null;
      this.body_rect = null;
      this.body_keypoints = null;
    }
    else {
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = 0;
      }
      if (initObj.hasOwnProperty('body_rect')) {
        this.body_rect = initObj.body_rect
      }
      else {
        this.body_rect = new OMSRect2f();
      }
      if (initObj.hasOwnProperty('body_keypoints')) {
        this.body_keypoints = initObj.body_keypoints
      }
      else {
        this.body_keypoints = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OMSBodyDetResult
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    // Serialize message field [body_rect]
    bufferOffset = OMSRect2f.serialize(obj.body_rect, buffer, bufferOffset);
    // Serialize message field [body_keypoints]
    // Serialize the length for message field [body_keypoints]
    bufferOffset = _serializer.uint32(obj.body_keypoints.length, buffer, bufferOffset);
    obj.body_keypoints.forEach((val) => {
      bufferOffset = OMSPoint2f.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OMSBodyDetResult
    let len;
    let data = new OMSBodyDetResult(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [body_rect]
    data.body_rect = OMSRect2f.deserialize(buffer, bufferOffset);
    // Deserialize message field [body_keypoints]
    // Deserialize array length for message field [body_keypoints]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.body_keypoints = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.body_keypoints[i] = OMSPoint2f.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 12 * object.body_keypoints.length;
    return length + 25;
  }

  static datatype() {
    // Returns string type for a message object
    return 'oms_msgs/OMSBodyDetResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '570d586291ac92487503233915f91243';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 UNAVAILABLE = 0
    uint8 AVAILABLE = 1
    uint8 UNCERTAIN = 2
    uint8 value
    oms_msgs/OMSRect2f body_rect
    oms_msgs/OMSPoint2f[] body_keypoints
    
    ================================================================================
    MSG: oms_msgs/OMSRect2f
    float32 left
    float32 top
    float32 right
    float32 bottom
    float32 score
    
    ================================================================================
    MSG: oms_msgs/OMSPoint2f
    float32 x
    float32 y
    float32 score
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new OMSBodyDetResult(null);
    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = 0
    }

    if (msg.body_rect !== undefined) {
      resolved.body_rect = OMSRect2f.Resolve(msg.body_rect)
    }
    else {
      resolved.body_rect = new OMSRect2f()
    }

    if (msg.body_keypoints !== undefined) {
      resolved.body_keypoints = new Array(msg.body_keypoints.length);
      for (let i = 0; i < resolved.body_keypoints.length; ++i) {
        resolved.body_keypoints[i] = OMSPoint2f.Resolve(msg.body_keypoints[i]);
      }
    }
    else {
      resolved.body_keypoints = []
    }

    return resolved;
    }
};

// Constants for message
OMSBodyDetResult.Constants = {
  UNAVAILABLE: 0,
  AVAILABLE: 1,
  UNCERTAIN: 2,
}

module.exports = OMSBodyDetResult;
