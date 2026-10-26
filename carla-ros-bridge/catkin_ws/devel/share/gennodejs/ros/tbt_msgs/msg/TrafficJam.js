// Auto-generated. Do not edit!

// (in-package tbt_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TrafficJamStatusEnum = require('./TrafficJamStatusEnum.js');

//-----------------------------------------------------------

class TrafficJam {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.length = null;
      this.distance_to_jam = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = new TrafficJamStatusEnum();
      }
      if (initObj.hasOwnProperty('length')) {
        this.length = initObj.length
      }
      else {
        this.length = 0;
      }
      if (initObj.hasOwnProperty('distance_to_jam')) {
        this.distance_to_jam = initObj.distance_to_jam
      }
      else {
        this.distance_to_jam = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrafficJam
    // Serialize message field [status]
    bufferOffset = TrafficJamStatusEnum.serialize(obj.status, buffer, bufferOffset);
    // Serialize message field [length]
    bufferOffset = _serializer.uint32(obj.length, buffer, bufferOffset);
    // Serialize message field [distance_to_jam]
    bufferOffset = _serializer.uint32(obj.distance_to_jam, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrafficJam
    let len;
    let data = new TrafficJam(null);
    // Deserialize message field [status]
    data.status = TrafficJamStatusEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [length]
    data.length = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [distance_to_jam]
    data.distance_to_jam = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tbt_msgs/TrafficJam';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5f76f89549e15659ef7306ece9884c75';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    tbt_msgs/TrafficJamStatusEnum status
    uint32 length
    uint32 distance_to_jam
    
    ================================================================================
    MSG: tbt_msgs/TrafficJamStatusEnum
    uint8 Unkwon = 0
    uint8 TrafStsFast = 1
    uint8 TrafStsSlow = 2
    uint8 TrafStsJamed = 3
    uint8 TrafStsJamedBad = 4
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrafficJam(null);
    if (msg.status !== undefined) {
      resolved.status = TrafficJamStatusEnum.Resolve(msg.status)
    }
    else {
      resolved.status = new TrafficJamStatusEnum()
    }

    if (msg.length !== undefined) {
      resolved.length = msg.length;
    }
    else {
      resolved.length = 0
    }

    if (msg.distance_to_jam !== undefined) {
      resolved.distance_to_jam = msg.distance_to_jam;
    }
    else {
      resolved.distance_to_jam = 0
    }

    return resolved;
    }
};

module.exports = TrafficJam;
