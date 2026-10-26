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

class RoadNodeFormwayEnum {
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
    // Serializes a message object of type RoadNodeFormwayEnum
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RoadNodeFormwayEnum
    let len;
    let data = new RoadNodeFormwayEnum(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'landmark_msgs/RoadNodeFormwayEnum';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '94ebc80755913b27bbd791c06beea3fc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 FORMWAY_UNKNOWN = 0
    uint8 SINGLE_CARRIAGE_WAY = 1
    uint8 IC = 2
    uint8 JCT = 3
    uint8 SERVICE = 4
    uint8 TUNNEL = 5
    uint8 TOLL = 6
    uint8 SLIP_ROAD = 7
    uint8 SIDEROAD = 8
    uint8 ROUNDABOUT = 9
    uint8 RAMP_ENTRY = 10
    uint8 RAMP_EXIT = 11
    uint8 SAPA = 12
    uint8 PARKING_RAMP = 13
    uint8 PARKING_ROAD = 14
    uint8 U_TURN = 15
    uint8 TURN_RIGHT = 16
    uint8 TURN_LEFT = 17
    uint8 TURN_LEFT_RIGHT = 18
    uint8 CROSS_LINK = 19
    uint8 SERVICE_AND_SLIP_ROAD = 20
    uint8 SERVICE_AND_JCT = 21
    uint8 SERVICE_AND_SLIP_ROAD_AND_JCT = 22
    uint8 MULTIPLE_CARRIAGE_WAY = 23
    uint8 CHECK_POINT = 24
    uint8 WALK_ROAD = 25
    uint8 PARALLED_ROAD = 26
    uint8 OTHERS = 99
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RoadNodeFormwayEnum(null);
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
RoadNodeFormwayEnum.Constants = {
  FORMWAY_UNKNOWN: 0,
  SINGLE_CARRIAGE_WAY: 1,
  IC: 2,
  JCT: 3,
  SERVICE: 4,
  TUNNEL: 5,
  TOLL: 6,
  SLIP_ROAD: 7,
  SIDEROAD: 8,
  ROUNDABOUT: 9,
  RAMP_ENTRY: 10,
  RAMP_EXIT: 11,
  SAPA: 12,
  PARKING_RAMP: 13,
  PARKING_ROAD: 14,
  U_TURN: 15,
  TURN_RIGHT: 16,
  TURN_LEFT: 17,
  TURN_LEFT_RIGHT: 18,
  CROSS_LINK: 19,
  SERVICE_AND_SLIP_ROAD: 20,
  SERVICE_AND_JCT: 21,
  SERVICE_AND_SLIP_ROAD_AND_JCT: 22,
  MULTIPLE_CARRIAGE_WAY: 23,
  CHECK_POINT: 24,
  WALK_ROAD: 25,
  PARALLED_ROAD: 26,
  OTHERS: 99,
}

module.exports = RoadNodeFormwayEnum;
