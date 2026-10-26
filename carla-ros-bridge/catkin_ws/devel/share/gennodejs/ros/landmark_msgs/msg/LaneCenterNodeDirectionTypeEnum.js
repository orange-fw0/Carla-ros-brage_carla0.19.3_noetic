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

class LaneCenterNodeDirectionTypeEnum {
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
    // Serializes a message object of type LaneCenterNodeDirectionTypeEnum
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaneCenterNodeDirectionTypeEnum
    let len;
    let data = new LaneCenterNodeDirectionTypeEnum(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'landmark_msgs/LaneCenterNodeDirectionTypeEnum';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd37c557f67f5c4046eb1cd94e348c42d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 LANE_TYPE_GUIDE_DIRECTION_UNKNOWN = 0
    uint8 LANE_TYPE_GUIDE_DIRECTION_GO_STRAIGHT = 1
    uint8 LANE_TYPE_GUIDE_DIRECTION_TURN_LEFT = 2
    uint8 LANE_TYPE_GUIDE_DIRECTION_TURN_RIGHT = 3
    uint8 LANE_TYPE_GUIDE_DIRECTION_LEFT_CONFLUENCE = 6
    uint8 LANE_TYPE_GUIDE_DIRECTION_RIGHT_CONFLUENCE = 7
    uint8 LANE_TYPE_GUIDE_DIRECTION_U_TURN_LEFT = 8
    uint8 LANE_TYPE_GUIDE_DIRECTION_U_TURN_RIGHT = 9
    uint8 LANE_TYPE_GUIDE_DIRECTION_TEXT = 21
    uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_OR_LEFT = 22
    uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_OR_RIGHT = 23
    uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_UTRUN = 24
    uint8 LANE_TYPE_GUIDE_DIRECTION_LEFT_TURN_U_TURN = 25
    uint8 LANE_TYPE_GUIDE_DIRECTION_LEFT_TURN_AND_INTERFLOW = 26
    uint8 LANE_TYPE_GUIDE_DIRECTION_RIGHT_TURN_AND_INTERFLOW = 27
    uint8 LANE_TYPE_GUIDE_DIRECTION_LEFT_RIGHT_TURN = 28
    uint8 LANE_TYPE_GUIDE_DIRECTION_NO_LEFT_TURN = 29
    uint8 LANE_TYPE_GUIDE_DIRECTION_NO_RIGHT_TURN = 30
    uint8 LANE_TYPE_GUIDE_DIRECTION_NO_U_TURN = 31
    uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_LEFT_RIGHT = 32
    uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_U_LEFT = 33
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LaneCenterNodeDirectionTypeEnum(null);
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
LaneCenterNodeDirectionTypeEnum.Constants = {
  LANE_TYPE_GUIDE_DIRECTION_UNKNOWN: 0,
  LANE_TYPE_GUIDE_DIRECTION_GO_STRAIGHT: 1,
  LANE_TYPE_GUIDE_DIRECTION_TURN_LEFT: 2,
  LANE_TYPE_GUIDE_DIRECTION_TURN_RIGHT: 3,
  LANE_TYPE_GUIDE_DIRECTION_LEFT_CONFLUENCE: 6,
  LANE_TYPE_GUIDE_DIRECTION_RIGHT_CONFLUENCE: 7,
  LANE_TYPE_GUIDE_DIRECTION_U_TURN_LEFT: 8,
  LANE_TYPE_GUIDE_DIRECTION_U_TURN_RIGHT: 9,
  LANE_TYPE_GUIDE_DIRECTION_TEXT: 21,
  LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_OR_LEFT: 22,
  LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_OR_RIGHT: 23,
  LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_UTRUN: 24,
  LANE_TYPE_GUIDE_DIRECTION_LEFT_TURN_U_TURN: 25,
  LANE_TYPE_GUIDE_DIRECTION_LEFT_TURN_AND_INTERFLOW: 26,
  LANE_TYPE_GUIDE_DIRECTION_RIGHT_TURN_AND_INTERFLOW: 27,
  LANE_TYPE_GUIDE_DIRECTION_LEFT_RIGHT_TURN: 28,
  LANE_TYPE_GUIDE_DIRECTION_NO_LEFT_TURN: 29,
  LANE_TYPE_GUIDE_DIRECTION_NO_RIGHT_TURN: 30,
  LANE_TYPE_GUIDE_DIRECTION_NO_U_TURN: 31,
  LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_LEFT_RIGHT: 32,
  LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_U_LEFT: 33,
}

module.exports = LaneCenterNodeDirectionTypeEnum;
