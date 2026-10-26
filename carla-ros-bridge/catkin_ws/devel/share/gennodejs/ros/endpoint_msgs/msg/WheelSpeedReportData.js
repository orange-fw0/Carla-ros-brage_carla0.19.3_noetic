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

class WheelSpeedReportData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timestamp_us = null;
      this.front_left = null;
      this.front_right = null;
      this.rear_left = null;
      this.rear_right = null;
      this.front_left_mps = null;
      this.front_right_mps = null;
      this.rear_left_mps = null;
      this.rear_right_mps = null;
      this.valid = null;
    }
    else {
      if (initObj.hasOwnProperty('timestamp_us')) {
        this.timestamp_us = initObj.timestamp_us
      }
      else {
        this.timestamp_us = 0;
      }
      if (initObj.hasOwnProperty('front_left')) {
        this.front_left = initObj.front_left
      }
      else {
        this.front_left = 0.0;
      }
      if (initObj.hasOwnProperty('front_right')) {
        this.front_right = initObj.front_right
      }
      else {
        this.front_right = 0.0;
      }
      if (initObj.hasOwnProperty('rear_left')) {
        this.rear_left = initObj.rear_left
      }
      else {
        this.rear_left = 0.0;
      }
      if (initObj.hasOwnProperty('rear_right')) {
        this.rear_right = initObj.rear_right
      }
      else {
        this.rear_right = 0.0;
      }
      if (initObj.hasOwnProperty('front_left_mps')) {
        this.front_left_mps = initObj.front_left_mps
      }
      else {
        this.front_left_mps = 0.0;
      }
      if (initObj.hasOwnProperty('front_right_mps')) {
        this.front_right_mps = initObj.front_right_mps
      }
      else {
        this.front_right_mps = 0.0;
      }
      if (initObj.hasOwnProperty('rear_left_mps')) {
        this.rear_left_mps = initObj.rear_left_mps
      }
      else {
        this.rear_left_mps = 0.0;
      }
      if (initObj.hasOwnProperty('rear_right_mps')) {
        this.rear_right_mps = initObj.rear_right_mps
      }
      else {
        this.rear_right_mps = 0.0;
      }
      if (initObj.hasOwnProperty('valid')) {
        this.valid = initObj.valid
      }
      else {
        this.valid = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WheelSpeedReportData
    // Serialize message field [timestamp_us]
    bufferOffset = _serializer.uint64(obj.timestamp_us, buffer, bufferOffset);
    // Serialize message field [front_left]
    bufferOffset = _serializer.float32(obj.front_left, buffer, bufferOffset);
    // Serialize message field [front_right]
    bufferOffset = _serializer.float32(obj.front_right, buffer, bufferOffset);
    // Serialize message field [rear_left]
    bufferOffset = _serializer.float32(obj.rear_left, buffer, bufferOffset);
    // Serialize message field [rear_right]
    bufferOffset = _serializer.float32(obj.rear_right, buffer, bufferOffset);
    // Serialize message field [front_left_mps]
    bufferOffset = _serializer.float32(obj.front_left_mps, buffer, bufferOffset);
    // Serialize message field [front_right_mps]
    bufferOffset = _serializer.float32(obj.front_right_mps, buffer, bufferOffset);
    // Serialize message field [rear_left_mps]
    bufferOffset = _serializer.float32(obj.rear_left_mps, buffer, bufferOffset);
    // Serialize message field [rear_right_mps]
    bufferOffset = _serializer.float32(obj.rear_right_mps, buffer, bufferOffset);
    // Serialize message field [valid]
    bufferOffset = _serializer.bool(obj.valid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WheelSpeedReportData
    let len;
    let data = new WheelSpeedReportData(null);
    // Deserialize message field [timestamp_us]
    data.timestamp_us = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [front_left]
    data.front_left = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [front_right]
    data.front_right = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rear_left]
    data.rear_left = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rear_right]
    data.rear_right = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [front_left_mps]
    data.front_left_mps = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [front_right_mps]
    data.front_right_mps = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rear_left_mps]
    data.rear_left_mps = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rear_right_mps]
    data.rear_right_mps = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [valid]
    data.valid = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 41;
  }

  static datatype() {
    // Returns string type for a message object
    return 'endpoint_msgs/WheelSpeedReportData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fb7b943b96c5a0abd45961e6803b7885';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 timestamp_us
    float32 front_left
    float32 front_right
    float32 rear_left
    float32 rear_right
    float32 front_left_mps
    float32 front_right_mps
    float32 rear_left_mps
    float32 rear_right_mps
    bool valid
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WheelSpeedReportData(null);
    if (msg.timestamp_us !== undefined) {
      resolved.timestamp_us = msg.timestamp_us;
    }
    else {
      resolved.timestamp_us = 0
    }

    if (msg.front_left !== undefined) {
      resolved.front_left = msg.front_left;
    }
    else {
      resolved.front_left = 0.0
    }

    if (msg.front_right !== undefined) {
      resolved.front_right = msg.front_right;
    }
    else {
      resolved.front_right = 0.0
    }

    if (msg.rear_left !== undefined) {
      resolved.rear_left = msg.rear_left;
    }
    else {
      resolved.rear_left = 0.0
    }

    if (msg.rear_right !== undefined) {
      resolved.rear_right = msg.rear_right;
    }
    else {
      resolved.rear_right = 0.0
    }

    if (msg.front_left_mps !== undefined) {
      resolved.front_left_mps = msg.front_left_mps;
    }
    else {
      resolved.front_left_mps = 0.0
    }

    if (msg.front_right_mps !== undefined) {
      resolved.front_right_mps = msg.front_right_mps;
    }
    else {
      resolved.front_right_mps = 0.0
    }

    if (msg.rear_left_mps !== undefined) {
      resolved.rear_left_mps = msg.rear_left_mps;
    }
    else {
      resolved.rear_left_mps = 0.0
    }

    if (msg.rear_right_mps !== undefined) {
      resolved.rear_right_mps = msg.rear_right_mps;
    }
    else {
      resolved.rear_right_mps = 0.0
    }

    if (msg.valid !== undefined) {
      resolved.valid = msg.valid;
    }
    else {
      resolved.valid = false
    }

    return resolved;
    }
};

module.exports = WheelSpeedReportData;
