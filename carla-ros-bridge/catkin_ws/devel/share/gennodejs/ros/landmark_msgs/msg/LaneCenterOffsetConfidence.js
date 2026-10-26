// Auto-generated. Do not edit!

// (in-package landmark_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LaneCenterOffset = require('./LaneCenterOffset.js');

//-----------------------------------------------------------

class LaneCenterOffsetConfidence {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.reliable = null;
      this.lane_center_offsets = null;
    }
    else {
      if (initObj.hasOwnProperty('reliable')) {
        this.reliable = initObj.reliable
      }
      else {
        this.reliable = false;
      }
      if (initObj.hasOwnProperty('lane_center_offsets')) {
        this.lane_center_offsets = initObj.lane_center_offsets
      }
      else {
        this.lane_center_offsets = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LaneCenterOffsetConfidence
    // Serialize message field [reliable]
    bufferOffset = _serializer.bool(obj.reliable, buffer, bufferOffset);
    // Serialize message field [lane_center_offsets]
    // Serialize the length for message field [lane_center_offsets]
    bufferOffset = _serializer.uint32(obj.lane_center_offsets.length, buffer, bufferOffset);
    obj.lane_center_offsets.forEach((val) => {
      bufferOffset = LaneCenterOffset.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaneCenterOffsetConfidence
    let len;
    let data = new LaneCenterOffsetConfidence(null);
    // Deserialize message field [reliable]
    data.reliable = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [lane_center_offsets]
    // Deserialize array length for message field [lane_center_offsets]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.lane_center_offsets = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.lane_center_offsets[i] = LaneCenterOffset.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.lane_center_offsets.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'landmark_msgs/LaneCenterOffsetConfidence';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '18ffa8bd9721e4c7317226a15247de21';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool reliable
    landmark_msgs/LaneCenterOffset[] lane_center_offsets
    
    ================================================================================
    MSG: landmark_msgs/LaneCenterOffset
    uint64 track_id
    uint64 track_frames_count
    float32 accumulative_offset
    float32 relative_offset
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LaneCenterOffsetConfidence(null);
    if (msg.reliable !== undefined) {
      resolved.reliable = msg.reliable;
    }
    else {
      resolved.reliable = false
    }

    if (msg.lane_center_offsets !== undefined) {
      resolved.lane_center_offsets = new Array(msg.lane_center_offsets.length);
      for (let i = 0; i < resolved.lane_center_offsets.length; ++i) {
        resolved.lane_center_offsets[i] = LaneCenterOffset.Resolve(msg.lane_center_offsets[i]);
      }
    }
    else {
      resolved.lane_center_offsets = []
    }

    return resolved;
    }
};

module.exports = LaneCenterOffsetConfidence;
