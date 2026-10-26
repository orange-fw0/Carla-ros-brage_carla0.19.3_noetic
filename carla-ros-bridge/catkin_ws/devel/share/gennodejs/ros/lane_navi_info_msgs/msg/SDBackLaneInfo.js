// Auto-generated. Do not edit!

// (in-package lane_navi_info_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SDLaneDirectType = require('./SDLaneDirectType.js');
let SDLaneArrow = require('./SDLaneArrow.js');

//-----------------------------------------------------------

class SDBackLaneInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.number = null;
      this.lane_type = null;
      this.arrows = null;
    }
    else {
      if (initObj.hasOwnProperty('number')) {
        this.number = initObj.number
      }
      else {
        this.number = 0;
      }
      if (initObj.hasOwnProperty('lane_type')) {
        this.lane_type = initObj.lane_type
      }
      else {
        this.lane_type = new SDLaneDirectType();
      }
      if (initObj.hasOwnProperty('arrows')) {
        this.arrows = initObj.arrows
      }
      else {
        this.arrows = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SDBackLaneInfo
    // Serialize message field [number]
    bufferOffset = _serializer.int32(obj.number, buffer, bufferOffset);
    // Serialize message field [lane_type]
    bufferOffset = SDLaneDirectType.serialize(obj.lane_type, buffer, bufferOffset);
    // Serialize message field [arrows]
    // Serialize the length for message field [arrows]
    bufferOffset = _serializer.uint32(obj.arrows.length, buffer, bufferOffset);
    obj.arrows.forEach((val) => {
      bufferOffset = SDLaneArrow.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SDBackLaneInfo
    let len;
    let data = new SDBackLaneInfo(null);
    // Deserialize message field [number]
    data.number = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [lane_type]
    data.lane_type = SDLaneDirectType.deserialize(buffer, bufferOffset);
    // Deserialize message field [arrows]
    // Deserialize array length for message field [arrows]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.arrows = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.arrows[i] = SDLaneArrow.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.arrows.forEach((val) => {
      length += SDLaneArrow.getMessageSize(val);
    });
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lane_navi_info_msgs/SDBackLaneInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c5f4562fb405e568bda4f4efdd27ca74';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 number
    lane_navi_info_msgs/SDLaneDirectType lane_type
    lane_navi_info_msgs/SDLaneArrow[] arrows
    
    ================================================================================
    MSG: lane_navi_info_msgs/SDLaneDirectType
    uint8 SD_LANE_DIRECT_TYPE_NORMAL = 0
    uint8 SD_LANE_DIRECT_TYPE_BUS = 1
    uint8 SD_LANE_DIRECT_TYPE_OTHER_SPECIAL = 2
    uint8 SD_LANE_DIRECT_TYPE_REVERSIBLE = 3
    uint8 SD_LANE_DIRECT_TYPE_VARIABLE = 4
    uint8 type
    
    ================================================================================
    MSG: lane_navi_info_msgs/SDLaneArrow
    lane_navi_info_msgs/SDArrowType[] arrow_types
    lane_navi_info_msgs/TimeRegulationRange[] time
    lane_navi_info_msgs/HolidayType holiday
    lane_navi_info_msgs/WorkHolidayType work_holiday
    
    ================================================================================
    MSG: lane_navi_info_msgs/SDArrowType
    uint8 SD_ARROW_TYPE_LEFTUTURN = 0
    uint8 SD_ARROW_TYPE_TURNLEFT = 1
    uint8 SD_ARROW_TYPE_STRAIGHT = 2
    uint8 SD_ARROW_TYPE_TURNRIGHT = 3
    uint8 SD_ARROW_TYPE_RIGHTUTURN = 4
    uint8 SD_ARROW_TYPE_LEFT_SIDE_WIDTH_CHANGE = 5
    uint8 SD_ARROW_TYPE_RIGHT_SIDE_WIDTH_CHANGE = 6
    uint8 SD_ARROW_TYPE_SINGLE_LANE_NO_UTURN = 7
    uint8 SD_ARROW_TYPE_LEFT_CURVATURE = 8
    uint8 SD_ARROW_TYPE_RIGHT_CURVATURE = 9
    uint8 SD_ARROW_TYPE_EMPTY_LANE = 10
    uint8 SD_ARROW_TYPE_INVALID = 255
    uint8 type
    
    ================================================================================
    MSG: lane_navi_info_msgs/TimeRegulationRange
    lane_navi_info_msgs/TimeRegulation start_time
    lane_navi_info_msgs/TimeRegulation end_time
    bool is_limited
    
    ================================================================================
    MSG: lane_navi_info_msgs/TimeRegulation
    lane_navi_info_msgs/TimeOfDay day
    uint8 week
    lane_navi_info_msgs/DayOfYear year
    
    ================================================================================
    MSG: lane_navi_info_msgs/TimeOfDay
    uint8 hours
    uint8 minutes
    
    ================================================================================
    MSG: lane_navi_info_msgs/DayOfYear
    uint16 year
    uint8 month
    uint8 day
    
    ================================================================================
    MSG: lane_navi_info_msgs/HolidayType
    uint8 HOLIDAYTYPE_NONE = 0
    uint8 HOLIDAYTYPE_VALID = 1
    uint8 HOLIDAYTYPE_EXCEPT = 2
    uint8 type
    
    ================================================================================
    MSG: lane_navi_info_msgs/WorkHolidayType
    uint8 WORKHOLIDAYTYPE_NONE = 0
    uint8 WORKHOLIDAYTYPE_VALID = 1
    uint8 WORKHOLIDAYTYPE_INVALID = 2
    uint8 WORKHOLIDAYTYPE_WEEKEND = 3
    uint8 type
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SDBackLaneInfo(null);
    if (msg.number !== undefined) {
      resolved.number = msg.number;
    }
    else {
      resolved.number = 0
    }

    if (msg.lane_type !== undefined) {
      resolved.lane_type = SDLaneDirectType.Resolve(msg.lane_type)
    }
    else {
      resolved.lane_type = new SDLaneDirectType()
    }

    if (msg.arrows !== undefined) {
      resolved.arrows = new Array(msg.arrows.length);
      for (let i = 0; i < resolved.arrows.length; ++i) {
        resolved.arrows[i] = SDLaneArrow.Resolve(msg.arrows[i]);
      }
    }
    else {
      resolved.arrows = []
    }

    return resolved;
    }
};

module.exports = SDBackLaneInfo;
