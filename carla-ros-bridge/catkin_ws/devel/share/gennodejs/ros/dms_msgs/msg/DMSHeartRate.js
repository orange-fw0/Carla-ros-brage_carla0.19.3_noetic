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

class DMSHeartRate {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.current_rate = null;
      this.max_heart_rate = null;
      this.min_heart_rate = null;
      this.average_rate = null;
      this.heart_rate_variability = null;
      this.reserved = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('current_rate')) {
        this.current_rate = initObj.current_rate
      }
      else {
        this.current_rate = 0.0;
      }
      if (initObj.hasOwnProperty('max_heart_rate')) {
        this.max_heart_rate = initObj.max_heart_rate
      }
      else {
        this.max_heart_rate = 0.0;
      }
      if (initObj.hasOwnProperty('min_heart_rate')) {
        this.min_heart_rate = initObj.min_heart_rate
      }
      else {
        this.min_heart_rate = 0.0;
      }
      if (initObj.hasOwnProperty('average_rate')) {
        this.average_rate = initObj.average_rate
      }
      else {
        this.average_rate = 0.0;
      }
      if (initObj.hasOwnProperty('heart_rate_variability')) {
        this.heart_rate_variability = initObj.heart_rate_variability
      }
      else {
        this.heart_rate_variability = 0.0;
      }
      if (initObj.hasOwnProperty('reserved')) {
        this.reserved = initObj.reserved
      }
      else {
        this.reserved = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DMSHeartRate
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [current_rate]
    bufferOffset = _serializer.float32(obj.current_rate, buffer, bufferOffset);
    // Serialize message field [max_heart_rate]
    bufferOffset = _serializer.float32(obj.max_heart_rate, buffer, bufferOffset);
    // Serialize message field [min_heart_rate]
    bufferOffset = _serializer.float32(obj.min_heart_rate, buffer, bufferOffset);
    // Serialize message field [average_rate]
    bufferOffset = _serializer.float32(obj.average_rate, buffer, bufferOffset);
    // Serialize message field [heart_rate_variability]
    bufferOffset = _serializer.float32(obj.heart_rate_variability, buffer, bufferOffset);
    // Serialize message field [reserved]
    bufferOffset = _serializer.float32(obj.reserved, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DMSHeartRate
    let len;
    let data = new DMSHeartRate(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [current_rate]
    data.current_rate = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [max_heart_rate]
    data.max_heart_rate = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [min_heart_rate]
    data.min_heart_rate = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [average_rate]
    data.average_rate = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [heart_rate_variability]
    data.heart_rate_variability = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [reserved]
    data.reserved = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 25;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dms_msgs/DMSHeartRate';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a0bc2e4ab6e96348420d7d0157566eff';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 CURRENT_RATE_AVAILABLE = 1
    uint8 MAX_RATE_AVAILABLE = 2
    uint8 MIN_RATE_AVAILABLE = 4
    uint8 AVERAGE_RATE_AVAILABLE = 8
    uint8 HEART_RATE_VARIABILITY_AVAILABLE = 16
    uint8 RESERVED = 32
    uint8 available
    float32 current_rate
    float32 max_heart_rate
    float32 min_heart_rate
    float32 average_rate
    float32 heart_rate_variability
    float32 reserved
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DMSHeartRate(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.current_rate !== undefined) {
      resolved.current_rate = msg.current_rate;
    }
    else {
      resolved.current_rate = 0.0
    }

    if (msg.max_heart_rate !== undefined) {
      resolved.max_heart_rate = msg.max_heart_rate;
    }
    else {
      resolved.max_heart_rate = 0.0
    }

    if (msg.min_heart_rate !== undefined) {
      resolved.min_heart_rate = msg.min_heart_rate;
    }
    else {
      resolved.min_heart_rate = 0.0
    }

    if (msg.average_rate !== undefined) {
      resolved.average_rate = msg.average_rate;
    }
    else {
      resolved.average_rate = 0.0
    }

    if (msg.heart_rate_variability !== undefined) {
      resolved.heart_rate_variability = msg.heart_rate_variability;
    }
    else {
      resolved.heart_rate_variability = 0.0
    }

    if (msg.reserved !== undefined) {
      resolved.reserved = msg.reserved;
    }
    else {
      resolved.reserved = 0.0
    }

    return resolved;
    }
};

// Constants for message
DMSHeartRate.Constants = {
  CURRENT_RATE_AVAILABLE: 1,
  MAX_RATE_AVAILABLE: 2,
  MIN_RATE_AVAILABLE: 4,
  AVERAGE_RATE_AVAILABLE: 8,
  HEART_RATE_VARIABILITY_AVAILABLE: 16,
  RESERVED: 32,
}

module.exports = DMSHeartRate;
