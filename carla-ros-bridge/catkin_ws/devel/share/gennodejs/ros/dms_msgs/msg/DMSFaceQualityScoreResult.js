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

class DMSFaceQualityScoreResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.light_forehead_prob = null;
      this.light_eye_prob = null;
      this.light_nose_prob = null;
      this.light_mouth_prob = null;
      this.faceshade_forehead_prob = null;
      this.faceshade_eye_prob = null;
      this.faceshade_nose_prob = null;
      this.faceshade_mouth_prob = null;
      this.eye_left_prob = null;
      this.eye_right_prob = null;
      this.iris_left_prob = null;
      this.iris_right_prob = null;
      this.infrared_block_prob = null;
      this.yaw_region = null;
      this.pitch_region = null;
    }
    else {
      if (initObj.hasOwnProperty('light_forehead_prob')) {
        this.light_forehead_prob = initObj.light_forehead_prob
      }
      else {
        this.light_forehead_prob = 0.0;
      }
      if (initObj.hasOwnProperty('light_eye_prob')) {
        this.light_eye_prob = initObj.light_eye_prob
      }
      else {
        this.light_eye_prob = 0.0;
      }
      if (initObj.hasOwnProperty('light_nose_prob')) {
        this.light_nose_prob = initObj.light_nose_prob
      }
      else {
        this.light_nose_prob = 0.0;
      }
      if (initObj.hasOwnProperty('light_mouth_prob')) {
        this.light_mouth_prob = initObj.light_mouth_prob
      }
      else {
        this.light_mouth_prob = 0.0;
      }
      if (initObj.hasOwnProperty('faceshade_forehead_prob')) {
        this.faceshade_forehead_prob = initObj.faceshade_forehead_prob
      }
      else {
        this.faceshade_forehead_prob = 0.0;
      }
      if (initObj.hasOwnProperty('faceshade_eye_prob')) {
        this.faceshade_eye_prob = initObj.faceshade_eye_prob
      }
      else {
        this.faceshade_eye_prob = 0.0;
      }
      if (initObj.hasOwnProperty('faceshade_nose_prob')) {
        this.faceshade_nose_prob = initObj.faceshade_nose_prob
      }
      else {
        this.faceshade_nose_prob = 0.0;
      }
      if (initObj.hasOwnProperty('faceshade_mouth_prob')) {
        this.faceshade_mouth_prob = initObj.faceshade_mouth_prob
      }
      else {
        this.faceshade_mouth_prob = 0.0;
      }
      if (initObj.hasOwnProperty('eye_left_prob')) {
        this.eye_left_prob = initObj.eye_left_prob
      }
      else {
        this.eye_left_prob = 0.0;
      }
      if (initObj.hasOwnProperty('eye_right_prob')) {
        this.eye_right_prob = initObj.eye_right_prob
      }
      else {
        this.eye_right_prob = 0.0;
      }
      if (initObj.hasOwnProperty('iris_left_prob')) {
        this.iris_left_prob = initObj.iris_left_prob
      }
      else {
        this.iris_left_prob = 0.0;
      }
      if (initObj.hasOwnProperty('iris_right_prob')) {
        this.iris_right_prob = initObj.iris_right_prob
      }
      else {
        this.iris_right_prob = 0.0;
      }
      if (initObj.hasOwnProperty('infrared_block_prob')) {
        this.infrared_block_prob = initObj.infrared_block_prob
      }
      else {
        this.infrared_block_prob = 0.0;
      }
      if (initObj.hasOwnProperty('yaw_region')) {
        this.yaw_region = initObj.yaw_region
      }
      else {
        this.yaw_region = 0;
      }
      if (initObj.hasOwnProperty('pitch_region')) {
        this.pitch_region = initObj.pitch_region
      }
      else {
        this.pitch_region = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DMSFaceQualityScoreResult
    // Serialize message field [light_forehead_prob]
    bufferOffset = _serializer.float32(obj.light_forehead_prob, buffer, bufferOffset);
    // Serialize message field [light_eye_prob]
    bufferOffset = _serializer.float32(obj.light_eye_prob, buffer, bufferOffset);
    // Serialize message field [light_nose_prob]
    bufferOffset = _serializer.float32(obj.light_nose_prob, buffer, bufferOffset);
    // Serialize message field [light_mouth_prob]
    bufferOffset = _serializer.float32(obj.light_mouth_prob, buffer, bufferOffset);
    // Serialize message field [faceshade_forehead_prob]
    bufferOffset = _serializer.float32(obj.faceshade_forehead_prob, buffer, bufferOffset);
    // Serialize message field [faceshade_eye_prob]
    bufferOffset = _serializer.float32(obj.faceshade_eye_prob, buffer, bufferOffset);
    // Serialize message field [faceshade_nose_prob]
    bufferOffset = _serializer.float32(obj.faceshade_nose_prob, buffer, bufferOffset);
    // Serialize message field [faceshade_mouth_prob]
    bufferOffset = _serializer.float32(obj.faceshade_mouth_prob, buffer, bufferOffset);
    // Serialize message field [eye_left_prob]
    bufferOffset = _serializer.float32(obj.eye_left_prob, buffer, bufferOffset);
    // Serialize message field [eye_right_prob]
    bufferOffset = _serializer.float32(obj.eye_right_prob, buffer, bufferOffset);
    // Serialize message field [iris_left_prob]
    bufferOffset = _serializer.float32(obj.iris_left_prob, buffer, bufferOffset);
    // Serialize message field [iris_right_prob]
    bufferOffset = _serializer.float32(obj.iris_right_prob, buffer, bufferOffset);
    // Serialize message field [infrared_block_prob]
    bufferOffset = _serializer.float32(obj.infrared_block_prob, buffer, bufferOffset);
    // Serialize message field [yaw_region]
    bufferOffset = _serializer.int32(obj.yaw_region, buffer, bufferOffset);
    // Serialize message field [pitch_region]
    bufferOffset = _serializer.int32(obj.pitch_region, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DMSFaceQualityScoreResult
    let len;
    let data = new DMSFaceQualityScoreResult(null);
    // Deserialize message field [light_forehead_prob]
    data.light_forehead_prob = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [light_eye_prob]
    data.light_eye_prob = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [light_nose_prob]
    data.light_nose_prob = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [light_mouth_prob]
    data.light_mouth_prob = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [faceshade_forehead_prob]
    data.faceshade_forehead_prob = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [faceshade_eye_prob]
    data.faceshade_eye_prob = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [faceshade_nose_prob]
    data.faceshade_nose_prob = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [faceshade_mouth_prob]
    data.faceshade_mouth_prob = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [eye_left_prob]
    data.eye_left_prob = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [eye_right_prob]
    data.eye_right_prob = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [iris_left_prob]
    data.iris_left_prob = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [iris_right_prob]
    data.iris_right_prob = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [infrared_block_prob]
    data.infrared_block_prob = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [yaw_region]
    data.yaw_region = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [pitch_region]
    data.pitch_region = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 60;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dms_msgs/DMSFaceQualityScoreResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7b9b4dbac63c0d367df4b6851a103a01';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new DMSFaceQualityScoreResult(null);
    if (msg.light_forehead_prob !== undefined) {
      resolved.light_forehead_prob = msg.light_forehead_prob;
    }
    else {
      resolved.light_forehead_prob = 0.0
    }

    if (msg.light_eye_prob !== undefined) {
      resolved.light_eye_prob = msg.light_eye_prob;
    }
    else {
      resolved.light_eye_prob = 0.0
    }

    if (msg.light_nose_prob !== undefined) {
      resolved.light_nose_prob = msg.light_nose_prob;
    }
    else {
      resolved.light_nose_prob = 0.0
    }

    if (msg.light_mouth_prob !== undefined) {
      resolved.light_mouth_prob = msg.light_mouth_prob;
    }
    else {
      resolved.light_mouth_prob = 0.0
    }

    if (msg.faceshade_forehead_prob !== undefined) {
      resolved.faceshade_forehead_prob = msg.faceshade_forehead_prob;
    }
    else {
      resolved.faceshade_forehead_prob = 0.0
    }

    if (msg.faceshade_eye_prob !== undefined) {
      resolved.faceshade_eye_prob = msg.faceshade_eye_prob;
    }
    else {
      resolved.faceshade_eye_prob = 0.0
    }

    if (msg.faceshade_nose_prob !== undefined) {
      resolved.faceshade_nose_prob = msg.faceshade_nose_prob;
    }
    else {
      resolved.faceshade_nose_prob = 0.0
    }

    if (msg.faceshade_mouth_prob !== undefined) {
      resolved.faceshade_mouth_prob = msg.faceshade_mouth_prob;
    }
    else {
      resolved.faceshade_mouth_prob = 0.0
    }

    if (msg.eye_left_prob !== undefined) {
      resolved.eye_left_prob = msg.eye_left_prob;
    }
    else {
      resolved.eye_left_prob = 0.0
    }

    if (msg.eye_right_prob !== undefined) {
      resolved.eye_right_prob = msg.eye_right_prob;
    }
    else {
      resolved.eye_right_prob = 0.0
    }

    if (msg.iris_left_prob !== undefined) {
      resolved.iris_left_prob = msg.iris_left_prob;
    }
    else {
      resolved.iris_left_prob = 0.0
    }

    if (msg.iris_right_prob !== undefined) {
      resolved.iris_right_prob = msg.iris_right_prob;
    }
    else {
      resolved.iris_right_prob = 0.0
    }

    if (msg.infrared_block_prob !== undefined) {
      resolved.infrared_block_prob = msg.infrared_block_prob;
    }
    else {
      resolved.infrared_block_prob = 0.0
    }

    if (msg.yaw_region !== undefined) {
      resolved.yaw_region = msg.yaw_region;
    }
    else {
      resolved.yaw_region = 0
    }

    if (msg.pitch_region !== undefined) {
      resolved.pitch_region = msg.pitch_region;
    }
    else {
      resolved.pitch_region = 0
    }

    return resolved;
    }
};

module.exports = DMSFaceQualityScoreResult;
