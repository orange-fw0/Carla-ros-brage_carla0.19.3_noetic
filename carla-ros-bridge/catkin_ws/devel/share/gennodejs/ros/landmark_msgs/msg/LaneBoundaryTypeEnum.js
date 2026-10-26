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

class LaneBoundaryTypeEnum {
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
    // Serializes a message object of type LaneBoundaryTypeEnum
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaneBoundaryTypeEnum
    let len;
    let data = new LaneBoundaryTypeEnum(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'landmark_msgs/LaneBoundaryTypeEnum';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd88357c717eba9bdaa54eb321b39ac5d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 LANE_BOUNDARY_TYPE_UNKNOWN = 0
    uint8 LANE_BOUNDARY_TYPE_DASHED = 1
    uint8 LANE_BOUNDARY_TYPE_SOLID = 2
    uint8 LANE_BOUNDARY_TYPE_DOUBLE_SOLID = 3
    uint8 LANE_BOUNDARY_TYPE_DOUBLE_DASHED = 4
    uint8 LANE_BOUNDARY_TYPE_LEFT_DASHED_RIGHT_SOLID = 5
    uint8 LANE_BOUNDARY_TYPE_LEFT_SOLID_RIGHT_DASHED = 6
    uint8 LANE_BOUNDARY_TYPE_LEFT_DASHED_RIGHT_DASHED = 7
    uint8 LANE_BOUNDARY_TYPE_LEFT_SOLID_RIGHT_SOLID = 8
    uint8 LANE_BOUNDARY_TYPE_ZIG_ZAG = 9
    uint8 LANE_BOUNDARY_TYPE_BOTTS_DOTS = 10
    uint8 LANE_BOUNDARY_TYPE_CHANGEABLE_LANE_MARK = 11
    uint8 LANE_BOUNDARY_TYPE_LOGICAL = 12
    uint8 LANE_BOUNDARY_TYPE_PHYSICAL = 13
    uint8 LANE_BOUNDARY_TYPE_VIRTUAL = 14
    uint8 LANE_BOUNDARY_TYPE_SHORT_DASHED_LINE = 15
    uint8 LANE_BOUNDARY_TYPE_SHADE_AREA = 16
    uint8 LANE_BOUNDARY_TYPE_LANE_VIRTUAL_MARKING = 17
    uint8 LANE_BOUNDARY_TYPE_INTERSECTION_VIRTUAL_MARKING = 18
    uint8 LANE_BOUNDARY_TYPE_CURB_BIRTUAL_MARKING = 19
    uint8 LANE_BOUNDARY_TYPE_UNCLOSED_ROAD = 20
    uint8 LANE_BOUNDARY_TYPE_ROAD_VIRTUAL_LINE = 21
    uint8 LANE_BOUNDARY_TYPE_OTHERS = 99
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LaneBoundaryTypeEnum(null);
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
LaneBoundaryTypeEnum.Constants = {
  LANE_BOUNDARY_TYPE_UNKNOWN: 0,
  LANE_BOUNDARY_TYPE_DASHED: 1,
  LANE_BOUNDARY_TYPE_SOLID: 2,
  LANE_BOUNDARY_TYPE_DOUBLE_SOLID: 3,
  LANE_BOUNDARY_TYPE_DOUBLE_DASHED: 4,
  LANE_BOUNDARY_TYPE_LEFT_DASHED_RIGHT_SOLID: 5,
  LANE_BOUNDARY_TYPE_LEFT_SOLID_RIGHT_DASHED: 6,
  LANE_BOUNDARY_TYPE_LEFT_DASHED_RIGHT_DASHED: 7,
  LANE_BOUNDARY_TYPE_LEFT_SOLID_RIGHT_SOLID: 8,
  LANE_BOUNDARY_TYPE_ZIG_ZAG: 9,
  LANE_BOUNDARY_TYPE_BOTTS_DOTS: 10,
  LANE_BOUNDARY_TYPE_CHANGEABLE_LANE_MARK: 11,
  LANE_BOUNDARY_TYPE_LOGICAL: 12,
  LANE_BOUNDARY_TYPE_PHYSICAL: 13,
  LANE_BOUNDARY_TYPE_VIRTUAL: 14,
  LANE_BOUNDARY_TYPE_SHORT_DASHED_LINE: 15,
  LANE_BOUNDARY_TYPE_SHADE_AREA: 16,
  LANE_BOUNDARY_TYPE_LANE_VIRTUAL_MARKING: 17,
  LANE_BOUNDARY_TYPE_INTERSECTION_VIRTUAL_MARKING: 18,
  LANE_BOUNDARY_TYPE_CURB_BIRTUAL_MARKING: 19,
  LANE_BOUNDARY_TYPE_UNCLOSED_ROAD: 20,
  LANE_BOUNDARY_TYPE_ROAD_VIRTUAL_LINE: 21,
  LANE_BOUNDARY_TYPE_OTHERS: 99,
}

module.exports = LaneBoundaryTypeEnum;
