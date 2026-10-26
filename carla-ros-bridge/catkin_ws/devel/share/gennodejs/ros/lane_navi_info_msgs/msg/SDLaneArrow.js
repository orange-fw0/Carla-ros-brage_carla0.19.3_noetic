// Auto-generated. Do not edit!

// (in-package lane_navi_info_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SDArrowType = require('./SDArrowType.js');
let TimeRegulationRange = require('./TimeRegulationRange.js');
let HolidayType = require('./HolidayType.js');
let WorkHolidayType = require('./WorkHolidayType.js');

//-----------------------------------------------------------

class SDLaneArrow {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.arrow_types = null;
      this.time = null;
      this.holiday = null;
      this.work_holiday = null;
    }
    else {
      if (initObj.hasOwnProperty('arrow_types')) {
        this.arrow_types = initObj.arrow_types
      }
      else {
        this.arrow_types = [];
      }
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = [];
      }
      if (initObj.hasOwnProperty('holiday')) {
        this.holiday = initObj.holiday
      }
      else {
        this.holiday = new HolidayType();
      }
      if (initObj.hasOwnProperty('work_holiday')) {
        this.work_holiday = initObj.work_holiday
      }
      else {
        this.work_holiday = new WorkHolidayType();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SDLaneArrow
    // Serialize message field [arrow_types]
    // Serialize the length for message field [arrow_types]
    bufferOffset = _serializer.uint32(obj.arrow_types.length, buffer, bufferOffset);
    obj.arrow_types.forEach((val) => {
      bufferOffset = SDArrowType.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [time]
    // Serialize the length for message field [time]
    bufferOffset = _serializer.uint32(obj.time.length, buffer, bufferOffset);
    obj.time.forEach((val) => {
      bufferOffset = TimeRegulationRange.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [holiday]
    bufferOffset = HolidayType.serialize(obj.holiday, buffer, bufferOffset);
    // Serialize message field [work_holiday]
    bufferOffset = WorkHolidayType.serialize(obj.work_holiday, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SDLaneArrow
    let len;
    let data = new SDLaneArrow(null);
    // Deserialize message field [arrow_types]
    // Deserialize array length for message field [arrow_types]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.arrow_types = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.arrow_types[i] = SDArrowType.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [time]
    // Deserialize array length for message field [time]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.time = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.time[i] = TimeRegulationRange.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [holiday]
    data.holiday = HolidayType.deserialize(buffer, bufferOffset);
    // Deserialize message field [work_holiday]
    data.work_holiday = WorkHolidayType.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.arrow_types.length;
    length += 15 * object.time.length;
    return length + 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lane_navi_info_msgs/SDLaneArrow';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '542f81a766b74acd179d45e4d4d4a836';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new SDLaneArrow(null);
    if (msg.arrow_types !== undefined) {
      resolved.arrow_types = new Array(msg.arrow_types.length);
      for (let i = 0; i < resolved.arrow_types.length; ++i) {
        resolved.arrow_types[i] = SDArrowType.Resolve(msg.arrow_types[i]);
      }
    }
    else {
      resolved.arrow_types = []
    }

    if (msg.time !== undefined) {
      resolved.time = new Array(msg.time.length);
      for (let i = 0; i < resolved.time.length; ++i) {
        resolved.time[i] = TimeRegulationRange.Resolve(msg.time[i]);
      }
    }
    else {
      resolved.time = []
    }

    if (msg.holiday !== undefined) {
      resolved.holiday = HolidayType.Resolve(msg.holiday)
    }
    else {
      resolved.holiday = new HolidayType()
    }

    if (msg.work_holiday !== undefined) {
      resolved.work_holiday = WorkHolidayType.Resolve(msg.work_holiday)
    }
    else {
      resolved.work_holiday = new WorkHolidayType()
    }

    return resolved;
    }
};

module.exports = SDLaneArrow;
