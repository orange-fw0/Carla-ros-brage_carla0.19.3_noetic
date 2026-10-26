// Auto-generated. Do not edit!

// (in-package e2e_planning_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class DLPLaneChangeDecision {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.request_type = null;
      this.direction = null;
      this.target_lane_id = null;
      this.score = null;
      this.source = null;
    }
    else {
      if (initObj.hasOwnProperty('request_type')) {
        this.request_type = initObj.request_type
      }
      else {
        this.request_type = 0;
      }
      if (initObj.hasOwnProperty('direction')) {
        this.direction = initObj.direction
      }
      else {
        this.direction = 0;
      }
      if (initObj.hasOwnProperty('target_lane_id')) {
        this.target_lane_id = initObj.target_lane_id
      }
      else {
        this.target_lane_id = 0;
      }
      if (initObj.hasOwnProperty('score')) {
        this.score = initObj.score
      }
      else {
        this.score = 0.0;
      }
      if (initObj.hasOwnProperty('source')) {
        this.source = initObj.source
      }
      else {
        this.source = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DLPLaneChangeDecision
    // Serialize message field [request_type]
    bufferOffset = _serializer.int32(obj.request_type, buffer, bufferOffset);
    // Serialize message field [direction]
    bufferOffset = _serializer.int32(obj.direction, buffer, bufferOffset);
    // Serialize message field [target_lane_id]
    bufferOffset = _serializer.int32(obj.target_lane_id, buffer, bufferOffset);
    // Serialize message field [score]
    bufferOffset = _serializer.float64(obj.score, buffer, bufferOffset);
    // Serialize message field [source]
    bufferOffset = _serializer.string(obj.source, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DLPLaneChangeDecision
    let len;
    let data = new DLPLaneChangeDecision(null);
    // Deserialize message field [request_type]
    data.request_type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [direction]
    data.direction = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [target_lane_id]
    data.target_lane_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [score]
    data.score = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [source]
    data.source = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.source);
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'e2e_planning_msgs/DLPLaneChangeDecision';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '16e2c167d9cc0a8bff7205af1eb74484';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 request_type
    int32 direction
    int32 target_lane_id
    float64 score
    string source
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DLPLaneChangeDecision(null);
    if (msg.request_type !== undefined) {
      resolved.request_type = msg.request_type;
    }
    else {
      resolved.request_type = 0
    }

    if (msg.direction !== undefined) {
      resolved.direction = msg.direction;
    }
    else {
      resolved.direction = 0
    }

    if (msg.target_lane_id !== undefined) {
      resolved.target_lane_id = msg.target_lane_id;
    }
    else {
      resolved.target_lane_id = 0
    }

    if (msg.score !== undefined) {
      resolved.score = msg.score;
    }
    else {
      resolved.score = 0.0
    }

    if (msg.source !== undefined) {
      resolved.source = msg.source;
    }
    else {
      resolved.source = ''
    }

    return resolved;
    }
};

module.exports = DLPLaneChangeDecision;
