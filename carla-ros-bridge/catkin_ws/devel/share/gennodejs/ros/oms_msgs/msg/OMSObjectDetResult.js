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

//-----------------------------------------------------------

class OMSObjectDetResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.value = null;
      this.object_rect = null;
    }
    else {
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = 0;
      }
      if (initObj.hasOwnProperty('object_rect')) {
        this.object_rect = initObj.object_rect
      }
      else {
        this.object_rect = new OMSRect2f();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OMSObjectDetResult
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    // Serialize message field [object_rect]
    bufferOffset = OMSRect2f.serialize(obj.object_rect, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OMSObjectDetResult
    let len;
    let data = new OMSObjectDetResult(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [object_rect]
    data.object_rect = OMSRect2f.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 21;
  }

  static datatype() {
    // Returns string type for a message object
    return 'oms_msgs/OMSObjectDetResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '834406bfe4388fd0961e17a62fc3d81f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 UNAVAILABLE = 0
    uint8 AVAILABLE = 1
    uint8 UNCERTAIN = 2
    uint8 value
    oms_msgs/OMSRect2f object_rect
    
    ================================================================================
    MSG: oms_msgs/OMSRect2f
    float32 left
    float32 top
    float32 right
    float32 bottom
    float32 score
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new OMSObjectDetResult(null);
    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = 0
    }

    if (msg.object_rect !== undefined) {
      resolved.object_rect = OMSRect2f.Resolve(msg.object_rect)
    }
    else {
      resolved.object_rect = new OMSRect2f()
    }

    return resolved;
    }
};

// Constants for message
OMSObjectDetResult.Constants = {
  UNAVAILABLE: 0,
  AVAILABLE: 1,
  UNCERTAIN: 2,
}

module.exports = OMSObjectDetResult;
