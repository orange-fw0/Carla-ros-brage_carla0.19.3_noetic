// Auto-generated. Do not edit!

// (in-package lane_navi_info_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TBTGuideInfo = require('./TBTGuideInfo.js');
let TBTLaneInfo = require('./TBTLaneInfo.js');
let TBTTrafficLight = require('./TBTTrafficLight.js');
let TBTLongSolidLine = require('./TBTLongSolidLine.js');

//-----------------------------------------------------------

class TBTInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.guide_info_list = null;
      this.lane_info_list = null;
      this.traffic_light_list = null;
      this.long_solid_line_list = null;
      this.reserved = null;
    }
    else {
      if (initObj.hasOwnProperty('guide_info_list')) {
        this.guide_info_list = initObj.guide_info_list
      }
      else {
        this.guide_info_list = [];
      }
      if (initObj.hasOwnProperty('lane_info_list')) {
        this.lane_info_list = initObj.lane_info_list
      }
      else {
        this.lane_info_list = [];
      }
      if (initObj.hasOwnProperty('traffic_light_list')) {
        this.traffic_light_list = initObj.traffic_light_list
      }
      else {
        this.traffic_light_list = [];
      }
      if (initObj.hasOwnProperty('long_solid_line_list')) {
        this.long_solid_line_list = initObj.long_solid_line_list
      }
      else {
        this.long_solid_line_list = [];
      }
      if (initObj.hasOwnProperty('reserved')) {
        this.reserved = initObj.reserved
      }
      else {
        this.reserved = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TBTInfo
    // Serialize message field [guide_info_list]
    // Serialize the length for message field [guide_info_list]
    bufferOffset = _serializer.uint32(obj.guide_info_list.length, buffer, bufferOffset);
    obj.guide_info_list.forEach((val) => {
      bufferOffset = TBTGuideInfo.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [lane_info_list]
    // Serialize the length for message field [lane_info_list]
    bufferOffset = _serializer.uint32(obj.lane_info_list.length, buffer, bufferOffset);
    obj.lane_info_list.forEach((val) => {
      bufferOffset = TBTLaneInfo.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [traffic_light_list]
    // Serialize the length for message field [traffic_light_list]
    bufferOffset = _serializer.uint32(obj.traffic_light_list.length, buffer, bufferOffset);
    obj.traffic_light_list.forEach((val) => {
      bufferOffset = TBTTrafficLight.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [long_solid_line_list]
    // Serialize the length for message field [long_solid_line_list]
    bufferOffset = _serializer.uint32(obj.long_solid_line_list.length, buffer, bufferOffset);
    obj.long_solid_line_list.forEach((val) => {
      bufferOffset = TBTLongSolidLine.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [reserved]
    bufferOffset = _serializer.string(obj.reserved, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TBTInfo
    let len;
    let data = new TBTInfo(null);
    // Deserialize message field [guide_info_list]
    // Deserialize array length for message field [guide_info_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.guide_info_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.guide_info_list[i] = TBTGuideInfo.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [lane_info_list]
    // Deserialize array length for message field [lane_info_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.lane_info_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.lane_info_list[i] = TBTLaneInfo.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [traffic_light_list]
    // Deserialize array length for message field [traffic_light_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.traffic_light_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.traffic_light_list[i] = TBTTrafficLight.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [long_solid_line_list]
    // Deserialize array length for message field [long_solid_line_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.long_solid_line_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.long_solid_line_list[i] = TBTLongSolidLine.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [reserved]
    data.reserved = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 51 * object.guide_info_list.length;
    object.lane_info_list.forEach((val) => {
      length += TBTLaneInfo.getMessageSize(val);
    });
    length += 47 * object.traffic_light_list.length;
    length += 14 * object.long_solid_line_list.length;
    length += _getByteLength(object.reserved);
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lane_navi_info_msgs/TBTInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b4123d80d2c63bcac356928b06279342';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    lane_navi_info_msgs/TBTGuideInfo[] guide_info_list
    lane_navi_info_msgs/TBTLaneInfo[] lane_info_list
    lane_navi_info_msgs/TBTTrafficLight[] traffic_light_list
    lane_navi_info_msgs/TBTLongSolidLine[] long_solid_line_list
    string reserved
    
    ================================================================================
    MSG: lane_navi_info_msgs/TBTGuideInfo
    uint8 OFFSET_VALID = 1
    uint8 POSITION_VALID = 2
    uint8 MAIN_ACTION_VALID = 4
    uint8 ASSIST_ACTION_VALID = 8
    uint8 available
    lane_navi_info_msgs/Cursor offset
    lane_navi_info_msgs/Point position
    lane_navi_info_msgs/TBTMainAction main_action
    lane_navi_info_msgs/TBTAssistAction assist_action
    
    ================================================================================
    MSG: lane_navi_info_msgs/Cursor
    landmark_msgs/TrackId road_id
    float32 offset
    
    ================================================================================
    MSG: landmark_msgs/TrackId
    bool is_visible
    uint8 count
    uint32 id
    uint32 linked_id
    uint32 map_id
    uint32 area_id
    
    ================================================================================
    MSG: lane_navi_info_msgs/Point
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: lane_navi_info_msgs/TBTMainAction
    uint16 MainActionNULL = 0
    uint16 MainActionTurnLeft = 1
    uint16 MainActionTurnRight = 2
    uint16 MainActionSlightLeft = 3
    uint16 MainActionSlightRight = 4
    uint16 MainActionTurnHardLeft = 5
    uint16 MainActionTurnHardRight = 6
    uint16 MainActionUTurn = 7
    uint16 MainActionContinue = 8
    uint16 MainActionMergeLeft = 9
    uint16 MainActionMergeRight = 10
    uint16 MainActionEntryRing = 11
    uint16 MainActionLeaveRing = 12
    uint16 MainActionSlow = 13
    uint16 MainActionPlugContinue = 14
    uint16 MainActionEnterBuilding = 65
    uint16 MainActionLeaveBuilding = 66
    uint16 MainActionByElevator = 67
    uint16 MainActionByStair = 68
    uint16 MainActionByEscalator = 69
    uint16 MainActionCount = 70
    uint16 value
    
    ================================================================================
    MSG: lane_navi_info_msgs/TBTAssistAction
    uint16 ASSI_ACTION_NULL = 0
    uint16 ASSI_ACTION_ENTRY_MAIN = 1
    uint16 ASSI_ACTION_ENTRY_SIDE_ROAD = 2
    uint16 ASSI_ACTION_ENTRY_FREEWAY = 3
    uint16 ASSI_ACTION_ENTRY_SLIP = 4
    uint16 ASSI_ACTION_ENTRY_TUNNEL = 5
    uint16 ASSI_ACTION_ENTRY_CENTER_BRANCH = 6
    uint16 ASSI_ACTION_ENTRY_RIGHT_BRANCH = 7
    uint16 ASSI_ACTION_ENTRY_LEFT_BRANCH = 8
    uint16 ASSI_ACTION_ENTRY_RIGHT_ROAD = 9
    uint16 ASSI_ACTION_ENTRY_LEFT_ROAD = 10
    uint16 ASSI_ACTION_ENTRY_MERGE_CENTER = 11
    uint16 ASSI_ACTION_ENTRY_MERGE_RIGHT = 12
    uint16 ASSI_ACTION_ENTRY_MERGE_LEFT = 13
    uint16 ASSI_ACTION_ENTRY_MERGE_RIGHT_Sild = 14
    uint16 ASSI_ACTION_ENTRY_MERGE_LEFT_Sild = 15
    uint16 ASSI_ACTION_ENTRY_MERGE_RIGHT_MAIN = 16
    uint16 ASSI_ACTION_ENTRY_MERGE_LEFT_MAIN = 17
    uint16 ASSI_ACTION_ENTRY_MERGE_RIGHT_RIGHT = 18
    uint16 ASSI_ACTION_ENTRY_FERRY = 19
    uint16 ASSI_ACTION_LEFT_FERRY = 20
    uint16 ASSI_ACTION_ALONG_ROAD = 23
    uint16 ASSI_ACTION_ALONG_SILD = 24
    uint16 ASSI_ACTION_ALONG_MAIN = 25
    uint16 ASSI_ACTION_ARRIVE_EXIT = 32
    uint16 ASSI_ACTION_ARRIVE_SERVICE_AREA = 33
    uint16 ASSI_ACTION_ARRIVE_TOLL_GATE = 34
    uint16 ASSI_ACTION_ARRIVE_WAY = 35
    uint16 ASSI_ACTION_ARRIVE_DESTINATION = 36
    uint16 ASSI_ACTION_ARRIVE_CHARGING_STATION = 37
    uint16 ASSI_ACTION_ENTRY_RING_LEFT_ = 48
    uint16 ASSI_ACTION_ENTRY_RING_RIGHT = 49
    uint16 ASSI_ACTION_ENTRY_RING_CONTINUE = 50
    uint16 ASSI_ACTION_ENTRY_RING_UTURN = 51
    uint16 ASSI_ACTION_SMALL_RING_NOT_COUNT = 52
    uint16 ASSI_ACTION_RIGHT_BRANCH_1 = 64
    uint16 ASSI_ACTION_RIGHT_BRANCH_2 = 65
    uint16 ASSI_ACTION_RIGHT_BRANCH_3 = 66
    uint16 ASSI_ACTION_RIGHT_BRANCH_4 = 67
    uint16 ASSI_ACTION_RIGHT_BRANCH_5 = 68
    uint16 ASSI_ACTION_LEFT_BRANCH_1 = 69
    uint16 ASSI_ACTION_LEFT_BRANCH_2 = 70
    uint16 ASSI_ACTION_LEFT_BRANCH_3 = 71
    uint16 ASSI_ACTION_LEFT_BRANCH_4 = 72
    uint16 ASSI_ACTION_LEFT_BRANCH_5 = 73
    uint16 ASSI_ACTION_ENTER_ULINE = 80
    uint16 ASSI_ACTION_PASS_CROSSWalk = 90
    uint16 ASSI_ACTION_PASS_OVERPASS = 91
    uint16 ASSI_ACTION_PASS_UNDERGROUND = 92
    uint16 ASSI_ACTION_PASS_SQUARE = 93
    uint16 ASSI_ACTION_PASS_PARK = 94
    uint16 ASSI_ACTION_PASS_STAIRCASE = 95
    uint16 ASSI_ACTION_PASS_LIFT = 96
    uint16 ASSI_ACTION_PASS_CABLEWAY = 97
    uint16 ASSI_ACTION_PASS_SKY_CHANNEL = 98
    uint16 ASSI_ACTION_PASS_CHANNEL = 99
    uint16 ASSI_ACTION_PASS_WALKROAD = 100
    uint16 ASSI_ACTION_PASS_BOAT_LINE = 101
    uint16 ASSI_ACTION_PASS_SIGHT_SEEING_LINE = 102
    uint16 ASSI_ACTION_PASS_SKIDWAY = 103
    uint16 ASSI_ACTION_PASS_LADDER = 105
    uint16 ASSI_ACTION_PASS_SLOPE = 106
    uint16 ASSI_ACTION_PASS_BRIDGE = 107
    uint16 ASSI_ACTION_PASS_FERRY = 108
    uint16 ASSI_ACTION_PASS_SUBWAY = 109
    uint16 ASSI_ACTION_SOON_ENTER_Building = 112
    uint16 ASSI_ACTION_SOON_LEAVE_Building = 113
    uint16 ASSI_ACTION_ENTER_ROUNDABOUT = 114
    uint16 ASSI_ACTION_LEAVE_ROUNDABOUT = 115
    uint16 ASSI_ACTION_ENTER_PATH = 116
    uint16 ASSI_ACTION_ENTER_INNER = 117
    uint16 ASSI_ACTION_ENTER_LEFT_BRANCH_TWO = 118
    uint16 ASSI_ACTION_ENTER_LEFT_BRANCH_THREE = 119
    uint16 ASSI_ACTION_ENTER_RIGHT_BRANCH_TWO = 120
    uint16 ASSI_ACTION_ENTER_RIGHT_BRANCH_THREE = 121
    uint16 ASSI_ACTION_ENTER_GAS_STATION = 122
    uint16 ASSI_ACTION_ENTER_HOUSING_ESTATE = 123
    uint16 ASSI_ACTION_ENTER_PARK_ROAD = 124
    uint16 ASSI_ACTION_ENTER_OVERHEAD = 125
    uint16 ASSI_ACTION_ENTER_CENTER_BRANCH_OVERHEAD = 126
    uint16 ASSI_ACTION_ENTER_RIGHT_BRANCH_OVERHEAD = 127
    uint16 ASSI_ACTION_ENTER_LEFT_BRANCH_OVERHEAD = 128
    uint16 ASSI_ACTION_ALONG_STRAIGHT = 129
    uint16 ASSI_ACTION_DOWN_OVERHEAD = 130
    uint16 ASSI_ACTION_ENTER_LEFT_OVERHEAD = 131
    uint16 ASSI_ACTION_ENTER_RIGHT_OVERHEAD = 132
    uint16 ASSI_ACTION_UP_TO_BRIDGE = 133
    uint16 ASSI_ACTION_ENTER_PARKING = 134
    uint16 ASSI_ACTION_ENTER_OVERPASS = 135
    uint16 ASSI_ACTION_ENTER_BRIDGE = 136
    uint16 ASSI_ACTION_ENTER_UNDERPASS = 137
    uint16 value
    
    ================================================================================
    MSG: lane_navi_info_msgs/TBTLaneInfo
    uint8 OFFSET_VALID = 1
    uint8 POSITION_VALID = 2
    uint8 LANE_GUIDANCE_LIST_VALID = 4
    uint8 HIGHLIGHT_LANE_GUIDANCE_LIST_VALID = 8
    uint8 HIGHLIGHT_LANE_LIST_VALID = 16
    uint8 RECOMMEND_LANE_LIST_VALID = 32
    uint8 available
    lane_navi_info_msgs/Cursor offset
    lane_navi_info_msgs/Point position
    lane_navi_info_msgs/TBTLaneAction[] lane_guidance_list
    lane_navi_info_msgs/TBTLaneAction[] highlight_lane_guidance_list
    uint8[] highlight_lane_list
    uint8[] recommend_lane_list
    
    ================================================================================
    MSG: lane_navi_info_msgs/TBTLaneAction
    uint8 LANE_ACTION_AHEAD = 0
    uint8 LANE_ACTION_LEFT = 1
    uint8 LANE_ACTION_AHEAD_LEFT = 2
    uint8 LANE_ACTION_RIGHT = 3
    uint8 LANE_ACTION_AHEAD_RIGHT = 4
    uint8 LANE_ACTION_LU_TURN = 5
    uint8 LANE_ACTION_LEFT_RIGHT = 6
    uint8 LANE_ACTION_AHEAD_LEFT_RIGHT = 7
    uint8 LANE_ACTION_RU_TURN = 8
    uint8 LANE_ACTION_AHEAD_LU_TURN = 9
    uint8 LANE_ACTION_AHEAD_RU_TURN = 10
    uint8 LANE_ACTION_LEFT_LU_TURN = 11
    uint8 LANE_ACTION_RIGHT_RU_TURN = 12
    uint8 LANE_ACTION_LEFT_IN_AHEAD = 13
    uint8 LANE_ACTION_LEFT_LU_TURN_EX = 14
    uint8 LANE_ACTION_RESERVED = 15
    uint8 LANE_ACTION_AHEAD_LEFT_LU_TURN = 16
    uint8 LANE_ACTION_RIGHT_LU_TURN = 17
    uint8 LANE_ACTION_LEFT_RIGHT_LU_TURN = 18
    uint8 LANE_ACTION_AHEAD_RIGHT_LU_TURN = 19
    uint8 LANE_ACTION_LEFT_RU_TURN = 20
    uint8 LANE_ACTION_BUS = 21
    uint8 LANE_ACTION_EMPTY = 22
    uint8 LANE_ACTION_VARIABLE = 23
    uint8 LANE_ACTION_DEDICATED = 24
    uint8 LANE_ACTION_TIDAL = 25
    uint8 LANE_ACTION_NULL = 255
    uint8 value
    
    ================================================================================
    MSG: lane_navi_info_msgs/TBTTrafficLight
    uint8 OFFSET_VALID = 1
    uint8 POSITION_VALID = 2
    uint8 available
    lane_navi_info_msgs/Cursor offset
    lane_navi_info_msgs/Point position
    
    ================================================================================
    MSG: lane_navi_info_msgs/TBTLongSolidLine
    uint8 START_OFFSET_VALID = 1
    uint8 END_OFFSET_VALID = 2
    uint8 LENGTH_VALID = 4
    uint8 LANE_INDEX_VALID = 8
    uint8 available
    float32 start_offset
    float32 end_offset
    float32 length
    uint8 lane_index
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TBTInfo(null);
    if (msg.guide_info_list !== undefined) {
      resolved.guide_info_list = new Array(msg.guide_info_list.length);
      for (let i = 0; i < resolved.guide_info_list.length; ++i) {
        resolved.guide_info_list[i] = TBTGuideInfo.Resolve(msg.guide_info_list[i]);
      }
    }
    else {
      resolved.guide_info_list = []
    }

    if (msg.lane_info_list !== undefined) {
      resolved.lane_info_list = new Array(msg.lane_info_list.length);
      for (let i = 0; i < resolved.lane_info_list.length; ++i) {
        resolved.lane_info_list[i] = TBTLaneInfo.Resolve(msg.lane_info_list[i]);
      }
    }
    else {
      resolved.lane_info_list = []
    }

    if (msg.traffic_light_list !== undefined) {
      resolved.traffic_light_list = new Array(msg.traffic_light_list.length);
      for (let i = 0; i < resolved.traffic_light_list.length; ++i) {
        resolved.traffic_light_list[i] = TBTTrafficLight.Resolve(msg.traffic_light_list[i]);
      }
    }
    else {
      resolved.traffic_light_list = []
    }

    if (msg.long_solid_line_list !== undefined) {
      resolved.long_solid_line_list = new Array(msg.long_solid_line_list.length);
      for (let i = 0; i < resolved.long_solid_line_list.length; ++i) {
        resolved.long_solid_line_list[i] = TBTLongSolidLine.Resolve(msg.long_solid_line_list[i]);
      }
    }
    else {
      resolved.long_solid_line_list = []
    }

    if (msg.reserved !== undefined) {
      resolved.reserved = msg.reserved;
    }
    else {
      resolved.reserved = ''
    }

    return resolved;
    }
};

module.exports = TBTInfo;
