// Auto-generated. Do not edit!

// (in-package lane_navi_info_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class TBTLaneAction {
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
    // Serializes a message object of type TBTLaneAction
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TBTLaneAction
    let len;
    let data = new TBTLaneAction(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lane_navi_info_msgs/TBTLaneAction';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd0ba199bb593aae807032ea729d94228';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 LANE_ACTION_AHEAD = 0
    uint8 LANE_ACTION_LEFT = 1
    uint8 LANE_ACTION_AHEAD_LEFT = 2
    uint8 LANE_ACTION_RIGHT = 3
    uint8 LANE_ACTION_AHEAD_RIGHT = 4
    uint8 LANE_ACTION_LU_TURN = 5
    uint8 LANE_ACTION_LEFT_RIGHT = 6
    uint8 LANE_ACTION_AHEAD_LEFT_RIGHT = 7
    uint8 LANE_ACTION_RU_TURN = 8
    uint8 LANE_ACTION_AHEAD_LU_TURN = 9
    uint8 LANE_ACTION_AHEAD_RU_TURN = 10
    uint8 LANE_ACTION_LEFT_LU_TURN = 11
    uint8 LANE_ACTION_RIGHT_RU_TURN = 12
    uint8 LANE_ACTION_LEFT_IN_AHEAD = 13
    uint8 LANE_ACTION_LEFT_LU_TURN_EX = 14
    uint8 LANE_ACTION_RESERVED = 15
    uint8 LANE_ACTION_AHEAD_LEFT_LU_TURN = 16
    uint8 LANE_ACTION_RIGHT_LU_TURN = 17
    uint8 LANE_ACTION_LEFT_RIGHT_LU_TURN = 18
    uint8 LANE_ACTION_AHEAD_RIGHT_LU_TURN = 19
    uint8 LANE_ACTION_LEFT_RU_TURN = 20
    uint8 LANE_ACTION_BUS = 21
    uint8 LANE_ACTION_EMPTY = 22
    uint8 LANE_ACTION_VARIABLE = 23
    uint8 LANE_ACTION_DEDICATED = 24
    uint8 LANE_ACTION_TIDAL = 25
    uint8 LANE_ACTION_NULL = 255
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TBTLaneAction(null);
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
TBTLaneAction.Constants = {
  LANE_ACTION_AHEAD: 0,
  LANE_ACTION_LEFT: 1,
  LANE_ACTION_AHEAD_LEFT: 2,
  LANE_ACTION_RIGHT: 3,
  LANE_ACTION_AHEAD_RIGHT: 4,
  LANE_ACTION_LU_TURN: 5,
  LANE_ACTION_LEFT_RIGHT: 6,
  LANE_ACTION_AHEAD_LEFT_RIGHT: 7,
  LANE_ACTION_RU_TURN: 8,
  LANE_ACTION_AHEAD_LU_TURN: 9,
  LANE_ACTION_AHEAD_RU_TURN: 10,
  LANE_ACTION_LEFT_LU_TURN: 11,
  LANE_ACTION_RIGHT_RU_TURN: 12,
  LANE_ACTION_LEFT_IN_AHEAD: 13,
  LANE_ACTION_LEFT_LU_TURN_EX: 14,
  LANE_ACTION_RESERVED: 15,
  LANE_ACTION_AHEAD_LEFT_LU_TURN: 16,
  LANE_ACTION_RIGHT_LU_TURN: 17,
  LANE_ACTION_LEFT_RIGHT_LU_TURN: 18,
  LANE_ACTION_AHEAD_RIGHT_LU_TURN: 19,
  LANE_ACTION_LEFT_RU_TURN: 20,
  LANE_ACTION_BUS: 21,
  LANE_ACTION_EMPTY: 22,
  LANE_ACTION_VARIABLE: 23,
  LANE_ACTION_DEDICATED: 24,
  LANE_ACTION_TIDAL: 25,
  LANE_ACTION_NULL: 255,
}

module.exports = TBTLaneAction;
