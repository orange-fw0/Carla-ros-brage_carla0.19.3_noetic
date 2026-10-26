// Auto-generated. Do not edit!

// (in-package perception_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class TrafficLightPatternEnum {
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
    // Serializes a message object of type TrafficLightPatternEnum
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrafficLightPatternEnum
    let len;
    let data = new TrafficLightPatternEnum(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/TrafficLightPatternEnum';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6b96546fa8ce8842da57b18dbd41be71';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 TRAFFIC_LIGHT_PATTERN_SOLID_CIRCLE = 0
    uint8 TRAFFIC_LIGHT_PATTERN_LEFT_ARROW = 1
    uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_ARROW = 2
    uint8 TRAFFIC_LIGHT_PATTERN_UP_ARROW = 3
    uint8 TRAFFIC_LIGHT_PATTERN_DOWN_ARROW = 4
    uint8 TRAFFIC_LIGHT_PATTERN_PEDESTRIAN = 5
    uint8 TRAFFIC_LIGHT_PATTERN_NON_MOTOR = 6
    uint8 TRAFFIC_LIGHT_PATTERN_LEFT_UTURN = 7
    uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_UTURN = 8
    uint8 TRAFFIC_LIGHT_PATTERN_NUMBER = 9
    uint8 TRAFFIC_LIGHT_PATTERN_PROGRESS_BAR = 10
    uint8 TRAFFIC_LIGHT_PATTERN_TEXT_LIGHT = 11
    uint8 TRAFFIC_LIGHT_PATTERN_X_SHAPED_LIGHT = 12
    uint8 TRAFFIC_LIGHT_PATTERN_LEFTUP_ARROW = 13
    uint8 TRAFFIC_LIGHT_PATTERN_RIGHTUP_ARROW = 14
    uint8 TRAFFIC_LIGHT_PATTERN_LEFTDOWN_ARROW = 15
    uint8 TRAFFIC_LIGHT_PATTERN_RIGHTDOWN_ARROW = 16
    uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_UP_ARROW = 17
    uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_AND_UP_ARROW = 18
    uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_ARROW = 19
    uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_AND_UP_ARROW = 20
    uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_LEFT_UTURN_ARROW = 21
    uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_AND_RIGHT_UTURN_ARROW = 22
    uint8 TRAFFIC_LIGHT_PATTERN_OTHER = 23
    uint8 TRAFFIC_LIGHT_PATTERN_UNKNOW = 24
    uint8 TRAFFIC_LIGHT_PATTERN_OFF = 25
    uint8 TRAFFIC_LIGHT_PATTERN_UNMARKED = 26
    uint8 TRAFFIC_LIGHT_PATTERN_RESERVE1 = 27
    uint8 TRAFFIC_LIGHT_PATTERN_RESERVE2 = 28
    uint8 TRAFFIC_LIGHT_PATTERN_RESERVE3 = 29
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrafficLightPatternEnum(null);
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
TrafficLightPatternEnum.Constants = {
  TRAFFIC_LIGHT_PATTERN_SOLID_CIRCLE: 0,
  TRAFFIC_LIGHT_PATTERN_LEFT_ARROW: 1,
  TRAFFIC_LIGHT_PATTERN_RIGHT_ARROW: 2,
  TRAFFIC_LIGHT_PATTERN_UP_ARROW: 3,
  TRAFFIC_LIGHT_PATTERN_DOWN_ARROW: 4,
  TRAFFIC_LIGHT_PATTERN_PEDESTRIAN: 5,
  TRAFFIC_LIGHT_PATTERN_NON_MOTOR: 6,
  TRAFFIC_LIGHT_PATTERN_LEFT_UTURN: 7,
  TRAFFIC_LIGHT_PATTERN_RIGHT_UTURN: 8,
  TRAFFIC_LIGHT_PATTERN_NUMBER: 9,
  TRAFFIC_LIGHT_PATTERN_PROGRESS_BAR: 10,
  TRAFFIC_LIGHT_PATTERN_TEXT_LIGHT: 11,
  TRAFFIC_LIGHT_PATTERN_X_SHAPED_LIGHT: 12,
  TRAFFIC_LIGHT_PATTERN_LEFTUP_ARROW: 13,
  TRAFFIC_LIGHT_PATTERN_RIGHTUP_ARROW: 14,
  TRAFFIC_LIGHT_PATTERN_LEFTDOWN_ARROW: 15,
  TRAFFIC_LIGHT_PATTERN_RIGHTDOWN_ARROW: 16,
  TRAFFIC_LIGHT_PATTERN_LEFT_AND_UP_ARROW: 17,
  TRAFFIC_LIGHT_PATTERN_RIGHT_AND_UP_ARROW: 18,
  TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_ARROW: 19,
  TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_AND_UP_ARROW: 20,
  TRAFFIC_LIGHT_PATTERN_LEFT_AND_LEFT_UTURN_ARROW: 21,
  TRAFFIC_LIGHT_PATTERN_RIGHT_AND_RIGHT_UTURN_ARROW: 22,
  TRAFFIC_LIGHT_PATTERN_OTHER: 23,
  TRAFFIC_LIGHT_PATTERN_UNKNOW: 24,
  TRAFFIC_LIGHT_PATTERN_OFF: 25,
  TRAFFIC_LIGHT_PATTERN_UNMARKED: 26,
  TRAFFIC_LIGHT_PATTERN_RESERVE1: 27,
  TRAFFIC_LIGHT_PATTERN_RESERVE2: 28,
  TRAFFIC_LIGHT_PATTERN_RESERVE3: 29,
}

module.exports = TrafficLightPatternEnum;
