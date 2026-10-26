// Auto-generated. Do not edit!

// (in-package hdmap_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ODDEvent = require('./ODDEvent.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ODDData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.odd_events = null;
      this.in_odd = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('odd_events')) {
        this.odd_events = initObj.odd_events
      }
      else {
        this.odd_events = [];
      }
      if (initObj.hasOwnProperty('in_odd')) {
        this.in_odd = initObj.in_odd
      }
      else {
        this.in_odd = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ODDData
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [odd_events]
    // Serialize the length for message field [odd_events]
    bufferOffset = _serializer.uint32(obj.odd_events.length, buffer, bufferOffset);
    obj.odd_events.forEach((val) => {
      bufferOffset = ODDEvent.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [in_odd]
    bufferOffset = _serializer.bool(obj.in_odd, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ODDData
    let len;
    let data = new ODDData(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [odd_events]
    // Deserialize array length for message field [odd_events]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.odd_events = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.odd_events[i] = ODDEvent.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [in_odd]
    data.in_odd = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 14 * object.odd_events.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hdmap_msgs/ODDData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5e3595e8ee910b69289d544b410a0085';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    hdmap_msgs/ODDEvent[] odd_events
    bool in_odd
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: hdmap_msgs/ODDEvent
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
    const resolved = new ODDData(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.odd_events !== undefined) {
      resolved.odd_events = new Array(msg.odd_events.length);
      for (let i = 0; i < resolved.odd_events.length; ++i) {
        resolved.odd_events[i] = ODDEvent.Resolve(msg.odd_events[i]);
      }
    }
    else {
      resolved.odd_events = []
    }

    if (msg.in_odd !== undefined) {
      resolved.in_odd = msg.in_odd;
    }
    else {
      resolved.in_odd = false
    }

    return resolved;
    }
};

module.exports = ODDData;
