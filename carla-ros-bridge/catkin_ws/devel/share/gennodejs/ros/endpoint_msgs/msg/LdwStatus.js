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

class LdwStatus {
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
    // Serializes a message object of type LdwStatus
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LdwStatus
    let len;
    let data = new LdwStatus(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/LdwStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a404c5783e2208805ff42b046d1c73b2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 LDW_STATUS_OFF = 0
    uint8 LDW_STATUS_STANDBY = 1
    uint8 LDW_STATUS_DISABLED = 2
    uint8 LDW_STATUS_OVERIDE = 3
    uint8 LDW_STATUS_ACTIVE = 4
    uint8 LDW_STATUS_RESERVED1 = 5
    uint8 LDW_STATUS_RESERVED2 = 6
    uint8 LDW_STATUS_RESERVED3 = 7
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LdwStatus(null);
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
LdwStatus.Constants = {
  LDW_STATUS_OFF: 0,
  LDW_STATUS_STANDBY: 1,
  LDW_STATUS_DISABLED: 2,
  LDW_STATUS_OVERIDE: 3,
  LDW_STATUS_ACTIVE: 4,
  LDW_STATUS_RESERVED1: 5,
  LDW_STATUS_RESERVED2: 6,
  LDW_STATUS_RESERVED3: 7,
}

module.exports = LdwStatus;
