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

class LandmarkPerceptionNodeType {
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
    // Serializes a message object of type LandmarkPerceptionNodeType
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LandmarkPerceptionNodeType
    let len;
    let data = new LandmarkPerceptionNodeType(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'landmark_msgs/LandmarkPerceptionNodeType';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1cbaa0467922efb7887e0a60111189cd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 NODE_TYPE_UNKNOWN = 0
    uint8 NODE_TYPE_LANE_CENTER = 1
    uint8 NODE_TYPE_LANE_BOUNDARY = 2
    uint8 NODE_TYPE_ROAD_BOUNDARY = 3
    uint8 NODE_TYPE_ROAD = 4
    uint8 NODE_TYPE_STOP_LINE = 5
    uint8 NODE_TYPE_CROSS_WALK = 6
    uint8 NODE_TYPE_VALID_ROI = 7
    uint8 NODE_TYPE_ROAD_MARK = 8
    uint8 NODE_TYPE_AOI = 9
    uint8 NODE_TYPE_TRAFFIC_SIGN = 10
    uint8 NODE_TYPE_TRAFFIC_POLE = 11
    uint8 NODE_TYPE_TRAFFIC_LIGHT = 12
    uint8 NODE_TYPE_SPEEDBUMP = 13
    uint8 NODE_TYPE_DASH_LINE_END = 14
    uint8 NODE_TYPE_ROAD_ENTRY_LINE = 15
    uint8 NODE_TYPE_ROAD_OBSTACLE = 50
    uint8 NODE_TYPE_PARKING_SPACE = 51
    uint8 NODE_TYPE_PARKING_FACILITY = 52
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LandmarkPerceptionNodeType(null);
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
LandmarkPerceptionNodeType.Constants = {
  NODE_TYPE_UNKNOWN: 0,
  NODE_TYPE_LANE_CENTER: 1,
  NODE_TYPE_LANE_BOUNDARY: 2,
  NODE_TYPE_ROAD_BOUNDARY: 3,
  NODE_TYPE_ROAD: 4,
  NODE_TYPE_STOP_LINE: 5,
  NODE_TYPE_CROSS_WALK: 6,
  NODE_TYPE_VALID_ROI: 7,
  NODE_TYPE_ROAD_MARK: 8,
  NODE_TYPE_AOI: 9,
  NODE_TYPE_TRAFFIC_SIGN: 10,
  NODE_TYPE_TRAFFIC_POLE: 11,
  NODE_TYPE_TRAFFIC_LIGHT: 12,
  NODE_TYPE_SPEEDBUMP: 13,
  NODE_TYPE_DASH_LINE_END: 14,
  NODE_TYPE_ROAD_ENTRY_LINE: 15,
  NODE_TYPE_ROAD_OBSTACLE: 50,
  NODE_TYPE_PARKING_SPACE: 51,
  NODE_TYPE_PARKING_FACILITY: 52,
}

module.exports = LandmarkPerceptionNodeType;
