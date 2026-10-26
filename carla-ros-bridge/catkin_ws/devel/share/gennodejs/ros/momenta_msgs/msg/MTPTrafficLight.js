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

class MTPTrafficLight {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.rect = null;
      this.score = null;
      this.state_enum = null;
      this.pattern_enum = null;
      this.track_id = null;
    }
    else {
      if (initObj.hasOwnProperty('rect')) {
        this.rect = initObj.rect
      }
      else {
        this.rect = [];
      }
      if (initObj.hasOwnProperty('score')) {
        this.score = initObj.score
      }
      else {
        this.score = 0.0;
      }
      if (initObj.hasOwnProperty('state_enum')) {
        this.state_enum = initObj.state_enum
      }
      else {
        this.state_enum = 0;
      }
      if (initObj.hasOwnProperty('pattern_enum')) {
        this.pattern_enum = initObj.pattern_enum
      }
      else {
        this.pattern_enum = 0;
      }
      if (initObj.hasOwnProperty('track_id')) {
        this.track_id = initObj.track_id
      }
      else {
        this.track_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MTPTrafficLight
    // Serialize message field [rect]
    bufferOffset = _arraySerializer.float32(obj.rect, buffer, bufferOffset, null);
    // Serialize message field [score]
    bufferOffset = _serializer.float32(obj.score, buffer, bufferOffset);
    // Serialize message field [state_enum]
    bufferOffset = _serializer.int32(obj.state_enum, buffer, bufferOffset);
    // Serialize message field [pattern_enum]
    bufferOffset = _serializer.int32(obj.pattern_enum, buffer, bufferOffset);
    // Serialize message field [track_id]
    bufferOffset = _serializer.int32(obj.track_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MTPTrafficLight
    let len;
    let data = new MTPTrafficLight(null);
    // Deserialize message field [rect]
    data.rect = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [score]
    data.score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [state_enum]
    data.state_enum = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [pattern_enum]
    data.pattern_enum = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [track_id]
    data.track_id = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.rect.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'momenta_msgs/MTPTrafficLight';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b7ac1b020fb935505e9c77ab77450d3c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] rect
    float32 score
    int32 state_enum
    int32 pattern_enum
    int32 track_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MTPTrafficLight(null);
    if (msg.rect !== undefined) {
      resolved.rect = msg.rect;
    }
    else {
      resolved.rect = []
    }

    if (msg.score !== undefined) {
      resolved.score = msg.score;
    }
    else {
      resolved.score = 0.0
    }

    if (msg.state_enum !== undefined) {
      resolved.state_enum = msg.state_enum;
    }
    else {
      resolved.state_enum = 0
    }

    if (msg.pattern_enum !== undefined) {
      resolved.pattern_enum = msg.pattern_enum;
    }
    else {
      resolved.pattern_enum = 0
    }

    if (msg.track_id !== undefined) {
      resolved.track_id = msg.track_id;
    }
    else {
      resolved.track_id = 0
    }

    return resolved;
    }
};

module.exports = MTPTrafficLight;
