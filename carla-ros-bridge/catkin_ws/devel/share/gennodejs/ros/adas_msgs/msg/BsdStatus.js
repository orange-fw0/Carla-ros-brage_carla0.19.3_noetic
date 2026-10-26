// Auto-generated. Do not edit!

// (in-package adas_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class BsdStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.left_state = null;
      this.right_state = null;
    }
    else {
      if (initObj.hasOwnProperty('left_state')) {
        this.left_state = initObj.left_state
      }
      else {
        this.left_state = 0;
      }
      if (initObj.hasOwnProperty('right_state')) {
        this.right_state = initObj.right_state
      }
      else {
        this.right_state = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BsdStatus
    // Serialize message field [left_state]
    bufferOffset = _serializer.uint8(obj.left_state, buffer, bufferOffset);
    // Serialize message field [right_state]
    bufferOffset = _serializer.uint8(obj.right_state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BsdStatus
    let len;
    let data = new BsdStatus(null);
    // Deserialize message field [left_state]
    data.left_state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [right_state]
    data.right_state = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'adas_msgs/BsdStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2c8ee4997687f4f1b0e5cdcde2cac0d1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 left_state
    uint8 right_state
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BsdStatus(null);
    if (msg.left_state !== undefined) {
      resolved.left_state = msg.left_state;
    }
    else {
      resolved.left_state = 0
    }

    if (msg.right_state !== undefined) {
      resolved.right_state = msg.right_state;
    }
    else {
      resolved.right_state = 0
    }

    return resolved;
    }
};

module.exports = BsdStatus;
