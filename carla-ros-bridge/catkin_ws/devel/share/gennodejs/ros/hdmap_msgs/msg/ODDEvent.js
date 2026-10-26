// Auto-generated. Do not edit!

// (in-package hdmap_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ODDType = require('./ODDType.js');
let ODDPriorityType = require('./ODDPriorityType.js');

//-----------------------------------------------------------

class ODDEvent {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.type = null;
      this.distance = null;
      this.priority = null;
      this.end_distance = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = new ODDType();
      }
      if (initObj.hasOwnProperty('distance')) {
        this.distance = initObj.distance
      }
      else {
        this.distance = 0;
      }
      if (initObj.hasOwnProperty('priority')) {
        this.priority = initObj.priority
      }
      else {
        this.priority = new ODDPriorityType();
      }
      if (initObj.hasOwnProperty('end_distance')) {
        this.end_distance = initObj.end_distance
      }
      else {
        this.end_distance = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ODDEvent
    // Serialize message field [id]
    bufferOffset = _serializer.uint32(obj.id, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = ODDType.serialize(obj.type, buffer, bufferOffset);
    // Serialize message field [distance]
    bufferOffset = _serializer.int32(obj.distance, buffer, bufferOffset);
    // Serialize message field [priority]
    bufferOffset = ODDPriorityType.serialize(obj.priority, buffer, bufferOffset);
    // Serialize message field [end_distance]
    bufferOffset = _serializer.int32(obj.end_distance, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ODDEvent
    let len;
    let data = new ODDEvent(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = ODDType.deserialize(buffer, bufferOffset);
    // Deserialize message field [distance]
    data.distance = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [priority]
    data.priority = ODDPriorityType.deserialize(buffer, bufferOffset);
    // Deserialize message field [end_distance]
    data.end_distance = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 14;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hdmap_msgs/ODDEvent';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '192054015d6200cfaefb9ac7d7641006';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 id
    hdmap_msgs/ODDType type
    int32 distance
    hdmap_msgs/ODDPriorityType priority
    int32 end_distance
    
    ================================================================================
    MSG: hdmap_msgs/ODDType
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
    
    ================================================================================
    MSG: hdmap_msgs/ODDPriorityType
    uint8 UNKNOWN = 0
    uint8 HDMAP_PRIORITY = 1
    uint8 NO_HDMAP_PRIORITY = 2
    uint8 priority
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ODDEvent(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.type !== undefined) {
      resolved.type = ODDType.Resolve(msg.type)
    }
    else {
      resolved.type = new ODDType()
    }

    if (msg.distance !== undefined) {
      resolved.distance = msg.distance;
    }
    else {
      resolved.distance = 0
    }

    if (msg.priority !== undefined) {
      resolved.priority = ODDPriorityType.Resolve(msg.priority)
    }
    else {
      resolved.priority = new ODDPriorityType()
    }

    if (msg.end_distance !== undefined) {
      resolved.end_distance = msg.end_distance;
    }
    else {
      resolved.end_distance = 0
    }

    return resolved;
    }
};

module.exports = ODDEvent;
