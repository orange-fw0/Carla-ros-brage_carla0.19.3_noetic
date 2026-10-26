// Auto-generated. Do not edit!

// (in-package calib_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CameraOffcalibInfo = require('./CameraOffcalibInfo.js');
let CamOffcalibDetailedErrorCodeEnum = require('./CamOffcalibDetailedErrorCodeEnum.js');

//-----------------------------------------------------------

class CameraOffcalibReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.camera_offcalib_data = null;
      this.travel_distance = null;
      this.post_processing_progress = null;
      this.error_code = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('camera_offcalib_data')) {
        this.camera_offcalib_data = initObj.camera_offcalib_data
      }
      else {
        this.camera_offcalib_data = [];
      }
      if (initObj.hasOwnProperty('travel_distance')) {
        this.travel_distance = initObj.travel_distance
      }
      else {
        this.travel_distance = 0.0;
      }
      if (initObj.hasOwnProperty('post_processing_progress')) {
        this.post_processing_progress = initObj.post_processing_progress
      }
      else {
        this.post_processing_progress = 0.0;
      }
      if (initObj.hasOwnProperty('error_code')) {
        this.error_code = initObj.error_code
      }
      else {
        this.error_code = new CamOffcalibDetailedErrorCodeEnum();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CameraOffcalibReport
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [camera_offcalib_data]
    // Serialize the length for message field [camera_offcalib_data]
    bufferOffset = _serializer.uint32(obj.camera_offcalib_data.length, buffer, bufferOffset);
    obj.camera_offcalib_data.forEach((val) => {
      bufferOffset = CameraOffcalibInfo.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [travel_distance]
    bufferOffset = _serializer.float32(obj.travel_distance, buffer, bufferOffset);
    // Serialize message field [post_processing_progress]
    bufferOffset = _serializer.float32(obj.post_processing_progress, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = CamOffcalibDetailedErrorCodeEnum.serialize(obj.error_code, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CameraOffcalibReport
    let len;
    let data = new CameraOffcalibReport(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [camera_offcalib_data]
    // Deserialize array length for message field [camera_offcalib_data]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.camera_offcalib_data = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.camera_offcalib_data[i] = CameraOffcalibInfo.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [travel_distance]
    data.travel_distance = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [post_processing_progress]
    data.post_processing_progress = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [error_code]
    data.error_code = CamOffcalibDetailedErrorCodeEnum.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.camera_offcalib_data.forEach((val) => {
      length += CameraOffcalibInfo.getMessageSize(val);
    });
    return length + 15;
  }

  static datatype() {
    // Returns string type for a message object
    return 'calib_interface_msgs/CameraOffcalibReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f8b6a10db6dd9041ecfa9a55bbc64cf8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 available
    calib_interface_msgs/CameraOffcalibInfo[] camera_offcalib_data
    float32 travel_distance
    float32 post_processing_progress
    calib_interface_msgs/CamOffcalibDetailedErrorCodeEnum error_code
    
    ================================================================================
    MSG: calib_interface_msgs/CameraOffcalibInfo
    perception_interface_msgs/CameraSourceEnum camera_name
    uint32 camera_id
    perception_interface_msgs/CameraSourceEnum[] attach_camera_names
    uint32[] attach_camera_ids
    calib_interface_msgs/CamOffcalibDetailedErrorCodeEnum error_code
    
    ================================================================================
    MSG: perception_interface_msgs/CameraSourceEnum
    uint8 CAMERA_SOURCE_FRONT_FAR = 0
    uint8 CAMERA_SOURCE_FRONT_MID = 1
    uint8 CAMERA_SOURCE_FRONT_WIDE = 2
    uint8 CAMERA_SOURCE_LEFT_FRONT = 3
    uint8 CAMERA_SOURCE_LEFT_REAR = 4
    uint8 CAMERA_SOURCE_REAR_MID = 5
    uint8 CAMERA_SOURCE_REAR_MID_UP = 6
    uint8 CAMERA_SOURCE_REAR_MID_DOWN = 7
    uint8 CAMERA_SOURCE_RIGHT_FRONT = 8
    uint8 CAMERA_SOURCE_RIGHT_REAR = 9
    uint8 CAMERA_SOURCE_FRONT_FISHEYE = 10
    uint8 CAMERA_SOURCE_LEFT_FISHEYE = 11
    uint8 CAMERA_SOURCE_RIGHT_FISHEYE = 12
    uint8 CAMERA_SOURCE_REAR_FISHEYE = 13
    uint8 CAMERA_SOURCE_FISHEYE = 14
    uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_LEFT = 15
    uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_RIGHT = 16
    uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_LEFT = 17
    uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_RIGHT = 18
    uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_LEFT = 19
    uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_RIGHT = 20
    uint8 CAMERA_SOURCE_LEFT_REAR_SUB_LEFT = 21
    uint8 CAMERA_SOURCE_RIGHT_REAR_SUB_RIGHT = 22
    uint8 CAMERA_SOURCE_FRONT_MID_FAR = 23
    uint8 CAMERA_SOURCE_FRONT_SUPER_FAR = 24
    uint8 CAMERA_SOURCE_BEV = 25
    uint8 value
    
    ================================================================================
    MSG: calib_interface_msgs/CamOffcalibDetailedErrorCodeEnum
    uint16 NORMAL = 0
    uint16 EGO_INIT_FAILED = 1
    uint16 NEED_CHECKED_CAM_NUM_ZERO = 2
    uint16 EGO_POSE_CAM_VALID_UNACCESSABLE = 10
    uint16 EGO_POSE_CROSS_CAM_VALID_UNACCESSABLE = 11
    uint16 EGO_STATE_CAM_VALID_FREQ_TOO_LOW = 12
    uint16 EGO_STATE_CROSS_CAM_VALID_FREQ_TOO_LOW = 13
    uint16 CAM_VALID_VISUAL_FEATURE_INFO_NULL = 50
    uint16 CAM_VALID_LONG_TIME_VISUAL_FEATURE_NUM_TOO_FEW = 51
    uint16 CAM_VALID_VTRACKFRAMEBUFFER_FILL = 52
    uint16 CAM_VALID_STATEBUFFER_FILL = 53
    uint16 CAM_VALID_VALID_FEATURE_NUM_TOO_FEW = 54
    uint16 CROSS_CAM_VALID_VTRACKFRAMEBUFFER_FILL = 100
    uint16 CROSS_CAM_VALID_STATEBUFFER_FILL = 101
    uint16 UPDATE_CAM_ID_OUT_OF_RANGE = 150
    uint16 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CameraOffcalibReport(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.camera_offcalib_data !== undefined) {
      resolved.camera_offcalib_data = new Array(msg.camera_offcalib_data.length);
      for (let i = 0; i < resolved.camera_offcalib_data.length; ++i) {
        resolved.camera_offcalib_data[i] = CameraOffcalibInfo.Resolve(msg.camera_offcalib_data[i]);
      }
    }
    else {
      resolved.camera_offcalib_data = []
    }

    if (msg.travel_distance !== undefined) {
      resolved.travel_distance = msg.travel_distance;
    }
    else {
      resolved.travel_distance = 0.0
    }

    if (msg.post_processing_progress !== undefined) {
      resolved.post_processing_progress = msg.post_processing_progress;
    }
    else {
      resolved.post_processing_progress = 0.0
    }

    if (msg.error_code !== undefined) {
      resolved.error_code = CamOffcalibDetailedErrorCodeEnum.Resolve(msg.error_code)
    }
    else {
      resolved.error_code = new CamOffcalibDetailedErrorCodeEnum()
    }

    return resolved;
    }
};

module.exports = CameraOffcalibReport;
