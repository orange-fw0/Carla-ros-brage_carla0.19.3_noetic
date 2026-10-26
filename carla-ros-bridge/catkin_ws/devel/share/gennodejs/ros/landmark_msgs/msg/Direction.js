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

class Direction {
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
    // Serializes a message object of type Direction
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Direction
    let len;
    let data = new Direction(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'landmark_msgs/Direction';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2ac19d0e2405fb155918d5b1b85e2a47';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new Direction(null);
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
Direction.Constants = {
  UNKNOWN: 0,
  GO_STRAIGHT: 1,
  TURN_RIGHT: 2,
  TURN_LEFT: 3,
  U_TURN_LEFT: 4,
  U_TURN_RIGHT: 5,
  LEFT_CONFLUENCE: 6,
  RIGHT_CONFLUENCE: 7,
  LEFT_LEFT: 10,
  LEFT_LEFT_UT: 11,
  LEFT_RIGHT: 12,
  LEFT_RIGHT_UT: 13,
  LEFT_GO_STRAIGHT: 14,
  LEFT_UNKNOWN: 15,
  RIGHT_RIGHT: 20,
  RIGHT_RIGHT_UT: 21,
  RIGHT_LEFT: 22,
  RIGHT_LEFT_UT: 23,
  RIGHT_GO_STRAIGHT: 24,
  RIGHT_UNKNOWN: 25,
  LEFT_UT_LEFT_UT: 30,
  LEFT_UT_LEFT: 31,
  LEFT_UT_RIGHT: 32,
  LEFT_UT_RIGHT_UT: 33,
  LEFT_UT_GO_STRAIGHT: 34,
  LEFT_UT_UNKNOWN: 35,
  RIGHT_UT_RIGHT_UT: 40,
  RIGHT_UT_RIGHT: 41,
  RIGHT_UT_LEFT: 42,
  RIGHT_UT_LEFT_UT: 43,
  RIGHT_UT_GO_STRAIGHT: 44,
  RIGHT_UT_UNKNOWN: 45,
  GO_STRAIGHT_GO_STRAIGHT: 50,
  GO_STRAIGHT_LEFT: 51,
  GO_STRAIGHT_LEFT_UT: 52,
  GO_STRAIGHT_RIGHT: 53,
  GO_STRAIGHT_RIGHT_UT: 54,
  GO_STRAIGHT_UNKNOWN: 55,
  OTHER_LEFT: 61,
  OTHER_LEFT_UT: 62,
  OTHER_RIGHT: 63,
  OTHER_RIGHT_UT: 64,
  OTHER_GO_STRAIGHT: 65,
  OTHER_UNKNOWN: 66,
  UNKNOWN_LEFT: 91,
  UNKNOWN_LEFT_UT: 92,
  UNKNOWN_RIGHT: 93,
  UNKNOWN_RIGHT_UT: 94,
  UNKNOWN_GO_STRAIGHT: 95,
  UNKNOWN_UNKNOWN: 96,
}

module.exports = Direction;
