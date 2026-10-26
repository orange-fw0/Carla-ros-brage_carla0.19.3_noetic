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

class TrafficSignNodeSpeedLimitConditionEnum {
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
    // Serializes a message object of type TrafficSignNodeSpeedLimitConditionEnum
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrafficSignNodeSpeedLimitConditionEnum
    let len;
    let data = new TrafficSignNodeSpeedLimitConditionEnum(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'landmark_msgs/TrafficSignNodeSpeedLimitConditionEnum';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3794c8440aa1cd9e81acc811ab86343d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_UNKNOWN = 0
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_WEATHER = 1
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_ARROW = 2
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_PERIOD = 3
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_RAMP = 4
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_EXIT = 5
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_VEHICLE_TYPE = 6
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_SCHOOL = 7
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_ARROW_LEFT = 8
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_ARROW_RIGHT = 9
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_ARROW_STRAIGHT = 10
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_REGINAL = 11
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_PASSENGER_CAR = 12
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_OTHER_VEHICLE = 13
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrafficSignNodeSpeedLimitConditionEnum(null);
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
TrafficSignNodeSpeedLimitConditionEnum.Constants = {
  TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_UNKNOWN: 0,
  TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_WEATHER: 1,
  TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_ARROW: 2,
  TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_PERIOD: 3,
  TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_RAMP: 4,
  TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_EXIT: 5,
  TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_VEHICLE_TYPE: 6,
  TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_SCHOOL: 7,
  TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_ARROW_LEFT: 8,
  TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_ARROW_RIGHT: 9,
  TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_ARROW_STRAIGHT: 10,
  TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_REGINAL: 11,
  TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_PASSENGER_CAR: 12,
  TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_OTHER_VEHICLE: 13,
}

module.exports = TrafficSignNodeSpeedLimitConditionEnum;
