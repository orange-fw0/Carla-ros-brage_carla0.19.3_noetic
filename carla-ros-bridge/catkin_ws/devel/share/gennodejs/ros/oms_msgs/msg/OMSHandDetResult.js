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

class OMSHandDetResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.value = null;
      this.hand_rect = null;
      this.hand_keypoints = null;
    }
    else {
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = 0;
      }
      if (initObj.hasOwnProperty('hand_rect')) {
        this.hand_rect = initObj.hand_rect
      }
      else {
        this.hand_rect = new OMSRect2f();
      }
      if (initObj.hasOwnProperty('hand_keypoints')) {
        this.hand_keypoints = initObj.hand_keypoints
      }
      else {
        this.hand_keypoints = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OMSHandDetResult
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    // Serialize message field [hand_rect]
    bufferOffset = OMSRect2f.serialize(obj.hand_rect, buffer, bufferOffset);
    // Serialize message field [hand_keypoints]
    // Serialize the length for message field [hand_keypoints]
    bufferOffset = _serializer.uint32(obj.hand_keypoints.length, buffer, bufferOffset);
    obj.hand_keypoints.forEach((val) => {
      bufferOffset = OMSPoint2f.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OMSHandDetResult
    let len;
    let data = new OMSHandDetResult(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [hand_rect]
    data.hand_rect = OMSRect2f.deserialize(buffer, bufferOffset);
    // Deserialize message field [hand_keypoints]
    // Deserialize array length for message field [hand_keypoints]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.hand_keypoints = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.hand_keypoints[i] = OMSPoint2f.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 12 * object.hand_keypoints.length;
    return length + 25;
  }

  static datatype() {
    // Returns string type for a message object
    return 'oms_msgs/OMSHandDetResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0d5382ebb4618a129bd15ef86384e6d2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 UNAVAILABLE = 0
    uint8 AVAILABLE = 1
    uint8 UNCERTAIN = 2
    uint8 value
    oms_msgs/OMSRect2f hand_rect
    oms_msgs/OMSPoint2f[] hand_keypoints
    
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
    const resolved = new OMSHandDetResult(null);
    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = 0
    }

    if (msg.hand_rect !== undefined) {
      resolved.hand_rect = OMSRect2f.Resolve(msg.hand_rect)
    }
    else {
      resolved.hand_rect = new OMSRect2f()
    }

    if (msg.hand_keypoints !== undefined) {
      resolved.hand_keypoints = new Array(msg.hand_keypoints.length);
      for (let i = 0; i < resolved.hand_keypoints.length; ++i) {
        resolved.hand_keypoints[i] = OMSPoint2f.Resolve(msg.hand_keypoints[i]);
      }
    }
    else {
      resolved.hand_keypoints = []
    }

    return resolved;
    }
};

// Constants for message
OMSHandDetResult.Constants = {
  UNAVAILABLE: 0,
  AVAILABLE: 1,
  UNCERTAIN: 2,
}

module.exports = OMSHandDetResult;
