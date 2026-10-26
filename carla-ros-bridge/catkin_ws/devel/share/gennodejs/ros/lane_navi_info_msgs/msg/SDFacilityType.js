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

class SDFacilityType {
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
    // Serializes a message object of type SDFacilityType
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SDFacilityType
    let len;
    let data = new SDFacilityType(null);
    // Deserialize message field [type]
    data.type = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lane_navi_info_msgs/SDFacilityType';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ccaffcd6932aad91bf6651283d6e600a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 FACILITY_LEFT_INTER_FLOW = 1
    uint8 FACILITY_RIGHT_INTER_FLOW = 2
    uint8 FACILITY_REVERSE_TURN = 4
    uint8 FACILITY_LINKING_TURN = 5
    uint8 FACILITY_ACCIDENT_AREA = 6
    uint8 FACILITY_RAILWAY_CROSS = 8
    uint8 FACILITY_SLIPPERY = 9
    uint8 FACILITY_MAX_SPEED_LIMIT = 10
    uint8 FACILITY_MIN_SPEED_LIMIT = 11
    uint8 FACILITY_VILLAGE = 12
    uint8 FACILITY_LEFT_NARROW = 13
    uint8 FACILITY_RIGHT_NARROW = 14
    uint8 FACILITY_DOUBLE_NARROW = 15
    uint8 FACILITY_CROSS_WIND_AREA = 16
    uint8 FACILITY_SCHOOL = 17
    uint8 FACILITY_NOPASSING = 18
    uint8 FACILITY_NARROW_BRIDGE = 19
    uint8 FACILITY_AROUND_THE_LINE = 20
    uint8 FACILITY_LEFT_BYPASS = 21
    uint8 FACILITY_RIGHT_BYPASS = 22
    uint8 FACILITY_LEFT_MOUNTAIN_ROAD = 23
    uint8 FACILITY_RIGHT_MOUNTAIN_ROAD = 24
    uint8 FACILITY_ONSTEEPLOPE = 25
    uint8 FACILITY_UNDERSTEEPLOPE = 26
    uint8 FACILITY_OVER_WATER_ROAD = 27
    uint8 FACILITY_UNEVEN_ROAD = 28
    uint8 FACILITY_STROLL = 29
    uint8 FACILITY_ATTENTION_TO_DANGER = 30
    uint8 FACILITY_CROSSWALK = 31
    uint8 FACILITY_RIVER_BANK_LEFT = 33
    uint8 FACILITY_RIVER_BANK_RIGHT = 34
    uint8 FACILITY_CHILDREN = 35
    uint8 FACILITY_CYCLISTS = 36
    uint8 FACILITY_DOMESTIC_ANIMALS_CROSSING = 37
    uint8 FACILITY_GIVE_WAY = 38
    uint8 FACILITY_STOP = 39
    uint8 FACILITY_PRIORITY_FOR_ONCOMING_TRAFFIC = 40
    uint8 FACILITY_PRIORITY_OVER_ONCOMING_TRAFFIC = 41
    uint8 FACILITY_HUMPBACK_BRIDGE = 42
    uint8 FACILITY_END_OF_SPEED_LIMIT = 43
    uint8 FACILITY_END_OF_PROHIBITION_ON_OVERTAKING = 44
    uint8 FACILITY_RAILWAY_CROSS_EXTEND = 50
    uint8 FACILITY_RAILWAY_WITH_GATES = 51
    uint8 FACILITY_RAILWAY_WITHOUT_GATES = 52
    uint8 FACILITY_VARIABLE_SPEED = 53
    uint8 FACILITY_MAX_SPEED_LIMIT_WITH_RULEINFO = 54
    uint8 FACILITY_PEDESTRIANS = 56
    uint8 FACILITY_UNKNOWN = 255
    uint8 type
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SDFacilityType(null);
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
SDFacilityType.Constants = {
  FACILITY_LEFT_INTER_FLOW: 1,
  FACILITY_RIGHT_INTER_FLOW: 2,
  FACILITY_REVERSE_TURN: 4,
  FACILITY_LINKING_TURN: 5,
  FACILITY_ACCIDENT_AREA: 6,
  FACILITY_RAILWAY_CROSS: 8,
  FACILITY_SLIPPERY: 9,
  FACILITY_MAX_SPEED_LIMIT: 10,
  FACILITY_MIN_SPEED_LIMIT: 11,
  FACILITY_VILLAGE: 12,
  FACILITY_LEFT_NARROW: 13,
  FACILITY_RIGHT_NARROW: 14,
  FACILITY_DOUBLE_NARROW: 15,
  FACILITY_CROSS_WIND_AREA: 16,
  FACILITY_SCHOOL: 17,
  FACILITY_NOPASSING: 18,
  FACILITY_NARROW_BRIDGE: 19,
  FACILITY_AROUND_THE_LINE: 20,
  FACILITY_LEFT_BYPASS: 21,
  FACILITY_RIGHT_BYPASS: 22,
  FACILITY_LEFT_MOUNTAIN_ROAD: 23,
  FACILITY_RIGHT_MOUNTAIN_ROAD: 24,
  FACILITY_ONSTEEPLOPE: 25,
  FACILITY_UNDERSTEEPLOPE: 26,
  FACILITY_OVER_WATER_ROAD: 27,
  FACILITY_UNEVEN_ROAD: 28,
  FACILITY_STROLL: 29,
  FACILITY_ATTENTION_TO_DANGER: 30,
  FACILITY_CROSSWALK: 31,
  FACILITY_RIVER_BANK_LEFT: 33,
  FACILITY_RIVER_BANK_RIGHT: 34,
  FACILITY_CHILDREN: 35,
  FACILITY_CYCLISTS: 36,
  FACILITY_DOMESTIC_ANIMALS_CROSSING: 37,
  FACILITY_GIVE_WAY: 38,
  FACILITY_STOP: 39,
  FACILITY_PRIORITY_FOR_ONCOMING_TRAFFIC: 40,
  FACILITY_PRIORITY_OVER_ONCOMING_TRAFFIC: 41,
  FACILITY_HUMPBACK_BRIDGE: 42,
  FACILITY_END_OF_SPEED_LIMIT: 43,
  FACILITY_END_OF_PROHIBITION_ON_OVERTAKING: 44,
  FACILITY_RAILWAY_CROSS_EXTEND: 50,
  FACILITY_RAILWAY_WITH_GATES: 51,
  FACILITY_RAILWAY_WITHOUT_GATES: 52,
  FACILITY_VARIABLE_SPEED: 53,
  FACILITY_MAX_SPEED_LIMIT_WITH_RULEINFO: 54,
  FACILITY_PEDESTRIANS: 56,
  FACILITY_UNKNOWN: 255,
}

module.exports = SDFacilityType;
