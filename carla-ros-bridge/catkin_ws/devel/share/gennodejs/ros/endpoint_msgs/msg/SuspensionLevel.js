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

class SuspensionLevel {
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
    // Serializes a message object of type SuspensionLevel
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SuspensionLevel
    let len;
    let data = new SuspensionLevel(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/SuspensionLevel';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fba8ad37228388a6d9c5b9febd7b77e7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 SUSPENSION_NONE = 0
    uint8 SUSPENSION_LEVEL1 = 1
    uint8 SUSPENSION_LEVEL2 = 2
    uint8 SUSPENSION_LEVEL3 = 3
    uint8 SUSPENSION_LEVEL4 = 4
    uint8 SUSPENSION_LEVEL5 = 5
    uint8 SUSPENSION_LEVEL6 = 6
    uint8 SUSPENSION_LEVEL7 = 7
    uint8 SUSPENSION_LEVEL8 = 8
    uint8 SUSPENSION_LEVEL9 = 9
    uint8 SUSPENSION_LEVEL10 = 10
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SuspensionLevel(null);
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
SuspensionLevel.Constants = {
  SUSPENSION_NONE: 0,
  SUSPENSION_LEVEL1: 1,
  SUSPENSION_LEVEL2: 2,
  SUSPENSION_LEVEL3: 3,
  SUSPENSION_LEVEL4: 4,
  SUSPENSION_LEVEL5: 5,
  SUSPENSION_LEVEL6: 6,
  SUSPENSION_LEVEL7: 7,
  SUSPENSION_LEVEL8: 8,
  SUSPENSION_LEVEL9: 9,
  SUSPENSION_LEVEL10: 10,
}

module.exports = SuspensionLevel;
