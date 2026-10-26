// Auto-generated. Do not edit!

// (in-package calib_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ImuCalibInfo = require('./ImuCalibInfo.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class PlacIMUCalibResults {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.calib_info = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('calib_info')) {
        this.calib_info = initObj.calib_info
      }
      else {
        this.calib_info = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PlacIMUCalibResults
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [calib_info]
    // Serialize the length for message field [calib_info]
    bufferOffset = _serializer.uint32(obj.calib_info.length, buffer, bufferOffset);
    obj.calib_info.forEach((val) => {
      bufferOffset = ImuCalibInfo.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PlacIMUCalibResults
    let len;
    let data = new PlacIMUCalibResults(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [calib_info]
    // Deserialize array length for message field [calib_info]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.calib_info = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.calib_info[i] = ImuCalibInfo.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.calib_info.forEach((val) => {
      length += ImuCalibInfo.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'calib_interface_msgs/PlacIMUCalibResults';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ab50f0657cb776f71b74427727fe334e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    calib_interface_msgs/ImuCalibInfo[] calib_info
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: calib_interface_msgs/ImuCalibInfo
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
    const resolved = new PlacIMUCalibResults(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.calib_info !== undefined) {
      resolved.calib_info = new Array(msg.calib_info.length);
      for (let i = 0; i < resolved.calib_info.length; ++i) {
        resolved.calib_info[i] = ImuCalibInfo.Resolve(msg.calib_info[i]);
      }
    }
    else {
      resolved.calib_info = []
    }

    return resolved;
    }
};

module.exports = PlacIMUCalibResults;
