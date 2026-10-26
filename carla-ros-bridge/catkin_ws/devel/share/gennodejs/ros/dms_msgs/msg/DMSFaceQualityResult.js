// Auto-generated. Do not edit!

// (in-package dms_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let DMSFaceQualityScoreResult = require('./DMSFaceQualityScoreResult.js');

//-----------------------------------------------------------

class DMSFaceQualityResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.quality = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('quality')) {
        this.quality = initObj.quality
      }
      else {
        this.quality = new DMSFaceQualityScoreResult();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DMSFaceQualityResult
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [quality]
    bufferOffset = DMSFaceQualityScoreResult.serialize(obj.quality, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DMSFaceQualityResult
    let len;
    let data = new DMSFaceQualityResult(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [quality]
    data.quality = DMSFaceQualityScoreResult.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 61;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dms_msgs/DMSFaceQualityResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '446b4ef06f84e4320a081e067f3f1e72';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 UN_AVAILABLE = 0
    uint8 AVAILABLE = 1
    uint8 available
    dms_msgs/DMSFaceQualityScoreResult quality
    
    ================================================================================
    MSG: dms_msgs/DMSFaceQualityScoreResult
    float32 light_forehead_prob
    float32 light_eye_prob
    float32 light_nose_prob
    float32 light_mouth_prob
    float32 faceshade_forehead_prob
    float32 faceshade_eye_prob
    float32 faceshade_nose_prob
    float32 faceshade_mouth_prob
    float32 eye_left_prob
    float32 eye_right_prob
    float32 iris_left_prob
    float32 iris_right_prob
    float32 infrared_block_prob
    int32 yaw_region
    int32 pitch_region
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DMSFaceQualityResult(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.quality !== undefined) {
      resolved.quality = DMSFaceQualityScoreResult.Resolve(msg.quality)
    }
    else {
      resolved.quality = new DMSFaceQualityScoreResult()
    }

    return resolved;
    }
};

// Constants for message
DMSFaceQualityResult.Constants = {
  UN_AVAILABLE: 0,
  AVAILABLE: 1,
}

module.exports = DMSFaceQualityResult;
