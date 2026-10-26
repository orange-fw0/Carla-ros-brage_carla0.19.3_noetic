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

//-----------------------------------------------------------

class DateRangeOfYear {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.start_day = null;
      this.end_day = null;
      this.is_limited = null;
    }
    else {
      if (initObj.hasOwnProperty('start_day')) {
        this.start_day = initObj.start_day
      }
      else {
        this.start_day = new DayOfYear();
      }
      if (initObj.hasOwnProperty('end_day')) {
        this.end_day = initObj.end_day
      }
      else {
        this.end_day = new DayOfYear();
      }
      if (initObj.hasOwnProperty('is_limited')) {
        this.is_limited = initObj.is_limited
      }
      else {
        this.is_limited = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DateRangeOfYear
    // Serialize message field [start_day]
    bufferOffset = DayOfYear.serialize(obj.start_day, buffer, bufferOffset);
    // Serialize message field [end_day]
    bufferOffset = DayOfYear.serialize(obj.end_day, buffer, bufferOffset);
    // Serialize message field [is_limited]
    bufferOffset = _serializer.bool(obj.is_limited, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DateRangeOfYear
    let len;
    let data = new DateRangeOfYear(null);
    // Deserialize message field [start_day]
    data.start_day = DayOfYear.deserialize(buffer, bufferOffset);
    // Deserialize message field [end_day]
    data.end_day = DayOfYear.deserialize(buffer, bufferOffset);
    // Deserialize message field [is_limited]
    data.is_limited = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lane_navi_info_msgs/DateRangeOfYear';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c9ecd0c343a628f50867ddfecfd00d10';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    lane_navi_info_msgs/DayOfYear start_day
    lane_navi_info_msgs/DayOfYear end_day
    bool is_limited
    
    ================================================================================
    MSG: lane_navi_info_msgs/DayOfYear
    uint16 year
    uint8 month
    uint8 day
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DateRangeOfYear(null);
    if (msg.start_day !== undefined) {
      resolved.start_day = DayOfYear.Resolve(msg.start_day)
    }
    else {
      resolved.start_day = new DayOfYear()
    }

    if (msg.end_day !== undefined) {
      resolved.end_day = DayOfYear.Resolve(msg.end_day)
    }
    else {
      resolved.end_day = new DayOfYear()
    }

    if (msg.is_limited !== undefined) {
      resolved.is_limited = msg.is_limited;
    }
    else {
      resolved.is_limited = false
    }

    return resolved;
    }
};

module.exports = DateRangeOfYear;
