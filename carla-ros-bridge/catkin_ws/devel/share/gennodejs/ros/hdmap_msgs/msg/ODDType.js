// Auto-generated. Do not edit!

// (in-package hdmap_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ODDType {
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
    // Serializes a message object of type ODDType
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ODDType
    let len;
    let data = new ODDType(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hdmap_msgs/ODDType';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cbbdc0c0074ed03017b14ad8652bcf25';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 ODD_UNKNOWN = 0
    uint8 ODD_ROAD_CONSTRUCTION = 1
    uint8 ODD_TOLL = 2
    uint8 ODD_GATE_MACHINE = 3
    uint8 ODD_MAP_COLLECT = 4
    uint8 ODD_MAP_ERROR = 5
    uint8 ODD_NONE_MAP_ERROR = 6
    uint8 ODD_DYNAMIC_EVENT = 7
    uint8 ODD_SERVICE_AREA = 9
    uint8 ODD_DRIVABLE_TOLL = 20
    uint8 ODD_SHORT = 50
    uint8 ODD_NOT_AVAILABLE = 100
    uint8 ODD_UNMATCH = 101
    uint8 ODD_TOUR_END = 102
    uint8 ESR_ROAD_CLASS = 103
    uint8 ODD_TILE_END = 104
    uint8 ODD_UNP_ROUNDABOUT = 105
    uint8 ODD_UNP_U_TURN = 106
    uint8 ODD_UNP_TIDAL_FLOW_LANE = 107
    uint8 ODD_UNP_REVERSIBLE_LANE = 108
    uint8 ODD_CRITICALLY_OVER_CURVATURE = 109
    uint8 ODD_OVER_CURVATURE = 110
    uint8 ODD_OVER_SLOPE = 111
    uint8 ODD_OVER_LANEWIDTH = 112
    uint8 ODD_INVALID_LINE = 113
    uint8 ODD_TOO_LOW_SPDLIMIT_HIGHWAY = 114
    uint8 ODD_PROHIBITED_LANE = 115
    uint8 ODD_INTERSECTION_HIGHWAY = 116
    uint8 ODD_TRAFFICLIGHT_HIGHWAY = 117
    uint8 ODD_PROHIBITED_FACILITY_HIGHWAY = 118
    uint8 ODD_ROUNDABOUT_HIGHWAY = 119
    uint8 ODD_LOCAL_MAP_EDGE = 120
    uint8 ODD_HNP_MINUS = 121
    uint8 ODD_CHECK_POINT = 130
    uint8 ODD_INNER_ROAD = 131
    uint8 ODD_DYNAMIC_ROADWORK = 132
    uint8 ODD_L3_CROSS_NOLIGHT = 141
    uint8 ODD_L3_NARROW_UTURN = 142
    uint8 ODD_L3_UNREGULAR_ROAD = 143
    uint8 ODD_L3_ETC = 144
    uint8 ODD_L3_DUALWAY = 145
    uint8 ODD_L3_BROKEN_ICJCT = 146
    uint8 ODD_L3_DEAD_ROAD = 147
    uint8 URBAN = 201
    uint8 HIGHWAY = 202
    uint8 HDMAP = 203
    uint8 NO_HDMAP = 204
    uint8 SDNaviNP_AREA = 205
    uint8 SWITCH_NP_TO_PNP_AREA = 210
    uint8 SWITCH_PNP_TO_NP_AREA = 211
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ODDType(null);
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
ODDType.Constants = {
  ODD_UNKNOWN: 0,
  ODD_ROAD_CONSTRUCTION: 1,
  ODD_TOLL: 2,
  ODD_GATE_MACHINE: 3,
  ODD_MAP_COLLECT: 4,
  ODD_MAP_ERROR: 5,
  ODD_NONE_MAP_ERROR: 6,
  ODD_DYNAMIC_EVENT: 7,
  ODD_SERVICE_AREA: 9,
  ODD_DRIVABLE_TOLL: 20,
  ODD_SHORT: 50,
  ODD_NOT_AVAILABLE: 100,
  ODD_UNMATCH: 101,
  ODD_TOUR_END: 102,
  ESR_ROAD_CLASS: 103,
  ODD_TILE_END: 104,
  ODD_UNP_ROUNDABOUT: 105,
  ODD_UNP_U_TURN: 106,
  ODD_UNP_TIDAL_FLOW_LANE: 107,
  ODD_UNP_REVERSIBLE_LANE: 108,
  ODD_CRITICALLY_OVER_CURVATURE: 109,
  ODD_OVER_CURVATURE: 110,
  ODD_OVER_SLOPE: 111,
  ODD_OVER_LANEWIDTH: 112,
  ODD_INVALID_LINE: 113,
  ODD_TOO_LOW_SPDLIMIT_HIGHWAY: 114,
  ODD_PROHIBITED_LANE: 115,
  ODD_INTERSECTION_HIGHWAY: 116,
  ODD_TRAFFICLIGHT_HIGHWAY: 117,
  ODD_PROHIBITED_FACILITY_HIGHWAY: 118,
  ODD_ROUNDABOUT_HIGHWAY: 119,
  ODD_LOCAL_MAP_EDGE: 120,
  ODD_HNP_MINUS: 121,
  ODD_CHECK_POINT: 130,
  ODD_INNER_ROAD: 131,
  ODD_DYNAMIC_ROADWORK: 132,
  ODD_L3_CROSS_NOLIGHT: 141,
  ODD_L3_NARROW_UTURN: 142,
  ODD_L3_UNREGULAR_ROAD: 143,
  ODD_L3_ETC: 144,
  ODD_L3_DUALWAY: 145,
  ODD_L3_BROKEN_ICJCT: 146,
  ODD_L3_DEAD_ROAD: 147,
  URBAN: 201,
  HIGHWAY: 202,
  HDMAP: 203,
  NO_HDMAP: 204,
  SDNAVINP_AREA: 205,
  SWITCH_NP_TO_PNP_AREA: 210,
  SWITCH_PNP_TO_NP_AREA: 211,
}

module.exports = ODDType;
