// Auto-generated. Do not edit!

// (in-package dms_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class RegStatusTypeEnum {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.value = null;
    }
    else {
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RegStatusTypeEnum
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RegStatusTypeEnum
    let len;
    let data = new RegStatusTypeEnum(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dms_msgs/RegStatusTypeEnum';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e21e2a8858847299b0070cc55e8774b2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 NO_ACTION = 0
    uint8 REGISTERING = 1
    uint8 REGISTER_SUCCESS = 2
    uint8 REGISTER_FAIL = 3
    uint8 RESERVED = 4
    uint8 RESERVED1 = 5
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RegStatusTypeEnum(null);
    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = 0
    }

    return resolved;
    }
};

// Constants for message
RegStatusTypeEnum.Constants = {
  NO_ACTION: 0,
  REGISTERING: 1,
  REGISTER_SUCCESS: 2,
  REGISTER_FAIL: 3,
  RESERVED: 4,
  RESERVED1: 5,
}

module.exports = RegStatusTypeEnum;
