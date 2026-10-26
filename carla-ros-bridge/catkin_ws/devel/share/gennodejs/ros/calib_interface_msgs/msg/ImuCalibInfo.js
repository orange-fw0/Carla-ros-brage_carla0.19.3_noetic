// Auto-generated. Do not edit!

// (in-package calib_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ImuCalibDetailedErrorCodeEnum = require('./ImuCalibDetailedErrorCodeEnum.js');

//-----------------------------------------------------------

class ImuCalibInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.imu_name = null;
      this.imu_id = null;
      this.r_s2b = null;
      this.t_s2b = null;
      this.imu_error_code = null;
      this.r_s2b_diff = null;
      this.t_s2b_diff = null;
    }
    else {
      if (initObj.hasOwnProperty('imu_name')) {
        this.imu_name = initObj.imu_name
      }
      else {
        this.imu_name = '';
      }
      if (initObj.hasOwnProperty('imu_id')) {
        this.imu_id = initObj.imu_id
      }
      else {
        this.imu_id = 0;
      }
      if (initObj.hasOwnProperty('r_s2b')) {
        this.r_s2b = initObj.r_s2b
      }
      else {
        this.r_s2b = [];
      }
      if (initObj.hasOwnProperty('t_s2b')) {
        this.t_s2b = initObj.t_s2b
      }
      else {
        this.t_s2b = [];
      }
      if (initObj.hasOwnProperty('imu_error_code')) {
        this.imu_error_code = initObj.imu_error_code
      }
      else {
        this.imu_error_code = new ImuCalibDetailedErrorCodeEnum();
      }
      if (initObj.hasOwnProperty('r_s2b_diff')) {
        this.r_s2b_diff = initObj.r_s2b_diff
      }
      else {
        this.r_s2b_diff = [];
      }
      if (initObj.hasOwnProperty('t_s2b_diff')) {
        this.t_s2b_diff = initObj.t_s2b_diff
      }
      else {
        this.t_s2b_diff = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ImuCalibInfo
    // Serialize message field [imu_name]
    bufferOffset = _serializer.string(obj.imu_name, buffer, bufferOffset);
    // Serialize message field [imu_id]
    bufferOffset = _serializer.uint32(obj.imu_id, buffer, bufferOffset);
    // Serialize message field [r_s2b]
    bufferOffset = _arraySerializer.float64(obj.r_s2b, buffer, bufferOffset, null);
    // Serialize message field [t_s2b]
    bufferOffset = _arraySerializer.float64(obj.t_s2b, buffer, bufferOffset, null);
    // Serialize message field [imu_error_code]
    bufferOffset = ImuCalibDetailedErrorCodeEnum.serialize(obj.imu_error_code, buffer, bufferOffset);
    // Serialize message field [r_s2b_diff]
    bufferOffset = _arraySerializer.float64(obj.r_s2b_diff, buffer, bufferOffset, null);
    // Serialize message field [t_s2b_diff]
    bufferOffset = _arraySerializer.float64(obj.t_s2b_diff, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ImuCalibInfo
    let len;
    let data = new ImuCalibInfo(null);
    // Deserialize message field [imu_name]
    data.imu_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [imu_id]
    data.imu_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [r_s2b]
    data.r_s2b = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [t_s2b]
    data.t_s2b = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [imu_error_code]
    data.imu_error_code = ImuCalibDetailedErrorCodeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [r_s2b_diff]
    data.r_s2b_diff = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [t_s2b_diff]
    data.t_s2b_diff = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.imu_name);
    length += 8 * object.r_s2b.length;
    length += 8 * object.t_s2b.length;
    length += 8 * object.r_s2b_diff.length;
    length += 8 * object.t_s2b_diff.length;
    return length + 26;
  }

  static datatype() {
    // Returns string type for a message object
    return 'calib_interface_msgs/ImuCalibInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a11ead7028842d13f003681982d3a7e4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string imu_name
    uint32 imu_id
    float64[] r_s2b
    float64[] t_s2b
    calib_interface_msgs/ImuCalibDetailedErrorCodeEnum imu_error_code
    float64[] r_s2b_diff
    float64[] t_s2b_diff
    
    ================================================================================
    MSG: calib_interface_msgs/ImuCalibDetailedErrorCodeEnum
    uint16 NORMAL = 0
    uint16 IMU_CALIB_READ_CONFIG_FAIL = 1
    uint16 IMU_CALIB_READ_CALIB_FILE_FAIL = 2
    uint16 IMU_CALIB_READ_VEHICLE_PARAM_NO_EXIST = 3
    uint16 IMU_CALIB_READ_NORMAL_PARAM_FAIL = 4
    uint16 IMU_CALIB_CREATE_RESULT_FILE_FAIL = 5
    uint16 IMU_CALIB_IMU_NEED_CALIB_NULL = 6
    uint16 IMU_CALIB_EGO_SOLVER_CREATE_FAIL = 1000
    uint16 IMU_CALIB_EGO_SOLVER_INIT_FAIL = 1001
    uint16 IMU_CALIB_EGO_SOLVER_SET_SAVE_STATUS_LOG_FILES_FAIL = 1002
    uint16 IMU_CALIB_EGO_SOLVER_SET_PUSH_DATA_CALLBACKS_FAIL = 1003
    uint16 IMU_CALIB_EGO_SOLVER_START_PIPELINE_FAIL = 1004
    uint16 IMU_CALIB_INPUT_IMU_DATA_GYRO_ERROR = 2000
    uint16 IMU_CALIB_INPUT_IMU_DATA_ACC_ERROR = 2001
    uint16 IMU_CALIB_INPUT_IMU_DATA_LOWER_FREQUENCY = 2002
    uint16 IMU_CALIB_INPUT_IMU_DATA_DISORDER = 2003
    uint16 IMU_CALIB_INPUT_WHEEL_SPEED_DATA_ERROR = 2004
    uint16 IMU_CALIB_INPUT_WHEEL_SPEED_DATA_LOWER_FREQUENCY = 2005
    uint16 IMU_CALIB_INPUT_WHEEL_SPEED_DATA_DISORDER = 2006
    uint16 IMU_CALIB_INPUT_WHEEL_PULSE_DATA_ERROR = 2007
    uint16 IMU_CALIB_INPUT_WHEEL_PULSE_DATA_LOWER_FREQUENCY = 2008
    uint16 IMU_CALIB_INPUT_WHEEL_PULSE_DATA_DISORDER = 2009
    uint16 IMU_CALIB_INPUT_WHEEL_ANGLE_DATA_ERROR = 2010
    uint16 IMU_CALIB_INPUT_WHEEL_ANGLE_DATA_LOWER_FREQUENCY = 2011
    uint16 IMU_CALIB_INPUT_WHEEL_ANGLE_DATA_DISORDER = 2012
    uint16 IMU_CALIB_INPUT_GNSS_DATA_ERROR = 2013
    uint16 IMU_CALIB_INPUT_GNSS_DATA_LOWER_FREQUENCY = 2014
    uint16 IMU_CALIB_INPUT_GNSS_DATA_DISORDER = 2015
    uint16 IMU_CALIB_INPUT_EGO_SET_IMU_DATA_ERROR = 2016
    uint16 IMU_CALIB_INPUT_EGO_SET_WHEEL_SPEED_DATA_ERROR = 2017
    uint16 IMU_CALIB_INPUT_EGO_SET_WHEEL_PULSE_DATA_ERROR = 2018
    uint16 IMU_CALIB_INPUT_EGO_SET_WHEEL_ANGLE_DATA_ERROR = 2019
    uint16 IMU_CALIB_INPUT_EGO_SET_GNSS_DATA_ERROR = 2020
    uint16 IMU_CALIB_INPUT_EGO_POSE_UNACCESSABLE = 3000
    uint16 IMU_CALIB_INPUT_EGO_POSE_INVALID = 3001
    uint16 IMU_CALIB_INPUT_EGO_POSE_TIMESTAMP_INVALID = 3002
    uint16 IMU_CALIB_INPUT_EGO_POSE_TRANSLATION_INVALID = 3003
    uint16 IMU_CALIB_INPUT_EGO_POSE_ROTATION_INVALID = 3004
    uint16 IMU_CALIB_INPUT_EGO_POSE_GYRO_INVALID = 3005
    uint16 IMU_CALIB_INPUT_EGO_POSE_VELOCITY_INVALID = 3006
    uint16 IMU_CALIB_INPUT_EGO_POSE_TRANSLATION_STD_INVALID = 3007
    uint16 IMU_CALIB_INPUT_EGO_POSE_ROTATION_STD_INVALID = 3008
    uint16 IMU_CALIB_INPUT_EGO_SOLVER_GET_CONVERGENCE_FAIL = 3009
    uint16 IMU_CALIB_INPUT_EGO_SOLVER_GET_EXTRINSICS_FAIL = 3010
    uint16 IMU_CALIB_GNSS_SIGNAL_WEAK = 3011
    uint16 IMU_CALIB_IMU_BIAS_UNESTIMATED = 3012
    uint16 IMU_CALIB_COV_INCREASE_ABNORMALLY = 3013
    uint16 IMU_CALIB_COV_NOT_DECREASE = 3014
    uint16 IMU_CALIB_COV_UNACCESSABLE = 3015
    uint16 IMU_CALIB_MIN_MILEAGE_UNREACHED = 3016
    uint16 IMU_CALIB_MAX_MILEAGE_UNCONVERGED = 3017
    uint16 IMU_CALIB_INSUFFICIENT_SMOOTH_TURNS = 4000
    uint16 IMU_CALIB_INSUFFICIENT_STRIGHT_DRIVE = 4001
    uint16 IMU_CALIB_DRIVE_ACCELERATION_DECELERATION_NOT_STRAIGHT = 4002
    uint16 IMU_CALIB_DRIVE_TURN_NOT_SMOOTH = 4003
    uint16 IMU_CALIB_UNSTATIC_LAUNCH = 4004
    uint16 IMU_CALIB_NOT_BACK_TO_ORIGIN = 4005
    uint16 IMU_CALIB_DRIVE_ROUTE_BUMPY = 4006
    uint16 IMU_CALIB_DRIVE_ROUTE_INCLINED = 4007
    uint16 IMU_CALIB_DRIVE_ROUTE_SLIPPERY = 4008
    uint16 IMU_CALIB_NHC_CHECK_FAIL = 5000
    uint16 IMU_CALIB_ELEVATION_CHECK_FAIL = 5001
    uint16 IMU_CALIB_IMU_UPDATE_PARAM_FAILED = 5002
    uint16 IMU_CALIB_IMU_SAVE_PARAM_FAILED = 5003
    uint16 IMU_CALIB_ABNORMAL_ROTATION_ERROR_WITH_INIT = 5004
    uint16 IMU_CALIB_ABNORMAL_TRANSLATION_ERROR_WITH_INIT = 5005
    uint16 IMU_CALIB_LARGE_DEVIATION_IN_DESIGNED_ROTATION = 5006
    uint16 IMU_CALIB_LARGE_DEVIATION_CALIB_AND_VALIDATOR = 5007
    uint16 IMU_CALIB_PUB_RESULT_FAIL = 5008
    uint16 IMU_CALIB_STOP_ERROR = 5009
    uint16 IMU_LOSS_FRAME = 6001
    uint16 IMU_LARGE_NOISE = 6002
    uint16 IMU_LARGE_BIAS = 6003
    uint16 IMU_READ_INIT_FILE_FAIL = 6004
    uint16 IMU_OUTPUT_FILE_FAIL = 6005
    uint16 IMU_ABNORMAL_ROTATION_WITH_INIT = 6006
    uint16 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ImuCalibInfo(null);
    if (msg.imu_name !== undefined) {
      resolved.imu_name = msg.imu_name;
    }
    else {
      resolved.imu_name = ''
    }

    if (msg.imu_id !== undefined) {
      resolved.imu_id = msg.imu_id;
    }
    else {
      resolved.imu_id = 0
    }

    if (msg.r_s2b !== undefined) {
      resolved.r_s2b = msg.r_s2b;
    }
    else {
      resolved.r_s2b = []
    }

    if (msg.t_s2b !== undefined) {
      resolved.t_s2b = msg.t_s2b;
    }
    else {
      resolved.t_s2b = []
    }

    if (msg.imu_error_code !== undefined) {
      resolved.imu_error_code = ImuCalibDetailedErrorCodeEnum.Resolve(msg.imu_error_code)
    }
    else {
      resolved.imu_error_code = new ImuCalibDetailedErrorCodeEnum()
    }

    if (msg.r_s2b_diff !== undefined) {
      resolved.r_s2b_diff = msg.r_s2b_diff;
    }
    else {
      resolved.r_s2b_diff = []
    }

    if (msg.t_s2b_diff !== undefined) {
      resolved.t_s2b_diff = msg.t_s2b_diff;
    }
    else {
      resolved.t_s2b_diff = []
    }

    return resolved;
    }
};

module.exports = ImuCalibInfo;
