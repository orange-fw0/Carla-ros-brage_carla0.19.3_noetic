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

class DMSRecvCtrlCmdEnumType {
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
    // Serializes a message object of type DMSRecvCtrlCmdEnumType
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DMSRecvCtrlCmdEnumType
    let len;
    let data = new DMSRecvCtrlCmdEnumType(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dms_msgs/DMSRecvCtrlCmdEnumType';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '372d237580a62eb1d13f8c0bdb848dc0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 DMS_DISTRACTION_RESET = 1
    uint8 DMS_DISTRACTION_PAUSE = 2
    uint8 DMS_DISTRACTION_NORMAL_SENSITIVITY = 4
    uint8 DMS_DISTRACTION_LOW_SENSITIVITY = 5
    uint8 DMS_DISTRACTION_HIGH_SENSITIVITY = 6
    uint8 DMS_DISTRACTION_RESERVED = 7
    uint8 DMS_DISTRACTION_RESERVED1 = 8
    uint8 DMS_DROWSY_RESET = 20
    uint8 DMS_DROWSY_PAUSE = 21
    uint8 DMS_DROWSY_NORMAL_SENSITIVITY = 22
    uint8 DMS_DROWSY_LOW_SENSITIVITY = 23
    uint8 DMS_DROWSY_HIGH_SENSITIVITY = 24
    uint8 DMS_DROWSY_RESERVED = 25
    uint8 DMS_DROWSY_RESERVED1 = 26
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DMSRecvCtrlCmdEnumType(null);
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
DMSRecvCtrlCmdEnumType.Constants = {
  DMS_DISTRACTION_RESET: 1,
  DMS_DISTRACTION_PAUSE: 2,
  DMS_DISTRACTION_NORMAL_SENSITIVITY: 4,
  DMS_DISTRACTION_LOW_SENSITIVITY: 5,
  DMS_DISTRACTION_HIGH_SENSITIVITY: 6,
  DMS_DISTRACTION_RESERVED: 7,
  DMS_DISTRACTION_RESERVED1: 8,
  DMS_DROWSY_RESET: 20,
  DMS_DROWSY_PAUSE: 21,
  DMS_DROWSY_NORMAL_SENSITIVITY: 22,
  DMS_DROWSY_LOW_SENSITIVITY: 23,
  DMS_DROWSY_HIGH_SENSITIVITY: 24,
  DMS_DROWSY_RESERVED: 25,
  DMS_DROWSY_RESERVED1: 26,
}

module.exports = DMSRecvCtrlCmdEnumType;
