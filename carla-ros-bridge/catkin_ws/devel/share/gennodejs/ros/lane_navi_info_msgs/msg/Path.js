// Auto-generated. Do not edit!

// (in-package lane_navi_info_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let StaticManeuvers = require('./StaticManeuvers.js');
let DynamicManeuvers = require('./DynamicManeuvers.js');
let PathType = require('./PathType.js');
let PathRange = require('./PathRange.js');
let landmark_msgs = _finder('landmark_msgs');

//-----------------------------------------------------------

class Path {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.id = null;
      this.road_ids = null;
      this.length = null;
      this.static_maneuvers = null;
      this.dynamic_maneuvers = null;
      this.type = null;
      this.range = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('road_ids')) {
        this.road_ids = initObj.road_ids
      }
      else {
        this.road_ids = [];
      }
      if (initObj.hasOwnProperty('length')) {
        this.length = initObj.length
      }
      else {
        this.length = 0.0;
      }
      if (initObj.hasOwnProperty('static_maneuvers')) {
        this.static_maneuvers = initObj.static_maneuvers
      }
      else {
        this.static_maneuvers = new StaticManeuvers();
      }
      if (initObj.hasOwnProperty('dynamic_maneuvers')) {
        this.dynamic_maneuvers = initObj.dynamic_maneuvers
      }
      else {
        this.dynamic_maneuvers = new DynamicManeuvers();
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = new PathType();
      }
      if (initObj.hasOwnProperty('range')) {
        this.range = initObj.range
      }
      else {
        this.range = new PathRange();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Path
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.uint32(obj.id, buffer, bufferOffset);
    // Serialize message field [road_ids]
    // Serialize the length for message field [road_ids]
    bufferOffset = _serializer.uint32(obj.road_ids.length, buffer, bufferOffset);
    obj.road_ids.forEach((val) => {
      bufferOffset = landmark_msgs.msg.TrackId.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [length]
    bufferOffset = _serializer.float32(obj.length, buffer, bufferOffset);
    // Serialize message field [static_maneuvers]
    bufferOffset = StaticManeuvers.serialize(obj.static_maneuvers, buffer, bufferOffset);
    // Serialize message field [dynamic_maneuvers]
    bufferOffset = DynamicManeuvers.serialize(obj.dynamic_maneuvers, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = PathType.serialize(obj.type, buffer, bufferOffset);
    // Serialize message field [range]
    bufferOffset = PathRange.serialize(obj.range, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Path
    let len;
    let data = new Path(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [road_ids]
    // Deserialize array length for message field [road_ids]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.road_ids = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.road_ids[i] = landmark_msgs.msg.TrackId.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [length]
    data.length = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [static_maneuvers]
    data.static_maneuvers = StaticManeuvers.deserialize(buffer, bufferOffset);
    // Deserialize message field [dynamic_maneuvers]
    data.dynamic_maneuvers = DynamicManeuvers.deserialize(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = PathType.deserialize(buffer, bufferOffset);
    // Deserialize message field [range]
    data.range = PathRange.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 18 * object.road_ids.length;
    length += StaticManeuvers.getMessageSize(object.static_maneuvers);
    length += DynamicManeuvers.getMessageSize(object.dynamic_maneuvers);
    return length + 30;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lane_navi_info_msgs/Path';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e2ae3f1b24e622c9a0c365960e337e9f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 ID_VALID = 1
    uint8 ROADS_VALID = 2
    uint8 LENGTH_VALID = 4
    uint8 STATIC_MANEUVER_VALID = 8
    uint8 DYNAMIC_MANEUVER_VALID = 16
    uint8 TYPE_VALID = 32
    uint8 RANGE_VALID = 64
    uint8 available
    uint32 id
    landmark_msgs/TrackId[] road_ids
    float32 length
    lane_navi_info_msgs/StaticManeuvers static_maneuvers
    lane_navi_info_msgs/DynamicManeuvers dynamic_maneuvers
    lane_navi_info_msgs/PathType type
    lane_navi_info_msgs/PathRange range
    
    ================================================================================
    MSG: landmark_msgs/TrackId
    bool is_visible
    uint8 count
    uint32 id
    uint32 linked_id
    uint32 map_id
    uint32 area_id
    
    ================================================================================
    MSG: lane_navi_info_msgs/StaticManeuvers
    bool valid
    lane_navi_info_msgs/IntersectionManeuver[] intersection_maneuvers
    lane_navi_info_msgs/RampManeuver[] ramp_maneuvers
    lane_navi_info_msgs/RoadSplittingMergingManeuver[] road_splitting_merging_maneuver
    lane_navi_info_msgs/LaneSplittingMergingManeuver[] lane_splitting_merging_maneuver
    lane_navi_info_msgs/DestinationManeuver[] destination_maneuver
    lane_navi_info_msgs/CommonManeuver[] common_maneuver
    
    ================================================================================
    MSG: lane_navi_info_msgs/IntersectionManeuver
    lane_navi_info_msgs/StaticManeuverBase maneuver_base
    lane_navi_info_msgs/IntersectionType type
    bool is_traffic_light_exist
    bool has_traffic_light_detail
    landmark_msgs/Direction direction
    landmark_msgs/TrafficLightGroup[] light_groups
    landmark_msgs/TrackId linked_intersection
    lane_navi_info_msgs/ExperienceTrajectory[] experience_trajectories
    
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
    MSG: lane_navi_info_msgs/IntersectionType
    uint8 UNKNOWN = 0
    uint8 HIGHWAY_SPLIT = 1
    uint8 URBAN_NORMAL = 2
    uint8 NORMAL_SPLIT_MERGE = 3
    uint8 T_JUNCTION = 4
    uint8 Y_JUNCTION = 5
    uint8 ROUNDABOUT = 6
    uint8 OVERPASS = 7
    uint8 OTHERS = 255
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/Direction
    uint8 UNKNOWN = 0
    uint8 GO_STRAIGHT = 1
    uint8 TURN_RIGHT = 2
    uint8 TURN_LEFT = 3
    uint8 U_TURN_LEFT = 4
    uint8 U_TURN_RIGHT = 5
    uint8 LEFT_CONFLUENCE = 6
    uint8 RIGHT_CONFLUENCE = 7
    uint8 LEFT_LEFT = 10
    uint8 LEFT_LEFT_UT = 11
    uint8 LEFT_RIGHT = 12
    uint8 LEFT_RIGHT_UT = 13
    uint8 LEFT_GO_STRAIGHT = 14
    uint8 LEFT_UNKNOWN = 15
    uint8 RIGHT_RIGHT = 20
    uint8 RIGHT_RIGHT_UT = 21
    uint8 RIGHT_LEFT = 22
    uint8 RIGHT_LEFT_UT = 23
    uint8 RIGHT_GO_STRAIGHT = 24
    uint8 RIGHT_UNKNOWN = 25
    uint8 LEFT_UT_LEFT_UT = 30
    uint8 LEFT_UT_LEFT = 31
    uint8 LEFT_UT_RIGHT = 32
    uint8 LEFT_UT_RIGHT_UT = 33
    uint8 LEFT_UT_GO_STRAIGHT = 34
    uint8 LEFT_UT_UNKNOWN = 35
    uint8 RIGHT_UT_RIGHT_UT = 40
    uint8 RIGHT_UT_RIGHT = 41
    uint8 RIGHT_UT_LEFT = 42
    uint8 RIGHT_UT_LEFT_UT = 43
    uint8 RIGHT_UT_GO_STRAIGHT = 44
    uint8 RIGHT_UT_UNKNOWN = 45
    uint8 GO_STRAIGHT_GO_STRAIGHT = 50
    uint8 GO_STRAIGHT_LEFT = 51
    uint8 GO_STRAIGHT_LEFT_UT = 52
    uint8 GO_STRAIGHT_RIGHT = 53
    uint8 GO_STRAIGHT_RIGHT_UT = 54
    uint8 GO_STRAIGHT_UNKNOWN = 55
    uint8 OTHER_LEFT = 61
    uint8 OTHER_LEFT_UT = 62
    uint8 OTHER_RIGHT = 63
    uint8 OTHER_RIGHT_UT = 64
    uint8 OTHER_GO_STRAIGHT = 65
    uint8 OTHER_UNKNOWN = 66
    uint8 UNKNOWN_LEFT = 91
    uint8 UNKNOWN_LEFT_UT = 92
    uint8 UNKNOWN_RIGHT = 93
    uint8 UNKNOWN_RIGHT_UT = 94
    uint8 UNKNOWN_GO_STRAIGHT = 95
    uint8 UNKNOWN_UNKNOWN = 96
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/TrafficLightGroup
    landmark_msgs/TrafficLight[] traffic_light_group
    
    ================================================================================
    MSG: landmark_msgs/TrafficLight
    landmark_msgs/TrafficLightType type
    landmark_msgs/Direction[] direction
    
    ================================================================================
    MSG: landmark_msgs/TrafficLightType
    uint8 UNKNOWN = 0
    uint8 DOT_TRAFFIC_LIGHT = 1
    uint8 ARROW_TRAFFIC_LIGHT = 2
    uint8 NUMBER_TRAFFIC_LIGHT = 3
    uint8 TRAFFIC_LIGHT_FOR_NON_MOTOR_VEHICLE = 4
    uint8 TRAFFIC_LIGHT_FOR_PEDESTRIANS = 5
    uint8 SAND_CLOCK_TRAFFIC_LIGHT = 6
    uint8 value
    
    ================================================================================
    MSG: lane_navi_info_msgs/ExperienceTrajectory
    lane_navi_info_msgs/Polyline polyline
    landmark_msgs/TrackId[] related_lane_id
    lane_navi_info_msgs/Lane_Cursor start_lane
    lane_navi_info_msgs/Lane_Cursor end_lane
    
    ================================================================================
    MSG: lane_navi_info_msgs/Polyline
    lane_navi_info_msgs/Point[] points
    
    ================================================================================
    MSG: lane_navi_info_msgs/Point
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: lane_navi_info_msgs/Lane_Cursor
    landmark_msgs/TrackId lane_id
    float32 offset
    
    ================================================================================
    MSG: lane_navi_info_msgs/RampManeuver
    lane_navi_info_msgs/StaticManeuverBase maneuver_base
    landmark_msgs/DirectionInfo ramp_in_direction_info
    landmark_msgs/DirectionInfo ramp_out_direction_info
    float64 ramp_in_angle
    float64 ramp_out_angle
    
    ================================================================================
    MSG: landmark_msgs/DirectionInfo
    int16 road_index
    int16 road_sum
    
    ================================================================================
    MSG: lane_navi_info_msgs/RoadSplittingMergingManeuver
    lane_navi_info_msgs/StaticManeuverBase maneuver_base
    landmark_msgs/DirectionInfo direction_info
    float64[] angles
    
    ================================================================================
    MSG: lane_navi_info_msgs/LaneSplittingMergingManeuver
    lane_navi_info_msgs/StaticManeuverBase maneuver_base
    bool is_continue
    bool is_none_continue
    landmark_msgs/Orientation direction
    landmark_msgs/TrackId[] linked_lane_ids
    
    ================================================================================
    MSG: landmark_msgs/Orientation
    uint8 UNKNOWN = 0
    uint8 LEFT = 1
    uint8 RIGHT = 2
    uint8 INTERSECT = 3
    uint8 value
    
    ================================================================================
    MSG: lane_navi_info_msgs/DestinationManeuver
    uint8 MANEUVER_VALID = 1
    uint8 available
    lane_navi_info_msgs/StaticManeuverBase maneuver_base
    
    ================================================================================
    MSG: lane_navi_info_msgs/CommonManeuver
    uint8 MANEUVER_VALID = 1
    uint8 VALUE_VALID = 2
    uint8 available
    lane_navi_info_msgs/StaticManeuverBase maneuver_base
    float32 value
    lane_navi_info_msgs/ConditionType condition
    
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
    
    ================================================================================
    MSG: lane_navi_info_msgs/DynamicManeuvers
    bool valid
    lane_navi_info_msgs/CommonManeuver[] common_maneuver
    
    ================================================================================
    MSG: lane_navi_info_msgs/PathType
    uint8 UNKNOWN = 0
    uint8 NAVIGATION = 1
    uint8 CRUISE = 2
    uint8 value
    
    ================================================================================
    MSG: lane_navi_info_msgs/PathRange
    float64 start_offset
    float64 end_offset
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Path(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.road_ids !== undefined) {
      resolved.road_ids = new Array(msg.road_ids.length);
      for (let i = 0; i < resolved.road_ids.length; ++i) {
        resolved.road_ids[i] = landmark_msgs.msg.TrackId.Resolve(msg.road_ids[i]);
      }
    }
    else {
      resolved.road_ids = []
    }

    if (msg.length !== undefined) {
      resolved.length = msg.length;
    }
    else {
      resolved.length = 0.0
    }

    if (msg.static_maneuvers !== undefined) {
      resolved.static_maneuvers = StaticManeuvers.Resolve(msg.static_maneuvers)
    }
    else {
      resolved.static_maneuvers = new StaticManeuvers()
    }

    if (msg.dynamic_maneuvers !== undefined) {
      resolved.dynamic_maneuvers = DynamicManeuvers.Resolve(msg.dynamic_maneuvers)
    }
    else {
      resolved.dynamic_maneuvers = new DynamicManeuvers()
    }

    if (msg.type !== undefined) {
      resolved.type = PathType.Resolve(msg.type)
    }
    else {
      resolved.type = new PathType()
    }

    if (msg.range !== undefined) {
      resolved.range = PathRange.Resolve(msg.range)
    }
    else {
      resolved.range = new PathRange()
    }

    return resolved;
    }
};

// Constants for message
Path.Constants = {
  ID_VALID: 1,
  ROADS_VALID: 2,
  LENGTH_VALID: 4,
  STATIC_MANEUVER_VALID: 8,
  DYNAMIC_MANEUVER_VALID: 16,
  TYPE_VALID: 32,
  RANGE_VALID: 64,
}

module.exports = Path;
