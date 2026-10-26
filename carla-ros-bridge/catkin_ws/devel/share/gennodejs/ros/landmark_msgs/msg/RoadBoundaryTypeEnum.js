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

class RoadBoundaryTypeEnum {
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
    // Serializes a message object of type RoadBoundaryTypeEnum
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RoadBoundaryTypeEnum
    let len;
    let data = new RoadBoundaryTypeEnum(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'landmark_msgs/RoadBoundaryTypeEnum';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8667598650ce3b2130edf7d50d7b0228';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 ROAD_BOUNDARY_TYPE_UNKNOWN = 0
    uint8 ROAD_BOUNDARY_TYPE_NONE = 1
    uint8 ROAD_BOUNDARY_TYPE_NORMAL = 2
    uint8 ROAD_BOUNDARY_TYPE_VIRTUAL = 3
    uint8 ROAD_BOUNDARY_TYPE_WATERHORSE = 4
    uint8 ROAD_BOUNDARY_TYPE_CONE = 5
    uint8 ROAD_BOUNDARY_TYPE_GREENBELT = 6
    uint8 ROAD_BOUNDARY_TYPE_CEMENT_PIER = 7
    uint8 ROAD_BOUNDARY_TYPE_GUTTER = 8
    uint8 ROAD_BOUNDARY_TYPE_EMERGENCY_LANE = 9
    uint8 ROAD_BOUNDARY_TYPE_GUARDRAIL = 10
    uint8 ROAD_BOUNDARY_TYPE_DASH_LINE = 11
    uint8 ROAD_BOUNDARY_TYPE_LOGICAL = 12
    uint8 ROAD_BOUNDARY_TYPE_PHYSICAL = 13
    uint8 ROAD_BOUNDARY_TYPE_SOLID_LINE = 14
    uint8 ROAD_BOUNDARY_TYPE_CURB = 15
    uint8 ROAD_BOUNDARY_TYPE_BOLLARD = 16
    uint8 ROAD_BOUNDARY_TYPE_WALL = 17
    uint8 ROAD_BOUNDARY_TYPE_CURB_YELLOW = 18
    uint8 ROAD_BOUNDARY_TYPE_CURB_YELLOW_BLACK = 19
    uint8 ROAD_BOUNDARY_TYPE_CONSTRUCTION_AREA = 20
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RoadBoundaryTypeEnum(null);
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
RoadBoundaryTypeEnum.Constants = {
  ROAD_BOUNDARY_TYPE_UNKNOWN: 0,
  ROAD_BOUNDARY_TYPE_NONE: 1,
  ROAD_BOUNDARY_TYPE_NORMAL: 2,
  ROAD_BOUNDARY_TYPE_VIRTUAL: 3,
  ROAD_BOUNDARY_TYPE_WATERHORSE: 4,
  ROAD_BOUNDARY_TYPE_CONE: 5,
  ROAD_BOUNDARY_TYPE_GREENBELT: 6,
  ROAD_BOUNDARY_TYPE_CEMENT_PIER: 7,
  ROAD_BOUNDARY_TYPE_GUTTER: 8,
  ROAD_BOUNDARY_TYPE_EMERGENCY_LANE: 9,
  ROAD_BOUNDARY_TYPE_GUARDRAIL: 10,
  ROAD_BOUNDARY_TYPE_DASH_LINE: 11,
  ROAD_BOUNDARY_TYPE_LOGICAL: 12,
  ROAD_BOUNDARY_TYPE_PHYSICAL: 13,
  ROAD_BOUNDARY_TYPE_SOLID_LINE: 14,
  ROAD_BOUNDARY_TYPE_CURB: 15,
  ROAD_BOUNDARY_TYPE_BOLLARD: 16,
  ROAD_BOUNDARY_TYPE_WALL: 17,
  ROAD_BOUNDARY_TYPE_CURB_YELLOW: 18,
  ROAD_BOUNDARY_TYPE_CURB_YELLOW_BLACK: 19,
  ROAD_BOUNDARY_TYPE_CONSTRUCTION_AREA: 20,
}

module.exports = RoadBoundaryTypeEnum;
