// Auto-generated. Do not edit!

// (in-package dms_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let DMSCameraDiagnoseTypeEnum = require('./DMSCameraDiagnoseTypeEnum.js');
let DMSCameraOcclusionTypeEnum = require('./DMSCameraOcclusionTypeEnum.js');
let DMSGlassStatusTypeEnum = require('./DMSGlassStatusTypeEnum.js');
let DMSSDKStatus = require('./DMSSDKStatus.js');
let DMSSteeringWheelOcclusionTypeEnum = require('./DMSSteeringWheelOcclusionTypeEnum.js');

//-----------------------------------------------------------

class DMSFusaResult {
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
      this.memory_fault = null;
      this.sdk_status = null;
      this.too_bright_score = null;
      this.too_dark_score = null;
      this.steering_wheel_occlusion_status = null;
      this.reserved = null;
      this.reserved1 = null;
      this.bright_count = null;
      this.dark_count = null;
      this.valid_pixel_count = null;
      this.time_stamp_diff = null;
      this.camera_occ_rate = null;
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
        this.too_dark_bright_status = new DMSCameraDiagnoseTypeEnum();
      }
      if (initObj.hasOwnProperty('occlusion_status')) {
        this.occlusion_status = initObj.occlusion_status
      }
      else {
        this.occlusion_status = new DMSCameraOcclusionTypeEnum();
      }
      if (initObj.hasOwnProperty('glass_status')) {
        this.glass_status = initObj.glass_status
      }
      else {
        this.glass_status = new DMSGlassStatusTypeEnum();
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
      if (initObj.hasOwnProperty('memory_fault')) {
        this.memory_fault = initObj.memory_fault
      }
      else {
        this.memory_fault = false;
      }
      if (initObj.hasOwnProperty('sdk_status')) {
        this.sdk_status = initObj.sdk_status
      }
      else {
        this.sdk_status = new DMSSDKStatus();
      }
      if (initObj.hasOwnProperty('too_bright_score')) {
        this.too_bright_score = initObj.too_bright_score
      }
      else {
        this.too_bright_score = 0.0;
      }
      if (initObj.hasOwnProperty('too_dark_score')) {
        this.too_dark_score = initObj.too_dark_score
      }
      else {
        this.too_dark_score = 0.0;
      }
      if (initObj.hasOwnProperty('steering_wheel_occlusion_status')) {
        this.steering_wheel_occlusion_status = initObj.steering_wheel_occlusion_status
      }
      else {
        this.steering_wheel_occlusion_status = new DMSSteeringWheelOcclusionTypeEnum();
      }
      if (initObj.hasOwnProperty('reserved')) {
        this.reserved = initObj.reserved
      }
      else {
        this.reserved = 0.0;
      }
      if (initObj.hasOwnProperty('reserved1')) {
        this.reserved1 = initObj.reserved1
      }
      else {
        this.reserved1 = 0.0;
      }
      if (initObj.hasOwnProperty('bright_count')) {
        this.bright_count = initObj.bright_count
      }
      else {
        this.bright_count = 0;
      }
      if (initObj.hasOwnProperty('dark_count')) {
        this.dark_count = initObj.dark_count
      }
      else {
        this.dark_count = 0;
      }
      if (initObj.hasOwnProperty('valid_pixel_count')) {
        this.valid_pixel_count = initObj.valid_pixel_count
      }
      else {
        this.valid_pixel_count = 0;
      }
      if (initObj.hasOwnProperty('time_stamp_diff')) {
        this.time_stamp_diff = initObj.time_stamp_diff
      }
      else {
        this.time_stamp_diff = 0.0;
      }
      if (initObj.hasOwnProperty('camera_occ_rate')) {
        this.camera_occ_rate = initObj.camera_occ_rate
      }
      else {
        this.camera_occ_rate = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DMSFusaResult
    // Serialize message field [available]
    bufferOffset = _serializer.uint16(obj.available, buffer, bufferOffset);
    // Serialize message field [too_dark_bright_status]
    bufferOffset = DMSCameraDiagnoseTypeEnum.serialize(obj.too_dark_bright_status, buffer, bufferOffset);
    // Serialize message field [occlusion_status]
    bufferOffset = DMSCameraOcclusionTypeEnum.serialize(obj.occlusion_status, buffer, bufferOffset);
    // Serialize message field [glass_status]
    bufferOffset = DMSGlassStatusTypeEnum.serialize(obj.glass_status, buffer, bufferOffset);
    // Serialize message field [occlusion_score]
    bufferOffset = _serializer.float32(obj.occlusion_score, buffer, bufferOffset);
    // Serialize message field [frame_tearing]
    bufferOffset = _serializer.bool(obj.frame_tearing, buffer, bufferOffset);
    // Serialize message field [frame_freezing]
    bufferOffset = _serializer.bool(obj.frame_freezing, buffer, bufferOffset);
    // Serialize message field [frame_fps_abnormal]
    bufferOffset = _serializer.bool(obj.frame_fps_abnormal, buffer, bufferOffset);
    // Serialize message field [memory_fault]
    bufferOffset = _serializer.bool(obj.memory_fault, buffer, bufferOffset);
    // Serialize message field [sdk_status]
    bufferOffset = DMSSDKStatus.serialize(obj.sdk_status, buffer, bufferOffset);
    // Serialize message field [too_bright_score]
    bufferOffset = _serializer.float32(obj.too_bright_score, buffer, bufferOffset);
    // Serialize message field [too_dark_score]
    bufferOffset = _serializer.float32(obj.too_dark_score, buffer, bufferOffset);
    // Serialize message field [steering_wheel_occlusion_status]
    bufferOffset = DMSSteeringWheelOcclusionTypeEnum.serialize(obj.steering_wheel_occlusion_status, buffer, bufferOffset);
    // Serialize message field [reserved]
    bufferOffset = _serializer.float32(obj.reserved, buffer, bufferOffset);
    // Serialize message field [reserved1]
    bufferOffset = _serializer.float32(obj.reserved1, buffer, bufferOffset);
    // Serialize message field [bright_count]
    bufferOffset = _serializer.int32(obj.bright_count, buffer, bufferOffset);
    // Serialize message field [dark_count]
    bufferOffset = _serializer.int32(obj.dark_count, buffer, bufferOffset);
    // Serialize message field [valid_pixel_count]
    bufferOffset = _serializer.int32(obj.valid_pixel_count, buffer, bufferOffset);
    // Serialize message field [time_stamp_diff]
    bufferOffset = _serializer.float32(obj.time_stamp_diff, buffer, bufferOffset);
    // Serialize message field [camera_occ_rate]
    bufferOffset = _serializer.float32(obj.camera_occ_rate, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DMSFusaResult
    let len;
    let data = new DMSFusaResult(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [too_dark_bright_status]
    data.too_dark_bright_status = DMSCameraDiagnoseTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [occlusion_status]
    data.occlusion_status = DMSCameraOcclusionTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [glass_status]
    data.glass_status = DMSGlassStatusTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [occlusion_score]
    data.occlusion_score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [frame_tearing]
    data.frame_tearing = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [frame_freezing]
    data.frame_freezing = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [frame_fps_abnormal]
    data.frame_fps_abnormal = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [memory_fault]
    data.memory_fault = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [sdk_status]
    data.sdk_status = DMSSDKStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [too_bright_score]
    data.too_bright_score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [too_dark_score]
    data.too_dark_score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [steering_wheel_occlusion_status]
    data.steering_wheel_occlusion_status = DMSSteeringWheelOcclusionTypeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [reserved]
    data.reserved = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [reserved1]
    data.reserved1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [bright_count]
    data.bright_count = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [dark_count]
    data.dark_count = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [valid_pixel_count]
    data.valid_pixel_count = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [time_stamp_diff]
    data.time_stamp_diff = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [camera_occ_rate]
    data.camera_occ_rate = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 53;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dms_msgs/DMSFusaResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5a8fb472226a4f17c56c02f5bcd9d8f6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 TOO_DARK_BRIGHT_AVAILABLE = 1
    uint16 OCCLUSION_AVAILABLE = 4
    uint16 GLASS_STATUS_AVAILABLE = 8
    uint16 TEARING_AVAILABLE = 16
    uint16 FREEZING_AVAILABLE = 32
    uint16 FPS_ABNORMAL_AVAILABLE = 64
    uint16 MEMORY_FAULT_AVAILABLE = 128
    uint16 SDK_STATUS_AVAILABLE = 256
    uint16 RESERVED = 512
    uint16 RESERVED1 = 1024
    uint16 STEERING_WHEEL_OCCLUSION_STATUS_AVAILABLE = 2048
    uint16 available
    dms_msgs/DMSCameraDiagnoseTypeEnum too_dark_bright_status
    dms_msgs/DMSCameraOcclusionTypeEnum occlusion_status
    dms_msgs/DMSGlassStatusTypeEnum glass_status
    float32 occlusion_score
    bool frame_tearing
    bool frame_freezing
    bool frame_fps_abnormal
    bool memory_fault
    dms_msgs/DMSSDKStatus sdk_status
    float32 too_bright_score
    float32 too_dark_score
    dms_msgs/DMSSteeringWheelOcclusionTypeEnum steering_wheel_occlusion_status
    float32 reserved
    float32 reserved1
    int32 bright_count
    int32 dark_count
    int32 valid_pixel_count
    float32 time_stamp_diff
    float32 camera_occ_rate
    
    ================================================================================
    MSG: dms_msgs/DMSCameraDiagnoseTypeEnum
    uint8 DMS_CAMERA_DIAGNOSE_NORMAL = 1
    uint8 DMS_CAMERA_DIAGNOSE_TOO_SMALL = 2
    uint8 DMS_CAMERA_DIAGNOSE_TOO_BRIGHT = 4
    uint8 DMS_CAMERA_DIAGNOSE_TOO_DARK = 8
    uint8 value
    
    ================================================================================
    MSG: dms_msgs/DMSCameraOcclusionTypeEnum
    uint8 DMS_CAMERA_BLOCK = 0
    uint8 DMS_CAMERA_NO_BLOCK = 1
    uint8 value
    
    ================================================================================
    MSG: dms_msgs/DMSGlassStatusTypeEnum
    uint8 DMS_GLASSES_IR_BLOCK_ON = 0
    uint8 DMS_GLASSES_UNKNOWN = 1
    uint8 value
    
    ================================================================================
    MSG: dms_msgs/DMSSDKStatus
    uint8 SDK_STATUS_AVAILABLE = 1
    uint8 STATE_MACHINE_AVAILABLE = 2
    uint8 available
    dms_msgs/DMSStatusTypeEnum dms_status_type
    dms_msgs/DMSStateMachineTypeEnum state_machine_type
    
    ================================================================================
    MSG: dms_msgs/DMSStatusTypeEnum
    uint8 UNKNOWN = 0
    uint8 INITIALIZING = 1
    uint8 INTERNAL_FAULT = 2
    uint8 EXTERNAL_FAULT = 3
    uint8 INVALID_ENVIRONMENT = 4
    uint8 AUTHENTICATION_FAIL = 5
    uint8 INITIALIZ_OK = 6
    uint8 INITIALIZ_FAIL = 7
    uint8 RUNNING_OK = 8
    uint8 RUNNING_FAIL = 9
    uint8 value
    
    ================================================================================
    MSG: dms_msgs/DMSStateMachineTypeEnum
    uint8 OFF = 0
    uint8 STANDBY = 1
    uint8 ACTIVE = 2
    uint8 FAILURE = 3
    uint8 UNKNOWN = 4
    uint8 value
    
    ================================================================================
    MSG: dms_msgs/DMSSteeringWheelOcclusionTypeEnum
    uint8 STEERING_WHEEL_BLOCK = 0
    uint8 STEERING_WHEEL_NO_BLOCK = 1
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DMSFusaResult(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.too_dark_bright_status !== undefined) {
      resolved.too_dark_bright_status = DMSCameraDiagnoseTypeEnum.Resolve(msg.too_dark_bright_status)
    }
    else {
      resolved.too_dark_bright_status = new DMSCameraDiagnoseTypeEnum()
    }

    if (msg.occlusion_status !== undefined) {
      resolved.occlusion_status = DMSCameraOcclusionTypeEnum.Resolve(msg.occlusion_status)
    }
    else {
      resolved.occlusion_status = new DMSCameraOcclusionTypeEnum()
    }

    if (msg.glass_status !== undefined) {
      resolved.glass_status = DMSGlassStatusTypeEnum.Resolve(msg.glass_status)
    }
    else {
      resolved.glass_status = new DMSGlassStatusTypeEnum()
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

    if (msg.memory_fault !== undefined) {
      resolved.memory_fault = msg.memory_fault;
    }
    else {
      resolved.memory_fault = false
    }

    if (msg.sdk_status !== undefined) {
      resolved.sdk_status = DMSSDKStatus.Resolve(msg.sdk_status)
    }
    else {
      resolved.sdk_status = new DMSSDKStatus()
    }

    if (msg.too_bright_score !== undefined) {
      resolved.too_bright_score = msg.too_bright_score;
    }
    else {
      resolved.too_bright_score = 0.0
    }

    if (msg.too_dark_score !== undefined) {
      resolved.too_dark_score = msg.too_dark_score;
    }
    else {
      resolved.too_dark_score = 0.0
    }

    if (msg.steering_wheel_occlusion_status !== undefined) {
      resolved.steering_wheel_occlusion_status = DMSSteeringWheelOcclusionTypeEnum.Resolve(msg.steering_wheel_occlusion_status)
    }
    else {
      resolved.steering_wheel_occlusion_status = new DMSSteeringWheelOcclusionTypeEnum()
    }

    if (msg.reserved !== undefined) {
      resolved.reserved = msg.reserved;
    }
    else {
      resolved.reserved = 0.0
    }

    if (msg.reserved1 !== undefined) {
      resolved.reserved1 = msg.reserved1;
    }
    else {
      resolved.reserved1 = 0.0
    }

    if (msg.bright_count !== undefined) {
      resolved.bright_count = msg.bright_count;
    }
    else {
      resolved.bright_count = 0
    }

    if (msg.dark_count !== undefined) {
      resolved.dark_count = msg.dark_count;
    }
    else {
      resolved.dark_count = 0
    }

    if (msg.valid_pixel_count !== undefined) {
      resolved.valid_pixel_count = msg.valid_pixel_count;
    }
    else {
      resolved.valid_pixel_count = 0
    }

    if (msg.time_stamp_diff !== undefined) {
      resolved.time_stamp_diff = msg.time_stamp_diff;
    }
    else {
      resolved.time_stamp_diff = 0.0
    }

    if (msg.camera_occ_rate !== undefined) {
      resolved.camera_occ_rate = msg.camera_occ_rate;
    }
    else {
      resolved.camera_occ_rate = 0.0
    }

    return resolved;
    }
};

// Constants for message
DMSFusaResult.Constants = {
  TOO_DARK_BRIGHT_AVAILABLE: 1,
  OCCLUSION_AVAILABLE: 4,
  GLASS_STATUS_AVAILABLE: 8,
  TEARING_AVAILABLE: 16,
  FREEZING_AVAILABLE: 32,
  FPS_ABNORMAL_AVAILABLE: 64,
  MEMORY_FAULT_AVAILABLE: 128,
  SDK_STATUS_AVAILABLE: 256,
  RESERVED: 512,
  RESERVED1: 1024,
  STEERING_WHEEL_OCCLUSION_STATUS_AVAILABLE: 2048,
}

module.exports = DMSFusaResult;
