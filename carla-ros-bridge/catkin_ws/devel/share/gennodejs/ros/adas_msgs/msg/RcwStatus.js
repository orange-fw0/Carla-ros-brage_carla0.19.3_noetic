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

class RcwStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.rcw_state = null;
      this.rlw_state = null;
      this.plw_state = null;
    }
    else {
      if (initObj.hasOwnProperty('rcw_state')) {
        this.rcw_state = initObj.rcw_state
      }
      else {
        this.rcw_state = 0;
      }
      if (initObj.hasOwnProperty('rlw_state')) {
        this.rlw_state = initObj.rlw_state
      }
      else {
        this.rlw_state = 0;
      }
      if (initObj.hasOwnProperty('plw_state')) {
        this.plw_state = initObj.plw_state
      }
      else {
        this.plw_state = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RcwStatus
    // Serialize message field [rcw_state]
    bufferOffset = _serializer.uint8(obj.rcw_state, buffer, bufferOffset);
    // Serialize message field [rlw_state]
    bufferOffset = _serializer.uint8(obj.rlw_state, buffer, bufferOffset);
    // Serialize message field [plw_state]
    bufferOffset = _serializer.uint8(obj.plw_state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RcwStatus
    let len;
    let data = new RcwStatus(null);
    // Deserialize message field [rcw_state]
    data.rcw_state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [rlw_state]
    data.rlw_state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [plw_state]
    data.plw_state = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a message object
    return 'adas_msgs/RcwStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'be1d15965bf623787477c33874ccdb3d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 rcw_state
    uint8 rlw_state
    uint8 plw_state
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RcwStatus(null);
    if (msg.rcw_state !== undefined) {
      resolved.rcw_state = msg.rcw_state;
    }
    else {
      resolved.rcw_state = 0
    }

    if (msg.rlw_state !== undefined) {
      resolved.rlw_state = msg.rlw_state;
    }
    else {
      resolved.rlw_state = 0
    }

    if (msg.plw_state !== undefined) {
      resolved.plw_state = msg.plw_state;
    }
    else {
      resolved.plw_state = 0
    }

    return resolved;
    }
};

module.exports = RcwStatus;
