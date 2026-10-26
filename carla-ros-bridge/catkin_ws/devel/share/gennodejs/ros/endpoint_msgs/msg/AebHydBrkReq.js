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

class AebHydBrkReq {
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
    // Serializes a message object of type AebHydBrkReq
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AebHydBrkReq
    let len;
    let data = new AebHydBrkReq(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/AebHydBrkReq';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ab03608fca289fb04b40ea80ad585776';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 AEB_HYD_BRAKE_NO_REQUEST = 0
    uint8 AEB_HYD_BRAKE_LOW_LEVEL = 1
    uint8 AEB_HYD_BRAKE_MID_LEVEL = 2
    uint8 AEB_HYD_BRAKE_HIGH_LEVEL = 3
    uint8 AEB_HYD_BRAKE_RESERVED1 = 4
    uint8 AEB_HYD_BRAKE_RESERVED2 = 5
    uint8 AEB_HYD_BRAKE_RESERVED3 = 6
    uint8 AEB_HYD_BRAKE_RESERVED4 = 7
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AebHydBrkReq(null);
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
AebHydBrkReq.Constants = {
  AEB_HYD_BRAKE_NO_REQUEST: 0,
  AEB_HYD_BRAKE_LOW_LEVEL: 1,
  AEB_HYD_BRAKE_MID_LEVEL: 2,
  AEB_HYD_BRAKE_HIGH_LEVEL: 3,
  AEB_HYD_BRAKE_RESERVED1: 4,
  AEB_HYD_BRAKE_RESERVED2: 5,
  AEB_HYD_BRAKE_RESERVED3: 6,
  AEB_HYD_BRAKE_RESERVED4: 7,
}

module.exports = AebHydBrkReq;
