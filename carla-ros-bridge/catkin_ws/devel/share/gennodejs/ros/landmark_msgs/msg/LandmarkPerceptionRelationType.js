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

class LandmarkPerceptionRelationType {
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
    // Serializes a message object of type LandmarkPerceptionRelationType
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LandmarkPerceptionRelationType
    let len;
    let data = new LandmarkPerceptionRelationType(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'landmark_msgs/LandmarkPerceptionRelationType';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6d963b1af85e94fd4115f94d4e125715';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 RELATION_TYPE_UNKNOWN = 0
    uint8 RELATION_TYPE_LANE_CENTER_CONNECTION = 1
    uint8 RELATION_TYPE_ROAD_CONNECTION = 2
    uint8 RELATION_TYPE_LANE_CENTER_ROAD_BINDING = 3
    uint8 RELATION_TYPE_ROAD_ROAD_BINDING = 4
    uint8 RELATION_TYPE_LANE_BOUNDARY_LANE_CENTER_BINDING = 5
    uint8 RELATION_TYPE_ROAD_BOUNDARY_ROAD_BINDING = 6
    uint8 RELATION_TYPE_STOP_LINE_LANE_CONTER_BINDING = 7
    uint8 RELATION_TYPE_CROSS_WALK_ROAD_BINDING = 8
    uint8 RELATION_TYPE_ROAD_MARK_LANE_CENTER_BINDING = 9
    uint8 RELATION_TYPE_AOI_ROAD_BINDING = 10
    uint8 RELATION_TYPE_SPEED_BUMP_LANE_CENTER_BINDING = 11
    uint8 RELATION_TYPE_TRAFFIC_SIGN_ROAD_BINDING = 12
    uint8 RELATION_TYPE_TRAFFIC_SIGN_LANE_CENTER_BINDING = 13
    uint8 RELATION_TYPE_POLE_ROAD_BINDING = 14
    uint8 RELATION_TYPE_TRAFFIC_LIGHT_LANE_CENTER_BINDING = 15
    uint8 RELATION_TYPE_TRAFFIC_LIGHT_ROAD_BINDING = 16
    uint8 RELATION_TYPE_ROAD_AOI_BINDING = 17
    uint8 RELATION_TYPE_AOI_AOI_BINDING = 18
    uint8 RELATION_TYPE_DASH_LINE_END_ROAD_BINDING = 19
    uint8 RELATION_TYPE_DASH_LINE_END_LANE_BINDING = 20
    uint8 RELATION_TYPE_TRAFFIC_SIGN_GUIDE_ARROW_LANE_CENTER_BINDING = 21
    uint8 RELATION_TYPE_TRAFFIC_SIGN_GUIDE_ARROW_MUTUAL_BINDING = 22
    uint8 RELATION_TYPE_LANE_BOUNDARY_AOI_BINDING = 23
    uint8 RELATION_TYPE_ROAD_BOUNDARY_AOI_BINDING = 24
    uint8 RELATION_TYPE_ROAD_MARK_AOI_BINDING = 25
    uint8 RELATION_TYPE_LANE_CENTER_AOI_BINDING = 26
    uint8 RELATION_TYPE_STOP_LINE_AOI_BINDING = 27
    uint8 RELATION_TYPE_CROSS_WALK_AOI_BINDING = 28
    uint8 RELATION_TYPE_STOP_LINE_ROAD_BINDING = 29
    uint8 RELATION_TYPE_LANE_BOUNDARY_ROAD_BINDING = 30
    uint8 RELATION_TYPE_ROAD_MARK_ROAD_BINDING = 31
    uint8 RELATION_TYPE_ROAD_OBSTACLE_ROAD_BINDING = 50
    uint8 RELATION_TYPE_PARKING_SPACE_ROAD_BINDING = 51
    uint8 RELATION_TYPE_PARKING_FACILITY_ROAD_BINDING = 52
    uint8 RELATION_TYPE_ROAD_ENTRY_LINE_ROAD_BINDING = 53
    uint8 RELATION_TYPE_ROADMARK_ROADMARK_BINDING = 54
    uint8 RELATION_TYPE_TRAFFICLIGHT_DIGIT_BIND_PATTERN = 55
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LandmarkPerceptionRelationType(null);
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
LandmarkPerceptionRelationType.Constants = {
  RELATION_TYPE_UNKNOWN: 0,
  RELATION_TYPE_LANE_CENTER_CONNECTION: 1,
  RELATION_TYPE_ROAD_CONNECTION: 2,
  RELATION_TYPE_LANE_CENTER_ROAD_BINDING: 3,
  RELATION_TYPE_ROAD_ROAD_BINDING: 4,
  RELATION_TYPE_LANE_BOUNDARY_LANE_CENTER_BINDING: 5,
  RELATION_TYPE_ROAD_BOUNDARY_ROAD_BINDING: 6,
  RELATION_TYPE_STOP_LINE_LANE_CONTER_BINDING: 7,
  RELATION_TYPE_CROSS_WALK_ROAD_BINDING: 8,
  RELATION_TYPE_ROAD_MARK_LANE_CENTER_BINDING: 9,
  RELATION_TYPE_AOI_ROAD_BINDING: 10,
  RELATION_TYPE_SPEED_BUMP_LANE_CENTER_BINDING: 11,
  RELATION_TYPE_TRAFFIC_SIGN_ROAD_BINDING: 12,
  RELATION_TYPE_TRAFFIC_SIGN_LANE_CENTER_BINDING: 13,
  RELATION_TYPE_POLE_ROAD_BINDING: 14,
  RELATION_TYPE_TRAFFIC_LIGHT_LANE_CENTER_BINDING: 15,
  RELATION_TYPE_TRAFFIC_LIGHT_ROAD_BINDING: 16,
  RELATION_TYPE_ROAD_AOI_BINDING: 17,
  RELATION_TYPE_AOI_AOI_BINDING: 18,
  RELATION_TYPE_DASH_LINE_END_ROAD_BINDING: 19,
  RELATION_TYPE_DASH_LINE_END_LANE_BINDING: 20,
  RELATION_TYPE_TRAFFIC_SIGN_GUIDE_ARROW_LANE_CENTER_BINDING: 21,
  RELATION_TYPE_TRAFFIC_SIGN_GUIDE_ARROW_MUTUAL_BINDING: 22,
  RELATION_TYPE_LANE_BOUNDARY_AOI_BINDING: 23,
  RELATION_TYPE_ROAD_BOUNDARY_AOI_BINDING: 24,
  RELATION_TYPE_ROAD_MARK_AOI_BINDING: 25,
  RELATION_TYPE_LANE_CENTER_AOI_BINDING: 26,
  RELATION_TYPE_STOP_LINE_AOI_BINDING: 27,
  RELATION_TYPE_CROSS_WALK_AOI_BINDING: 28,
  RELATION_TYPE_STOP_LINE_ROAD_BINDING: 29,
  RELATION_TYPE_LANE_BOUNDARY_ROAD_BINDING: 30,
  RELATION_TYPE_ROAD_MARK_ROAD_BINDING: 31,
  RELATION_TYPE_ROAD_OBSTACLE_ROAD_BINDING: 50,
  RELATION_TYPE_PARKING_SPACE_ROAD_BINDING: 51,
  RELATION_TYPE_PARKING_FACILITY_ROAD_BINDING: 52,
  RELATION_TYPE_ROAD_ENTRY_LINE_ROAD_BINDING: 53,
  RELATION_TYPE_ROADMARK_ROADMARK_BINDING: 54,
  RELATION_TYPE_TRAFFICLIGHT_DIGIT_BIND_PATTERN: 55,
}

module.exports = LandmarkPerceptionRelationType;
