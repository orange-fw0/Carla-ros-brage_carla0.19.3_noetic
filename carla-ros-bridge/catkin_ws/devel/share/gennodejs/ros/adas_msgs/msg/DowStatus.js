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

class DowStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.left_front_state = null;
      this.left_rear_state = null;
      this.right_front_state = null;
      this.right_rear_state = null;
    }
    else {
      if (initObj.hasOwnProperty('left_front_state')) {
        this.left_front_state = initObj.left_front_state
      }
      else {
        this.left_front_state = 0;
      }
      if (initObj.hasOwnProperty('left_rear_state')) {
        this.left_rear_state = initObj.left_rear_state
      }
      else {
        this.left_rear_state = 0;
      }
      if (initObj.hasOwnProperty('right_front_state')) {
        this.right_front_state = initObj.right_front_state
      }
      else {
        this.right_front_state = 0;
      }
      if (initObj.hasOwnProperty('right_rear_state')) {
        this.right_rear_state = initObj.right_rear_state
      }
      else {
        this.right_rear_state = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DowStatus
    // Serialize message field [left_front_state]
    bufferOffset = _serializer.uint8(obj.left_front_state, buffer, bufferOffset);
    // Serialize message field [left_rear_state]
    bufferOffset = _serializer.uint8(obj.left_rear_state, buffer, bufferOffset);
    // Serialize message field [right_front_state]
    bufferOffset = _serializer.uint8(obj.right_front_state, buffer, bufferOffset);
    // Serialize message field [right_rear_state]
    bufferOffset = _serializer.uint8(obj.right_rear_state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DowStatus
    let len;
    let data = new DowStatus(null);
    // Deserialize message field [left_front_state]
    data.left_front_state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [left_rear_state]
    data.left_rear_state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [right_front_state]
    data.right_front_state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [right_rear_state]
    data.right_rear_state = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'adas_msgs/DowStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9cb3da686013d7fd71bdceb5c759fcd2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 left_front_state
    uint8 left_rear_state
    uint8 right_front_state
    uint8 right_rear_state
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DowStatus(null);
    if (msg.left_front_state !== undefined) {
      resolved.left_front_state = msg.left_front_state;
    }
    else {
      resolved.left_front_state = 0
    }

    if (msg.left_rear_state !== undefined) {
      resolved.left_rear_state = msg.left_rear_state;
    }
    else {
      resolved.left_rear_state = 0
    }

    if (msg.right_front_state !== undefined) {
      resolved.right_front_state = msg.right_front_state;
    }
    else {
      resolved.right_front_state = 0
    }

    if (msg.right_rear_state !== undefined) {
      resolved.right_rear_state = msg.right_rear_state;
    }
    else {
      resolved.right_rear_state = 0
    }

    return resolved;
    }
};

module.exports = DowStatus;
