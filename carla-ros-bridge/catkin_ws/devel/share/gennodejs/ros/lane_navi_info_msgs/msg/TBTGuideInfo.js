// Auto-generated. Do not edit!

// (in-package lane_navi_info_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Cursor = require('./Cursor.js');
let Point = require('./Point.js');
let TBTMainAction = require('./TBTMainAction.js');
let TBTAssistAction = require('./TBTAssistAction.js');

//-----------------------------------------------------------

class TBTGuideInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.offset = null;
      this.position = null;
      this.main_action = null;
      this.assist_action = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('offset')) {
        this.offset = initObj.offset
      }
      else {
        this.offset = new Cursor();
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new Point();
      }
      if (initObj.hasOwnProperty('main_action')) {
        this.main_action = initObj.main_action
      }
      else {
        this.main_action = new TBTMainAction();
      }
      if (initObj.hasOwnProperty('assist_action')) {
        this.assist_action = initObj.assist_action
      }
      else {
        this.assist_action = new TBTAssistAction();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TBTGuideInfo
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [offset]
    bufferOffset = Cursor.serialize(obj.offset, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = Point.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [main_action]
    bufferOffset = TBTMainAction.serialize(obj.main_action, buffer, bufferOffset);
    // Serialize message field [assist_action]
    bufferOffset = TBTAssistAction.serialize(obj.assist_action, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TBTGuideInfo
    let len;
    let data = new TBTGuideInfo(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [offset]
    data.offset = Cursor.deserialize(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [main_action]
    data.main_action = TBTMainAction.deserialize(buffer, bufferOffset);
    // Deserialize message field [assist_action]
    data.assist_action = TBTAssistAction.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 51;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lane_navi_info_msgs/TBTGuideInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '157abfd411b4162fa996c81992036a3e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TBTGuideInfo(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.offset !== undefined) {
      resolved.offset = Cursor.Resolve(msg.offset)
    }
    else {
      resolved.offset = new Cursor()
    }

    if (msg.position !== undefined) {
      resolved.position = Point.Resolve(msg.position)
    }
    else {
      resolved.position = new Point()
    }

    if (msg.main_action !== undefined) {
      resolved.main_action = TBTMainAction.Resolve(msg.main_action)
    }
    else {
      resolved.main_action = new TBTMainAction()
    }

    if (msg.assist_action !== undefined) {
      resolved.assist_action = TBTAssistAction.Resolve(msg.assist_action)
    }
    else {
      resolved.assist_action = new TBTAssistAction()
    }

    return resolved;
    }
};

// Constants for message
TBTGuideInfo.Constants = {
  OFFSET_VALID: 1,
  POSITION_VALID: 2,
  MAIN_ACTION_VALID: 4,
  ASSIST_ACTION_VALID: 8,
}

module.exports = TBTGuideInfo;
