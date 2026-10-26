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

class SuspensionAdjustStatus {
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
    // Serializes a message object of type SuspensionAdjustStatus
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SuspensionAdjustStatus
    let len;
    let data = new SuspensionAdjustStatus(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/SuspensionAdjustStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9c56630c548a81602ee8e4dcdd39fc72';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 NOACTION = 0
    uint8 LOWERING = 1
    uint8 LIFTING = 2
    uint8 PENDING = 3
    uint8 ADJUSTING = 4
    uint8 RESERVED = 5
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SuspensionAdjustStatus(null);
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
SuspensionAdjustStatus.Constants = {
  NOACTION: 0,
  LOWERING: 1,
  LIFTING: 2,
  PENDING: 3,
  ADJUSTING: 4,
  RESERVED: 5,
}

module.exports = SuspensionAdjustStatus;
