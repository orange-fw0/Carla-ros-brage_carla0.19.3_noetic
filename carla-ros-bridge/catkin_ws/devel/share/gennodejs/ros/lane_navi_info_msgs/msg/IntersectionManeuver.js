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
let IntersectionType = require('./IntersectionType.js');
let ExperienceTrajectory = require('./ExperienceTrajectory.js');
let landmark_msgs = _finder('landmark_msgs');

//-----------------------------------------------------------

class IntersectionManeuver {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.maneuver_base = null;
      this.type = null;
      this.is_traffic_light_exist = null;
      this.has_traffic_light_detail = null;
      this.direction = null;
      this.light_groups = null;
      this.linked_intersection = null;
      this.experience_trajectories = null;
    }
    else {
      if (initObj.hasOwnProperty('maneuver_base')) {
        this.maneuver_base = initObj.maneuver_base
      }
      else {
        this.maneuver_base = new StaticManeuverBase();
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = new IntersectionType();
      }
      if (initObj.hasOwnProperty('is_traffic_light_exist')) {
        this.is_traffic_light_exist = initObj.is_traffic_light_exist
      }
      else {
        this.is_traffic_light_exist = false;
      }
      if (initObj.hasOwnProperty('has_traffic_light_detail')) {
        this.has_traffic_light_detail = initObj.has_traffic_light_detail
      }
      else {
        this.has_traffic_light_detail = false;
      }
      if (initObj.hasOwnProperty('direction')) {
        this.direction = initObj.direction
      }
      else {
        this.direction = new landmark_msgs.msg.Direction();
      }
      if (initObj.hasOwnProperty('light_groups')) {
        this.light_groups = initObj.light_groups
      }
      else {
        this.light_groups = [];
      }
      if (initObj.hasOwnProperty('linked_intersection')) {
        this.linked_intersection = initObj.linked_intersection
      }
      else {
        this.linked_intersection = new landmark_msgs.msg.TrackId();
      }
      if (initObj.hasOwnProperty('experience_trajectories')) {
        this.experience_trajectories = initObj.experience_trajectories
      }
      else {
        this.experience_trajectories = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type IntersectionManeuver
    // Serialize message field [maneuver_base]
    bufferOffset = StaticManeuverBase.serialize(obj.maneuver_base, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = IntersectionType.serialize(obj.type, buffer, bufferOffset);
    // Serialize message field [is_traffic_light_exist]
    bufferOffset = _serializer.bool(obj.is_traffic_light_exist, buffer, bufferOffset);
    // Serialize message field [has_traffic_light_detail]
    bufferOffset = _serializer.bool(obj.has_traffic_light_detail, buffer, bufferOffset);
    // Serialize message field [direction]
    bufferOffset = landmark_msgs.msg.Direction.serialize(obj.direction, buffer, bufferOffset);
    // Serialize message field [light_groups]
    // Serialize the length for message field [light_groups]
    bufferOffset = _serializer.uint32(obj.light_groups.length, buffer, bufferOffset);
    obj.light_groups.forEach((val) => {
      bufferOffset = landmark_msgs.msg.TrafficLightGroup.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [linked_intersection]
    bufferOffset = landmark_msgs.msg.TrackId.serialize(obj.linked_intersection, buffer, bufferOffset);
    // Serialize message field [experience_trajectories]
    // Serialize the length for message field [experience_trajectories]
    bufferOffset = _serializer.uint32(obj.experience_trajectories.length, buffer, bufferOffset);
    obj.experience_trajectories.forEach((val) => {
      bufferOffset = ExperienceTrajectory.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IntersectionManeuver
    let len;
    let data = new IntersectionManeuver(null);
    // Deserialize message field [maneuver_base]
    data.maneuver_base = StaticManeuverBase.deserialize(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = IntersectionType.deserialize(buffer, bufferOffset);
    // Deserialize message field [is_traffic_light_exist]
    data.is_traffic_light_exist = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [has_traffic_light_detail]
    data.has_traffic_light_detail = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [direction]
    data.direction = landmark_msgs.msg.Direction.deserialize(buffer, bufferOffset);
    // Deserialize message field [light_groups]
    // Deserialize array length for message field [light_groups]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.light_groups = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.light_groups[i] = landmark_msgs.msg.TrafficLightGroup.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [linked_intersection]
    data.linked_intersection = landmark_msgs.msg.TrackId.deserialize(buffer, bufferOffset);
    // Deserialize message field [experience_trajectories]
    // Deserialize array length for message field [experience_trajectories]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.experience_trajectories = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.experience_trajectories[i] = ExperienceTrajectory.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.light_groups.forEach((val) => {
      length += landmark_msgs.msg.TrafficLightGroup.getMessageSize(val);
    });
    object.experience_trajectories.forEach((val) => {
      length += ExperienceTrajectory.getMessageSize(val);
    });
    return length + 76;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lane_navi_info_msgs/IntersectionManeuver';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e9d0710e062f92efe41ead86eaeceb50';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    MSG: landmark_msgs/TrackId
    bool is_visible
    uint8 count
    uint32 id
    uint32 linked_id
    uint32 map_id
    uint32 area_id
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new IntersectionManeuver(null);
    if (msg.maneuver_base !== undefined) {
      resolved.maneuver_base = StaticManeuverBase.Resolve(msg.maneuver_base)
    }
    else {
      resolved.maneuver_base = new StaticManeuverBase()
    }

    if (msg.type !== undefined) {
      resolved.type = IntersectionType.Resolve(msg.type)
    }
    else {
      resolved.type = new IntersectionType()
    }

    if (msg.is_traffic_light_exist !== undefined) {
      resolved.is_traffic_light_exist = msg.is_traffic_light_exist;
    }
    else {
      resolved.is_traffic_light_exist = false
    }

    if (msg.has_traffic_light_detail !== undefined) {
      resolved.has_traffic_light_detail = msg.has_traffic_light_detail;
    }
    else {
      resolved.has_traffic_light_detail = false
    }

    if (msg.direction !== undefined) {
      resolved.direction = landmark_msgs.msg.Direction.Resolve(msg.direction)
    }
    else {
      resolved.direction = new landmark_msgs.msg.Direction()
    }

    if (msg.light_groups !== undefined) {
      resolved.light_groups = new Array(msg.light_groups.length);
      for (let i = 0; i < resolved.light_groups.length; ++i) {
        resolved.light_groups[i] = landmark_msgs.msg.TrafficLightGroup.Resolve(msg.light_groups[i]);
      }
    }
    else {
      resolved.light_groups = []
    }

    if (msg.linked_intersection !== undefined) {
      resolved.linked_intersection = landmark_msgs.msg.TrackId.Resolve(msg.linked_intersection)
    }
    else {
      resolved.linked_intersection = new landmark_msgs.msg.TrackId()
    }

    if (msg.experience_trajectories !== undefined) {
      resolved.experience_trajectories = new Array(msg.experience_trajectories.length);
      for (let i = 0; i < resolved.experience_trajectories.length; ++i) {
        resolved.experience_trajectories[i] = ExperienceTrajectory.Resolve(msg.experience_trajectories[i]);
      }
    }
    else {
      resolved.experience_trajectories = []
    }

    return resolved;
    }
};

module.exports = IntersectionManeuver;
