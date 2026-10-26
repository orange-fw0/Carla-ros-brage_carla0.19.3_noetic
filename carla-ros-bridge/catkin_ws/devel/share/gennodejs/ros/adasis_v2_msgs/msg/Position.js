// Auto-generated. Do not edit!

// (in-package adasis_v2_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Position {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cyclic_counter = null;
      this.path_index = null;
      this.offset = null;
      this.position_index = null;
      this.position_age = null;
      this.position_probability = null;
      this.speed = null;
      this.relative_heading = null;
      this.position_confidence = null;
      this.current_lane = null;
      this.reserved = null;
    }
    else {
      if (initObj.hasOwnProperty('cyclic_counter')) {
        this.cyclic_counter = initObj.cyclic_counter
      }
      else {
        this.cyclic_counter = 0;
      }
      if (initObj.hasOwnProperty('path_index')) {
        this.path_index = initObj.path_index
      }
      else {
        this.path_index = 0;
      }
      if (initObj.hasOwnProperty('offset')) {
        this.offset = initObj.offset
      }
      else {
        this.offset = 0;
      }
      if (initObj.hasOwnProperty('position_index')) {
        this.position_index = initObj.position_index
      }
      else {
        this.position_index = 0;
      }
      if (initObj.hasOwnProperty('position_age')) {
        this.position_age = initObj.position_age
      }
      else {
        this.position_age = 0;
      }
      if (initObj.hasOwnProperty('position_probability')) {
        this.position_probability = initObj.position_probability
      }
      else {
        this.position_probability = 0;
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0;
      }
      if (initObj.hasOwnProperty('relative_heading')) {
        this.relative_heading = initObj.relative_heading
      }
      else {
        this.relative_heading = 0;
      }
      if (initObj.hasOwnProperty('position_confidence')) {
        this.position_confidence = initObj.position_confidence
      }
      else {
        this.position_confidence = 0;
      }
      if (initObj.hasOwnProperty('current_lane')) {
        this.current_lane = initObj.current_lane
      }
      else {
        this.current_lane = 0;
      }
      if (initObj.hasOwnProperty('reserved')) {
        this.reserved = initObj.reserved
      }
      else {
        this.reserved = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Position
    // Serialize message field [cyclic_counter]
    bufferOffset = _serializer.uint8(obj.cyclic_counter, buffer, bufferOffset);
    // Serialize message field [path_index]
    bufferOffset = _serializer.uint8(obj.path_index, buffer, bufferOffset);
    // Serialize message field [offset]
    bufferOffset = _serializer.uint16(obj.offset, buffer, bufferOffset);
    // Serialize message field [position_index]
    bufferOffset = _serializer.uint8(obj.position_index, buffer, bufferOffset);
    // Serialize message field [position_age]
    bufferOffset = _serializer.uint16(obj.position_age, buffer, bufferOffset);
    // Serialize message field [position_probability]
    bufferOffset = _serializer.uint8(obj.position_probability, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.uint16(obj.speed, buffer, bufferOffset);
    // Serialize message field [relative_heading]
    bufferOffset = _serializer.uint8(obj.relative_heading, buffer, bufferOffset);
    // Serialize message field [position_confidence]
    bufferOffset = _serializer.uint8(obj.position_confidence, buffer, bufferOffset);
    // Serialize message field [current_lane]
    bufferOffset = _serializer.uint8(obj.current_lane, buffer, bufferOffset);
    // Serialize message field [reserved]
    bufferOffset = _serializer.uint8(obj.reserved, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Position
    let len;
    let data = new Position(null);
    // Deserialize message field [cyclic_counter]
    data.cyclic_counter = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [path_index]
    data.path_index = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [offset]
    data.offset = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [position_index]
    data.position_index = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [position_age]
    data.position_age = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [position_probability]
    data.position_probability = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [relative_heading]
    data.relative_heading = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [position_confidence]
    data.position_confidence = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [current_lane]
    data.current_lane = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reserved]
    data.reserved = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 14;
  }

  static datatype() {
    // Returns string type for a message object
    return 'adasis_v2_msgs/Position';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '45cbf057ed09aa18faf9a7bac3745eae';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 cyclic_counter
    uint8 path_index
    uint16 offset
    uint8 position_index
    uint16 position_age
    uint8 position_probability
    uint16 speed
    uint8 relative_heading
    uint8 position_confidence
    uint8 current_lane
    uint8 reserved
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Position(null);
    if (msg.cyclic_counter !== undefined) {
      resolved.cyclic_counter = msg.cyclic_counter;
    }
    else {
      resolved.cyclic_counter = 0
    }

    if (msg.path_index !== undefined) {
      resolved.path_index = msg.path_index;
    }
    else {
      resolved.path_index = 0
    }

    if (msg.offset !== undefined) {
      resolved.offset = msg.offset;
    }
    else {
      resolved.offset = 0
    }

    if (msg.position_index !== undefined) {
      resolved.position_index = msg.position_index;
    }
    else {
      resolved.position_index = 0
    }

    if (msg.position_age !== undefined) {
      resolved.position_age = msg.position_age;
    }
    else {
      resolved.position_age = 0
    }

    if (msg.position_probability !== undefined) {
      resolved.position_probability = msg.position_probability;
    }
    else {
      resolved.position_probability = 0
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0
    }

    if (msg.relative_heading !== undefined) {
      resolved.relative_heading = msg.relative_heading;
    }
    else {
      resolved.relative_heading = 0
    }

    if (msg.position_confidence !== undefined) {
      resolved.position_confidence = msg.position_confidence;
    }
    else {
      resolved.position_confidence = 0
    }

    if (msg.current_lane !== undefined) {
      resolved.current_lane = msg.current_lane;
    }
    else {
      resolved.current_lane = 0
    }

    if (msg.reserved !== undefined) {
      resolved.reserved = msg.reserved;
    }
    else {
      resolved.reserved = 0
    }

    return resolved;
    }
};

module.exports = Position;
