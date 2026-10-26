// Auto-generated. Do not edit!

// (in-package oms_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let OMSCameraOcclusionTypeEnum = require('./OMSCameraOcclusionTypeEnum.js');
let OMSGlassStatusTypeEnum = require('./OMSGlassStatusTypeEnum.js');

//-----------------------------------------------------------

class OMSFusaResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.too_dark_bright_status = null;
      this.occlusion_status = null;
      this.glass_status = null;
      this.occlusion_score = null;
      this.frame_tearing = null;
      this.frame_freezing = null;
      this.frame_fps_abnormal = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('too_dark_bright_status')) {
        this.too_dark_bright_status = initObj.too_dark_bright_status
      }
      else {
        this.too_dark_bright_status = new OMSCameraOcclusionTypeEnum();
      }
      if (initObj.hasOwnProperty('occlusion_status')) {
        this.occlusion_status = initObj.occlusion_status
      }
      else {
        this.occlusion_status = new OMSCameraOcclusionTypeEnum();
      }
      if (initObj.hasOwnProperty('glass_status')) {
        this.glass_status = initObj.glass_status
      }
      else {
        this.glass_status = new OMSGlassStatusTypeEnum();
      }
      if (initObj.hasOwnProperty('occlusion_score')) {
        this.occlusion_score = initObj.occlusion_score
      }
      else {
        this.occlusion_score = 0.0;
      }
      if (initObj.hasOwnProperty('frame_tearing')) {
        this.frame_tearing = initObj.frame_tearing
      }
      else {
        this.frame_tearing = false;
      }
      if (initObj.hasOwnProperty('frame_freezing')) {
        this.frame_freezing = initObj.frame_freezing
      }
      else {
        this.frame_freezing = false;
      }
      if (initObj.hasOwnProperty('frame_fps_abnormal')) {
        this.frame_fps_abnormal = initObj.frame_fps_abnormal
      }
      else {
        this.frame_fps_abnormal = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OMSFusaResult
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [too_dark_bright_status]
    bufferOffset = OMSCameraOcclusionTypeEnum.serialize(obj.too_dark_bright_status, buffer, bufferOffset);
    // Serialize message field [occlusion_status]
    bufferOffset = OMSCameraOcclusionTypeEnum.serialize(obj.occlusion_status, buffer, bufferOffset);
    // Serialize message field [glass_status]
    bufferOffset = OMSGlassStatusTypeEnum.serialize(obj.glass_status, buffer, bufferOffset);
    // Serialize message field [occlusion_score]
    bufferOffset = _serializer.float32(obj.occlusion_score, buffer, bufferOffset);
    // Serialize message field [frame_tearing]
    bufferOffset = _serializer.bool(obj.frame_tearing, buffer, bufferOffset);
    // Serialize message field [frame_freezing]
    bufferOffset = _serializer.bool(obj.frame_freezing, buffer, bufferOffset);
    // Serialize message field [frame_fps_abnormal]
    bufferOffset = _serializer.bool(obj.frame_fps_abnormal, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OMSFusaResult
    let len;
    let data = new OMSFusaResult(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [too_dark_bright_status]
    data.too_dark_bright_status = OMSCameraOcclusionTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [occlusion_status]
    data.occlusion_status = OMSCameraOcclusionTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [glass_status]
    data.glass_status = OMSGlassStatusTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [occlusion_score]
    data.occlusion_score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [frame_tearing]
    data.frame_tearing = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [frame_freezing]
    data.frame_freezing = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [frame_fps_abnormal]
    data.frame_fps_abnormal = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 11;
  }

  static datatype() {
    // Returns string type for a message object
    return 'oms_msgs/OMSFusaResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '19b6c1167a1ed95968f2bb11a9170c1e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 TOO_DARK_BRIGHT_AVAILABLE = 1
    uint8 OCCLUSION_AVAILABLE = 2
    uint8 GLASS_STATUS_AVAILABLE = 4
    uint8 TEARING_AVAILABLE = 8
    uint8 FREEZING_AVAILABLE = 16
    uint8 FPS_ABNORMAL_AVAILABLE = 32
    uint8 available
    oms_msgs/OMSCameraOcclusionTypeEnum too_dark_bright_status
    oms_msgs/OMSCameraOcclusionTypeEnum occlusion_status
    oms_msgs/OMSGlassStatusTypeEnum glass_status
    float32 occlusion_score
    bool frame_tearing
    bool frame_freezing
    bool frame_fps_abnormal
    
    ================================================================================
    MSG: oms_msgs/OMSCameraOcclusionTypeEnum
    uint8 OMS_CAMERA_NO_BLOCK = 0
    uint8 OMS_CAMERA_BLOCK = 1
    uint8 value
    
    ================================================================================
    MSG: oms_msgs/OMSGlassStatusTypeEnum
    uint8 OMS_GLASSES_UNKNOWN = 0
    uint8 OMS_GLASSES_IR_BLOCK_ON = 1
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new OMSFusaResult(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.too_dark_bright_status !== undefined) {
      resolved.too_dark_bright_status = OMSCameraOcclusionTypeEnum.Resolve(msg.too_dark_bright_status)
    }
    else {
      resolved.too_dark_bright_status = new OMSCameraOcclusionTypeEnum()
    }

    if (msg.occlusion_status !== undefined) {
      resolved.occlusion_status = OMSCameraOcclusionTypeEnum.Resolve(msg.occlusion_status)
    }
    else {
      resolved.occlusion_status = new OMSCameraOcclusionTypeEnum()
    }

    if (msg.glass_status !== undefined) {
      resolved.glass_status = OMSGlassStatusTypeEnum.Resolve(msg.glass_status)
    }
    else {
      resolved.glass_status = new OMSGlassStatusTypeEnum()
    }

    if (msg.occlusion_score !== undefined) {
      resolved.occlusion_score = msg.occlusion_score;
    }
    else {
      resolved.occlusion_score = 0.0
    }

    if (msg.frame_tearing !== undefined) {
      resolved.frame_tearing = msg.frame_tearing;
    }
    else {
      resolved.frame_tearing = false
    }

    if (msg.frame_freezing !== undefined) {
      resolved.frame_freezing = msg.frame_freezing;
    }
    else {
      resolved.frame_freezing = false
    }

    if (msg.frame_fps_abnormal !== undefined) {
      resolved.frame_fps_abnormal = msg.frame_fps_abnormal;
    }
    else {
      resolved.frame_fps_abnormal = false
    }

    return resolved;
    }
};

// Constants for message
OMSFusaResult.Constants = {
  TOO_DARK_BRIGHT_AVAILABLE: 1,
  OCCLUSION_AVAILABLE: 2,
  GLASS_STATUS_AVAILABLE: 4,
  TEARING_AVAILABLE: 8,
  FREEZING_AVAILABLE: 16,
  FPS_ABNORMAL_AVAILABLE: 32,
}

module.exports = OMSFusaResult;
