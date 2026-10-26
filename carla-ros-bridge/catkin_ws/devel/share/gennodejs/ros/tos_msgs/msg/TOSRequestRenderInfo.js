// Auto-generated. Do not edit!

// (in-package tos_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TOSRequestRenderODInfo = require('./TOSRequestRenderODInfo.js');
let TOSRequestRenderLDInfo = require('./TOSRequestRenderLDInfo.js');
let TOSRequestCandidate = require('./TOSRequestCandidate.js');

//-----------------------------------------------------------

class TOSRequestRenderInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.od_info = null;
      this.ld_info = null;
      this.candidates = null;
    }
    else {
      if (initObj.hasOwnProperty('od_info')) {
        this.od_info = initObj.od_info
      }
      else {
        this.od_info = [];
      }
      if (initObj.hasOwnProperty('ld_info')) {
        this.ld_info = initObj.ld_info
      }
      else {
        this.ld_info = [];
      }
      if (initObj.hasOwnProperty('candidates')) {
        this.candidates = initObj.candidates
      }
      else {
        this.candidates = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TOSRequestRenderInfo
    // Serialize message field [od_info]
    // Serialize the length for message field [od_info]
    bufferOffset = _serializer.uint32(obj.od_info.length, buffer, bufferOffset);
    obj.od_info.forEach((val) => {
      bufferOffset = TOSRequestRenderODInfo.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [ld_info]
    // Serialize the length for message field [ld_info]
    bufferOffset = _serializer.uint32(obj.ld_info.length, buffer, bufferOffset);
    obj.ld_info.forEach((val) => {
      bufferOffset = TOSRequestRenderLDInfo.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [candidates]
    // Serialize the length for message field [candidates]
    bufferOffset = _serializer.uint32(obj.candidates.length, buffer, bufferOffset);
    obj.candidates.forEach((val) => {
      bufferOffset = TOSRequestCandidate.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TOSRequestRenderInfo
    let len;
    let data = new TOSRequestRenderInfo(null);
    // Deserialize message field [od_info]
    // Deserialize array length for message field [od_info]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.od_info = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.od_info[i] = TOSRequestRenderODInfo.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [ld_info]
    // Deserialize array length for message field [ld_info]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.ld_info = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.ld_info[i] = TOSRequestRenderLDInfo.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [candidates]
    // Deserialize array length for message field [candidates]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.candidates = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.candidates[i] = TOSRequestCandidate.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 20 * object.od_info.length;
    length += 4 * object.ld_info.length;
    object.candidates.forEach((val) => {
      length += TOSRequestCandidate.getMessageSize(val);
    });
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tos_msgs/TOSRequestRenderInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3602094068c5eafb47bd4bcea349b97b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    tos_msgs/TOSRequestRenderODInfo[] od_info
    tos_msgs/TOSRequestRenderLDInfo[] ld_info
    tos_msgs/TOSRequestCandidate[] candidates
    
    ================================================================================
    MSG: tos_msgs/TOSRequestRenderODInfo
    uint32 id
    float64 target_s
    float64 target_l
    
    ================================================================================
    MSG: tos_msgs/TOSRequestRenderLDInfo
    uint32 lane_id
    
    ================================================================================
    MSG: tos_msgs/TOSRequestCandidate
    uint32 candidate_id
    perception_interface_msgs/Point3d[] traj
    
    ================================================================================
    MSG: perception_interface_msgs/Point3d
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TOSRequestRenderInfo(null);
    if (msg.od_info !== undefined) {
      resolved.od_info = new Array(msg.od_info.length);
      for (let i = 0; i < resolved.od_info.length; ++i) {
        resolved.od_info[i] = TOSRequestRenderODInfo.Resolve(msg.od_info[i]);
      }
    }
    else {
      resolved.od_info = []
    }

    if (msg.ld_info !== undefined) {
      resolved.ld_info = new Array(msg.ld_info.length);
      for (let i = 0; i < resolved.ld_info.length; ++i) {
        resolved.ld_info[i] = TOSRequestRenderLDInfo.Resolve(msg.ld_info[i]);
      }
    }
    else {
      resolved.ld_info = []
    }

    if (msg.candidates !== undefined) {
      resolved.candidates = new Array(msg.candidates.length);
      for (let i = 0; i < resolved.candidates.length; ++i) {
        resolved.candidates[i] = TOSRequestCandidate.Resolve(msg.candidates[i]);
      }
    }
    else {
      resolved.candidates = []
    }

    return resolved;
    }
};

module.exports = TOSRequestRenderInfo;
