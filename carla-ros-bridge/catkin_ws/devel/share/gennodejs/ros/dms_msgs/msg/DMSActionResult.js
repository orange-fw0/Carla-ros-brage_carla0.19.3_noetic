// Auto-generated. Do not edit!

// (in-package dms_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let DMSFaceAction = require('./DMSFaceAction.js');

//-----------------------------------------------------------

class DMSActionResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.actions = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('actions')) {
        this.actions = initObj.actions
      }
      else {
        this.actions = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DMSActionResult
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [actions]
    // Serialize the length for message field [actions]
    bufferOffset = _serializer.uint32(obj.actions.length, buffer, bufferOffset);
    obj.actions.forEach((val) => {
      bufferOffset = DMSFaceAction.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DMSActionResult
    let len;
    let data = new DMSActionResult(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [actions]
    // Deserialize array length for message field [actions]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.actions = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.actions[i] = DMSFaceAction.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.actions.forEach((val) => {
      length += DMSFaceAction.getMessageSize(val);
    });
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dms_msgs/DMSActionResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b5f789c741a3116750d3ff8b46e01f7e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 UN_AVAILABLE = 0
    uint8 AVAILABLE = 1
    uint8 available
    dms_msgs/DMSFaceAction[] actions
    
    ================================================================================
    MSG: dms_msgs/DMSFaceAction
    string name
    float32 score
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DMSActionResult(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.actions !== undefined) {
      resolved.actions = new Array(msg.actions.length);
      for (let i = 0; i < resolved.actions.length; ++i) {
        resolved.actions[i] = DMSFaceAction.Resolve(msg.actions[i]);
      }
    }
    else {
      resolved.actions = []
    }

    return resolved;
    }
};

// Constants for message
DMSActionResult.Constants = {
  UN_AVAILABLE: 0,
  AVAILABLE: 1,
}

module.exports = DMSActionResult;
