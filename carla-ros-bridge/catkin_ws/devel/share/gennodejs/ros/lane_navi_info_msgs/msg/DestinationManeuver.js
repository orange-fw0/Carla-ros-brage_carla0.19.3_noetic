// Auto-generated. Do not edit!

// (in-package lane_navi_info_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let StaticManeuverBase = require('./StaticManeuverBase.js');

//-----------------------------------------------------------

class DestinationManeuver {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.maneuver_base = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('maneuver_base')) {
        this.maneuver_base = initObj.maneuver_base
      }
      else {
        this.maneuver_base = new StaticManeuverBase();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DestinationManeuver
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [maneuver_base]
    bufferOffset = StaticManeuverBase.serialize(obj.maneuver_base, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DestinationManeuver
    let len;
    let data = new DestinationManeuver(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [maneuver_base]
    data.maneuver_base = StaticManeuverBase.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 47;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lane_navi_info_msgs/DestinationManeuver';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '09adc2171df0187e452d6fac75aa2f9d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 MANEUVER_VALID = 1
    uint8 available
    lane_navi_info_msgs/StaticManeuverBase maneuver_base
    
    ================================================================================
    MSG: lane_navi_info_msgs/StaticManeuverBase
    landmark_msgs/ManeuverType type
    lane_navi_info_msgs/Cursor start_cursor
    lane_navi_info_msgs/Cursor end_cursor
    
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
    MSG: lane_navi_info_msgs/Cursor
    landmark_msgs/TrackId road_id
    float32 offset
    
    ================================================================================
    MSG: landmark_msgs/TrackId
    bool is_visible
    uint8 count
    uint32 id
    uint32 linked_id
    uint32 map_id
    uint32 area_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DestinationManeuver(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.maneuver_base !== undefined) {
      resolved.maneuver_base = StaticManeuverBase.Resolve(msg.maneuver_base)
    }
    else {
      resolved.maneuver_base = new StaticManeuverBase()
    }

    return resolved;
    }
};

// Constants for message
DestinationManeuver.Constants = {
  MANEUVER_VALID: 1,
}

module.exports = DestinationManeuver;
