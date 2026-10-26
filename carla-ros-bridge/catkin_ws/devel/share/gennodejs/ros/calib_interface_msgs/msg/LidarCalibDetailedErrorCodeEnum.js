// Auto-generated. Do not edit!

// (in-package calib_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class LidarCalibDetailedErrorCodeEnum {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.value = null;
    }
    else {
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LidarCalibDetailedErrorCodeEnum
    // Serialize message field [value]
    bufferOffset = _serializer.uint16(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LidarCalibDetailedErrorCodeEnum
    let len;
    let data = new LidarCalibDetailedErrorCodeEnum(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'calib_interface_msgs/LidarCalibDetailedErrorCodeEnum';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '68a3ac06366b62b605c538732b115fef';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new LidarCalibDetailedErrorCodeEnum(null);
    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = 0
    }

    return resolved;
    }
};

// Constants for message
LidarCalibDetailedErrorCodeEnum.Constants = {
  NORMAL: 0,
  CALIB_READ_CONFIG_FAIL: 1,
  CALIB_CREATE_RESULT_FILE_FAIL: 2,
  LIDAR_NEED_CALIB_NULL: 3,
  EGO_POSE_LOSS_FRAME: 4,
  BAD_ENVIRONMENT_FOR_CALIB: 5,
  VEHICLE_SPEED_TOO_FAST: 6,
  VEHICLE_YAW_RATE_TOO_LARGE: 7,
  MAX_MILEAGE_CALIB_UNSUCCESS: 8,
  CALIB_TIMEOUT: 9,
  CAM_RESOLUTION_MISMATCH: 51,
  CAM_VIEW_OCCLUSION: 52,
  IMAGE_INSUFFICIENT_EDGES: 53,
  LIDAR_INSUFFICIENT_EDGE_POINTS: 54,
  CALIB_CONTINUOUS_UNCONVERGENCE: 55,
  LIDAR_INSUFFICIENT_GEOMETRIC_FEATURES: 56,
  INSUFFICIENT_TURNS: 57,
  SOLVER_POSE_REFINE_EXCEPTION: 58,
  SOLVER_PAIRWISE_REFINE_EXCEPTION: 59,
  SOLVER_GLOBAL_REFINE_EXCEPTION: 60,
  INIT_CALIB_OUT_OF_ODD: 1001,
  LIDAR_LOWER_FREQUENCY: 1002,
  LIDAR_MOTION_DISTORTION_CORRECTION_EXCEPTION: 1003,
  LIDAR_POINT_MISSING_FIELD_INFO: 1004,
  LARGE_DEVIATION_IN_DESIGNED_ROTATION: 1005,
}

module.exports = LidarCalibDetailedErrorCodeEnum;
