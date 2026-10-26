// Auto-generated. Do not edit!

// (in-package tbt_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class NaviStatusEnum {
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
    // Serializes a message object of type NaviStatusEnum
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NaviStatusEnum
    let len;
    let data = new NaviStatusEnum(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tbt_msgs/NaviStatusEnum';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '73362584a1b2cc63689724f52287d253';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 NavSts_0_invalid = 0
    uint8 NavSts_1_navigation = 1
    uint8 NavSts_2_routing = 2
    uint8 NavSts_3_Cruise = 3
    uint8 NavSts_4_yaw = 4
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NaviStatusEnum(null);
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
NaviStatusEnum.Constants = {
  NAVSTS_0_INVALID: 0,
  NAVSTS_1_NAVIGATION: 1,
  NAVSTS_2_ROUTING: 2,
  NAVSTS_3_CRUISE: 3,
  NAVSTS_4_YAW: 4,
}

module.exports = NaviStatusEnum;
