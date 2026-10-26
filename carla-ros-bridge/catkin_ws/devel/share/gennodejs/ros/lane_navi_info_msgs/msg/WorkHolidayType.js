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

class WorkHolidayType {
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
    // Serializes a message object of type WorkHolidayType
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WorkHolidayType
    let len;
    let data = new WorkHolidayType(null);
    // Deserialize message field [type]
    data.type = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lane_navi_info_msgs/WorkHolidayType';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0a8f58778e15201357d7a171a57f38ca';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new WorkHolidayType(null);
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
WorkHolidayType.Constants = {
  WORKHOLIDAYTYPE_NONE: 0,
  WORKHOLIDAYTYPE_VALID: 1,
  WORKHOLIDAYTYPE_INVALID: 2,
  WORKHOLIDAYTYPE_WEEKEND: 3,
}

module.exports = WorkHolidayType;
