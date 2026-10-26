// Auto-generated. Do not edit!

// (in-package lane_navi_info_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TimeOfDay = require('./TimeOfDay.js');
let DayOfYear = require('./DayOfYear.js');

//-----------------------------------------------------------

class TimeRegulation {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.day = null;
      this.week = null;
      this.year = null;
    }
    else {
      if (initObj.hasOwnProperty('day')) {
        this.day = initObj.day
      }
      else {
        this.day = new TimeOfDay();
      }
      if (initObj.hasOwnProperty('week')) {
        this.week = initObj.week
      }
      else {
        this.week = 0;
      }
      if (initObj.hasOwnProperty('year')) {
        this.year = initObj.year
      }
      else {
        this.year = new DayOfYear();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TimeRegulation
    // Serialize message field [day]
    bufferOffset = TimeOfDay.serialize(obj.day, buffer, bufferOffset);
    // Serialize message field [week]
    bufferOffset = _serializer.uint8(obj.week, buffer, bufferOffset);
    // Serialize message field [year]
    bufferOffset = DayOfYear.serialize(obj.year, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TimeRegulation
    let len;
    let data = new TimeRegulation(null);
    // Deserialize message field [day]
    data.day = TimeOfDay.deserialize(buffer, bufferOffset);
    // Deserialize message field [week]
    data.week = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [year]
    data.year = DayOfYear.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 7;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lane_navi_info_msgs/TimeRegulation';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0bdaa79b298433721a197fa7c89ea150';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TimeRegulation(null);
    if (msg.day !== undefined) {
      resolved.day = TimeOfDay.Resolve(msg.day)
    }
    else {
      resolved.day = new TimeOfDay()
    }

    if (msg.week !== undefined) {
      resolved.week = msg.week;
    }
    else {
      resolved.week = 0
    }

    if (msg.year !== undefined) {
      resolved.year = DayOfYear.Resolve(msg.year)
    }
    else {
      resolved.year = new DayOfYear()
    }

    return resolved;
    }
};

module.exports = TimeRegulation;
