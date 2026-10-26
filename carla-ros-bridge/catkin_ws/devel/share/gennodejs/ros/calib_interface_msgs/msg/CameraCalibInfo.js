// Auto-generated. Do not edit!

// (in-package calib_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CameraModelEnum = require('./CameraModelEnum.js');
let RadTan = require('./RadTan.js');
let Polyn = require('./Polyn.js');
let CamCalibDetailedErrorCodeEnum = require('./CamCalibDetailedErrorCodeEnum.js');
let perception_interface_msgs = _finder('perception_interface_msgs');

//-----------------------------------------------------------

class CameraCalibInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.camera_name = null;
      this.r_s2b = null;
      this.r_s2b_diff = null;
      this.t_s2b = null;
      this.camera_model = null;
      this.fx = null;
      this.fy = null;
      this.cx = null;
      this.cy = null;
      this.radtan_type = null;
      this.polyn_type = null;
      this.error_code = null;
      this.t_s2b_diff = null;
    }
    else {
      if (initObj.hasOwnProperty('camera_name')) {
        this.camera_name = initObj.camera_name
      }
      else {
        this.camera_name = new perception_interface_msgs.msg.CameraSourceEnum();
      }
      if (initObj.hasOwnProperty('r_s2b')) {
        this.r_s2b = initObj.r_s2b
      }
      else {
        this.r_s2b = [];
      }
      if (initObj.hasOwnProperty('r_s2b_diff')) {
        this.r_s2b_diff = initObj.r_s2b_diff
      }
      else {
        this.r_s2b_diff = [];
      }
      if (initObj.hasOwnProperty('t_s2b')) {
        this.t_s2b = initObj.t_s2b
      }
      else {
        this.t_s2b = [];
      }
      if (initObj.hasOwnProperty('camera_model')) {
        this.camera_model = initObj.camera_model
      }
      else {
        this.camera_model = new CameraModelEnum();
      }
      if (initObj.hasOwnProperty('fx')) {
        this.fx = initObj.fx
      }
      else {
        this.fx = 0.0;
      }
      if (initObj.hasOwnProperty('fy')) {
        this.fy = initObj.fy
      }
      else {
        this.fy = 0.0;
      }
      if (initObj.hasOwnProperty('cx')) {
        this.cx = initObj.cx
      }
      else {
        this.cx = 0.0;
      }
      if (initObj.hasOwnProperty('cy')) {
        this.cy = initObj.cy
      }
      else {
        this.cy = 0.0;
      }
      if (initObj.hasOwnProperty('radtan_type')) {
        this.radtan_type = initObj.radtan_type
      }
      else {
        this.radtan_type = new RadTan();
      }
      if (initObj.hasOwnProperty('polyn_type')) {
        this.polyn_type = initObj.polyn_type
      }
      else {
        this.polyn_type = new Polyn();
      }
      if (initObj.hasOwnProperty('error_code')) {
        this.error_code = initObj.error_code
      }
      else {
        this.error_code = new CamCalibDetailedErrorCodeEnum();
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
    // Serializes a message object of type CameraCalibInfo
    // Serialize message field [camera_name]
    bufferOffset = perception_interface_msgs.msg.CameraSourceEnum.serialize(obj.camera_name, buffer, bufferOffset);
    // Serialize message field [r_s2b]
    bufferOffset = _arraySerializer.float64(obj.r_s2b, buffer, bufferOffset, null);
    // Serialize message field [r_s2b_diff]
    bufferOffset = _arraySerializer.float64(obj.r_s2b_diff, buffer, bufferOffset, null);
    // Serialize message field [t_s2b]
    bufferOffset = _arraySerializer.float64(obj.t_s2b, buffer, bufferOffset, null);
    // Serialize message field [camera_model]
    bufferOffset = CameraModelEnum.serialize(obj.camera_model, buffer, bufferOffset);
    // Serialize message field [fx]
    bufferOffset = _serializer.float64(obj.fx, buffer, bufferOffset);
    // Serialize message field [fy]
    bufferOffset = _serializer.float64(obj.fy, buffer, bufferOffset);
    // Serialize message field [cx]
    bufferOffset = _serializer.float64(obj.cx, buffer, bufferOffset);
    // Serialize message field [cy]
    bufferOffset = _serializer.float64(obj.cy, buffer, bufferOffset);
    // Serialize message field [radtan_type]
    bufferOffset = RadTan.serialize(obj.radtan_type, buffer, bufferOffset);
    // Serialize message field [polyn_type]
    bufferOffset = Polyn.serialize(obj.polyn_type, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = CamCalibDetailedErrorCodeEnum.serialize(obj.error_code, buffer, bufferOffset);
    // Serialize message field [t_s2b_diff]
    bufferOffset = _arraySerializer.float64(obj.t_s2b_diff, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CameraCalibInfo
    let len;
    let data = new CameraCalibInfo(null);
    // Deserialize message field [camera_name]
    data.camera_name = perception_interface_msgs.msg.CameraSourceEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [r_s2b]
    data.r_s2b = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [r_s2b_diff]
    data.r_s2b_diff = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [t_s2b]
    data.t_s2b = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [camera_model]
    data.camera_model = CameraModelEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [fx]
    data.fx = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [fy]
    data.fy = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cx]
    data.cx = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cy]
    data.cy = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [radtan_type]
    data.radtan_type = RadTan.deserialize(buffer, bufferOffset);
    // Deserialize message field [polyn_type]
    data.polyn_type = Polyn.deserialize(buffer, bufferOffset);
    // Deserialize message field [error_code]
    data.error_code = CamCalibDetailedErrorCodeEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [t_s2b_diff]
    data.t_s2b_diff = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.r_s2b.length;
    length += 8 * object.r_s2b_diff.length;
    length += 8 * object.t_s2b.length;
    length += 8 * object.t_s2b_diff.length;
    return length + 148;
  }

  static datatype() {
    // Returns string type for a message object
    return 'calib_interface_msgs/CameraCalibInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5c387890dd30237e25c306fad81a03be';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    perception_interface_msgs/CameraSourceEnum camera_name
    float64[] r_s2b
    float64[] r_s2b_diff
    float64[] t_s2b
    calib_interface_msgs/CameraModelEnum camera_model
    float64 fx
    float64 fy
    float64 cx
    float64 cy
    calib_interface_msgs/RadTan radtan_type
    calib_interface_msgs/Polyn polyn_type
    calib_interface_msgs/CamCalibDetailedErrorCodeEnum error_code
    float64[] t_s2b_diff
    
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
    MSG: calib_interface_msgs/CameraModelEnum
    uint8 CAMERA_MODEL_POLYN = 0
    uint8 CAMERA_MODEL_RADTAN = 1
    uint8 value
    
    ================================================================================
    MSG: calib_interface_msgs/RadTan
    float64 k1
    float64 k2
    float64 p1
    float64 p2
    float64 k3
    float64 k4
    float64 k5
    float64 k6
    
    ================================================================================
    MSG: calib_interface_msgs/Polyn
    float64 kc1
    float64 kc2
    float64 kc3
    float64 kc4
    
    ================================================================================
    MSG: calib_interface_msgs/CamCalibDetailedErrorCodeEnum
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
    const resolved = new CameraCalibInfo(null);
    if (msg.camera_name !== undefined) {
      resolved.camera_name = perception_interface_msgs.msg.CameraSourceEnum.Resolve(msg.camera_name)
    }
    else {
      resolved.camera_name = new perception_interface_msgs.msg.CameraSourceEnum()
    }

    if (msg.r_s2b !== undefined) {
      resolved.r_s2b = msg.r_s2b;
    }
    else {
      resolved.r_s2b = []
    }

    if (msg.r_s2b_diff !== undefined) {
      resolved.r_s2b_diff = msg.r_s2b_diff;
    }
    else {
      resolved.r_s2b_diff = []
    }

    if (msg.t_s2b !== undefined) {
      resolved.t_s2b = msg.t_s2b;
    }
    else {
      resolved.t_s2b = []
    }

    if (msg.camera_model !== undefined) {
      resolved.camera_model = CameraModelEnum.Resolve(msg.camera_model)
    }
    else {
      resolved.camera_model = new CameraModelEnum()
    }

    if (msg.fx !== undefined) {
      resolved.fx = msg.fx;
    }
    else {
      resolved.fx = 0.0
    }

    if (msg.fy !== undefined) {
      resolved.fy = msg.fy;
    }
    else {
      resolved.fy = 0.0
    }

    if (msg.cx !== undefined) {
      resolved.cx = msg.cx;
    }
    else {
      resolved.cx = 0.0
    }

    if (msg.cy !== undefined) {
      resolved.cy = msg.cy;
    }
    else {
      resolved.cy = 0.0
    }

    if (msg.radtan_type !== undefined) {
      resolved.radtan_type = RadTan.Resolve(msg.radtan_type)
    }
    else {
      resolved.radtan_type = new RadTan()
    }

    if (msg.polyn_type !== undefined) {
      resolved.polyn_type = Polyn.Resolve(msg.polyn_type)
    }
    else {
      resolved.polyn_type = new Polyn()
    }

    if (msg.error_code !== undefined) {
      resolved.error_code = CamCalibDetailedErrorCodeEnum.Resolve(msg.error_code)
    }
    else {
      resolved.error_code = new CamCalibDetailedErrorCodeEnum()
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

module.exports = CameraCalibInfo;
