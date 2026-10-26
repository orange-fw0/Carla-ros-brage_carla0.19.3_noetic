// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class VehicledrivingMode {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mode = null;
      this.sub_mode = null;
    }
    else {
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = 0;
      }
      if (initObj.hasOwnProperty('sub_mode')) {
        this.sub_mode = initObj.sub_mode
      }
      else {
        this.sub_mode = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VehicledrivingMode
    // Serialize message field [mode]
    bufferOffset = _serializer.uint8(obj.mode, buffer, bufferOffset);
    // Serialize message field [sub_mode]
    bufferOffset = _serializer.uint8(obj.sub_mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehicledrivingMode
    let len;
    let data = new VehicledrivingMode(null);
    // Deserialize message field [mode]
    data.mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [sub_mode]
    data.sub_mode = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/VehicledrivingMode';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '95271e4159c01cb2988d9ea2d24929b6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 NONE = 0
    uint8 NORMAL = 1
    uint8 DRIFT_EXP = 2
    uint8 WINTER_SPORT = 3
    uint8 OFFROAD = 4
    uint8 RACE_TRACK = 5
    uint8 ROCK = 6
    uint8 SAND = 7
    uint8 SPORT = 8
    uint8 ECO = 9
    uint8 MUD = 10
    uint8 OPD = 11
    uint8 WADING = 12
    uint8 SNOW = 13
    uint8 ICE = 14
    uint8 GRASS = 15
    uint8 GRIT = 16
    uint8 MOUNTAIN = 17
    uint8 SUPER_WADING = 18
    uint8 ADAPTIVE_FEEDBACK_SYSTEM = 19
    uint8 TURN_IN_PLACE = 20
    uint8 ECO_PLUS = 21
    uint8 RALLY = 22
    uint8 LIMP_MODE = 23
    uint8 SPORT_PLUS = 24
    uint8 CREEP = 25
    uint8 OVERCLOCKING_MODE = 26
    uint8 ANTISKID_CHAIN = 27
    uint8 STRUCK_ASSISTANT = 28
    uint8 TERRAIN_ASSISTANT = 29
    uint8 ITAC = 30
    uint8 Ext_Endurance = 31
    uint8 DEEPSNOW = 32
    uint8 TBS_Detn = 33
    uint8 AUTOMATIC_MODE = 34
    uint8 CUSTOM_MODE = 35
    uint8 RESERVED1 = 36
    uint8 RESERVED2 = 37
    uint8 RESERVED3 = 38
    uint8 mode
    uint8 sub_mode
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VehicledrivingMode(null);
    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = 0
    }

    if (msg.sub_mode !== undefined) {
      resolved.sub_mode = msg.sub_mode;
    }
    else {
      resolved.sub_mode = 0
    }

    return resolved;
    }
};

// Constants for message
VehicledrivingMode.Constants = {
  NONE: 0,
  NORMAL: 1,
  DRIFT_EXP: 2,
  WINTER_SPORT: 3,
  OFFROAD: 4,
  RACE_TRACK: 5,
  ROCK: 6,
  SAND: 7,
  SPORT: 8,
  ECO: 9,
  MUD: 10,
  OPD: 11,
  WADING: 12,
  SNOW: 13,
  ICE: 14,
  GRASS: 15,
  GRIT: 16,
  MOUNTAIN: 17,
  SUPER_WADING: 18,
  ADAPTIVE_FEEDBACK_SYSTEM: 19,
  TURN_IN_PLACE: 20,
  ECO_PLUS: 21,
  RALLY: 22,
  LIMP_MODE: 23,
  SPORT_PLUS: 24,
  CREEP: 25,
  OVERCLOCKING_MODE: 26,
  ANTISKID_CHAIN: 27,
  STRUCK_ASSISTANT: 28,
  TERRAIN_ASSISTANT: 29,
  ITAC: 30,
  EXT_ENDURANCE: 31,
  DEEPSNOW: 32,
  TBS_DETN: 33,
  AUTOMATIC_MODE: 34,
  CUSTOM_MODE: 35,
  RESERVED1: 36,
  RESERVED2: 37,
  RESERVED3: 38,
}

module.exports = VehicledrivingMode;
