// Auto-generated. Do not edit!

// (in-package dms_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class RespiratoryRate {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.resp_rate = null;
      this.reserved = null;
      this.reserved1 = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('resp_rate')) {
        this.resp_rate = initObj.resp_rate
      }
      else {
        this.resp_rate = 0.0;
      }
      if (initObj.hasOwnProperty('reserved')) {
        this.reserved = initObj.reserved
      }
      else {
        this.reserved = 0.0;
      }
      if (initObj.hasOwnProperty('reserved1')) {
        this.reserved1 = initObj.reserved1
      }
      else {
        this.reserved1 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RespiratoryRate
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [resp_rate]
    bufferOffset = _serializer.float32(obj.resp_rate, buffer, bufferOffset);
    // Serialize message field [reserved]
    bufferOffset = _serializer.float32(obj.reserved, buffer, bufferOffset);
    // Serialize message field [reserved1]
    bufferOffset = _serializer.float32(obj.reserved1, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RespiratoryRate
    let len;
    let data = new RespiratoryRate(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [resp_rate]
    data.resp_rate = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [reserved]
    data.reserved = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [reserved1]
    data.reserved1 = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dms_msgs/RespiratoryRate';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5f763b2bcfc7dc1a462e061345560094';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 RESP_RATE_AVAILABLE = 1
    uint8 RESERVED = 2
    uint8 RESERVED1 = 4
    uint8 available
    float32 resp_rate
    float32 reserved
    float32 reserved1
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RespiratoryRate(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.resp_rate !== undefined) {
      resolved.resp_rate = msg.resp_rate;
    }
    else {
      resolved.resp_rate = 0.0
    }

    if (msg.reserved !== undefined) {
      resolved.reserved = msg.reserved;
    }
    else {
      resolved.reserved = 0.0
    }

    if (msg.reserved1 !== undefined) {
      resolved.reserved1 = msg.reserved1;
    }
    else {
      resolved.reserved1 = 0.0
    }

    return resolved;
    }
};

// Constants for message
RespiratoryRate.Constants = {
  RESP_RATE_AVAILABLE: 1,
  RESERVED: 2,
  RESERVED1: 4,
}

module.exports = RespiratoryRate;
