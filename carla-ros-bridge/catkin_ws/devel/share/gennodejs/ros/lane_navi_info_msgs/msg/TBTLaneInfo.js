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
let TBTLaneAction = require('./TBTLaneAction.js');

//-----------------------------------------------------------

class TBTLaneInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.offset = null;
      this.position = null;
      this.lane_guidance_list = null;
      this.highlight_lane_guidance_list = null;
      this.highlight_lane_list = null;
      this.recommend_lane_list = null;
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
      if (initObj.hasOwnProperty('lane_guidance_list')) {
        this.lane_guidance_list = initObj.lane_guidance_list
      }
      else {
        this.lane_guidance_list = [];
      }
      if (initObj.hasOwnProperty('highlight_lane_guidance_list')) {
        this.highlight_lane_guidance_list = initObj.highlight_lane_guidance_list
      }
      else {
        this.highlight_lane_guidance_list = [];
      }
      if (initObj.hasOwnProperty('highlight_lane_list')) {
        this.highlight_lane_list = initObj.highlight_lane_list
      }
      else {
        this.highlight_lane_list = [];
      }
      if (initObj.hasOwnProperty('recommend_lane_list')) {
        this.recommend_lane_list = initObj.recommend_lane_list
      }
      else {
        this.recommend_lane_list = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TBTLaneInfo
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [offset]
    bufferOffset = Cursor.serialize(obj.offset, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = Point.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [lane_guidance_list]
    // Serialize the length for message field [lane_guidance_list]
    bufferOffset = _serializer.uint32(obj.lane_guidance_list.length, buffer, bufferOffset);
    obj.lane_guidance_list.forEach((val) => {
      bufferOffset = TBTLaneAction.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [highlight_lane_guidance_list]
    // Serialize the length for message field [highlight_lane_guidance_list]
    bufferOffset = _serializer.uint32(obj.highlight_lane_guidance_list.length, buffer, bufferOffset);
    obj.highlight_lane_guidance_list.forEach((val) => {
      bufferOffset = TBTLaneAction.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [highlight_lane_list]
    bufferOffset = _arraySerializer.uint8(obj.highlight_lane_list, buffer, bufferOffset, null);
    // Serialize message field [recommend_lane_list]
    bufferOffset = _arraySerializer.uint8(obj.recommend_lane_list, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TBTLaneInfo
    let len;
    let data = new TBTLaneInfo(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [offset]
    data.offset = Cursor.deserialize(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [lane_guidance_list]
    // Deserialize array length for message field [lane_guidance_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.lane_guidance_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.lane_guidance_list[i] = TBTLaneAction.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [highlight_lane_guidance_list]
    // Deserialize array length for message field [highlight_lane_guidance_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.highlight_lane_guidance_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.highlight_lane_guidance_list[i] = TBTLaneAction.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [highlight_lane_list]
    data.highlight_lane_list = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [recommend_lane_list]
    data.recommend_lane_list = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.lane_guidance_list.length;
    length += object.highlight_lane_guidance_list.length;
    length += object.highlight_lane_list.length;
    length += object.recommend_lane_list.length;
    return length + 63;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lane_navi_info_msgs/TBTLaneInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '095f9cadac76d260c91721eef6ddc194';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TBTLaneInfo(null);
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

    if (msg.lane_guidance_list !== undefined) {
      resolved.lane_guidance_list = new Array(msg.lane_guidance_list.length);
      for (let i = 0; i < resolved.lane_guidance_list.length; ++i) {
        resolved.lane_guidance_list[i] = TBTLaneAction.Resolve(msg.lane_guidance_list[i]);
      }
    }
    else {
      resolved.lane_guidance_list = []
    }

    if (msg.highlight_lane_guidance_list !== undefined) {
      resolved.highlight_lane_guidance_list = new Array(msg.highlight_lane_guidance_list.length);
      for (let i = 0; i < resolved.highlight_lane_guidance_list.length; ++i) {
        resolved.highlight_lane_guidance_list[i] = TBTLaneAction.Resolve(msg.highlight_lane_guidance_list[i]);
      }
    }
    else {
      resolved.highlight_lane_guidance_list = []
    }

    if (msg.highlight_lane_list !== undefined) {
      resolved.highlight_lane_list = msg.highlight_lane_list;
    }
    else {
      resolved.highlight_lane_list = []
    }

    if (msg.recommend_lane_list !== undefined) {
      resolved.recommend_lane_list = msg.recommend_lane_list;
    }
    else {
      resolved.recommend_lane_list = []
    }

    return resolved;
    }
};

// Constants for message
TBTLaneInfo.Constants = {
  OFFSET_VALID: 1,
  POSITION_VALID: 2,
  LANE_GUIDANCE_LIST_VALID: 4,
  HIGHLIGHT_LANE_GUIDANCE_LIST_VALID: 8,
  HIGHLIGHT_LANE_LIST_VALID: 16,
  RECOMMEND_LANE_LIST_VALID: 32,
}

module.exports = TBTLaneInfo;
