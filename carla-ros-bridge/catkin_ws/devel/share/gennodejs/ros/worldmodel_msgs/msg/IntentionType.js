// Auto-generated. Do not edit!

// (in-package worldmodel_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class IntentionType {
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
    // Serializes a message object of type IntentionType
    // Serialize message field [value]
    bufferOffset = _serializer.int32(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IntentionType
    let len;
    let data = new IntentionType(null);
    // Deserialize message field [value]
    data.value = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'worldmodel_msgs/IntentionType';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4e708cc3ef7472c7d503a4eef7f7300d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 INVALID = -1
    int32 FREE_MOVE = 0
    int32 KEEP_LANE = 1
    int32 LEFT_CHANGE_LANE_OUT = 2
    int32 LEFT_CHANGE_LANE_IN = 3
    int32 RIGHT_CHANGE_LANE_OUT = 4
    int32 RIGHT_CHANGE_LANE_IN = 5
    int32 GO_STRAIGHT = 11
    int32 TURN_LEFT = 12
    int32 TURN_RIGHT = 13
    int32 U_TURN = 14
    int32 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new IntentionType(null);
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
IntentionType.Constants = {
  INVALID: -1,
  FREE_MOVE: 0,
  KEEP_LANE: 1,
  LEFT_CHANGE_LANE_OUT: 2,
  LEFT_CHANGE_LANE_IN: 3,
  RIGHT_CHANGE_LANE_OUT: 4,
  RIGHT_CHANGE_LANE_IN: 5,
  GO_STRAIGHT: 11,
  TURN_LEFT: 12,
  TURN_RIGHT: 13,
  U_TURN: 14,
}

module.exports = IntentionType;
