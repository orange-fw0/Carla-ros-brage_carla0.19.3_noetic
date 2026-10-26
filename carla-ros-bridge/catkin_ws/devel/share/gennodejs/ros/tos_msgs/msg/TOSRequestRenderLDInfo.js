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

class TOSRequestRenderLDInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lane_id = null;
    }
    else {
      if (initObj.hasOwnProperty('lane_id')) {
        this.lane_id = initObj.lane_id
      }
      else {
        this.lane_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TOSRequestRenderLDInfo
    // Serialize message field [lane_id]
    bufferOffset = _serializer.uint32(obj.lane_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TOSRequestRenderLDInfo
    let len;
    let data = new TOSRequestRenderLDInfo(null);
    // Deserialize message field [lane_id]
    data.lane_id = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tos_msgs/TOSRequestRenderLDInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd7d9c9b0d3d32b0727874aaf221489bd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 lane_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TOSRequestRenderLDInfo(null);
    if (msg.lane_id !== undefined) {
      resolved.lane_id = msg.lane_id;
    }
    else {
      resolved.lane_id = 0
    }

    return resolved;
    }
};

module.exports = TOSRequestRenderLDInfo;
