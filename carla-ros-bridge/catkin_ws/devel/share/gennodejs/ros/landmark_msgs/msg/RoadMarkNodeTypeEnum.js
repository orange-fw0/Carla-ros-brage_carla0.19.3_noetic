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

class RoadMarkNodeTypeEnum {
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
    // Serializes a message object of type RoadMarkNodeTypeEnum
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RoadMarkNodeTypeEnum
    let len;
    let data = new RoadMarkNodeTypeEnum(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'landmark_msgs/RoadMarkNodeTypeEnum';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '69a51e779ef62314c0d675076c8ec192';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 ROAD_MARK_TYPE_UNKNOWN = 0
    uint8 ROAD_MARK_TYPE_GUIDE_ARROW_GO_STRAIGHT = 1
    uint8 ROAD_MARK_TYPE_GUIDE_ARROW_TURN_RIGHT = 2
    uint8 ROAD_MARK_TYPE_GUIDE_ARROW_TURN_LEFT = 3
    uint8 ROAD_MARK_TYPE_GUIDE_ARROW_LEFT_TURN_BACK = 4
    uint8 ROAD_MARK_TYPE_GUIDE_ARROW_RIGHT_TURN_BACK = 5
    uint8 ROAD_MARK_TYPE_GUIDE_ARROW_LEFT_CONFLUENCE = 6
    uint8 ROAD_MARK_TYPE_GUIDE_ARROW_RIGHT_CONFLUENCE = 7
    uint8 ROAD_MARK_TYPE_GUIDE_ARROW_SYMBOL = 8
    uint8 ROAD_MARK_TYPE_GUIDE_ARROW_TEXT = 9
    uint8 ROAD_MARK_TYPE_NO_PARKING_ZONE = 10
    uint8 ROAD_MARK_TYPE_LATERAL_DECELERATION = 11
    uint8 ROAD_MARK_TYPE_CENTRAL_CIRCLE = 12
    uint8 ROAD_MARK_TYPE_INDICATED_LINE = 13
    uint8 ROAD_MARK_TYPE_SYMBOL = 14
    uint8 ROAD_MARK_TYPE_TEXT = 15
    uint8 ROAD_MARK_TYPE_GUIDE_ARROW = 16
    uint8 ROAD_MARK_TYPE_PROHIBIT = 17
    uint8 ROAD_MARK_TYPE_PROHIBIT_U_TURN = 18
    uint8 ROAD_MARK_TYPE_YIELD_LINE = 21
    uint8 ROAD_MARK_TYPE_PEDESTRIAN_CROSSING_WARNING = 22
    uint8 ROAD_MARK_TYPE_NON_MOTOR = 24
    uint8 ROAD_MARK_TYPE_STOP = 25
    uint8 ROAD_MARK_TYPE_PEDESTRIAN = 26
    uint8 ROAD_MARK_TYPE_YIELD_MARKING = 27
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RoadMarkNodeTypeEnum(null);
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
RoadMarkNodeTypeEnum.Constants = {
  ROAD_MARK_TYPE_UNKNOWN: 0,
  ROAD_MARK_TYPE_GUIDE_ARROW_GO_STRAIGHT: 1,
  ROAD_MARK_TYPE_GUIDE_ARROW_TURN_RIGHT: 2,
  ROAD_MARK_TYPE_GUIDE_ARROW_TURN_LEFT: 3,
  ROAD_MARK_TYPE_GUIDE_ARROW_LEFT_TURN_BACK: 4,
  ROAD_MARK_TYPE_GUIDE_ARROW_RIGHT_TURN_BACK: 5,
  ROAD_MARK_TYPE_GUIDE_ARROW_LEFT_CONFLUENCE: 6,
  ROAD_MARK_TYPE_GUIDE_ARROW_RIGHT_CONFLUENCE: 7,
  ROAD_MARK_TYPE_GUIDE_ARROW_SYMBOL: 8,
  ROAD_MARK_TYPE_GUIDE_ARROW_TEXT: 9,
  ROAD_MARK_TYPE_NO_PARKING_ZONE: 10,
  ROAD_MARK_TYPE_LATERAL_DECELERATION: 11,
  ROAD_MARK_TYPE_CENTRAL_CIRCLE: 12,
  ROAD_MARK_TYPE_INDICATED_LINE: 13,
  ROAD_MARK_TYPE_SYMBOL: 14,
  ROAD_MARK_TYPE_TEXT: 15,
  ROAD_MARK_TYPE_GUIDE_ARROW: 16,
  ROAD_MARK_TYPE_PROHIBIT: 17,
  ROAD_MARK_TYPE_PROHIBIT_U_TURN: 18,
  ROAD_MARK_TYPE_YIELD_LINE: 21,
  ROAD_MARK_TYPE_PEDESTRIAN_CROSSING_WARNING: 22,
  ROAD_MARK_TYPE_NON_MOTOR: 24,
  ROAD_MARK_TYPE_STOP: 25,
  ROAD_MARK_TYPE_PEDESTRIAN: 26,
  ROAD_MARK_TYPE_YIELD_MARKING: 27,
}

module.exports = RoadMarkNodeTypeEnum;
