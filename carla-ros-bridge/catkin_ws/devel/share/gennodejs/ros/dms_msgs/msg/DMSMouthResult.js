// Auto-generated. Do not edit!

// (in-package dms_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class DMSMouthResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.mouth_open_distance = null;
      this.mouth_open_width = null;
      this.mouth_open_distance_score = null;
      this.mouth_open_ratio = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('mouth_open_distance')) {
        this.mouth_open_distance = initObj.mouth_open_distance
      }
      else {
        this.mouth_open_distance = 0.0;
      }
      if (initObj.hasOwnProperty('mouth_open_width')) {
        this.mouth_open_width = initObj.mouth_open_width
      }
      else {
        this.mouth_open_width = 0.0;
      }
      if (initObj.hasOwnProperty('mouth_open_distance_score')) {
        this.mouth_open_distance_score = initObj.mouth_open_distance_score
      }
      else {
        this.mouth_open_distance_score = 0.0;
      }
      if (initObj.hasOwnProperty('mouth_open_ratio')) {
        this.mouth_open_ratio = initObj.mouth_open_ratio
      }
      else {
        this.mouth_open_ratio = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DMSMouthResult
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [mouth_open_distance]
    bufferOffset = _serializer.float32(obj.mouth_open_distance, buffer, bufferOffset);
    // Serialize message field [mouth_open_width]
    bufferOffset = _serializer.float32(obj.mouth_open_width, buffer, bufferOffset);
    // Serialize message field [mouth_open_distance_score]
    bufferOffset = _serializer.float32(obj.mouth_open_distance_score, buffer, bufferOffset);
    // Serialize message field [mouth_open_ratio]
    bufferOffset = _serializer.float32(obj.mouth_open_ratio, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DMSMouthResult
    let len;
    let data = new DMSMouthResult(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [mouth_open_distance]
    data.mouth_open_distance = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [mouth_open_width]
    data.mouth_open_width = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [mouth_open_distance_score]
    data.mouth_open_distance_score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [mouth_open_ratio]
    data.mouth_open_ratio = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dms_msgs/DMSMouthResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '63059ad2cc2ec6901ea413cf28182c75';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 UN_AVAILABLE = 0
    uint8 AVAILABLE = 1
    uint8 available
    float32 mouth_open_distance
    float32 mouth_open_width
    float32 mouth_open_distance_score
    float32 mouth_open_ratio
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DMSMouthResult(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.mouth_open_distance !== undefined) {
      resolved.mouth_open_distance = msg.mouth_open_distance;
    }
    else {
      resolved.mouth_open_distance = 0.0
    }

    if (msg.mouth_open_width !== undefined) {
      resolved.mouth_open_width = msg.mouth_open_width;
    }
    else {
      resolved.mouth_open_width = 0.0
    }

    if (msg.mouth_open_distance_score !== undefined) {
      resolved.mouth_open_distance_score = msg.mouth_open_distance_score;
    }
    else {
      resolved.mouth_open_distance_score = 0.0
    }

    if (msg.mouth_open_ratio !== undefined) {
      resolved.mouth_open_ratio = msg.mouth_open_ratio;
    }
    else {
      resolved.mouth_open_ratio = 0.0
    }

    return resolved;
    }
};

// Constants for message
DMSMouthResult.Constants = {
  UN_AVAILABLE: 0,
  AVAILABLE: 1,
}

module.exports = DMSMouthResult;
