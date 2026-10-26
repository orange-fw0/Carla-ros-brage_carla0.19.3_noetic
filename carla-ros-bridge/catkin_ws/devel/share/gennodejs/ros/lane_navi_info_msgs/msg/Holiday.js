// Auto-generated. Do not edit!

// (in-package lane_navi_info_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let HolidayType = require('./HolidayType.js');

//-----------------------------------------------------------

class Holiday {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.holiday_type = null;
      this.is_limited = null;
    }
    else {
      if (initObj.hasOwnProperty('holiday_type')) {
        this.holiday_type = initObj.holiday_type
      }
      else {
        this.holiday_type = new HolidayType();
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
    // Serializes a message object of type Holiday
    // Serialize message field [holiday_type]
    bufferOffset = HolidayType.serialize(obj.holiday_type, buffer, bufferOffset);
    // Serialize message field [is_limited]
    bufferOffset = _serializer.bool(obj.is_limited, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Holiday
    let len;
    let data = new Holiday(null);
    // Deserialize message field [holiday_type]
    data.holiday_type = HolidayType.deserialize(buffer, bufferOffset);
    // Deserialize message field [is_limited]
    data.is_limited = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lane_navi_info_msgs/Holiday';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a0db7f769d6a1baf065796addc5060f4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    lane_navi_info_msgs/HolidayType holiday_type
    bool is_limited
    
    ================================================================================
    MSG: lane_navi_info_msgs/HolidayType
    uint8 HOLIDAYTYPE_NONE = 0
    uint8 HOLIDAYTYPE_VALID = 1
    uint8 HOLIDAYTYPE_EXCEPT = 2
    uint8 type
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Holiday(null);
    if (msg.holiday_type !== undefined) {
      resolved.holiday_type = HolidayType.Resolve(msg.holiday_type)
    }
    else {
      resolved.holiday_type = new HolidayType()
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

module.exports = Holiday;
