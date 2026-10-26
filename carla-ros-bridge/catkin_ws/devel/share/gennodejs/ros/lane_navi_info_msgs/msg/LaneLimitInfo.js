// Auto-generated. Do not edit!

// (in-package lane_navi_info_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let DayOfYear = require('./DayOfYear.js');
let DaysOfWeek = require('./DaysOfWeek.js');
let TimeRangeOfDay = require('./TimeRangeOfDay.js');
let Holiday = require('./Holiday.js');
let VehicleType = require('./VehicleType.js');

//-----------------------------------------------------------

class LaneLimitInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.day_of_year_list = null;
      this.day_of_week_list = null;
      this.time_range_list = null;
      this.holiday_list = null;
      this.vehicle_type_list = null;
    }
    else {
      if (initObj.hasOwnProperty('day_of_year_list')) {
        this.day_of_year_list = initObj.day_of_year_list
      }
      else {
        this.day_of_year_list = [];
      }
      if (initObj.hasOwnProperty('day_of_week_list')) {
        this.day_of_week_list = initObj.day_of_week_list
      }
      else {
        this.day_of_week_list = [];
      }
      if (initObj.hasOwnProperty('time_range_list')) {
        this.time_range_list = initObj.time_range_list
      }
      else {
        this.time_range_list = [];
      }
      if (initObj.hasOwnProperty('holiday_list')) {
        this.holiday_list = initObj.holiday_list
      }
      else {
        this.holiday_list = [];
      }
      if (initObj.hasOwnProperty('vehicle_type_list')) {
        this.vehicle_type_list = initObj.vehicle_type_list
      }
      else {
        this.vehicle_type_list = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LaneLimitInfo
    // Serialize message field [day_of_year_list]
    // Serialize the length for message field [day_of_year_list]
    bufferOffset = _serializer.uint32(obj.day_of_year_list.length, buffer, bufferOffset);
    obj.day_of_year_list.forEach((val) => {
      bufferOffset = DayOfYear.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [day_of_week_list]
    // Serialize the length for message field [day_of_week_list]
    bufferOffset = _serializer.uint32(obj.day_of_week_list.length, buffer, bufferOffset);
    obj.day_of_week_list.forEach((val) => {
      bufferOffset = DaysOfWeek.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [time_range_list]
    // Serialize the length for message field [time_range_list]
    bufferOffset = _serializer.uint32(obj.time_range_list.length, buffer, bufferOffset);
    obj.time_range_list.forEach((val) => {
      bufferOffset = TimeRangeOfDay.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [holiday_list]
    // Serialize the length for message field [holiday_list]
    bufferOffset = _serializer.uint32(obj.holiday_list.length, buffer, bufferOffset);
    obj.holiday_list.forEach((val) => {
      bufferOffset = Holiday.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [vehicle_type_list]
    // Serialize the length for message field [vehicle_type_list]
    bufferOffset = _serializer.uint32(obj.vehicle_type_list.length, buffer, bufferOffset);
    obj.vehicle_type_list.forEach((val) => {
      bufferOffset = VehicleType.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaneLimitInfo
    let len;
    let data = new LaneLimitInfo(null);
    // Deserialize message field [day_of_year_list]
    // Deserialize array length for message field [day_of_year_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.day_of_year_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.day_of_year_list[i] = DayOfYear.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [day_of_week_list]
    // Deserialize array length for message field [day_of_week_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.day_of_week_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.day_of_week_list[i] = DaysOfWeek.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [time_range_list]
    // Deserialize array length for message field [time_range_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.time_range_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.time_range_list[i] = TimeRangeOfDay.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [holiday_list]
    // Deserialize array length for message field [holiday_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.holiday_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.holiday_list[i] = Holiday.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [vehicle_type_list]
    // Deserialize array length for message field [vehicle_type_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.vehicle_type_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.vehicle_type_list[i] = VehicleType.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.day_of_year_list.length;
    object.day_of_week_list.forEach((val) => {
      length += DaysOfWeek.getMessageSize(val);
    });
    length += 5 * object.time_range_list.length;
    length += 2 * object.holiday_list.length;
    length += object.vehicle_type_list.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lane_navi_info_msgs/LaneLimitInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e16733ddf062bd49558ea03269816e0f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    lane_navi_info_msgs/DayOfYear[] day_of_year_list
    lane_navi_info_msgs/DaysOfWeek[] day_of_week_list
    lane_navi_info_msgs/TimeRangeOfDay[] time_range_list
    lane_navi_info_msgs/Holiday[] holiday_list
    lane_navi_info_msgs/VehicleType[] vehicle_type_list
    
    ================================================================================
    MSG: lane_navi_info_msgs/DayOfYear
    uint16 year
    uint8 month
    uint8 day
    
    ================================================================================
    MSG: lane_navi_info_msgs/DaysOfWeek
    lane_navi_info_msgs/DaysOfWeekType[] days_of_week_type
    bool is_limited
    
    ================================================================================
    MSG: lane_navi_info_msgs/DaysOfWeekType
    uint8 DAYSOFWEEKTYPE_INVALID = 0
    uint8 DAYSOFWEEKTYPE_SUNDAY = 1
    uint8 DAYSOFWEEKTYPE_MONDAY = 2
    uint8 DAYSOFWEEKTYPE_TUESDAY = 3
    uint8 DAYSOFWEEKTYPE_WEDNESDAY = 4
    uint8 DAYSOFWEEKTYPE_THURSDAY = 5
    uint8 DAYSOFWEEKTYPE_FRIDAY = 6
    uint8 DAYSOFWEEKTYPE_SATURDAY = 7
    uint8 type
    
    ================================================================================
    MSG: lane_navi_info_msgs/TimeRangeOfDay
    lane_navi_info_msgs/TimeOfDay start_time
    lane_navi_info_msgs/TimeOfDay end_time
    bool is_limited
    
    ================================================================================
    MSG: lane_navi_info_msgs/TimeOfDay
    uint8 hours
    uint8 minutes
    
    ================================================================================
    MSG: lane_navi_info_msgs/Holiday
    lane_navi_info_msgs/HolidayType holiday_type
    bool is_limited
    
    ================================================================================
    MSG: lane_navi_info_msgs/HolidayType
    uint8 HOLIDAYTYPE_NONE = 0
    uint8 HOLIDAYTYPE_VALID = 1
    uint8 HOLIDAYTYPE_EXCEPT = 2
    uint8 type
    
    ================================================================================
    MSG: lane_navi_info_msgs/VehicleType
    uint8 RESTRICTION_VEHICLE_ALL = 0
    uint8 RESTRICTION_VEHICLE_MOTOR = 1
    uint8 RESTRICTION_VEHICLE_CAR = 2
    uint8 RESTRICTION_VEHICLE_BUS = 3
    uint8 RESTRICTION_VEHICLE_HOV = 4
    uint8 RESTRICTION_VEHICLE_UNKNOWN = 255
    uint8 type
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LaneLimitInfo(null);
    if (msg.day_of_year_list !== undefined) {
      resolved.day_of_year_list = new Array(msg.day_of_year_list.length);
      for (let i = 0; i < resolved.day_of_year_list.length; ++i) {
        resolved.day_of_year_list[i] = DayOfYear.Resolve(msg.day_of_year_list[i]);
      }
    }
    else {
      resolved.day_of_year_list = []
    }

    if (msg.day_of_week_list !== undefined) {
      resolved.day_of_week_list = new Array(msg.day_of_week_list.length);
      for (let i = 0; i < resolved.day_of_week_list.length; ++i) {
        resolved.day_of_week_list[i] = DaysOfWeek.Resolve(msg.day_of_week_list[i]);
      }
    }
    else {
      resolved.day_of_week_list = []
    }

    if (msg.time_range_list !== undefined) {
      resolved.time_range_list = new Array(msg.time_range_list.length);
      for (let i = 0; i < resolved.time_range_list.length; ++i) {
        resolved.time_range_list[i] = TimeRangeOfDay.Resolve(msg.time_range_list[i]);
      }
    }
    else {
      resolved.time_range_list = []
    }

    if (msg.holiday_list !== undefined) {
      resolved.holiday_list = new Array(msg.holiday_list.length);
      for (let i = 0; i < resolved.holiday_list.length; ++i) {
        resolved.holiday_list[i] = Holiday.Resolve(msg.holiday_list[i]);
      }
    }
    else {
      resolved.holiday_list = []
    }

    if (msg.vehicle_type_list !== undefined) {
      resolved.vehicle_type_list = new Array(msg.vehicle_type_list.length);
      for (let i = 0; i < resolved.vehicle_type_list.length; ++i) {
        resolved.vehicle_type_list[i] = VehicleType.Resolve(msg.vehicle_type_list[i]);
      }
    }
    else {
      resolved.vehicle_type_list = []
    }

    return resolved;
    }
};

module.exports = LaneLimitInfo;
