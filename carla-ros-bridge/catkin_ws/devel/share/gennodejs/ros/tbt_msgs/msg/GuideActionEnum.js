// Auto-generated. Do not edit!

// (in-package tbt_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class GuideActionEnum {
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
    // Serializes a message object of type GuideActionEnum
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GuideActionEnum
    let len;
    let data = new GuideActionEnum(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tbt_msgs/GuideActionEnum';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1bf7bcf9d33a27178a8a8ccee339fb10';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 NO_NAVI_ACTION = 0
    uint8 TURN_LEFT = 1
    uint8 TURN_RIGHT = 2
    uint8 DRIVE_LEFT_FRONT = 3
    uint8 DRIVE_RIGHT_FRONT = 4
    uint8 DRIVE_LEFT_REAR = 5
    uint8 DRIVE_RIGHT_REAR = 6
    uint8 TURN_LEFT_TURN_AROUND = 7
    uint8 GO_STRAIGHT = 8
    uint8 FRONT_ROAD_ALONG_LEFT = 9
    uint8 FRONT_ROAD_ALONG_RIGHT = 10
    uint8 TRIFURCATION_ALONG_LEFT = 11
    uint8 TRIFURCATION_ALONG_MIDDLE = 12
    uint8 TRIFURCATION_ALONG_RIGHT = 13
    uint8 TWO_STRAIGHT_ALONG_LEFT = 14
    uint8 TWO_STRAIGHT_ALONG_RIGHT = 15
    uint8 THREE_STRAIGHT_ALONG_LEFT = 16
    uint8 THREE_STRAIGHT_ALONG_MIDDLE = 17
    uint8 THREE_STRAIGHT_ALONG_RIGHT = 18
    uint8 ENTRY_RING = 19
    uint8 DESTINATION = 20
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GuideActionEnum(null);
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
GuideActionEnum.Constants = {
  NO_NAVI_ACTION: 0,
  TURN_LEFT: 1,
  TURN_RIGHT: 2,
  DRIVE_LEFT_FRONT: 3,
  DRIVE_RIGHT_FRONT: 4,
  DRIVE_LEFT_REAR: 5,
  DRIVE_RIGHT_REAR: 6,
  TURN_LEFT_TURN_AROUND: 7,
  GO_STRAIGHT: 8,
  FRONT_ROAD_ALONG_LEFT: 9,
  FRONT_ROAD_ALONG_RIGHT: 10,
  TRIFURCATION_ALONG_LEFT: 11,
  TRIFURCATION_ALONG_MIDDLE: 12,
  TRIFURCATION_ALONG_RIGHT: 13,
  TWO_STRAIGHT_ALONG_LEFT: 14,
  TWO_STRAIGHT_ALONG_RIGHT: 15,
  THREE_STRAIGHT_ALONG_LEFT: 16,
  THREE_STRAIGHT_ALONG_MIDDLE: 17,
  THREE_STRAIGHT_ALONG_RIGHT: 18,
  ENTRY_RING: 19,
  DESTINATION: 20,
}

module.exports = GuideActionEnum;
