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

class CameraSurfaceCondition {
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
    // Serializes a message object of type CameraSurfaceCondition
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CameraSurfaceCondition
    let len;
    let data = new CameraSurfaceCondition(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/CameraSurfaceCondition';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'badd689fdf2fef60e5b33f730764d29e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 INVALID = 0
    uint8 NORMAL = 1
    uint8 WATER = 2
    uint8 MOISTURE = 3
    uint8 BLOCKAGE = 4
    uint8 DIZZY = 5
    uint8 DARKNESS = 6
    uint8 DIRTY = 7
    uint8 RESERVED1 = 8
    uint8 RESERVED2 = 9
    uint8 RESERVED3 = 10
    uint8 RESERVED4 = 11
    uint8 RESERVED5 = 12
    uint8 RESERVED6 = 13
    uint8 RESERVED7 = 14
    uint8 RESERVED8 = 15
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CameraSurfaceCondition(null);
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
CameraSurfaceCondition.Constants = {
  INVALID: 0,
  NORMAL: 1,
  WATER: 2,
  MOISTURE: 3,
  BLOCKAGE: 4,
  DIZZY: 5,
  DARKNESS: 6,
  DIRTY: 7,
  RESERVED1: 8,
  RESERVED2: 9,
  RESERVED3: 10,
  RESERVED4: 11,
  RESERVED5: 12,
  RESERVED6: 13,
  RESERVED7: 14,
  RESERVED8: 15,
}

module.exports = CameraSurfaceCondition;
