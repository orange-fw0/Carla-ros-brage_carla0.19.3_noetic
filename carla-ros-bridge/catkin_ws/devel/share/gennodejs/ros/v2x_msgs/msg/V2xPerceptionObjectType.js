// Auto-generated. Do not edit!

// (in-package v2x_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class V2xPerceptionObjectType {
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
    // Serializes a message object of type V2xPerceptionObjectType
    // Serialize message field [value]
    bufferOffset = _serializer.uint32(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type V2xPerceptionObjectType
    let len;
    let data = new V2xPerceptionObjectType(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'v2x_msgs/V2xPerceptionObjectType';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e39096ee7f4de975b80be797cac9f4d7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 UNKNOWN = 0
    uint32 PEDESTRIAN = 1
    uint32 NON_MOTOR = 2
    uint32 MOTOR = 3
    uint32 OTHER = 4
    uint32 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new V2xPerceptionObjectType(null);
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
V2xPerceptionObjectType.Constants = {
  UNKNOWN: 0,
  PEDESTRIAN: 1,
  NON_MOTOR: 2,
  MOTOR: 3,
  OTHER: 4,
}

module.exports = V2xPerceptionObjectType;
