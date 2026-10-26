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

class TrafficLightNumberEnum {
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
    // Serializes a message object of type TrafficLightNumberEnum
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrafficLightNumberEnum
    let len;
    let data = new TrafficLightNumberEnum(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/TrafficLightNumberEnum';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '86893b246ede7e5bd2245707ffe70550';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 TRAFFIC_LIGHT_NUMBER_ZERO = 0
    uint8 TRAFFIC_LIGHT_NUMBER_ONE = 1
    uint8 TRAFFIC_LIGHT_NUMBER_TWO = 2
    uint8 TRAFFIC_LIGHT_NUMBER_THREE = 3
    uint8 TRAFFIC_LIGHT_NUMBER_FOUR = 4
    uint8 TRAFFIC_LIGHT_NUMBER_FIVE = 5
    uint8 TRAFFIC_LIGHT_NUMBER_SIX = 6
    uint8 TRAFFIC_LIGHT_NUMBER_SEVEN = 7
    uint8 TRAFFIC_LIGHT_NUMBER_EIGHT = 8
    uint8 TRAFFIC_LIGHT_NUMBER_NINE = 9
    uint8 TRAFFIC_LIGHT_NUMBER_OTHER = 10
    uint8 TRAFFIC_LIGHT_NUMBER_OFF = 11
    uint8 TRAFFIC_LIGHT_NUMBER_UNKNOWN = 12
    uint8 TRAFFIC_LIGHT_NUMBER_UNMARKED = 13
    uint8 TRAFFIC_LIGHT_NUMBER_RESERVE1 = 14
    uint8 TRAFFIC_LIGHT_NUMBER_RESERVE2 = 15
    uint8 TRAFFIC_LIGHT_NUMBER_RESERVE3 = 16
    uint8 TRAFFIC_LIGHT_NUMBER_RESERVE4 = 17
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrafficLightNumberEnum(null);
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
TrafficLightNumberEnum.Constants = {
  TRAFFIC_LIGHT_NUMBER_ZERO: 0,
  TRAFFIC_LIGHT_NUMBER_ONE: 1,
  TRAFFIC_LIGHT_NUMBER_TWO: 2,
  TRAFFIC_LIGHT_NUMBER_THREE: 3,
  TRAFFIC_LIGHT_NUMBER_FOUR: 4,
  TRAFFIC_LIGHT_NUMBER_FIVE: 5,
  TRAFFIC_LIGHT_NUMBER_SIX: 6,
  TRAFFIC_LIGHT_NUMBER_SEVEN: 7,
  TRAFFIC_LIGHT_NUMBER_EIGHT: 8,
  TRAFFIC_LIGHT_NUMBER_NINE: 9,
  TRAFFIC_LIGHT_NUMBER_OTHER: 10,
  TRAFFIC_LIGHT_NUMBER_OFF: 11,
  TRAFFIC_LIGHT_NUMBER_UNKNOWN: 12,
  TRAFFIC_LIGHT_NUMBER_UNMARKED: 13,
  TRAFFIC_LIGHT_NUMBER_RESERVE1: 14,
  TRAFFIC_LIGHT_NUMBER_RESERVE2: 15,
  TRAFFIC_LIGHT_NUMBER_RESERVE3: 16,
  TRAFFIC_LIGHT_NUMBER_RESERVE4: 17,
}

module.exports = TrafficLightNumberEnum;
