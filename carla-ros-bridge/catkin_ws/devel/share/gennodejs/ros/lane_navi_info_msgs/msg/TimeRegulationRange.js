// Auto-generated. Do not edit!

// (in-package lane_navi_info_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TimeRegulation = require('./TimeRegulation.js');

//-----------------------------------------------------------

class TimeRegulationRange {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.start_time = null;
      this.end_time = null;
      this.is_limited = null;
    }
    else {
      if (initObj.hasOwnProperty('start_time')) {
        this.start_time = initObj.start_time
      }
      else {
        this.start_time = new TimeRegulation();
      }
      if (initObj.hasOwnProperty('end_time')) {
        this.end_time = initObj.end_time
      }
      else {
        this.end_time = new TimeRegulation();
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
    // Serializes a message object of type TimeRegulationRange
    // Serialize message field [start_time]
    bufferOffset = TimeRegulation.serialize(obj.start_time, buffer, bufferOffset);
    // Serialize message field [end_time]
    bufferOffset = TimeRegulation.serialize(obj.end_time, buffer, bufferOffset);
    // Serialize message field [is_limited]
    bufferOffset = _serializer.bool(obj.is_limited, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TimeRegulationRange
    let len;
    let data = new TimeRegulationRange(null);
    // Deserialize message field [start_time]
    data.start_time = TimeRegulation.deserialize(buffer, bufferOffset);
    // Deserialize message field [end_time]
    data.end_time = TimeRegulation.deserialize(buffer, bufferOffset);
    // Deserialize message field [is_limited]
    data.is_limited = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 15;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lane_navi_info_msgs/TimeRegulationRange';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b6e400d4ef59c410d72a4b890fc6fefb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TimeRegulationRange(null);
    if (msg.start_time !== undefined) {
      resolved.start_time = TimeRegulation.Resolve(msg.start_time)
    }
    else {
      resolved.start_time = new TimeRegulation()
    }

    if (msg.end_time !== undefined) {
      resolved.end_time = TimeRegulation.Resolve(msg.end_time)
    }
    else {
      resolved.end_time = new TimeRegulation()
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

module.exports = TimeRegulationRange;
