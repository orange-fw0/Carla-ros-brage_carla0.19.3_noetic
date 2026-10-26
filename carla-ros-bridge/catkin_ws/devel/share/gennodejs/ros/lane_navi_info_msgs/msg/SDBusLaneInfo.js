// Auto-generated. Do not edit!

// (in-package lane_navi_info_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TimeRegulationRange = require('./TimeRegulationRange.js');
let HolidayType = require('./HolidayType.js');
let WorkHolidayType = require('./WorkHolidayType.js');

//-----------------------------------------------------------

class SDBusLaneInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.offset = null;
      this.on_lanes = null;
      this.time_limit_list = null;
      this.holiday = null;
      this.work_holiday = null;
    }
    else {
      if (initObj.hasOwnProperty('offset')) {
        this.offset = initObj.offset
      }
      else {
        this.offset = 0;
      }
      if (initObj.hasOwnProperty('on_lanes')) {
        this.on_lanes = initObj.on_lanes
      }
      else {
        this.on_lanes = [];
      }
      if (initObj.hasOwnProperty('time_limit_list')) {
        this.time_limit_list = initObj.time_limit_list
      }
      else {
        this.time_limit_list = [];
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
    // Serializes a message object of type SDBusLaneInfo
    // Serialize message field [offset]
    bufferOffset = _serializer.uint32(obj.offset, buffer, bufferOffset);
    // Serialize message field [on_lanes]
    bufferOffset = _arraySerializer.uint8(obj.on_lanes, buffer, bufferOffset, null);
    // Serialize message field [time_limit_list]
    // Serialize the length for message field [time_limit_list]
    bufferOffset = _serializer.uint32(obj.time_limit_list.length, buffer, bufferOffset);
    obj.time_limit_list.forEach((val) => {
      bufferOffset = TimeRegulationRange.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [holiday]
    bufferOffset = HolidayType.serialize(obj.holiday, buffer, bufferOffset);
    // Serialize message field [work_holiday]
    bufferOffset = WorkHolidayType.serialize(obj.work_holiday, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SDBusLaneInfo
    let len;
    let data = new SDBusLaneInfo(null);
    // Deserialize message field [offset]
    data.offset = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [on_lanes]
    data.on_lanes = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [time_limit_list]
    // Deserialize array length for message field [time_limit_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.time_limit_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.time_limit_list[i] = TimeRegulationRange.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [holiday]
    data.holiday = HolidayType.deserialize(buffer, bufferOffset);
    // Deserialize message field [work_holiday]
    data.work_holiday = WorkHolidayType.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.on_lanes.length;
    length += 15 * object.time_limit_list.length;
    return length + 14;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lane_navi_info_msgs/SDBusLaneInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bd9e2451eb9157f4f818b640c56ed458';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 offset
    uint8[] on_lanes
    lane_navi_info_msgs/TimeRegulationRange[] time_limit_list
    lane_navi_info_msgs/HolidayType holiday
    lane_navi_info_msgs/WorkHolidayType work_holiday
    
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
    const resolved = new SDBusLaneInfo(null);
    if (msg.offset !== undefined) {
      resolved.offset = msg.offset;
    }
    else {
      resolved.offset = 0
    }

    if (msg.on_lanes !== undefined) {
      resolved.on_lanes = msg.on_lanes;
    }
    else {
      resolved.on_lanes = []
    }

    if (msg.time_limit_list !== undefined) {
      resolved.time_limit_list = new Array(msg.time_limit_list.length);
      for (let i = 0; i < resolved.time_limit_list.length; ++i) {
        resolved.time_limit_list[i] = TimeRegulationRange.Resolve(msg.time_limit_list[i]);
      }
    }
    else {
      resolved.time_limit_list = []
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

module.exports = SDBusLaneInfo;
