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

class RwsSysStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.valid = null;
      this.value = null;
    }
    else {
      if (initObj.hasOwnProperty('valid')) {
        this.valid = initObj.valid
      }
      else {
        this.valid = false;
      }
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RwsSysStatus
    // Serialize message field [valid]
    bufferOffset = _serializer.bool(obj.valid, buffer, bufferOffset);
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RwsSysStatus
    let len;
    let data = new RwsSysStatus(null);
    // Deserialize message field [valid]
    data.valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/RwsSysStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '38403c07eda968077bd17861bf649086';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 STANDARD_MODE = 0
    uint8 COMFORTABLE_MODE = 1
    uint8 SPORT_MODE = 2
    uint8 AD_MODE = 3
    uint8 ADLOCK_MODE = 4
    uint8 RESERVED = 5
    bool valid
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RwsSysStatus(null);
    if (msg.valid !== undefined) {
      resolved.valid = msg.valid;
    }
    else {
      resolved.valid = false
    }

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
RwsSysStatus.Constants = {
  STANDARD_MODE: 0,
  COMFORTABLE_MODE: 1,
  SPORT_MODE: 2,
  AD_MODE: 3,
  ADLOCK_MODE: 4,
  RESERVED: 5,
}

module.exports = RwsSysStatus;
