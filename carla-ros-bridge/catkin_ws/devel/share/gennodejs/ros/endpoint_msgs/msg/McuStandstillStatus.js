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

class McuStandstillStatus {
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
    // Serializes a message object of type McuStandstillStatus
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type McuStandstillStatus
    let len;
    let data = new McuStandstillStatus(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/McuStandstillStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4858e6049a760bb4bda6347326ce6944';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 NONE = 0
    uint8 NO_STANDSTILL = 1
    uint8 STANDSTILL = 2
    uint8 RESERVED1 = 3
    uint8 RESERVED2 = 4
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new McuStandstillStatus(null);
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
McuStandstillStatus.Constants = {
  NONE: 0,
  NO_STANDSTILL: 1,
  STANDSTILL: 2,
  RESERVED1: 3,
  RESERVED2: 4,
}

module.exports = McuStandstillStatus;
