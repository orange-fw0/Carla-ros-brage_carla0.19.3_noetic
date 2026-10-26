// Auto-generated. Do not edit!

// (in-package landmark_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LaneCenterDisappearance = require('./LaneCenterDisappearance.js');

//-----------------------------------------------------------

class LaneCenterDisappearanceConfidence {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.reliable = null;
      this.lane_center_disappearances = null;
    }
    else {
      if (initObj.hasOwnProperty('reliable')) {
        this.reliable = initObj.reliable
      }
      else {
        this.reliable = false;
      }
      if (initObj.hasOwnProperty('lane_center_disappearances')) {
        this.lane_center_disappearances = initObj.lane_center_disappearances
      }
      else {
        this.lane_center_disappearances = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LaneCenterDisappearanceConfidence
    // Serialize message field [reliable]
    bufferOffset = _serializer.bool(obj.reliable, buffer, bufferOffset);
    // Serialize message field [lane_center_disappearances]
    // Serialize the length for message field [lane_center_disappearances]
    bufferOffset = _serializer.uint32(obj.lane_center_disappearances.length, buffer, bufferOffset);
    obj.lane_center_disappearances.forEach((val) => {
      bufferOffset = LaneCenterDisappearance.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaneCenterDisappearanceConfidence
    let len;
    let data = new LaneCenterDisappearanceConfidence(null);
    // Deserialize message field [reliable]
    data.reliable = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [lane_center_disappearances]
    // Deserialize array length for message field [lane_center_disappearances]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.lane_center_disappearances = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.lane_center_disappearances[i] = LaneCenterDisappearance.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 32 * object.lane_center_disappearances.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'landmark_msgs/LaneCenterDisappearanceConfidence';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4b515cea7479ac8b48254410fe0662df';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool reliable
    landmark_msgs/LaneCenterDisappearance[] lane_center_disappearances
    
    ================================================================================
    MSG: landmark_msgs/LaneCenterDisappearance
    landmark_msgs/LaneRecordConfidence left_lane_boundary
    landmark_msgs/LaneRecordConfidence right_lane_boundary
    
    ================================================================================
    MSG: landmark_msgs/LaneRecordConfidence
    uint64 track_id
    uint64 track_frames_count
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LaneCenterDisappearanceConfidence(null);
    if (msg.reliable !== undefined) {
      resolved.reliable = msg.reliable;
    }
    else {
      resolved.reliable = false
    }

    if (msg.lane_center_disappearances !== undefined) {
      resolved.lane_center_disappearances = new Array(msg.lane_center_disappearances.length);
      for (let i = 0; i < resolved.lane_center_disappearances.length; ++i) {
        resolved.lane_center_disappearances[i] = LaneCenterDisappearance.Resolve(msg.lane_center_disappearances[i]);
      }
    }
    else {
      resolved.lane_center_disappearances = []
    }

    return resolved;
    }
};

module.exports = LaneCenterDisappearanceConfidence;
