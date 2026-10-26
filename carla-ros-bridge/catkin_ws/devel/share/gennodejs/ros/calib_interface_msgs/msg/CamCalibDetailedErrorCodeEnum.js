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

class CamCalibDetailedErrorCodeEnum {
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
    // Serializes a message object of type CamCalibDetailedErrorCodeEnum
    // Serialize message field [value]
    bufferOffset = _serializer.uint16(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CamCalibDetailedErrorCodeEnum
    let len;
    let data = new CamCalibDetailedErrorCodeEnum(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'calib_interface_msgs/CamCalibDetailedErrorCodeEnum';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2bccfbab3c74c563c50dbded9c0e7f03';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 NORMAL = 0
    uint16 CALIB_READ_CONFIG_FAIL = 1
    uint16 CALIB_CREATE_RESULT_FILE_FAIL = 2
    uint16 CALIB_INIT_GROUND_PATTERN_FAIL = 3
    uint16 CALIB_INIT_SURROUND_PATTERN_FAIL = 4
    uint16 CALIB_READ_INIT_FILE_FAIL = 5
    uint16 CALIB_IMAGE_SIZE_WRONG = 6
    uint16 CALIB_IMAGE_CHANNEL_WRONG = 7
    uint16 CALIB_FISHEYE_DETECT_TAG_FAIL = 8
    uint16 CALIB_NORMAL_DETECT_TAG_FAIL = 9
    uint16 CALIB_ABNORMAL_REPROJECTION_ERROR_OF_INIT = 10
    uint16 CALIB_ABNORMAL_REPROJECTION_ERROR_OF_OPT = 11
    uint16 CALIB_ABNORMAL_ROTATION_ERROR_WITH_INIT = 12
    uint16 CALIB_ABNORMAL_TRANSLATION_ERROR_WITH_INIT = 13
    uint16 CALIB_OUTPUT_FILE_FAIL = 14
    uint16 EGO_INIT_FAILED = 1000
    uint16 EGO_POSE_UNACCESSABLE = 1001
    uint16 EGO_VISUAL_DISABLED = 1002
    uint16 CAM_NEED_CALIB_NULL = 1003
    uint16 CAM_UPDATE_PARAM_FAILED = 1004
    uint16 CAM_SAVE_PARAM_FAILED = 1005
    uint16 CAM_INSUFFICIENT_MATCHING_FEATURE_CROSS = 1006
    uint16 IMU_EXTRINSIC_UNFIXED = 1007
    uint16 IMU_BIAS_UNESTIMATED = 1008
    uint16 IMU_BIAS_UNFIXED = 1009
    uint16 COV_INCREASE_ABNORMALLY = 1010
    uint16 COV_NOT_DECREASE = 1011
    uint16 COV_UNACCESSABLE = 1012
    uint16 UNSTATIC_LAUNCH = 1013
    uint16 MIN_MILEAGE_UNREACHED = 1014
    uint16 MAX_MILEAGE_UNCONVERGED = 1015
    uint16 INSUFFICIENT_TURNS = 1016
    uint16 LARGE_DEVIATION_IN_DESIGNED_ROTATION = 1500
    uint16 LARGE_DEVIATION_CALIB_AND_VALIDATOR = 1501
    uint16 CAM_SET_INIT_PARAM_FAILED = 2000
    uint16 CAM_LOWER_FREQUENCY = 2001
    uint16 CAM_INSUFFICIENT_TRACKING_FEATURE_SINGLE = 2002
    uint16 CAM_INSUFFICIENT_UPDATING_FEATURE_SINGLE = 2003
    uint16 SPEED_TOO_SLOW = 2100
    uint16 ANGLE_TOO_BIG = 2101
    uint16 INNER_CAMERA_MATCH_TOO_FEW = 2102
    uint16 INTER_CAMERA_MATCH_TOO_FEW = 2103
    uint16 KEYPOINTS_TOO_FEW = 2104
    uint16 INIT_MATCH_TOO_FEW = 2105
    uint16 INIT_MAP_POINTS_TOO_FEW = 2106
    uint16 SFM_SCALE_DRIFT = 2107
    uint16 FAIL_TO_ADD_FRAME = 2108
    uint16 CONSTRUCTION_TOO_FEW = 2109
    uint16 FULL_BA_FAIL = 2110
    uint16 RESULT_INCONSISTENT = 2111
    uint16 WRONG_BUFFER_SIZE = 2112
    uint16 ARRAY_OVERREACH = 2113
    uint16 PATCHES_RESET = 2114
    uint16 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CamCalibDetailedErrorCodeEnum(null);
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
CamCalibDetailedErrorCodeEnum.Constants = {
  NORMAL: 0,
  CALIB_READ_CONFIG_FAIL: 1,
  CALIB_CREATE_RESULT_FILE_FAIL: 2,
  CALIB_INIT_GROUND_PATTERN_FAIL: 3,
  CALIB_INIT_SURROUND_PATTERN_FAIL: 4,
  CALIB_READ_INIT_FILE_FAIL: 5,
  CALIB_IMAGE_SIZE_WRONG: 6,
  CALIB_IMAGE_CHANNEL_WRONG: 7,
  CALIB_FISHEYE_DETECT_TAG_FAIL: 8,
  CALIB_NORMAL_DETECT_TAG_FAIL: 9,
  CALIB_ABNORMAL_REPROJECTION_ERROR_OF_INIT: 10,
  CALIB_ABNORMAL_REPROJECTION_ERROR_OF_OPT: 11,
  CALIB_ABNORMAL_ROTATION_ERROR_WITH_INIT: 12,
  CALIB_ABNORMAL_TRANSLATION_ERROR_WITH_INIT: 13,
  CALIB_OUTPUT_FILE_FAIL: 14,
  EGO_INIT_FAILED: 1000,
  EGO_POSE_UNACCESSABLE: 1001,
  EGO_VISUAL_DISABLED: 1002,
  CAM_NEED_CALIB_NULL: 1003,
  CAM_UPDATE_PARAM_FAILED: 1004,
  CAM_SAVE_PARAM_FAILED: 1005,
  CAM_INSUFFICIENT_MATCHING_FEATURE_CROSS: 1006,
  IMU_EXTRINSIC_UNFIXED: 1007,
  IMU_BIAS_UNESTIMATED: 1008,
  IMU_BIAS_UNFIXED: 1009,
  COV_INCREASE_ABNORMALLY: 1010,
  COV_NOT_DECREASE: 1011,
  COV_UNACCESSABLE: 1012,
  UNSTATIC_LAUNCH: 1013,
  MIN_MILEAGE_UNREACHED: 1014,
  MAX_MILEAGE_UNCONVERGED: 1015,
  INSUFFICIENT_TURNS: 1016,
  LARGE_DEVIATION_IN_DESIGNED_ROTATION: 1500,
  LARGE_DEVIATION_CALIB_AND_VALIDATOR: 1501,
  CAM_SET_INIT_PARAM_FAILED: 2000,
  CAM_LOWER_FREQUENCY: 2001,
  CAM_INSUFFICIENT_TRACKING_FEATURE_SINGLE: 2002,
  CAM_INSUFFICIENT_UPDATING_FEATURE_SINGLE: 2003,
  SPEED_TOO_SLOW: 2100,
  ANGLE_TOO_BIG: 2101,
  INNER_CAMERA_MATCH_TOO_FEW: 2102,
  INTER_CAMERA_MATCH_TOO_FEW: 2103,
  KEYPOINTS_TOO_FEW: 2104,
  INIT_MATCH_TOO_FEW: 2105,
  INIT_MAP_POINTS_TOO_FEW: 2106,
  SFM_SCALE_DRIFT: 2107,
  FAIL_TO_ADD_FRAME: 2108,
  CONSTRUCTION_TOO_FEW: 2109,
  FULL_BA_FAIL: 2110,
  RESULT_INCONSISTENT: 2111,
  WRONG_BUFFER_SIZE: 2112,
  ARRAY_OVERREACH: 2113,
  PATCHES_RESET: 2114,
}

module.exports = CamCalibDetailedErrorCodeEnum;
