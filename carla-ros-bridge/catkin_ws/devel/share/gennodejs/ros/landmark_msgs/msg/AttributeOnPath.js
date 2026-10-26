// Auto-generated. Do not edit!

// (in-package landmark_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SpecialSituation = require('./SpecialSituation.js');

//-----------------------------------------------------------

class AttributeOnPath {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.start_offset = null;
      this.speed_limit = null;
      this.curvature = null;
      this.slope = null;
      this.special_situation = null;
      this.reserved = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('start_offset')) {
        this.start_offset = initObj.start_offset
      }
      else {
        this.start_offset = 0.0;
      }
      if (initObj.hasOwnProperty('speed_limit')) {
        this.speed_limit = initObj.speed_limit
      }
      else {
        this.speed_limit = 0.0;
      }
      if (initObj.hasOwnProperty('curvature')) {
        this.curvature = initObj.curvature
      }
      else {
        this.curvature = 0.0;
      }
      if (initObj.hasOwnProperty('slope')) {
        this.slope = initObj.slope
      }
      else {
        this.slope = 0.0;
      }
      if (initObj.hasOwnProperty('special_situation')) {
        this.special_situation = initObj.special_situation
      }
      else {
        this.special_situation = new SpecialSituation();
      }
      if (initObj.hasOwnProperty('reserved')) {
        this.reserved = initObj.reserved
      }
      else {
        this.reserved = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AttributeOnPath
    // Serialize message field [available]
    bufferOffset = _serializer.uint32(obj.available, buffer, bufferOffset);
    // Serialize message field [start_offset]
    bufferOffset = _serializer.float32(obj.start_offset, buffer, bufferOffset);
    // Serialize message field [speed_limit]
    bufferOffset = _serializer.float32(obj.speed_limit, buffer, bufferOffset);
    // Serialize message field [curvature]
    bufferOffset = _serializer.float32(obj.curvature, buffer, bufferOffset);
    // Serialize message field [slope]
    bufferOffset = _serializer.float32(obj.slope, buffer, bufferOffset);
    // Serialize message field [special_situation]
    bufferOffset = SpecialSituation.serialize(obj.special_situation, buffer, bufferOffset);
    // Serialize message field [reserved]
    bufferOffset = _serializer.string(obj.reserved, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AttributeOnPath
    let len;
    let data = new AttributeOnPath(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [start_offset]
    data.start_offset = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [speed_limit]
    data.speed_limit = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [curvature]
    data.curvature = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [slope]
    data.slope = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [special_situation]
    data.special_situation = SpecialSituation.deserialize(buffer, bufferOffset);
    // Deserialize message field [reserved]
    data.reserved = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.reserved);
    return length + 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'landmark_msgs/AttributeOnPath';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8a9ec600f93f0276615467b41ea9ba7c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 SPEED_LIMIT_VALID = 1
    uint32 CURVATURE_VALID = 2
    uint32 SLOPE_VALID = 4
    uint32 OFFSET_VALID = 8
    uint32 SPECIAL_SITUATION_VALID = 16
    uint32 available
    float32 start_offset
    float32 speed_limit
    float32 curvature
    float32 slope
    landmark_msgs/SpecialSituation special_situation
    string reserved
    
    ================================================================================
    MSG: landmark_msgs/SpecialSituation
    uint32 UNKNOWN = 0
    uint32 TUNNEL_BEGIN = 1
    uint32 TUNNEL_END = 2
    uint32 BAD_WEATHER_EFFECTED_ZONE_BEGIN = 3
    uint32 BAD_WEATHER_EFFECTED_ZONE_END = 4
    uint32 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AttributeOnPath(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.start_offset !== undefined) {
      resolved.start_offset = msg.start_offset;
    }
    else {
      resolved.start_offset = 0.0
    }

    if (msg.speed_limit !== undefined) {
      resolved.speed_limit = msg.speed_limit;
    }
    else {
      resolved.speed_limit = 0.0
    }

    if (msg.curvature !== undefined) {
      resolved.curvature = msg.curvature;
    }
    else {
      resolved.curvature = 0.0
    }

    if (msg.slope !== undefined) {
      resolved.slope = msg.slope;
    }
    else {
      resolved.slope = 0.0
    }

    if (msg.special_situation !== undefined) {
      resolved.special_situation = SpecialSituation.Resolve(msg.special_situation)
    }
    else {
      resolved.special_situation = new SpecialSituation()
    }

    if (msg.reserved !== undefined) {
      resolved.reserved = msg.reserved;
    }
    else {
      resolved.reserved = ''
    }

    return resolved;
    }
};

// Constants for message
AttributeOnPath.Constants = {
  SPEED_LIMIT_VALID: 1,
  CURVATURE_VALID: 2,
  SLOPE_VALID: 4,
  OFFSET_VALID: 8,
  SPECIAL_SITUATION_VALID: 16,
}

module.exports = AttributeOnPath;
