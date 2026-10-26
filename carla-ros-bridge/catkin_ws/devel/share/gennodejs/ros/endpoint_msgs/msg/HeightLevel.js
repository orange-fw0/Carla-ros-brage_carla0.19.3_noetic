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

class HeightLevel {
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
    // Serializes a message object of type HeightLevel
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HeightLevel
    let len;
    let data = new HeightLevel(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/HeightLevel';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7329d4ad5e200b7dd0c6496f8af32cf0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 NONE = 0
    uint8 LEVEL1 = 1
    uint8 LEVEL2 = 2
    uint8 LEVEL3 = 3
    uint8 LEVEL4 = 4
    uint8 LEVEL5 = 5
    uint8 LEVEL6 = 6
    uint8 LEVEL7 = 7
    uint8 LEVEL8 = 8
    uint8 LEVEL9 = 9
    uint8 LEVEL10 = 10
    uint8 RESERVED1 = 11
    uint8 RESERVED2 = 12
    uint8 RESERVED3 = 13
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HeightLevel(null);
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
HeightLevel.Constants = {
  NONE: 0,
  LEVEL1: 1,
  LEVEL2: 2,
  LEVEL3: 3,
  LEVEL4: 4,
  LEVEL5: 5,
  LEVEL6: 6,
  LEVEL7: 7,
  LEVEL8: 8,
  LEVEL9: 9,
  LEVEL10: 10,
  RESERVED1: 11,
  RESERVED2: 12,
  RESERVED3: 13,
}

module.exports = HeightLevel;
