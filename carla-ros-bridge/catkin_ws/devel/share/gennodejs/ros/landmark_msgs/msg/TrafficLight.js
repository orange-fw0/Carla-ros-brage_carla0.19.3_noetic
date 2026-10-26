// Auto-generated. Do not edit!

// (in-package landmark_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TrafficLightType = require('./TrafficLightType.js');
let Direction = require('./Direction.js');

//-----------------------------------------------------------

class TrafficLight {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
      this.direction = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = new TrafficLightType();
      }
      if (initObj.hasOwnProperty('direction')) {
        this.direction = initObj.direction
      }
      else {
        this.direction = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrafficLight
    // Serialize message field [type]
    bufferOffset = TrafficLightType.serialize(obj.type, buffer, bufferOffset);
    // Serialize message field [direction]
    // Serialize the length for message field [direction]
    bufferOffset = _serializer.uint32(obj.direction.length, buffer, bufferOffset);
    obj.direction.forEach((val) => {
      bufferOffset = Direction.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrafficLight
    let len;
    let data = new TrafficLight(null);
    // Deserialize message field [type]
    data.type = TrafficLightType.deserialize(buffer, bufferOffset);
    // Deserialize message field [direction]
    // Deserialize array length for message field [direction]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.direction = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.direction[i] = Direction.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.direction.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'landmark_msgs/TrafficLight';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0a3742a9e708cfbb50d009b26e252a1d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    landmark_msgs/TrafficLightType type
    landmark_msgs/Direction[] direction
    
    ================================================================================
    MSG: landmark_msgs/TrafficLightType
    uint8 UNKNOWN = 0
    uint8 DOT_TRAFFIC_LIGHT = 1
    uint8 ARROW_TRAFFIC_LIGHT = 2
    uint8 NUMBER_TRAFFIC_LIGHT = 3
    uint8 TRAFFIC_LIGHT_FOR_NON_MOTOR_VEHICLE = 4
    uint8 TRAFFIC_LIGHT_FOR_PEDESTRIANS = 5
    uint8 SAND_CLOCK_TRAFFIC_LIGHT = 6
    uint8 value
    
    ================================================================================
    MSG: landmark_msgs/Direction
    uint8 UNKNOWN = 0
    uint8 GO_STRAIGHT = 1
    uint8 TURN_RIGHT = 2
    uint8 TURN_LEFT = 3
    uint8 U_TURN_LEFT = 4
    uint8 U_TURN_RIGHT = 5
    uint8 LEFT_CONFLUENCE = 6
    uint8 RIGHT_CONFLUENCE = 7
    uint8 LEFT_LEFT = 10
    uint8 LEFT_LEFT_UT = 11
    uint8 LEFT_RIGHT = 12
    uint8 LEFT_RIGHT_UT = 13
    uint8 LEFT_GO_STRAIGHT = 14
    uint8 LEFT_UNKNOWN = 15
    uint8 RIGHT_RIGHT = 20
    uint8 RIGHT_RIGHT_UT = 21
    uint8 RIGHT_LEFT = 22
    uint8 RIGHT_LEFT_UT = 23
    uint8 RIGHT_GO_STRAIGHT = 24
    uint8 RIGHT_UNKNOWN = 25
    uint8 LEFT_UT_LEFT_UT = 30
    uint8 LEFT_UT_LEFT = 31
    uint8 LEFT_UT_RIGHT = 32
    uint8 LEFT_UT_RIGHT_UT = 33
    uint8 LEFT_UT_GO_STRAIGHT = 34
    uint8 LEFT_UT_UNKNOWN = 35
    uint8 RIGHT_UT_RIGHT_UT = 40
    uint8 RIGHT_UT_RIGHT = 41
    uint8 RIGHT_UT_LEFT = 42
    uint8 RIGHT_UT_LEFT_UT = 43
    uint8 RIGHT_UT_GO_STRAIGHT = 44
    uint8 RIGHT_UT_UNKNOWN = 45
    uint8 GO_STRAIGHT_GO_STRAIGHT = 50
    uint8 GO_STRAIGHT_LEFT = 51
    uint8 GO_STRAIGHT_LEFT_UT = 52
    uint8 GO_STRAIGHT_RIGHT = 53
    uint8 GO_STRAIGHT_RIGHT_UT = 54
    uint8 GO_STRAIGHT_UNKNOWN = 55
    uint8 OTHER_LEFT = 61
    uint8 OTHER_LEFT_UT = 62
    uint8 OTHER_RIGHT = 63
    uint8 OTHER_RIGHT_UT = 64
    uint8 OTHER_GO_STRAIGHT = 65
    uint8 OTHER_UNKNOWN = 66
    uint8 UNKNOWN_LEFT = 91
    uint8 UNKNOWN_LEFT_UT = 92
    uint8 UNKNOWN_RIGHT = 93
    uint8 UNKNOWN_RIGHT_UT = 94
    uint8 UNKNOWN_GO_STRAIGHT = 95
    uint8 UNKNOWN_UNKNOWN = 96
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrafficLight(null);
    if (msg.type !== undefined) {
      resolved.type = TrafficLightType.Resolve(msg.type)
    }
    else {
      resolved.type = new TrafficLightType()
    }

    if (msg.direction !== undefined) {
      resolved.direction = new Array(msg.direction.length);
      for (let i = 0; i < resolved.direction.length; ++i) {
        resolved.direction[i] = Direction.Resolve(msg.direction[i]);
      }
    }
    else {
      resolved.direction = []
    }

    return resolved;
    }
};

module.exports = TrafficLight;
