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

class AebSysStatus {
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
    // Serializes a message object of type AebSysStatus
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AebSysStatus
    let len;
    let data = new AebSysStatus(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/AebSysStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '95ccefc16af692ba0ffc1cbf1ad938d0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 OFF = 0
    uint8 STANDBY = 1
    uint8 DISABLE = 2
    uint8 OVERRIDE = 3
    uint8 ACTIVED = 4
    uint8 RESERVED1 = 5
    uint8 RESERVED2 = 6
    uint8 RESERVED3 = 7
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AebSysStatus(null);
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
AebSysStatus.Constants = {
  OFF: 0,
  STANDBY: 1,
  DISABLE: 2,
  OVERRIDE: 3,
  ACTIVED: 4,
  RESERVED1: 5,
  RESERVED2: 6,
  RESERVED3: 7,
}

module.exports = AebSysStatus;
