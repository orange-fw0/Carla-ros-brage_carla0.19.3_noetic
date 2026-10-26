// Auto-generated. Do not edit!

// (in-package momenta_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class TrafficLightInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.patterns = null;
      this.direction = null;
    }
    else {
      if (initObj.hasOwnProperty('patterns')) {
        this.patterns = initObj.patterns
      }
      else {
        this.patterns = [];
      }
      if (initObj.hasOwnProperty('direction')) {
        this.direction = initObj.direction
      }
      else {
        this.direction = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrafficLightInfo
    // Serialize message field [patterns]
    bufferOffset = _arraySerializer.uint8(obj.patterns, buffer, bufferOffset, null);
    // Serialize message field [direction]
    bufferOffset = _serializer.uint8(obj.direction, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrafficLightInfo
    let len;
    let data = new TrafficLightInfo(null);
    // Deserialize message field [patterns]
    data.patterns = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [direction]
    data.direction = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.patterns.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'momenta_msgs/TrafficLightInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'be2858035f52aa8eedeb478ad0ef7af1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8[] patterns
    uint8 direction
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrafficLightInfo(null);
    if (msg.patterns !== undefined) {
      resolved.patterns = msg.patterns;
    }
    else {
      resolved.patterns = []
    }

    if (msg.direction !== undefined) {
      resolved.direction = msg.direction;
    }
    else {
      resolved.direction = 0
    }

    return resolved;
    }
};

module.exports = TrafficLightInfo;
