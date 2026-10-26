// Auto-generated. Do not edit!

// (in-package lane_navi_info_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CommonManeuver = require('./CommonManeuver.js');

//-----------------------------------------------------------

class DynamicManeuvers {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.valid = null;
      this.common_maneuver = null;
    }
    else {
      if (initObj.hasOwnProperty('valid')) {
        this.valid = initObj.valid
      }
      else {
        this.valid = false;
      }
      if (initObj.hasOwnProperty('common_maneuver')) {
        this.common_maneuver = initObj.common_maneuver
      }
      else {
        this.common_maneuver = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DynamicManeuvers
    // Serialize message field [valid]
    bufferOffset = _serializer.bool(obj.valid, buffer, bufferOffset);
    // Serialize message field [common_maneuver]
    // Serialize the length for message field [common_maneuver]
    bufferOffset = _serializer.uint32(obj.common_maneuver.length, buffer, bufferOffset);
    obj.common_maneuver.forEach((val) => {
      bufferOffset = CommonManeuver.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DynamicManeuvers
    let len;
    let data = new DynamicManeuvers(null);
    // Deserialize message field [valid]
    data.valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [common_maneuver]
    // Deserialize array length for message field [common_maneuver]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.common_maneuver = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.common_maneuver[i] = CommonManeuver.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 52 * object.common_maneuver.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lane_navi_info_msgs/DynamicManeuvers';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '614c4ea66016ec51484f5c5724c9f6d6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool valid
    lane_navi_info_msgs/CommonManeuver[] common_maneuver
    
    ================================================================================
    MSG: lane_navi_info_msgs/CommonManeuver
    uint8 MANEUVER_VALID = 1
    uint8 VALUE_VALID = 2
    uint8 available
    lane_navi_info_msgs/StaticManeuverBase maneuver_base
    float32 value
    lane_navi_info_msgs/ConditionType condition
    
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
    
    ================================================================================
    MSG: lane_navi_info_msgs/ConditionType
    uint8 ALWAYS_VALID = 0
    uint8 SIGN_IS_NOT_VALID_AT_ALL = 5
    uint8 VALID_ONLY_IF_SNOW = 6
    uint8 VALID_ONLY_IF_FOG = 7
    uint8 VALID_ONLY_IF_RAIN = 8
    uint8 VALID_ONLY_BY_DAY = 9
    uint8 VALID_ONLY_BY_NIGHT = 10
    uint8 VALID_DEPENDING_ON_TURN_DIRECTION = 11
    uint8 type
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DynamicManeuvers(null);
    if (msg.valid !== undefined) {
      resolved.valid = msg.valid;
    }
    else {
      resolved.valid = false
    }

    if (msg.common_maneuver !== undefined) {
      resolved.common_maneuver = new Array(msg.common_maneuver.length);
      for (let i = 0; i < resolved.common_maneuver.length; ++i) {
        resolved.common_maneuver[i] = CommonManeuver.Resolve(msg.common_maneuver[i]);
      }
    }
    else {
      resolved.common_maneuver = []
    }

    return resolved;
    }
};

module.exports = DynamicManeuvers;
