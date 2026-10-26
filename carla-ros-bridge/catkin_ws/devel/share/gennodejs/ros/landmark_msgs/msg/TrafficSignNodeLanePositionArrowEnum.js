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

class TrafficSignNodeLanePositionArrowEnum {
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
    // Serializes a message object of type TrafficSignNodeLanePositionArrowEnum
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrafficSignNodeLanePositionArrowEnum
    let len;
    let data = new TrafficSignNodeLanePositionArrowEnum(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'landmark_msgs/TrafficSignNodeLanePositionArrowEnum';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5554c3c99becd2732cbe9e255b4fd2eb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_INVALID = 0
    uint8 TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_UNKNOWN = 1
    uint8 TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_NONE = 2
    uint8 TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_LEFT = 3
    uint8 TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_RIGHT = 4
    uint8 TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_DOWN = 5
    uint8 TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_UP = 6
    uint8 TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_OTHER = 255
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrafficSignNodeLanePositionArrowEnum(null);
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
TrafficSignNodeLanePositionArrowEnum.Constants = {
  TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_INVALID: 0,
  TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_UNKNOWN: 1,
  TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_NONE: 2,
  TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_LEFT: 3,
  TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_RIGHT: 4,
  TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_DOWN: 5,
  TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_UP: 6,
  TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_OTHER: 255,
}

module.exports = TrafficSignNodeLanePositionArrowEnum;
