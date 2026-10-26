// Auto-generated. Do not edit!

// (in-package calib_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LidarCalibInfo = require('./LidarCalibInfo.js');
let LidarCalibDetailedErrorCodeEnum = require('./LidarCalibDetailedErrorCodeEnum.js');

//-----------------------------------------------------------

class LidarCalibReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.lidar_calib_data = null;
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
      if (initObj.hasOwnProperty('lidar_calib_data')) {
        this.lidar_calib_data = initObj.lidar_calib_data
      }
      else {
        this.lidar_calib_data = [];
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
        this.error_code = new LidarCalibDetailedErrorCodeEnum();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LidarCalibReport
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [lidar_calib_data]
    // Serialize the length for message field [lidar_calib_data]
    bufferOffset = _serializer.uint32(obj.lidar_calib_data.length, buffer, bufferOffset);
    obj.lidar_calib_data.forEach((val) => {
      bufferOffset = LidarCalibInfo.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [travel_distance]
    bufferOffset = _serializer.float32(obj.travel_distance, buffer, bufferOffset);
    // Serialize message field [post_processing_progress]
    bufferOffset = _serializer.float32(obj.post_processing_progress, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = LidarCalibDetailedErrorCodeEnum.serialize(obj.error_code, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LidarCalibReport
    let len;
    let data = new LidarCalibReport(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [lidar_calib_data]
    // Deserialize array length for message field [lidar_calib_data]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.lidar_calib_data = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.lidar_calib_data[i] = LidarCalibInfo.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [travel_distance]
    data.travel_distance = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [post_processing_progress]
    data.post_processing_progress = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [error_code]
    data.error_code = LidarCalibDetailedErrorCodeEnum.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.lidar_calib_data.forEach((val) => {
      length += LidarCalibInfo.getMessageSize(val);
    });
    return length + 15;
  }

  static datatype() {
    // Returns string type for a message object
    return 'calib_interface_msgs/LidarCalibReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c62375b4ac7fe54f7c7c32174e72a6e7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 available
    calib_interface_msgs/LidarCalibInfo[] lidar_calib_data
    float32 travel_distance
    float32 post_processing_progress
    calib_interface_msgs/LidarCalibDetailedErrorCodeEnum error_code
    
    ================================================================================
    MSG: calib_interface_msgs/LidarCalibInfo
    string lidar_name
    uint32 lidar_id
    float64[] r_s2b
    float64[] t_s2b
    calib_interface_msgs/LidarCalibDetailedErrorCodeEnum error_code
    float64[] r_s2b_diff
    float64[] t_s2b_diff
    
    ================================================================================
    MSG: calib_interface_msgs/LidarCalibDetailedErrorCodeEnum
    uint16 NORMAL = 0
    uint16 CALIB_READ_CONFIG_FAIL = 1
    uint16 CALIB_CREATE_RESULT_FILE_FAIL = 2
    uint16 LIDAR_NEED_CALIB_NULL = 3
    uint16 EGO_POSE_LOSS_FRAME = 4
    uint16 BAD_ENVIRONMENT_FOR_CALIB = 5
    uint16 VEHICLE_SPEED_TOO_FAST = 6
    uint16 VEHICLE_YAW_RATE_TOO_LARGE = 7
    uint16 MAX_MILEAGE_CALIB_UNSUCCESS = 8
    uint16 CALIB_TIMEOUT = 9
    uint16 CAM_RESOLUTION_MISMATCH = 51
    uint16 CAM_VIEW_OCCLUSION = 52
    uint16 IMAGE_INSUFFICIENT_EDGES = 53
    uint16 LIDAR_INSUFFICIENT_EDGE_POINTS = 54
    uint16 CALIB_CONTINUOUS_UNCONVERGENCE = 55
    uint16 LIDAR_INSUFFICIENT_GEOMETRIC_FEATURES = 56
    uint16 INSUFFICIENT_TURNS = 57
    uint16 SOLVER_POSE_REFINE_EXCEPTION = 58
    uint16 SOLVER_PAIRWISE_REFINE_EXCEPTION = 59
    uint16 SOLVER_GLOBAL_REFINE_EXCEPTION = 60
    uint16 INIT_CALIB_OUT_OF_ODD = 1001
    uint16 LIDAR_LOWER_FREQUENCY = 1002
    uint16 LIDAR_MOTION_DISTORTION_CORRECTION_EXCEPTION = 1003
    uint16 LIDAR_POINT_MISSING_FIELD_INFO = 1004
    uint16 LARGE_DEVIATION_IN_DESIGNED_ROTATION = 1005
    uint16 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LidarCalibReport(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.lidar_calib_data !== undefined) {
      resolved.lidar_calib_data = new Array(msg.lidar_calib_data.length);
      for (let i = 0; i < resolved.lidar_calib_data.length; ++i) {
        resolved.lidar_calib_data[i] = LidarCalibInfo.Resolve(msg.lidar_calib_data[i]);
      }
    }
    else {
      resolved.lidar_calib_data = []
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
      resolved.error_code = LidarCalibDetailedErrorCodeEnum.Resolve(msg.error_code)
    }
    else {
      resolved.error_code = new LidarCalibDetailedErrorCodeEnum()
    }

    return resolved;
    }
};

module.exports = LidarCalibReport;
