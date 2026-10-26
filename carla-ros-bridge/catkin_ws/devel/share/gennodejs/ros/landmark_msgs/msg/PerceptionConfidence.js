// Auto-generated. Do not edit!

// (in-package landmark_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LaneCenterOffsetConfidence = require('./LaneCenterOffsetConfidence.js');
let LaneCenterDisappearanceConfidence = require('./LaneCenterDisappearanceConfidence.js');
let LaneCenterIntersectWithRoadBoundaryConfidence = require('./LaneCenterIntersectWithRoadBoundaryConfidence.js');

//-----------------------------------------------------------

class PerceptionConfidence {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.reliable = null;
      this.lane_center_offset_confidence = null;
      this.lane_center_disappearance_confidence = null;
      this.lane_center_intersect_with_road_boundary_confidence = null;
      this.no_motor_lanecenters = null;
      this.vanished_normal_lanecenters = null;
      this.too_close_to_laneboundary_lanecenters = null;
    }
    else {
      if (initObj.hasOwnProperty('reliable')) {
        this.reliable = initObj.reliable
      }
      else {
        this.reliable = false;
      }
      if (initObj.hasOwnProperty('lane_center_offset_confidence')) {
        this.lane_center_offset_confidence = initObj.lane_center_offset_confidence
      }
      else {
        this.lane_center_offset_confidence = new LaneCenterOffsetConfidence();
      }
      if (initObj.hasOwnProperty('lane_center_disappearance_confidence')) {
        this.lane_center_disappearance_confidence = initObj.lane_center_disappearance_confidence
      }
      else {
        this.lane_center_disappearance_confidence = new LaneCenterDisappearanceConfidence();
      }
      if (initObj.hasOwnProperty('lane_center_intersect_with_road_boundary_confidence')) {
        this.lane_center_intersect_with_road_boundary_confidence = initObj.lane_center_intersect_with_road_boundary_confidence
      }
      else {
        this.lane_center_intersect_with_road_boundary_confidence = new LaneCenterIntersectWithRoadBoundaryConfidence();
      }
      if (initObj.hasOwnProperty('no_motor_lanecenters')) {
        this.no_motor_lanecenters = initObj.no_motor_lanecenters
      }
      else {
        this.no_motor_lanecenters = [];
      }
      if (initObj.hasOwnProperty('vanished_normal_lanecenters')) {
        this.vanished_normal_lanecenters = initObj.vanished_normal_lanecenters
      }
      else {
        this.vanished_normal_lanecenters = [];
      }
      if (initObj.hasOwnProperty('too_close_to_laneboundary_lanecenters')) {
        this.too_close_to_laneboundary_lanecenters = initObj.too_close_to_laneboundary_lanecenters
      }
      else {
        this.too_close_to_laneboundary_lanecenters = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PerceptionConfidence
    // Serialize message field [reliable]
    bufferOffset = _serializer.bool(obj.reliable, buffer, bufferOffset);
    // Serialize message field [lane_center_offset_confidence]
    bufferOffset = LaneCenterOffsetConfidence.serialize(obj.lane_center_offset_confidence, buffer, bufferOffset);
    // Serialize message field [lane_center_disappearance_confidence]
    bufferOffset = LaneCenterDisappearanceConfidence.serialize(obj.lane_center_disappearance_confidence, buffer, bufferOffset);
    // Serialize message field [lane_center_intersect_with_road_boundary_confidence]
    bufferOffset = LaneCenterIntersectWithRoadBoundaryConfidence.serialize(obj.lane_center_intersect_with_road_boundary_confidence, buffer, bufferOffset);
    // Serialize message field [no_motor_lanecenters]
    bufferOffset = _arraySerializer.uint64(obj.no_motor_lanecenters, buffer, bufferOffset, null);
    // Serialize message field [vanished_normal_lanecenters]
    bufferOffset = _arraySerializer.uint64(obj.vanished_normal_lanecenters, buffer, bufferOffset, null);
    // Serialize message field [too_close_to_laneboundary_lanecenters]
    bufferOffset = _arraySerializer.uint64(obj.too_close_to_laneboundary_lanecenters, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PerceptionConfidence
    let len;
    let data = new PerceptionConfidence(null);
    // Deserialize message field [reliable]
    data.reliable = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [lane_center_offset_confidence]
    data.lane_center_offset_confidence = LaneCenterOffsetConfidence.deserialize(buffer, bufferOffset);
    // Deserialize message field [lane_center_disappearance_confidence]
    data.lane_center_disappearance_confidence = LaneCenterDisappearanceConfidence.deserialize(buffer, bufferOffset);
    // Deserialize message field [lane_center_intersect_with_road_boundary_confidence]
    data.lane_center_intersect_with_road_boundary_confidence = LaneCenterIntersectWithRoadBoundaryConfidence.deserialize(buffer, bufferOffset);
    // Deserialize message field [no_motor_lanecenters]
    data.no_motor_lanecenters = _arrayDeserializer.uint64(buffer, bufferOffset, null)
    // Deserialize message field [vanished_normal_lanecenters]
    data.vanished_normal_lanecenters = _arrayDeserializer.uint64(buffer, bufferOffset, null)
    // Deserialize message field [too_close_to_laneboundary_lanecenters]
    data.too_close_to_laneboundary_lanecenters = _arrayDeserializer.uint64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += LaneCenterOffsetConfidence.getMessageSize(object.lane_center_offset_confidence);
    length += LaneCenterDisappearanceConfidence.getMessageSize(object.lane_center_disappearance_confidence);
    length += LaneCenterIntersectWithRoadBoundaryConfidence.getMessageSize(object.lane_center_intersect_with_road_boundary_confidence);
    length += 8 * object.no_motor_lanecenters.length;
    length += 8 * object.vanished_normal_lanecenters.length;
    length += 8 * object.too_close_to_laneboundary_lanecenters.length;
    return length + 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'landmark_msgs/PerceptionConfidence';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8f6912cd46f6fbec8e732a23e3f51bcd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool reliable
    landmark_msgs/LaneCenterOffsetConfidence lane_center_offset_confidence
    landmark_msgs/LaneCenterDisappearanceConfidence lane_center_disappearance_confidence
    landmark_msgs/LaneCenterIntersectWithRoadBoundaryConfidence lane_center_intersect_with_road_boundary_confidence
    uint64[] no_motor_lanecenters
    uint64[] vanished_normal_lanecenters
    uint64[] too_close_to_laneboundary_lanecenters
    
    ================================================================================
    MSG: landmark_msgs/LaneCenterOffsetConfidence
    bool reliable
    landmark_msgs/LaneCenterOffset[] lane_center_offsets
    
    ================================================================================
    MSG: landmark_msgs/LaneCenterOffset
    uint64 track_id
    uint64 track_frames_count
    float32 accumulative_offset
    float32 relative_offset
    
    ================================================================================
    MSG: landmark_msgs/LaneCenterDisappearanceConfidence
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
    
    ================================================================================
    MSG: landmark_msgs/LaneCenterIntersectWithRoadBoundaryConfidence
    bool reliable
    landmark_msgs/LaneCenterIntersectWithRoadBoundary[] lane_center_intersect_with_road_boundaries
    
    ================================================================================
    MSG: landmark_msgs/LaneCenterIntersectWithRoadBoundary
    landmark_msgs/LaneRecordConfidence lane_center
    landmark_msgs/LaneRecordConfidence road_boundary
    landmark_msgs/IntersectTypeEnum intersect_type
    float64 min_distance
    
    ================================================================================
    MSG: landmark_msgs/IntersectTypeEnum
    uint8 UNKNOWN = 0
    uint8 CROSS = 1
    uint8 CLOSE = 2
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PerceptionConfidence(null);
    if (msg.reliable !== undefined) {
      resolved.reliable = msg.reliable;
    }
    else {
      resolved.reliable = false
    }

    if (msg.lane_center_offset_confidence !== undefined) {
      resolved.lane_center_offset_confidence = LaneCenterOffsetConfidence.Resolve(msg.lane_center_offset_confidence)
    }
    else {
      resolved.lane_center_offset_confidence = new LaneCenterOffsetConfidence()
    }

    if (msg.lane_center_disappearance_confidence !== undefined) {
      resolved.lane_center_disappearance_confidence = LaneCenterDisappearanceConfidence.Resolve(msg.lane_center_disappearance_confidence)
    }
    else {
      resolved.lane_center_disappearance_confidence = new LaneCenterDisappearanceConfidence()
    }

    if (msg.lane_center_intersect_with_road_boundary_confidence !== undefined) {
      resolved.lane_center_intersect_with_road_boundary_confidence = LaneCenterIntersectWithRoadBoundaryConfidence.Resolve(msg.lane_center_intersect_with_road_boundary_confidence)
    }
    else {
      resolved.lane_center_intersect_with_road_boundary_confidence = new LaneCenterIntersectWithRoadBoundaryConfidence()
    }

    if (msg.no_motor_lanecenters !== undefined) {
      resolved.no_motor_lanecenters = msg.no_motor_lanecenters;
    }
    else {
      resolved.no_motor_lanecenters = []
    }

    if (msg.vanished_normal_lanecenters !== undefined) {
      resolved.vanished_normal_lanecenters = msg.vanished_normal_lanecenters;
    }
    else {
      resolved.vanished_normal_lanecenters = []
    }

    if (msg.too_close_to_laneboundary_lanecenters !== undefined) {
      resolved.too_close_to_laneboundary_lanecenters = msg.too_close_to_laneboundary_lanecenters;
    }
    else {
      resolved.too_close_to_laneboundary_lanecenters = []
    }

    return resolved;
    }
};

module.exports = PerceptionConfidence;
