// Auto-generated. Do not edit!

// (in-package landmark_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ManeuverType = require('./ManeuverType.js');

//-----------------------------------------------------------

class ManeuverBase {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
      this.start_offset = null;
      this.end_offset = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = new ManeuverType();
      }
      if (initObj.hasOwnProperty('start_offset')) {
        this.start_offset = initObj.start_offset
      }
      else {
        this.start_offset = 0.0;
      }
      if (initObj.hasOwnProperty('end_offset')) {
        this.end_offset = initObj.end_offset
      }
      else {
        this.end_offset = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ManeuverBase
    // Serialize message field [type]
    bufferOffset = ManeuverType.serialize(obj.type, buffer, bufferOffset);
    // Serialize message field [start_offset]
    bufferOffset = _serializer.float32(obj.start_offset, buffer, bufferOffset);
    // Serialize message field [end_offset]
    bufferOffset = _serializer.float32(obj.end_offset, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ManeuverBase
    let len;
    let data = new ManeuverBase(null);
    // Deserialize message field [type]
    data.type = ManeuverType.deserialize(buffer, bufferOffset);
    // Deserialize message field [start_offset]
    data.start_offset = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [end_offset]
    data.end_offset = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'landmark_msgs/ManeuverBase';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd638499396f5e259d1f19850dfeabe1e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ManeuverBase(null);
    if (msg.type !== undefined) {
      resolved.type = ManeuverType.Resolve(msg.type)
    }
    else {
      resolved.type = new ManeuverType()
    }

    if (msg.start_offset !== undefined) {
      resolved.start_offset = msg.start_offset;
    }
    else {
      resolved.start_offset = 0.0
    }

    if (msg.end_offset !== undefined) {
      resolved.end_offset = msg.end_offset;
    }
    else {
      resolved.end_offset = 0.0
    }

    return resolved;
    }
};

module.exports = ManeuverBase;
