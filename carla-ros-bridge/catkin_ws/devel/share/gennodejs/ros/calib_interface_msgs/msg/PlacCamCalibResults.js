// Auto-generated. Do not edit!

// (in-package calib_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CameraCalibInfo = require('./CameraCalibInfo.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class PlacCamCalibResults {
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
    // Serializes a message object of type PlacCamCalibResults
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [calib_info]
    // Serialize the length for message field [calib_info]
    bufferOffset = _serializer.uint32(obj.calib_info.length, buffer, bufferOffset);
    obj.calib_info.forEach((val) => {
      bufferOffset = CameraCalibInfo.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PlacCamCalibResults
    let len;
    let data = new PlacCamCalibResults(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [calib_info]
    // Deserialize array length for message field [calib_info]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.calib_info = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.calib_info[i] = CameraCalibInfo.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.calib_info.forEach((val) => {
      length += CameraCalibInfo.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'calib_interface_msgs/PlacCamCalibResults';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e2c44d0468effc260eb50d65fd294114';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    calib_interface_msgs/CameraCalibInfo[] calib_info
    
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
    MSG: calib_interface_msgs/CameraCalibInfo
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
    const resolved = new PlacCamCalibResults(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.calib_info !== undefined) {
      resolved.calib_info = new Array(msg.calib_info.length);
      for (let i = 0; i < resolved.calib_info.length; ++i) {
        resolved.calib_info[i] = CameraCalibInfo.Resolve(msg.calib_info[i]);
      }
    }
    else {
      resolved.calib_info = []
    }

    return resolved;
    }
};

module.exports = PlacCamCalibResults;
