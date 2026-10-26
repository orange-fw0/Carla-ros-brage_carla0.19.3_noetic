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
let landmark_msgs = _finder('landmark_msgs');

//-----------------------------------------------------------

class LaneSplittingMergingManeuver {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.maneuver_base = null;
      this.is_continue = null;
      this.is_none_continue = null;
      this.direction = null;
      this.linked_lane_ids = null;
    }
    else {
      if (initObj.hasOwnProperty('maneuver_base')) {
        this.maneuver_base = initObj.maneuver_base
      }
      else {
        this.maneuver_base = new StaticManeuverBase();
      }
      if (initObj.hasOwnProperty('is_continue')) {
        this.is_continue = initObj.is_continue
      }
      else {
        this.is_continue = false;
      }
      if (initObj.hasOwnProperty('is_none_continue')) {
        this.is_none_continue = initObj.is_none_continue
      }
      else {
        this.is_none_continue = false;
      }
      if (initObj.hasOwnProperty('direction')) {
        this.direction = initObj.direction
      }
      else {
        this.direction = new landmark_msgs.msg.Orientation();
      }
      if (initObj.hasOwnProperty('linked_lane_ids')) {
        this.linked_lane_ids = initObj.linked_lane_ids
      }
      else {
        this.linked_lane_ids = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LaneSplittingMergingManeuver
    // Serialize message field [maneuver_base]
    bufferOffset = StaticManeuverBase.serialize(obj.maneuver_base, buffer, bufferOffset);
    // Serialize message field [is_continue]
    bufferOffset = _serializer.bool(obj.is_continue, buffer, bufferOffset);
    // Serialize message field [is_none_continue]
    bufferOffset = _serializer.bool(obj.is_none_continue, buffer, bufferOffset);
    // Serialize message field [direction]
    bufferOffset = landmark_msgs.msg.Orientation.serialize(obj.direction, buffer, bufferOffset);
    // Serialize message field [linked_lane_ids]
    // Serialize the length for message field [linked_lane_ids]
    bufferOffset = _serializer.uint32(obj.linked_lane_ids.length, buffer, bufferOffset);
    obj.linked_lane_ids.forEach((val) => {
      bufferOffset = landmark_msgs.msg.TrackId.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaneSplittingMergingManeuver
    let len;
    let data = new LaneSplittingMergingManeuver(null);
    // Deserialize message field [maneuver_base]
    data.maneuver_base = StaticManeuverBase.deserialize(buffer, bufferOffset);
    // Deserialize message field [is_continue]
    data.is_continue = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_none_continue]
    data.is_none_continue = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [direction]
    data.direction = landmark_msgs.msg.Orientation.deserialize(buffer, bufferOffset);
    // Deserialize message field [linked_lane_ids]
    // Deserialize array length for message field [linked_lane_ids]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.linked_lane_ids = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.linked_lane_ids[i] = landmark_msgs.msg.TrackId.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 18 * object.linked_lane_ids.length;
    return length + 53;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lane_navi_info_msgs/LaneSplittingMergingManeuver';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5c08fa1b9d032d24240ae41f7be76736';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    lane_navi_info_msgs/StaticManeuverBase maneuver_base
    bool is_continue
    bool is_none_continue
    landmark_msgs/Orientation direction
    landmark_msgs/TrackId[] linked_lane_ids
    
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
    MSG: landmark_msgs/Orientation
    uint8 UNKNOWN = 0
    uint8 LEFT = 1
    uint8 RIGHT = 2
    uint8 INTERSECT = 3
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LaneSplittingMergingManeuver(null);
    if (msg.maneuver_base !== undefined) {
      resolved.maneuver_base = StaticManeuverBase.Resolve(msg.maneuver_base)
    }
    else {
      resolved.maneuver_base = new StaticManeuverBase()
    }

    if (msg.is_continue !== undefined) {
      resolved.is_continue = msg.is_continue;
    }
    else {
      resolved.is_continue = false
    }

    if (msg.is_none_continue !== undefined) {
      resolved.is_none_continue = msg.is_none_continue;
    }
    else {
      resolved.is_none_continue = false
    }

    if (msg.direction !== undefined) {
      resolved.direction = landmark_msgs.msg.Orientation.Resolve(msg.direction)
    }
    else {
      resolved.direction = new landmark_msgs.msg.Orientation()
    }

    if (msg.linked_lane_ids !== undefined) {
      resolved.linked_lane_ids = new Array(msg.linked_lane_ids.length);
      for (let i = 0; i < resolved.linked_lane_ids.length; ++i) {
        resolved.linked_lane_ids[i] = landmark_msgs.msg.TrackId.Resolve(msg.linked_lane_ids[i]);
      }
    }
    else {
      resolved.linked_lane_ids = []
    }

    return resolved;
    }
};

module.exports = LaneSplittingMergingManeuver;
