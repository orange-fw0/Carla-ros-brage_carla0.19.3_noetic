// Auto-generated. Do not edit!

// (in-package landmark_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ManeuverBase = require('./ManeuverBase.js');
let DirectionInfo = require('./DirectionInfo.js');

//-----------------------------------------------------------

class RoadSplittingMergingManeuver {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.maneuver_base = null;
      this.direction_info = null;
      this.angles = null;
    }
    else {
      if (initObj.hasOwnProperty('maneuver_base')) {
        this.maneuver_base = initObj.maneuver_base
      }
      else {
        this.maneuver_base = new ManeuverBase();
      }
      if (initObj.hasOwnProperty('direction_info')) {
        this.direction_info = initObj.direction_info
      }
      else {
        this.direction_info = new DirectionInfo();
      }
      if (initObj.hasOwnProperty('angles')) {
        this.angles = initObj.angles
      }
      else {
        this.angles = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RoadSplittingMergingManeuver
    // Serialize message field [maneuver_base]
    bufferOffset = ManeuverBase.serialize(obj.maneuver_base, buffer, bufferOffset);
    // Serialize message field [direction_info]
    bufferOffset = DirectionInfo.serialize(obj.direction_info, buffer, bufferOffset);
    // Serialize message field [angles]
    bufferOffset = _arraySerializer.float64(obj.angles, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RoadSplittingMergingManeuver
    let len;
    let data = new RoadSplittingMergingManeuver(null);
    // Deserialize message field [maneuver_base]
    data.maneuver_base = ManeuverBase.deserialize(buffer, bufferOffset);
    // Deserialize message field [direction_info]
    data.direction_info = DirectionInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [angles]
    data.angles = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.angles.length;
    return length + 18;
  }

  static datatype() {
    // Returns string type for a message object
    return 'landmark_msgs/RoadSplittingMergingManeuver';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c1cb08a005b08d3cf841d0cee8e48158';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    landmark_msgs/ManeuverBase maneuver_base
    landmark_msgs/DirectionInfo direction_info
    float64[] angles
    
    ================================================================================
    MSG: landmark_msgs/ManeuverBase
    landmark_msgs/ManeuverType type
    float32 start_offset
    float32 end_offset
    
    ================================================================================
    MSG: landmark_msgs/ManeuverType
    uint16 UNKNOWN = 0
    uint16 MANEUVER_INTERSECTION = 1
    uint16 MANEUVER_LANE_MERGING = 2
    uint16 MANEUVER_LANE_SPLITTING = 3
    uint16 MANEUVER_ROAD_MERGING = 4
    uint16 MANEUVER_ROAD_SPLITTING = 5
    uint16 MANEUVER_RAMP = 6
    uint16 DESTINATION = 7
    uint16 PEDESTRIAN_CROSSING = 8
    uint16 SCHOOL_ZONE = 9
    uint16 RAILROAD_CROSSING = 10
    uint16 DANGER_AHEAD = 11
    uint16 NO_OVERTAKING = 12
    uint16 SPEED_LIMIT = 13
    uint16 SPEED_LIMIT_ENDS = 14
    uint16 DETOUR_RIGHT = 15
    uint16 DETOUR_BOTH_SIDES = 16
    uint16 DETOUR_LEFT = 17
    uint16 MERGE_RIGHT = 18
    uint16 MERGE_LEFT = 19
    uint16 TRAFFIC_LIGHT = 20
    uint16 EMERGENCY_LANE = 21
    uint16 NON_MOTORIZED_VEHICLE_LANE = 22
    uint16 SECTIONAL_SPEED_MEASUREMENT = 23
    uint16 START_SECTIONAL_SPEED_MEASUREMENT = 24
    uint16 END_SECTIONAL_SPEED_MEASUREMENT = 25
    uint16 TOLL = 26
    uint16 CONDITIONAL_SPEED_LIMIT = 27
    uint16 ADVISORY_SPEED_LIMIT = 28
    uint16 ROAD_CONSTRUCTION = 29
    uint16 TRAFFIC_CONTROL = 30
    uint16 ROAD_CLOSED = 31
    uint16 GENERAL_TRAFFIC_ACCIDENT_AND_ROAD_CLOSED = 32
    uint16 SERIOUS_TRAFFIC_ACCIDENT_AND_ROAD_CLOSED = 33
    uint16 ROAD_CONSTRUCTION_AND_ROAD_CLOSED = 34
    uint16 ROAD_END = 35
    uint16 UNKNOWN_TRAFFIC_FLOW = 36
    uint16 SMOOTH_TRAFFIC = 37
    uint16 SLOW_MOVING = 38
    uint16 CONGESTED = 39
    uint16 SEVERELY_CONGESTED = 40
    uint16 NO_TRAFFIC_FLOW = 41
    uint16 VISIBILITY = 42
    uint16 value
    
    ================================================================================
    MSG: landmark_msgs/DirectionInfo
    int16 road_index
    int16 road_sum
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RoadSplittingMergingManeuver(null);
    if (msg.maneuver_base !== undefined) {
      resolved.maneuver_base = ManeuverBase.Resolve(msg.maneuver_base)
    }
    else {
      resolved.maneuver_base = new ManeuverBase()
    }

    if (msg.direction_info !== undefined) {
      resolved.direction_info = DirectionInfo.Resolve(msg.direction_info)
    }
    else {
      resolved.direction_info = new DirectionInfo()
    }

    if (msg.angles !== undefined) {
      resolved.angles = msg.angles;
    }
    else {
      resolved.angles = []
    }

    return resolved;
    }
};

module.exports = RoadSplittingMergingManeuver;
