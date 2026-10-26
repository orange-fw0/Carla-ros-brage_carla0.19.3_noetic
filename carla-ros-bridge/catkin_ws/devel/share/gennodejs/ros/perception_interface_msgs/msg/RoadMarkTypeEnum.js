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

class RoadMarkTypeEnum {
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
    // Serializes a message object of type RoadMarkTypeEnum
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RoadMarkTypeEnum
    let len;
    let data = new RoadMarkTypeEnum(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_interface_msgs/RoadMarkTypeEnum';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ac8a7bb2c0183076ba51a6627b1c2fe9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 ROAD_MARK_TYPE_UNKNOWN = 0
    uint8 ROAD_MARK_TYPE_GO_STRAIGHT = 1
    uint8 ROAD_MARK_TYPE_GO_STRAIGHT_OR_TURN_LEFT = 2
    uint8 ROAD_MARK_TYPE_GO_STRAIGHT_OR_TURN_RIGHT = 3
    uint8 ROAD_MARK_TYPE_GO_STRAIGHT_OR_TURN_BACK = 4
    uint8 ROAD_MARK_TYPE_TURN_LEFT = 5
    uint8 ROAD_MARK_TYPE_TURN_RIGHT = 6
    uint8 ROAD_MARK_TYPE_TURN_BACK = 7
    uint8 ROAD_MARK_TYPE_TURN_LEFT_OR_TURN_BACK = 8
    uint8 ROAD_MARK_TYPE_TURN_LEFT_OR_TURN_RIGHT = 9
    uint8 ROAD_MARK_TYPE_LEFT_CONFLUENCE = 10
    uint8 ROAD_MARK_TYPE_RIGHT_CONFLUENCE = 11
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RoadMarkTypeEnum(null);
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
RoadMarkTypeEnum.Constants = {
  ROAD_MARK_TYPE_UNKNOWN: 0,
  ROAD_MARK_TYPE_GO_STRAIGHT: 1,
  ROAD_MARK_TYPE_GO_STRAIGHT_OR_TURN_LEFT: 2,
  ROAD_MARK_TYPE_GO_STRAIGHT_OR_TURN_RIGHT: 3,
  ROAD_MARK_TYPE_GO_STRAIGHT_OR_TURN_BACK: 4,
  ROAD_MARK_TYPE_TURN_LEFT: 5,
  ROAD_MARK_TYPE_TURN_RIGHT: 6,
  ROAD_MARK_TYPE_TURN_BACK: 7,
  ROAD_MARK_TYPE_TURN_LEFT_OR_TURN_BACK: 8,
  ROAD_MARK_TYPE_TURN_LEFT_OR_TURN_RIGHT: 9,
  ROAD_MARK_TYPE_LEFT_CONFLUENCE: 10,
  ROAD_MARK_TYPE_RIGHT_CONFLUENCE: 11,
}

module.exports = RoadMarkTypeEnum;
