// Auto-generated. Do not edit!

// (in-package landmark_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MapChangeTypeEnum = require('./MapChangeTypeEnum.js');

//-----------------------------------------------------------

class MapChangeDetectionResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.change_type = null;
      this.score = null;
    }
    else {
      if (initObj.hasOwnProperty('change_type')) {
        this.change_type = initObj.change_type
      }
      else {
        this.change_type = new MapChangeTypeEnum();
      }
      if (initObj.hasOwnProperty('score')) {
        this.score = initObj.score
      }
      else {
        this.score = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MapChangeDetectionResult
    // Serialize message field [change_type]
    bufferOffset = MapChangeTypeEnum.serialize(obj.change_type, buffer, bufferOffset);
    // Serialize message field [score]
    bufferOffset = _serializer.float32(obj.score, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MapChangeDetectionResult
    let len;
    let data = new MapChangeDetectionResult(null);
    // Deserialize message field [change_type]
    data.change_type = MapChangeTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [score]
    data.score = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'landmark_msgs/MapChangeDetectionResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '81789e0b25e985bfd68b0eca02929b17';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    landmark_msgs/MapChangeTypeEnum change_type
    float32 score
    
    ================================================================================
    MSG: landmark_msgs/MapChangeTypeEnum
    uint8 MAP_CHANGE_TYPE_UNKNOWN = 0
    uint8 MAP_CHANGE_TYPE_NO_CHANGE = 1
    uint8 MAP_CHANGE_TYPE_LANE_BOUNDARY_TYPE_CHANGE = 2
    uint8 MAP_CHANGE_TYPE_LANDMARK_GEOMETRY_CHANGE = 3
    uint8 MAP_CHANGE_TYPE_OTHER_CHANGES = 4
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MapChangeDetectionResult(null);
    if (msg.change_type !== undefined) {
      resolved.change_type = MapChangeTypeEnum.Resolve(msg.change_type)
    }
    else {
      resolved.change_type = new MapChangeTypeEnum()
    }

    if (msg.score !== undefined) {
      resolved.score = msg.score;
    }
    else {
      resolved.score = 0.0
    }

    return resolved;
    }
};

module.exports = MapChangeDetectionResult;
