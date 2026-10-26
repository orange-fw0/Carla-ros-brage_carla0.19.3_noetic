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

class AebDclResp {
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
    // Serializes a message object of type AebDclResp
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AebDclResp
    let len;
    let data = new AebDclResp(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/AebDclResp';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5909bfa17c6e985e4990735ff91e68c0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 AEB_DCL_NO_REQUEST = 0
    uint8 AEB_DCL_REQUEST_HONORED = 1
    uint8 AEB_DCL_REQUEST_LOST_ARBITRATION = 2
    uint8 AEB_DCL_REQUEST_CONTROL_NOT_ALLOWED_ERROR = 3
    uint8 AEB_DCL_REQUEST_PRE_CONDITION_NOT_SATISFIED = 4
    uint8 AEB_DCL_REQUEST_RESERVED1 = 5
    uint8 AEB_DCL_REQUEST_RESERVED2 = 6
    uint8 AEB_DCL_REQUEST_RESERVED3 = 7
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AebDclResp(null);
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
AebDclResp.Constants = {
  AEB_DCL_NO_REQUEST: 0,
  AEB_DCL_REQUEST_HONORED: 1,
  AEB_DCL_REQUEST_LOST_ARBITRATION: 2,
  AEB_DCL_REQUEST_CONTROL_NOT_ALLOWED_ERROR: 3,
  AEB_DCL_REQUEST_PRE_CONDITION_NOT_SATISFIED: 4,
  AEB_DCL_REQUEST_RESERVED1: 5,
  AEB_DCL_REQUEST_RESERVED2: 6,
  AEB_DCL_REQUEST_RESERVED3: 7,
}

module.exports = AebDclResp;
