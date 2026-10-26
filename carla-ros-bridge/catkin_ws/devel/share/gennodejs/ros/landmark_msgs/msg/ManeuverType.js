// Auto-generated. Do not edit!

// (in-package landmark_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ManeuverType {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.value = null;
    }
    else {
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ManeuverType
    // Serialize message field [value]
    bufferOffset = _serializer.uint16(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ManeuverType
    let len;
    let data = new ManeuverType(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'landmark_msgs/ManeuverType';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7d35883fef37ea26bfa3ec6a2c998252';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ManeuverType(null);
    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = 0
    }

    return resolved;
    }
};

// Constants for message
ManeuverType.Constants = {
  UNKNOWN: 0,
  MANEUVER_INTERSECTION: 1,
  MANEUVER_LANE_MERGING: 2,
  MANEUVER_LANE_SPLITTING: 3,
  MANEUVER_ROAD_MERGING: 4,
  MANEUVER_ROAD_SPLITTING: 5,
  MANEUVER_RAMP: 6,
  DESTINATION: 7,
  PEDESTRIAN_CROSSING: 8,
  SCHOOL_ZONE: 9,
  RAILROAD_CROSSING: 10,
  DANGER_AHEAD: 11,
  NO_OVERTAKING: 12,
  SPEED_LIMIT: 13,
  SPEED_LIMIT_ENDS: 14,
  DETOUR_RIGHT: 15,
  DETOUR_BOTH_SIDES: 16,
  DETOUR_LEFT: 17,
  MERGE_RIGHT: 18,
  MERGE_LEFT: 19,
  TRAFFIC_LIGHT: 20,
  EMERGENCY_LANE: 21,
  NON_MOTORIZED_VEHICLE_LANE: 22,
  SECTIONAL_SPEED_MEASUREMENT: 23,
  START_SECTIONAL_SPEED_MEASUREMENT: 24,
  END_SECTIONAL_SPEED_MEASUREMENT: 25,
  TOLL: 26,
  CONDITIONAL_SPEED_LIMIT: 27,
  ADVISORY_SPEED_LIMIT: 28,
  ROAD_CONSTRUCTION: 29,
  TRAFFIC_CONTROL: 30,
  ROAD_CLOSED: 31,
  GENERAL_TRAFFIC_ACCIDENT_AND_ROAD_CLOSED: 32,
  SERIOUS_TRAFFIC_ACCIDENT_AND_ROAD_CLOSED: 33,
  ROAD_CONSTRUCTION_AND_ROAD_CLOSED: 34,
  ROAD_END: 35,
  UNKNOWN_TRAFFIC_FLOW: 36,
  SMOOTH_TRAFFIC: 37,
  SLOW_MOVING: 38,
  CONGESTED: 39,
  SEVERELY_CONGESTED: 40,
  NO_TRAFFIC_FLOW: 41,
  VISIBILITY: 42,
}

module.exports = ManeuverType;
