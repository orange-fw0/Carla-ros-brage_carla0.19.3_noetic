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

class IntervalCamera {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.speed_limit = null;
      this.distance = null;
      this.start_lat = null;
      this.start_long = null;
      this.end_lat = null;
      this.end_long = null;
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
      if (initObj.hasOwnProperty('start_lat')) {
        this.start_lat = initObj.start_lat
      }
      else {
        this.start_lat = 0.0;
      }
      if (initObj.hasOwnProperty('start_long')) {
        this.start_long = initObj.start_long
      }
      else {
        this.start_long = 0.0;
      }
      if (initObj.hasOwnProperty('end_lat')) {
        this.end_lat = initObj.end_lat
      }
      else {
        this.end_lat = 0.0;
      }
      if (initObj.hasOwnProperty('end_long')) {
        this.end_long = initObj.end_long
      }
      else {
        this.end_long = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type IntervalCamera
    // Serialize message field [speed_limit]
    bufferOffset = _serializer.uint8(obj.speed_limit, buffer, bufferOffset);
    // Serialize message field [distance]
    bufferOffset = _serializer.uint16(obj.distance, buffer, bufferOffset);
    // Serialize message field [start_lat]
    bufferOffset = _serializer.float64(obj.start_lat, buffer, bufferOffset);
    // Serialize message field [start_long]
    bufferOffset = _serializer.float64(obj.start_long, buffer, bufferOffset);
    // Serialize message field [end_lat]
    bufferOffset = _serializer.float64(obj.end_lat, buffer, bufferOffset);
    // Serialize message field [end_long]
    bufferOffset = _serializer.float64(obj.end_long, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IntervalCamera
    let len;
    let data = new IntervalCamera(null);
    // Deserialize message field [speed_limit]
    data.speed_limit = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [distance]
    data.distance = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [start_lat]
    data.start_lat = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [start_long]
    data.start_long = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [end_lat]
    data.end_lat = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [end_long]
    data.end_long = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 35;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tbt_msgs/IntervalCamera';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '66b6eeb10de2e2817875b67f8250c648';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 speed_limit
    uint16 distance
    float64 start_lat
    float64 start_long
    float64 end_lat
    float64 end_long
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new IntervalCamera(null);
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

    if (msg.start_lat !== undefined) {
      resolved.start_lat = msg.start_lat;
    }
    else {
      resolved.start_lat = 0.0
    }

    if (msg.start_long !== undefined) {
      resolved.start_long = msg.start_long;
    }
    else {
      resolved.start_long = 0.0
    }

    if (msg.end_lat !== undefined) {
      resolved.end_lat = msg.end_lat;
    }
    else {
      resolved.end_lat = 0.0
    }

    if (msg.end_long !== undefined) {
      resolved.end_long = msg.end_long;
    }
    else {
      resolved.end_long = 0.0
    }

    return resolved;
    }
};

module.exports = IntervalCamera;
