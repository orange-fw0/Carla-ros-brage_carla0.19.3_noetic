// Auto-generated. Do not edit!

// (in-package landmark_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LaneIdWithOnRouteInfo = require('./LaneIdWithOnRouteInfo.js');
let LaneSplittingMergingManeuver = require('./LaneSplittingMergingManeuver.js');
let LanePathDirection = require('./LanePathDirection.js');
let LanePathEndType = require('./LanePathEndType.js');
let NoLaneChangeZone = require('./NoLaneChangeZone.js');
let NaviOnrouteDisInfo = require('./NaviOnrouteDisInfo.js');

//-----------------------------------------------------------

class LanePath {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lane_in_lane_path = null;
      this.onroute_distance = null;
      this.lane_maneuvers = null;
      this.direction = null;
      this.end_type = null;
      this.left_no_lane_change_zones = null;
      this.right_no_lane_change_zones = null;
      this.navi_onroutedis_info = null;
      this.reserved_info = null;
    }
    else {
      if (initObj.hasOwnProperty('lane_in_lane_path')) {
        this.lane_in_lane_path = initObj.lane_in_lane_path
      }
      else {
        this.lane_in_lane_path = [];
      }
      if (initObj.hasOwnProperty('onroute_distance')) {
        this.onroute_distance = initObj.onroute_distance
      }
      else {
        this.onroute_distance = 0.0;
      }
      if (initObj.hasOwnProperty('lane_maneuvers')) {
        this.lane_maneuvers = initObj.lane_maneuvers
      }
      else {
        this.lane_maneuvers = [];
      }
      if (initObj.hasOwnProperty('direction')) {
        this.direction = initObj.direction
      }
      else {
        this.direction = new LanePathDirection();
      }
      if (initObj.hasOwnProperty('end_type')) {
        this.end_type = initObj.end_type
      }
      else {
        this.end_type = new LanePathEndType();
      }
      if (initObj.hasOwnProperty('left_no_lane_change_zones')) {
        this.left_no_lane_change_zones = initObj.left_no_lane_change_zones
      }
      else {
        this.left_no_lane_change_zones = [];
      }
      if (initObj.hasOwnProperty('right_no_lane_change_zones')) {
        this.right_no_lane_change_zones = initObj.right_no_lane_change_zones
      }
      else {
        this.right_no_lane_change_zones = [];
      }
      if (initObj.hasOwnProperty('navi_onroutedis_info')) {
        this.navi_onroutedis_info = initObj.navi_onroutedis_info
      }
      else {
        this.navi_onroutedis_info = new NaviOnrouteDisInfo();
      }
      if (initObj.hasOwnProperty('reserved_info')) {
        this.reserved_info = initObj.reserved_info
      }
      else {
        this.reserved_info = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LanePath
    // Serialize message field [lane_in_lane_path]
    // Serialize the length for message field [lane_in_lane_path]
    bufferOffset = _serializer.uint32(obj.lane_in_lane_path.length, buffer, bufferOffset);
    obj.lane_in_lane_path.forEach((val) => {
      bufferOffset = LaneIdWithOnRouteInfo.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [onroute_distance]
    bufferOffset = _serializer.float32(obj.onroute_distance, buffer, bufferOffset);
    // Serialize message field [lane_maneuvers]
    // Serialize the length for message field [lane_maneuvers]
    bufferOffset = _serializer.uint32(obj.lane_maneuvers.length, buffer, bufferOffset);
    obj.lane_maneuvers.forEach((val) => {
      bufferOffset = LaneSplittingMergingManeuver.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [direction]
    bufferOffset = LanePathDirection.serialize(obj.direction, buffer, bufferOffset);
    // Serialize message field [end_type]
    bufferOffset = LanePathEndType.serialize(obj.end_type, buffer, bufferOffset);
    // Serialize message field [left_no_lane_change_zones]
    // Serialize the length for message field [left_no_lane_change_zones]
    bufferOffset = _serializer.uint32(obj.left_no_lane_change_zones.length, buffer, bufferOffset);
    obj.left_no_lane_change_zones.forEach((val) => {
      bufferOffset = NoLaneChangeZone.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [right_no_lane_change_zones]
    // Serialize the length for message field [right_no_lane_change_zones]
    bufferOffset = _serializer.uint32(obj.right_no_lane_change_zones.length, buffer, bufferOffset);
    obj.right_no_lane_change_zones.forEach((val) => {
      bufferOffset = NoLaneChangeZone.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [navi_onroutedis_info]
    bufferOffset = NaviOnrouteDisInfo.serialize(obj.navi_onroutedis_info, buffer, bufferOffset);
    // Serialize message field [reserved_info]
    bufferOffset = _serializer.string(obj.reserved_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LanePath
    let len;
    let data = new LanePath(null);
    // Deserialize message field [lane_in_lane_path]
    // Deserialize array length for message field [lane_in_lane_path]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.lane_in_lane_path = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.lane_in_lane_path[i] = LaneIdWithOnRouteInfo.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [onroute_distance]
    data.onroute_distance = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [lane_maneuvers]
    // Deserialize array length for message field [lane_maneuvers]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.lane_maneuvers = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.lane_maneuvers[i] = LaneSplittingMergingManeuver.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [direction]
    data.direction = LanePathDirection.deserialize(buffer, bufferOffset);
    // Deserialize message field [end_type]
    data.end_type = LanePathEndType.deserialize(buffer, bufferOffset);
    // Deserialize message field [left_no_lane_change_zones]
    // Deserialize array length for message field [left_no_lane_change_zones]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.left_no_lane_change_zones = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.left_no_lane_change_zones[i] = NoLaneChangeZone.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [right_no_lane_change_zones]
    // Deserialize array length for message field [right_no_lane_change_zones]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.right_no_lane_change_zones = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.right_no_lane_change_zones[i] = NoLaneChangeZone.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [navi_onroutedis_info]
    data.navi_onroutedis_info = NaviOnrouteDisInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [reserved_info]
    data.reserved_info = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 19 * object.lane_in_lane_path.length;
    object.lane_maneuvers.forEach((val) => {
      length += LaneSplittingMergingManeuver.getMessageSize(val);
    });
    length += 9 * object.left_no_lane_change_zones.length;
    length += 9 * object.right_no_lane_change_zones.length;
    length += NaviOnrouteDisInfo.getMessageSize(object.navi_onroutedis_info);
    length += _getByteLength(object.reserved_info);
    return length + 26;
  }

  static datatype() {
    // Returns string type for a message object
    return 'landmark_msgs/LanePath';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c42c5475f20c6b555856a14cdd0814be';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    landmark_msgs/LaneIdWithOnRouteInfo[] lane_in_lane_path
    float32 onroute_distance
    landmark_msgs/LaneSplittingMergingManeuver[] lane_maneuvers
    landmark_msgs/LanePathDirection direction
    landmark_msgs/LanePathEndType end_type
    landmark_msgs/NoLaneChangeZone[] left_no_lane_change_zones
    landmark_msgs/NoLaneChangeZone[] right_no_lane_change_zones
    landmark_msgs/NaviOnrouteDisInfo navi_onroutedis_info
    string reserved_info
    
    ================================================================================
    MSG: landmark_msgs/LaneIdWithOnRouteInfo
    uint8 UNKNOWN = 0
    uint8 ON_ROUTE = 1
    uint8 OFF_ROUTE = 2
    landmark_msgs/TrackId lane_id
    uint8 on_route_info
    
    ================================================================================
    MSG: landmark_msgs/TrackId
    bool is_visible
    uint8 count
    uint32 id
    uint32 linked_id
    uint32 map_id
    uint32 area_id
    
    ================================================================================
    MSG: landmark_msgs/LaneSplittingMergingManeuver
    uint8 UNKNOWN = 0
    uint8 HDMAP = 1
    uint8 DDLD = 2
    uint8 LANDTOPO = 3
    landmark_msgs/ManeuverBase maneuver_base
    bool is_continue
    bool is_none_continue
    landmark_msgs/Orientation direction
    landmark_msgs/TrackId[] linked_lane_ids
    uint8 source
    
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
    MSG: landmark_msgs/Orientation
    uint8 UNKNOWN = 0
    uint8 LEFT = 1
    uint8 RIGHT = 2
    uint8 INTERSECT = 3
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/LanePathDirection
    uint8 UNKNOWN = 0
    uint8 CONTINUE = 1
    uint8 LEFT = 2
    uint8 RIGHT = 3
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/LanePathEndType
    uint8 UNKNOWN = 0
    uint8 OFF_ROUTE_END = 1
    uint8 SEARCH_RANGE_END = 2
    uint8 DEST_END = 3
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/NoLaneChangeZone
    uint8 UNKNOWN = 1
    uint8 SOLID_LINE = 2
    uint8 BUS_LANE = 3
    uint8 OTHERS = 99
    uint8 type
    float32 start_offset
    float32 end_offset
    
    ================================================================================
    MSG: landmark_msgs/NaviOnrouteDisInfo
    bool available
    float32 dist_to_onroute
    int16[] on_route_dis_clses
    int16 cls_num
    string reserved_info
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LanePath(null);
    if (msg.lane_in_lane_path !== undefined) {
      resolved.lane_in_lane_path = new Array(msg.lane_in_lane_path.length);
      for (let i = 0; i < resolved.lane_in_lane_path.length; ++i) {
        resolved.lane_in_lane_path[i] = LaneIdWithOnRouteInfo.Resolve(msg.lane_in_lane_path[i]);
      }
    }
    else {
      resolved.lane_in_lane_path = []
    }

    if (msg.onroute_distance !== undefined) {
      resolved.onroute_distance = msg.onroute_distance;
    }
    else {
      resolved.onroute_distance = 0.0
    }

    if (msg.lane_maneuvers !== undefined) {
      resolved.lane_maneuvers = new Array(msg.lane_maneuvers.length);
      for (let i = 0; i < resolved.lane_maneuvers.length; ++i) {
        resolved.lane_maneuvers[i] = LaneSplittingMergingManeuver.Resolve(msg.lane_maneuvers[i]);
      }
    }
    else {
      resolved.lane_maneuvers = []
    }

    if (msg.direction !== undefined) {
      resolved.direction = LanePathDirection.Resolve(msg.direction)
    }
    else {
      resolved.direction = new LanePathDirection()
    }

    if (msg.end_type !== undefined) {
      resolved.end_type = LanePathEndType.Resolve(msg.end_type)
    }
    else {
      resolved.end_type = new LanePathEndType()
    }

    if (msg.left_no_lane_change_zones !== undefined) {
      resolved.left_no_lane_change_zones = new Array(msg.left_no_lane_change_zones.length);
      for (let i = 0; i < resolved.left_no_lane_change_zones.length; ++i) {
        resolved.left_no_lane_change_zones[i] = NoLaneChangeZone.Resolve(msg.left_no_lane_change_zones[i]);
      }
    }
    else {
      resolved.left_no_lane_change_zones = []
    }

    if (msg.right_no_lane_change_zones !== undefined) {
      resolved.right_no_lane_change_zones = new Array(msg.right_no_lane_change_zones.length);
      for (let i = 0; i < resolved.right_no_lane_change_zones.length; ++i) {
        resolved.right_no_lane_change_zones[i] = NoLaneChangeZone.Resolve(msg.right_no_lane_change_zones[i]);
      }
    }
    else {
      resolved.right_no_lane_change_zones = []
    }

    if (msg.navi_onroutedis_info !== undefined) {
      resolved.navi_onroutedis_info = NaviOnrouteDisInfo.Resolve(msg.navi_onroutedis_info)
    }
    else {
      resolved.navi_onroutedis_info = new NaviOnrouteDisInfo()
    }

    if (msg.reserved_info !== undefined) {
      resolved.reserved_info = msg.reserved_info;
    }
    else {
      resolved.reserved_info = ''
    }

    return resolved;
    }
};

module.exports = LanePath;
