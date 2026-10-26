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

class TrafficSignNodeSpeedLimitEnum {
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
    // Serializes a message object of type TrafficSignNodeSpeedLimitEnum
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrafficSignNodeSpeedLimitEnum
    let len;
    let data = new TrafficSignNodeSpeedLimitEnum(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'landmark_msgs/TrafficSignNodeSpeedLimitEnum';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e225cdc6c16c12f674510cfcfc6ad796';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_INVALID = 0
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_UNKNOWN = 1
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_5 = 5
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_10 = 10
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_15 = 15
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_20 = 20
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_25 = 25
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_30 = 30
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_35 = 35
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_40 = 40
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_45 = 45
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_50 = 50
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_55 = 55
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_60 = 60
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_65 = 65
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_70 = 70
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_75 = 75
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_80 = 80
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_85 = 85
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_90 = 90
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_100 = 100
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_110 = 110
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_120 = 120
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_130 = 130
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_140 = 140
    uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_OTHER = 255
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrafficSignNodeSpeedLimitEnum(null);
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
TrafficSignNodeSpeedLimitEnum.Constants = {
  TRAFFIC_SIGN_NODE_SPEED_LIMIT_INVALID: 0,
  TRAFFIC_SIGN_NODE_SPEED_LIMIT_UNKNOWN: 1,
  TRAFFIC_SIGN_NODE_SPEED_LIMIT_5: 5,
  TRAFFIC_SIGN_NODE_SPEED_LIMIT_10: 10,
  TRAFFIC_SIGN_NODE_SPEED_LIMIT_15: 15,
  TRAFFIC_SIGN_NODE_SPEED_LIMIT_20: 20,
  TRAFFIC_SIGN_NODE_SPEED_LIMIT_25: 25,
  TRAFFIC_SIGN_NODE_SPEED_LIMIT_30: 30,
  TRAFFIC_SIGN_NODE_SPEED_LIMIT_35: 35,
  TRAFFIC_SIGN_NODE_SPEED_LIMIT_40: 40,
  TRAFFIC_SIGN_NODE_SPEED_LIMIT_45: 45,
  TRAFFIC_SIGN_NODE_SPEED_LIMIT_50: 50,
  TRAFFIC_SIGN_NODE_SPEED_LIMIT_55: 55,
  TRAFFIC_SIGN_NODE_SPEED_LIMIT_60: 60,
  TRAFFIC_SIGN_NODE_SPEED_LIMIT_65: 65,
  TRAFFIC_SIGN_NODE_SPEED_LIMIT_70: 70,
  TRAFFIC_SIGN_NODE_SPEED_LIMIT_75: 75,
  TRAFFIC_SIGN_NODE_SPEED_LIMIT_80: 80,
  TRAFFIC_SIGN_NODE_SPEED_LIMIT_85: 85,
  TRAFFIC_SIGN_NODE_SPEED_LIMIT_90: 90,
  TRAFFIC_SIGN_NODE_SPEED_LIMIT_100: 100,
  TRAFFIC_SIGN_NODE_SPEED_LIMIT_110: 110,
  TRAFFIC_SIGN_NODE_SPEED_LIMIT_120: 120,
  TRAFFIC_SIGN_NODE_SPEED_LIMIT_130: 130,
  TRAFFIC_SIGN_NODE_SPEED_LIMIT_140: 140,
  TRAFFIC_SIGN_NODE_SPEED_LIMIT_OTHER: 255,
}

module.exports = TrafficSignNodeSpeedLimitEnum;
