// Auto-generated. Do not edit!

// (in-package tbt_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class SpeedLimitCamera {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.speed_limit = null;
      this.distance = null;
    }
    else {
      if (initObj.hasOwnProperty('speed_limit')) {
        this.speed_limit = initObj.speed_limit
      }
      else {
        this.speed_limit = 0;
      }
      if (initObj.hasOwnProperty('distance')) {
        this.distance = initObj.distance
      }
      else {
        this.distance = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SpeedLimitCamera
    // Serialize message field [speed_limit]
    bufferOffset = _serializer.uint8(obj.speed_limit, buffer, bufferOffset);
    // Serialize message field [distance]
    bufferOffset = _serializer.uint32(obj.distance, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SpeedLimitCamera
    let len;
    let data = new SpeedLimitCamera(null);
    // Deserialize message field [speed_limit]
    data.speed_limit = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [distance]
    data.distance = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tbt_msgs/SpeedLimitCamera';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '323991c3d7e20cb10e43803d5123c993';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 speed_limit
    uint32 distance
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SpeedLimitCamera(null);
    if (msg.speed_limit !== undefined) {
      resolved.speed_limit = msg.speed_limit;
    }
    else {
      resolved.speed_limit = 0
    }

    if (msg.distance !== undefined) {
      resolved.distance = msg.distance;
    }
    else {
      resolved.distance = 0
    }

    return resolved;
    }
};

module.exports = SpeedLimitCamera;
