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
let IntersectTypeEnum = require('./IntersectTypeEnum.js');

//-----------------------------------------------------------

class LaneCenterIntersectWithRoadBoundary {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lane_center = null;
      this.road_boundary = null;
      this.intersect_type = null;
      this.min_distance = null;
    }
    else {
      if (initObj.hasOwnProperty('lane_center')) {
        this.lane_center = initObj.lane_center
      }
      else {
        this.lane_center = new LaneRecordConfidence();
      }
      if (initObj.hasOwnProperty('road_boundary')) {
        this.road_boundary = initObj.road_boundary
      }
      else {
        this.road_boundary = new LaneRecordConfidence();
      }
      if (initObj.hasOwnProperty('intersect_type')) {
        this.intersect_type = initObj.intersect_type
      }
      else {
        this.intersect_type = new IntersectTypeEnum();
      }
      if (initObj.hasOwnProperty('min_distance')) {
        this.min_distance = initObj.min_distance
      }
      else {
        this.min_distance = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LaneCenterIntersectWithRoadBoundary
    // Serialize message field [lane_center]
    bufferOffset = LaneRecordConfidence.serialize(obj.lane_center, buffer, bufferOffset);
    // Serialize message field [road_boundary]
    bufferOffset = LaneRecordConfidence.serialize(obj.road_boundary, buffer, bufferOffset);
    // Serialize message field [intersect_type]
    bufferOffset = IntersectTypeEnum.serialize(obj.intersect_type, buffer, bufferOffset);
    // Serialize message field [min_distance]
    bufferOffset = _serializer.float64(obj.min_distance, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaneCenterIntersectWithRoadBoundary
    let len;
    let data = new LaneCenterIntersectWithRoadBoundary(null);
    // Deserialize message field [lane_center]
    data.lane_center = LaneRecordConfidence.deserialize(buffer, bufferOffset);
    // Deserialize message field [road_boundary]
    data.road_boundary = LaneRecordConfidence.deserialize(buffer, bufferOffset);
    // Deserialize message field [intersect_type]
    data.intersect_type = IntersectTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [min_distance]
    data.min_distance = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 41;
  }

  static datatype() {
    // Returns string type for a message object
    return 'landmark_msgs/LaneCenterIntersectWithRoadBoundary';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7f0c6f3881f2d1ffb289ddb32dd95fb0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new LaneCenterIntersectWithRoadBoundary(null);
    if (msg.lane_center !== undefined) {
      resolved.lane_center = LaneRecordConfidence.Resolve(msg.lane_center)
    }
    else {
      resolved.lane_center = new LaneRecordConfidence()
    }

    if (msg.road_boundary !== undefined) {
      resolved.road_boundary = LaneRecordConfidence.Resolve(msg.road_boundary)
    }
    else {
      resolved.road_boundary = new LaneRecordConfidence()
    }

    if (msg.intersect_type !== undefined) {
      resolved.intersect_type = IntersectTypeEnum.Resolve(msg.intersect_type)
    }
    else {
      resolved.intersect_type = new IntersectTypeEnum()
    }

    if (msg.min_distance !== undefined) {
      resolved.min_distance = msg.min_distance;
    }
    else {
      resolved.min_distance = 0.0
    }

    return resolved;
    }
};

module.exports = LaneCenterIntersectWithRoadBoundary;
