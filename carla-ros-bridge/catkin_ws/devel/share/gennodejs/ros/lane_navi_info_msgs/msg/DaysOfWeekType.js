// Auto-generated. Do not edit!

// (in-package lane_navi_info_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class DaysOfWeekType {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DaysOfWeekType
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DaysOfWeekType
    let len;
    let data = new DaysOfWeekType(null);
    // Deserialize message field [type]
    data.type = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lane_navi_info_msgs/DaysOfWeekType';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f2cb84d546f7ff966764d161e0c65525';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new DaysOfWeekType(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    return resolved;
    }
};

// Constants for message
DaysOfWeekType.Constants = {
  DAYSOFWEEKTYPE_INVALID: 0,
  DAYSOFWEEKTYPE_SUNDAY: 1,
  DAYSOFWEEKTYPE_MONDAY: 2,
  DAYSOFWEEKTYPE_TUESDAY: 3,
  DAYSOFWEEKTYPE_WEDNESDAY: 4,
  DAYSOFWEEKTYPE_THURSDAY: 5,
  DAYSOFWEEKTYPE_FRIDAY: 6,
  DAYSOFWEEKTYPE_SATURDAY: 7,
}

module.exports = DaysOfWeekType;
