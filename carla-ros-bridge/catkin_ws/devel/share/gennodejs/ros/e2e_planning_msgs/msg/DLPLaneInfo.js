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

class DLPLaneInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.request_type = null;
      this.lane_id = null;
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
      if (initObj.hasOwnProperty('lane_id')) {
        this.lane_id = initObj.lane_id
      }
      else {
        this.lane_id = 0;
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
    // Serializes a message object of type DLPLaneInfo
    // Serialize message field [request_type]
    bufferOffset = _serializer.int32(obj.request_type, buffer, bufferOffset);
    // Serialize message field [lane_id]
    bufferOffset = _serializer.int32(obj.lane_id, buffer, bufferOffset);
    // Serialize message field [score]
    bufferOffset = _serializer.float64(obj.score, buffer, bufferOffset);
    // Serialize message field [source]
    bufferOffset = _serializer.string(obj.source, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DLPLaneInfo
    let len;
    let data = new DLPLaneInfo(null);
    // Deserialize message field [request_type]
    data.request_type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [lane_id]
    data.lane_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [score]
    data.score = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [source]
    data.source = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.source);
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'e2e_planning_msgs/DLPLaneInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '51fb2da643b05edfa0ef0fba9d5ed390';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 request_type
    int32 lane_id
    float64 score
    string source
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DLPLaneInfo(null);
    if (msg.request_type !== undefined) {
      resolved.request_type = msg.request_type;
    }
    else {
      resolved.request_type = 0
    }

    if (msg.lane_id !== undefined) {
      resolved.lane_id = msg.lane_id;
    }
    else {
      resolved.lane_id = 0
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

module.exports = DLPLaneInfo;
