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

class RefPathGoalTypeEnum {
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
    // Serializes a message object of type RefPathGoalTypeEnum
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RefPathGoalTypeEnum
    let len;
    let data = new RefPathGoalTypeEnum(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'landmark_msgs/RefPathGoalTypeEnum';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '569a727b8f51e506287ecbb39b567167';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 GOAL_TYPE_UNKNOWN = 0
    uint8 GOAL_TYPE_WAY_POINT = 1
    uint8 GOAL_TYPE_LANE_CENTER = 2
    uint8 GOAL_TYPE_ROAD_MARK = 3
    uint8 GOAL_TYPE_ROAD_ENTRY_LINE = 4
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RefPathGoalTypeEnum(null);
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
RefPathGoalTypeEnum.Constants = {
  GOAL_TYPE_UNKNOWN: 0,
  GOAL_TYPE_WAY_POINT: 1,
  GOAL_TYPE_LANE_CENTER: 2,
  GOAL_TYPE_ROAD_MARK: 3,
  GOAL_TYPE_ROAD_ENTRY_LINE: 4,
}

module.exports = RefPathGoalTypeEnum;
