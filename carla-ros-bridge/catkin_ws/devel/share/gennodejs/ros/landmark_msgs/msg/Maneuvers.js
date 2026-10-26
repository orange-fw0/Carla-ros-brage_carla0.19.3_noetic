// Auto-generated. Do not edit!

// (in-package landmark_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let IntersectionManeuver = require('./IntersectionManeuver.js');
let RampManeuver = require('./RampManeuver.js');
let RoadSplittingMergingManeuver = require('./RoadSplittingMergingManeuver.js');
let DestinationManeuver = require('./DestinationManeuver.js');

//-----------------------------------------------------------

class Maneuvers {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.intersection_maneuvers = null;
      this.ramp_maneuvers = null;
      this.road_splitting_merging_maneuver = null;
      this.destination_maneuver = null;
    }
    else {
      if (initObj.hasOwnProperty('intersection_maneuvers')) {
        this.intersection_maneuvers = initObj.intersection_maneuvers
      }
      else {
        this.intersection_maneuvers = [];
      }
      if (initObj.hasOwnProperty('ramp_maneuvers')) {
        this.ramp_maneuvers = initObj.ramp_maneuvers
      }
      else {
        this.ramp_maneuvers = [];
      }
      if (initObj.hasOwnProperty('road_splitting_merging_maneuver')) {
        this.road_splitting_merging_maneuver = initObj.road_splitting_merging_maneuver
      }
      else {
        this.road_splitting_merging_maneuver = [];
      }
      if (initObj.hasOwnProperty('destination_maneuver')) {
        this.destination_maneuver = initObj.destination_maneuver
      }
      else {
        this.destination_maneuver = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Maneuvers
    // Serialize message field [intersection_maneuvers]
    // Serialize the length for message field [intersection_maneuvers]
    bufferOffset = _serializer.uint32(obj.intersection_maneuvers.length, buffer, bufferOffset);
    obj.intersection_maneuvers.forEach((val) => {
      bufferOffset = IntersectionManeuver.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [ramp_maneuvers]
    // Serialize the length for message field [ramp_maneuvers]
    bufferOffset = _serializer.uint32(obj.ramp_maneuvers.length, buffer, bufferOffset);
    obj.ramp_maneuvers.forEach((val) => {
      bufferOffset = RampManeuver.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [road_splitting_merging_maneuver]
    // Serialize the length for message field [road_splitting_merging_maneuver]
    bufferOffset = _serializer.uint32(obj.road_splitting_merging_maneuver.length, buffer, bufferOffset);
    obj.road_splitting_merging_maneuver.forEach((val) => {
      bufferOffset = RoadSplittingMergingManeuver.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [destination_maneuver]
    // Serialize the length for message field [destination_maneuver]
    bufferOffset = _serializer.uint32(obj.destination_maneuver.length, buffer, bufferOffset);
    obj.destination_maneuver.forEach((val) => {
      bufferOffset = DestinationManeuver.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Maneuvers
    let len;
    let data = new Maneuvers(null);
    // Deserialize message field [intersection_maneuvers]
    // Deserialize array length for message field [intersection_maneuvers]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.intersection_maneuvers = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.intersection_maneuvers[i] = IntersectionManeuver.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [ramp_maneuvers]
    // Deserialize array length for message field [ramp_maneuvers]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.ramp_maneuvers = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.ramp_maneuvers[i] = RampManeuver.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [road_splitting_merging_maneuver]
    // Deserialize array length for message field [road_splitting_merging_maneuver]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.road_splitting_merging_maneuver = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.road_splitting_merging_maneuver[i] = RoadSplittingMergingManeuver.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [destination_maneuver]
    // Deserialize array length for message field [destination_maneuver]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.destination_maneuver = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.destination_maneuver[i] = DestinationManeuver.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.intersection_maneuvers.forEach((val) => {
      length += IntersectionManeuver.getMessageSize(val);
    });
    length += 34 * object.ramp_maneuvers.length;
    object.road_splitting_merging_maneuver.forEach((val) => {
      length += RoadSplittingMergingManeuver.getMessageSize(val);
    });
    length += 30 * object.destination_maneuver.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'landmark_msgs/Maneuvers';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6c962fde63023db8d976235574c11135';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    landmark_msgs/IntersectionManeuver[] intersection_maneuvers
    landmark_msgs/RampManeuver[] ramp_maneuvers
    landmark_msgs/RoadSplittingMergingManeuver[] road_splitting_merging_maneuver
    landmark_msgs/DestinationManeuver[] destination_maneuver
    
    ================================================================================
    MSG: landmark_msgs/IntersectionManeuver
    landmark_msgs/ManeuverBase maneuver_base
    bool is_traffic_light_exist
    bool has_traffic_light_detail
    landmark_msgs/Direction direction
    float32 distance_to_turn_left_waiting_area
    landmark_msgs/TrafficLightGroup[] light_groups
    
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
    MSG: landmark_msgs/RampManeuver
    landmark_msgs/ManeuverBase maneuver_base
    landmark_msgs/DirectionInfo ramp_in_direction_info
    landmark_msgs/DirectionInfo ramp_out_direction_info
    float64 ramp_in_angle
    float64 ramp_out_angle
    
    ================================================================================
    MSG: landmark_msgs/DirectionInfo
    int16 road_index
    int16 road_sum
    
    ================================================================================
    MSG: landmark_msgs/RoadSplittingMergingManeuver
    landmark_msgs/ManeuverBase maneuver_base
    landmark_msgs/DirectionInfo direction_info
    float64[] angles
    
    ================================================================================
    MSG: landmark_msgs/DestinationManeuver
    landmark_msgs/ManeuverBase maneuver_base
    landmark_msgs/DestinationParkingInfo parking_info
    
    ================================================================================
    MSG: landmark_msgs/DestinationParkingInfo
    uint8 PARKING_TYPE_VALID = 1
    uint8 ID_VALID = 2
    uint8 available
    landmark_msgs/DestinationParkingType parking_type
    landmark_msgs/TrackId id
    
    ================================================================================
    MSG: landmark_msgs/DestinationParkingType
    uint8 UNKNOWN = 0
    uint8 NORMAL_DESTINATION = 1
    uint8 PARKING_SPACE = 2
    uint8 PARKING_AOI = 3
    uint8 value
    
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
    const resolved = new Maneuvers(null);
    if (msg.intersection_maneuvers !== undefined) {
      resolved.intersection_maneuvers = new Array(msg.intersection_maneuvers.length);
      for (let i = 0; i < resolved.intersection_maneuvers.length; ++i) {
        resolved.intersection_maneuvers[i] = IntersectionManeuver.Resolve(msg.intersection_maneuvers[i]);
      }
    }
    else {
      resolved.intersection_maneuvers = []
    }

    if (msg.ramp_maneuvers !== undefined) {
      resolved.ramp_maneuvers = new Array(msg.ramp_maneuvers.length);
      for (let i = 0; i < resolved.ramp_maneuvers.length; ++i) {
        resolved.ramp_maneuvers[i] = RampManeuver.Resolve(msg.ramp_maneuvers[i]);
      }
    }
    else {
      resolved.ramp_maneuvers = []
    }

    if (msg.road_splitting_merging_maneuver !== undefined) {
      resolved.road_splitting_merging_maneuver = new Array(msg.road_splitting_merging_maneuver.length);
      for (let i = 0; i < resolved.road_splitting_merging_maneuver.length; ++i) {
        resolved.road_splitting_merging_maneuver[i] = RoadSplittingMergingManeuver.Resolve(msg.road_splitting_merging_maneuver[i]);
      }
    }
    else {
      resolved.road_splitting_merging_maneuver = []
    }

    if (msg.destination_maneuver !== undefined) {
      resolved.destination_maneuver = new Array(msg.destination_maneuver.length);
      for (let i = 0; i < resolved.destination_maneuver.length; ++i) {
        resolved.destination_maneuver[i] = DestinationManeuver.Resolve(msg.destination_maneuver[i]);
      }
    }
    else {
      resolved.destination_maneuver = []
    }

    return resolved;
    }
};

module.exports = Maneuvers;
