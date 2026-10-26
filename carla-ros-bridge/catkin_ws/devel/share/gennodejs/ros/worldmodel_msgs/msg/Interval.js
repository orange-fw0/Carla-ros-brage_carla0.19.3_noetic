// Auto-generated. Do not edit!

// (in-package worldmodel_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Interval {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.begin = null;
      this.end = null;
    }
    else {
      if (initObj.hasOwnProperty('begin')) {
        this.begin = initObj.begin
      }
      else {
        this.begin = 0.0;
      }
      if (initObj.hasOwnProperty('end')) {
        this.end = initObj.end
      }
      else {
        this.end = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Interval
    // Serialize message field [begin]
    bufferOffset = _serializer.float64(obj.begin, buffer, bufferOffset);
    // Serialize message field [end]
    bufferOffset = _serializer.float64(obj.end, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Interval
    let len;
    let data = new Interval(null);
    // Deserialize message field [begin]
    data.begin = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [end]
    data.end = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'worldmodel_msgs/Interval';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '07d2a860011894bea8072b555e97de50';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 begin
    float64 end
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Interval(null);
    if (msg.begin !== undefined) {
      resolved.begin = msg.begin;
    }
    else {
      resolved.begin = 0.0
    }

    if (msg.end !== undefined) {
      resolved.end = msg.end;
    }
    else {
      resolved.end = 0.0
    }

    return resolved;
    }
};

module.exports = Interval;
