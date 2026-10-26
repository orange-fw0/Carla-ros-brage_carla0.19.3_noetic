// Auto-generated. Do not edit!

// (in-package calib_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LidarCalibDetailedErrorCodeEnum = require('./LidarCalibDetailedErrorCodeEnum.js');

//-----------------------------------------------------------

class LidarCalibInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lidar_name = null;
      this.lidar_id = null;
      this.r_s2b = null;
      this.t_s2b = null;
      this.error_code = null;
      this.r_s2b_diff = null;
      this.t_s2b_diff = null;
    }
    else {
      if (initObj.hasOwnProperty('lidar_name')) {
        this.lidar_name = initObj.lidar_name
      }
      else {
        this.lidar_name = '';
      }
      if (initObj.hasOwnProperty('lidar_id')) {
        this.lidar_id = initObj.lidar_id
      }
      else {
        this.lidar_id = 0;
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
      if (initObj.hasOwnProperty('error_code')) {
        this.error_code = initObj.error_code
      }
      else {
        this.error_code = new LidarCalibDetailedErrorCodeEnum();
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
    // Serializes a message object of type LidarCalibInfo
    // Serialize message field [lidar_name]
    bufferOffset = _serializer.string(obj.lidar_name, buffer, bufferOffset);
    // Serialize message field [lidar_id]
    bufferOffset = _serializer.uint32(obj.lidar_id, buffer, bufferOffset);
    // Serialize message field [r_s2b]
    bufferOffset = _arraySerializer.float64(obj.r_s2b, buffer, bufferOffset, null);
    // Serialize message field [t_s2b]
    bufferOffset = _arraySerializer.float64(obj.t_s2b, buffer, bufferOffset, null);
    // Serialize message field [error_code]
    bufferOffset = LidarCalibDetailedErrorCodeEnum.serialize(obj.error_code, buffer, bufferOffset);
    // Serialize message field [r_s2b_diff]
    bufferOffset = _arraySerializer.float64(obj.r_s2b_diff, buffer, bufferOffset, null);
    // Serialize message field [t_s2b_diff]
    bufferOffset = _arraySerializer.float64(obj.t_s2b_diff, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LidarCalibInfo
    let len;
    let data = new LidarCalibInfo(null);
    // Deserialize message field [lidar_name]
    data.lidar_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [lidar_id]
    data.lidar_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [r_s2b]
    data.r_s2b = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [t_s2b]
    data.t_s2b = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [error_code]
    data.error_code = LidarCalibDetailedErrorCodeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [r_s2b_diff]
    data.r_s2b_diff = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [t_s2b_diff]
    data.t_s2b_diff = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.lidar_name);
    length += 8 * object.r_s2b.length;
    length += 8 * object.t_s2b.length;
    length += 8 * object.r_s2b_diff.length;
    length += 8 * object.t_s2b_diff.length;
    return length + 26;
  }

  static datatype() {
    // Returns string type for a message object
    return 'calib_interface_msgs/LidarCalibInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '56ff464b1ad82c1724641de8e9add352';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new LidarCalibInfo(null);
    if (msg.lidar_name !== undefined) {
      resolved.lidar_name = msg.lidar_name;
    }
    else {
      resolved.lidar_name = ''
    }

    if (msg.lidar_id !== undefined) {
      resolved.lidar_id = msg.lidar_id;
    }
    else {
      resolved.lidar_id = 0
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

    if (msg.error_code !== undefined) {
      resolved.error_code = LidarCalibDetailedErrorCodeEnum.Resolve(msg.error_code)
    }
    else {
      resolved.error_code = new LidarCalibDetailedErrorCodeEnum()
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

module.exports = LidarCalibInfo;
