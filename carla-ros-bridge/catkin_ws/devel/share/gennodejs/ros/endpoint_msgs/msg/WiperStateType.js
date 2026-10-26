// Auto-generated. Do not edit!

// (in-package endpoint_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class WiperStateType {
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
    // Serializes a message object of type WiperStateType
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WiperStateType
    let len;
    let data = new WiperStateType(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/WiperStateType';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8bdfb8e383ba5a20bdc9118f3b8516e2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 OFF = 0
    uint8 AUTO_OFF = 1
    uint8 AUTO_MOVING = 2
    uint8 MANUAL_OFF = 3
    uint8 MANUAL_ON = 4
    uint8 MANUAL_LOW = 5
    uint8 MANUAL_HIGH = 6
    uint8 MIST_FLICK = 7
    uint8 WASH = 8
    uint8 AUTO_LOW = 9
    uint8 AUTO_HIGH = 10
    uint8 COURTESY_WIPE = 11
    uint8 AUTO_ADJUST = 12
    uint8 RESERVED = 13
    uint8 STALLED = 14
    uint8 NONE = 15
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WiperStateType(null);
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
WiperStateType.Constants = {
  OFF: 0,
  AUTO_OFF: 1,
  AUTO_MOVING: 2,
  MANUAL_OFF: 3,
  MANUAL_ON: 4,
  MANUAL_LOW: 5,
  MANUAL_HIGH: 6,
  MIST_FLICK: 7,
  WASH: 8,
  AUTO_LOW: 9,
  AUTO_HIGH: 10,
  COURTESY_WIPE: 11,
  AUTO_ADJUST: 12,
  RESERVED: 13,
  STALLED: 14,
  NONE: 15,
}

module.exports = WiperStateType;
