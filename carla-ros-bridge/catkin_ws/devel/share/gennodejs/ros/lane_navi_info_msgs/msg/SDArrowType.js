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

class SDArrowType {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SDArrowType
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SDArrowType
    let len;
    let data = new SDArrowType(null);
    // Deserialize message field [type]
    data.type = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lane_navi_info_msgs/SDArrowType';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f3168dcc7bd862efec8c96b55d9de149';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 SD_ARROW_TYPE_LEFTUTURN = 0
    uint8 SD_ARROW_TYPE_TURNLEFT = 1
    uint8 SD_ARROW_TYPE_STRAIGHT = 2
    uint8 SD_ARROW_TYPE_TURNRIGHT = 3
    uint8 SD_ARROW_TYPE_RIGHTUTURN = 4
    uint8 SD_ARROW_TYPE_LEFT_SIDE_WIDTH_CHANGE = 5
    uint8 SD_ARROW_TYPE_RIGHT_SIDE_WIDTH_CHANGE = 6
    uint8 SD_ARROW_TYPE_SINGLE_LANE_NO_UTURN = 7
    uint8 SD_ARROW_TYPE_LEFT_CURVATURE = 8
    uint8 SD_ARROW_TYPE_RIGHT_CURVATURE = 9
    uint8 SD_ARROW_TYPE_EMPTY_LANE = 10
    uint8 SD_ARROW_TYPE_INVALID = 255
    uint8 type
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SDArrowType(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    return resolved;
    }
};

// Constants for message
SDArrowType.Constants = {
  SD_ARROW_TYPE_LEFTUTURN: 0,
  SD_ARROW_TYPE_TURNLEFT: 1,
  SD_ARROW_TYPE_STRAIGHT: 2,
  SD_ARROW_TYPE_TURNRIGHT: 3,
  SD_ARROW_TYPE_RIGHTUTURN: 4,
  SD_ARROW_TYPE_LEFT_SIDE_WIDTH_CHANGE: 5,
  SD_ARROW_TYPE_RIGHT_SIDE_WIDTH_CHANGE: 6,
  SD_ARROW_TYPE_SINGLE_LANE_NO_UTURN: 7,
  SD_ARROW_TYPE_LEFT_CURVATURE: 8,
  SD_ARROW_TYPE_RIGHT_CURVATURE: 9,
  SD_ARROW_TYPE_EMPTY_LANE: 10,
  SD_ARROW_TYPE_INVALID: 255,
}

module.exports = SDArrowType;
