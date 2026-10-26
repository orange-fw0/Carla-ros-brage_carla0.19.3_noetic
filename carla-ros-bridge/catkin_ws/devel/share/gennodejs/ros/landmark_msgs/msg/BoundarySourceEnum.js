// Auto-generated. Do not edit!

// (in-package landmark_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class BoundarySourceEnum {
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
    // Serializes a message object of type BoundarySourceEnum
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BoundarySourceEnum
    let len;
    let data = new BoundarySourceEnum(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'landmark_msgs/BoundarySourceEnum';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e7eae1cfc86301b9b9d79d2550ce15c3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 OTHER = 0
    uint8 AUTO_MAPPING = 1
    uint8 MANUAL_VALID = 2
    uint8 MANUAL_GUESS = 3
    uint8 INTERNAL = 4
    uint8 EXTERNAL = 5
    uint8 INTERNAL_SHARED = 6
    uint8 NONE = 7
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BoundarySourceEnum(null);
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
BoundarySourceEnum.Constants = {
  OTHER: 0,
  AUTO_MAPPING: 1,
  MANUAL_VALID: 2,
  MANUAL_GUESS: 3,
  INTERNAL: 4,
  EXTERNAL: 5,
  INTERNAL_SHARED: 6,
  NONE: 7,
}

module.exports = BoundarySourceEnum;
