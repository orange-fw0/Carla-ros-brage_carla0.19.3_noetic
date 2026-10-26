// Auto-generated. Do not edit!

// (in-package landmark_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LaneCenterIntersectWithRoadBoundary = require('./LaneCenterIntersectWithRoadBoundary.js');

//-----------------------------------------------------------

class LaneCenterIntersectWithRoadBoundaryConfidence {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.reliable = null;
      this.lane_center_intersect_with_road_boundaries = null;
    }
    else {
      if (initObj.hasOwnProperty('reliable')) {
        this.reliable = initObj.reliable
      }
      else {
        this.reliable = false;
      }
      if (initObj.hasOwnProperty('lane_center_intersect_with_road_boundaries')) {
        this.lane_center_intersect_with_road_boundaries = initObj.lane_center_intersect_with_road_boundaries
      }
      else {
        this.lane_center_intersect_with_road_boundaries = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LaneCenterIntersectWithRoadBoundaryConfidence
    // Serialize message field [reliable]
    bufferOffset = _serializer.bool(obj.reliable, buffer, bufferOffset);
    // Serialize message field [lane_center_intersect_with_road_boundaries]
    // Serialize the length for message field [lane_center_intersect_with_road_boundaries]
    bufferOffset = _serializer.uint32(obj.lane_center_intersect_with_road_boundaries.length, buffer, bufferOffset);
    obj.lane_center_intersect_with_road_boundaries.forEach((val) => {
      bufferOffset = LaneCenterIntersectWithRoadBoundary.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaneCenterIntersectWithRoadBoundaryConfidence
    let len;
    let data = new LaneCenterIntersectWithRoadBoundaryConfidence(null);
    // Deserialize message field [reliable]
    data.reliable = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [lane_center_intersect_with_road_boundaries]
    // Deserialize array length for message field [lane_center_intersect_with_road_boundaries]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.lane_center_intersect_with_road_boundaries = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.lane_center_intersect_with_road_boundaries[i] = LaneCenterIntersectWithRoadBoundary.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 41 * object.lane_center_intersect_with_road_boundaries.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'landmark_msgs/LaneCenterIntersectWithRoadBoundaryConfidence';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '87761ae09e23c0a81c895a690f91fbac';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool reliable
    landmark_msgs/LaneCenterIntersectWithRoadBoundary[] lane_center_intersect_with_road_boundaries
    
    ================================================================================
    MSG: landmark_msgs/LaneCenterIntersectWithRoadBoundary
    landmark_msgs/LaneRecordConfidence lane_center
    landmark_msgs/LaneRecordConfidence road_boundary
    landmark_msgs/IntersectTypeEnum intersect_type
    float64 min_distance
    
    ================================================================================
    MSG: landmark_msgs/LaneRecordConfidence
    uint64 track_id
    uint64 track_frames_count
    
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
    const resolved = new LaneCenterIntersectWithRoadBoundaryConfidence(null);
    if (msg.reliable !== undefined) {
      resolved.reliable = msg.reliable;
    }
    else {
      resolved.reliable = false
    }

    if (msg.lane_center_intersect_with_road_boundaries !== undefined) {
      resolved.lane_center_intersect_with_road_boundaries = new Array(msg.lane_center_intersect_with_road_boundaries.length);
      for (let i = 0; i < resolved.lane_center_intersect_with_road_boundaries.length; ++i) {
        resolved.lane_center_intersect_with_road_boundaries[i] = LaneCenterIntersectWithRoadBoundary.Resolve(msg.lane_center_intersect_with_road_boundaries[i]);
      }
    }
    else {
      resolved.lane_center_intersect_with_road_boundaries = []
    }

    return resolved;
    }
};

module.exports = LaneCenterIntersectWithRoadBoundaryConfidence;
