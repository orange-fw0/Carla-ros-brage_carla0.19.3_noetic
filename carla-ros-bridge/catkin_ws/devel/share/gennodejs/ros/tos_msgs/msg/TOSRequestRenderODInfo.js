// Auto-generated. Do not edit!

// (in-package tos_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class TOSRequestRenderODInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.target_s = null;
      this.target_l = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('target_s')) {
        this.target_s = initObj.target_s
      }
      else {
        this.target_s = 0.0;
      }
      if (initObj.hasOwnProperty('target_l')) {
        this.target_l = initObj.target_l
      }
      else {
        this.target_l = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TOSRequestRenderODInfo
    // Serialize message field [id]
    bufferOffset = _serializer.uint32(obj.id, buffer, bufferOffset);
    // Serialize message field [target_s]
    bufferOffset = _serializer.float64(obj.target_s, buffer, bufferOffset);
    // Serialize message field [target_l]
    bufferOffset = _serializer.float64(obj.target_l, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TOSRequestRenderODInfo
    let len;
    let data = new TOSRequestRenderODInfo(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [target_s]
    data.target_s = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [target_l]
    data.target_l = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tos_msgs/TOSRequestRenderODInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8a972246949806bb2f0407b295673a74';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 id
    float64 target_s
    float64 target_l
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TOSRequestRenderODInfo(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.target_s !== undefined) {
      resolved.target_s = msg.target_s;
    }
    else {
      resolved.target_s = 0.0
    }

    if (msg.target_l !== undefined) {
      resolved.target_l = msg.target_l;
    }
    else {
      resolved.target_l = 0.0
    }

    return resolved;
    }
};

module.exports = TOSRequestRenderODInfo;
