// Auto-generated. Do not edit!

// (in-package lane_navi_info_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let DaysOfWeekType = require('./DaysOfWeekType.js');

//-----------------------------------------------------------

class DaysOfWeek {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.days_of_week_type = null;
      this.is_limited = null;
    }
    else {
      if (initObj.hasOwnProperty('days_of_week_type')) {
        this.days_of_week_type = initObj.days_of_week_type
      }
      else {
        this.days_of_week_type = [];
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
    // Serializes a message object of type DaysOfWeek
    // Serialize message field [days_of_week_type]
    // Serialize the length for message field [days_of_week_type]
    bufferOffset = _serializer.uint32(obj.days_of_week_type.length, buffer, bufferOffset);
    obj.days_of_week_type.forEach((val) => {
      bufferOffset = DaysOfWeekType.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [is_limited]
    bufferOffset = _serializer.bool(obj.is_limited, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DaysOfWeek
    let len;
    let data = new DaysOfWeek(null);
    // Deserialize message field [days_of_week_type]
    // Deserialize array length for message field [days_of_week_type]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.days_of_week_type = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.days_of_week_type[i] = DaysOfWeekType.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [is_limited]
    data.is_limited = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.days_of_week_type.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lane_navi_info_msgs/DaysOfWeek';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '32e0fc2f826cfdacfcf20a3a41e35f76';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DaysOfWeek(null);
    if (msg.days_of_week_type !== undefined) {
      resolved.days_of_week_type = new Array(msg.days_of_week_type.length);
      for (let i = 0; i < resolved.days_of_week_type.length; ++i) {
        resolved.days_of_week_type[i] = DaysOfWeekType.Resolve(msg.days_of_week_type[i]);
      }
    }
    else {
      resolved.days_of_week_type = []
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

module.exports = DaysOfWeek;
