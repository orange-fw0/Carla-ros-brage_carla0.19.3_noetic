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

class DMSRecvWaringCmdEnumType {
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
    // Serializes a message object of type DMSRecvWaringCmdEnumType
    // Serialize message field [value]
    bufferOffset = _serializer.uint16(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DMSRecvWaringCmdEnumType
    let len;
    let data = new DMSRecvWaringCmdEnumType(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dms_msgs/DMSRecvWaringCmdEnumType';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bac8085387035dfd71a6f096a0b1d8ed';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 DROWSINESS_WARING_OFF = 1
    uint16 DROWSINESS_WARING_ON = 2
    uint16 DISTRACTION_WARING_OFF = 4
    uint16 DISTRACTION_WARING_ON = 8
    uint16 ABNORMAL_BEHAVIOR_WARING_OFF = 16
    uint16 ABNORMAL_BEHAVIOR_WARING_ON = 32
    uint16 HEALTH_WARING_OFF = 64
    uint16 HEALTH_WARING_ON = 128
    uint16 RESERVED = 256
    uint16 RESERVED1 = 512
    uint16 RESERVED2 = 1024
    uint16 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DMSRecvWaringCmdEnumType(null);
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
DMSRecvWaringCmdEnumType.Constants = {
  DROWSINESS_WARING_OFF: 1,
  DROWSINESS_WARING_ON: 2,
  DISTRACTION_WARING_OFF: 4,
  DISTRACTION_WARING_ON: 8,
  ABNORMAL_BEHAVIOR_WARING_OFF: 16,
  ABNORMAL_BEHAVIOR_WARING_ON: 32,
  HEALTH_WARING_OFF: 64,
  HEALTH_WARING_ON: 128,
  RESERVED: 256,
  RESERVED1: 512,
  RESERVED2: 1024,
}

module.exports = DMSRecvWaringCmdEnumType;
