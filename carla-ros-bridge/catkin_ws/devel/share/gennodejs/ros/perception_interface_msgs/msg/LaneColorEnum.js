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

class LaneColorEnum {
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
    // Serializes a message object of type LaneColorEnum
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaneColorEnum
    let len;
    let data = new LaneColorEnum(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/LaneColorEnum';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6891bd0acaabe6e6f5f1074f0b129b91';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 LANE_COLOR_UNKNOWN = 0
    uint8 LANE_COLOR_WHITE = 1
    uint8 LANE_COLOR_YELLOW = 2
    uint8 LANE_COLOR_RED = 3
    uint8 LANE_COLOR_BLUE = 4
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LaneColorEnum(null);
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
LaneColorEnum.Constants = {
  LANE_COLOR_UNKNOWN: 0,
  LANE_COLOR_WHITE: 1,
  LANE_COLOR_YELLOW: 2,
  LANE_COLOR_RED: 3,
  LANE_COLOR_BLUE: 4,
}

module.exports = LaneColorEnum;
