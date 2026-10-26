// Auto-generated. Do not edit!

// (in-package landmark_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LaneRecordConfidence = require('./LaneRecordConfidence.js');

//-----------------------------------------------------------

class LaneCenterDisappearance {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.left_lane_boundary = null;
      this.right_lane_boundary = null;
    }
    else {
      if (initObj.hasOwnProperty('left_lane_boundary')) {
        this.left_lane_boundary = initObj.left_lane_boundary
      }
      else {
        this.left_lane_boundary = new LaneRecordConfidence();
      }
      if (initObj.hasOwnProperty('right_lane_boundary')) {
        this.right_lane_boundary = initObj.right_lane_boundary
      }
      else {
        this.right_lane_boundary = new LaneRecordConfidence();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LaneCenterDisappearance
    // Serialize message field [left_lane_boundary]
    bufferOffset = LaneRecordConfidence.serialize(obj.left_lane_boundary, buffer, bufferOffset);
    // Serialize message field [right_lane_boundary]
    bufferOffset = LaneRecordConfidence.serialize(obj.right_lane_boundary, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaneCenterDisappearance
    let len;
    let data = new LaneCenterDisappearance(null);
    // Deserialize message field [left_lane_boundary]
    data.left_lane_boundary = LaneRecordConfidence.deserialize(buffer, bufferOffset);
    // Deserialize message field [right_lane_boundary]
    data.right_lane_boundary = LaneRecordConfidence.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'landmark_msgs/LaneCenterDisappearance';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd7582ebb0b0f34cce3675e5631fed071';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new LaneCenterDisappearance(null);
    if (msg.left_lane_boundary !== undefined) {
      resolved.left_lane_boundary = LaneRecordConfidence.Resolve(msg.left_lane_boundary)
    }
    else {
      resolved.left_lane_boundary = new LaneRecordConfidence()
    }

    if (msg.right_lane_boundary !== undefined) {
      resolved.right_lane_boundary = LaneRecordConfidence.Resolve(msg.right_lane_boundary)
    }
    else {
      resolved.right_lane_boundary = new LaneRecordConfidence()
    }

    return resolved;
    }
};

module.exports = LaneCenterDisappearance;
