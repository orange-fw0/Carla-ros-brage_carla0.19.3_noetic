// Auto-generated. Do not edit!

// (in-package calib_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CamOffcalibDetailedErrorCodeEnum = require('./CamOffcalibDetailedErrorCodeEnum.js');
let perception_interface_msgs = _finder('perception_interface_msgs');

//-----------------------------------------------------------

class CameraOffcalibInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.camera_name = null;
      this.camera_id = null;
      this.attach_camera_names = null;
      this.attach_camera_ids = null;
      this.error_code = null;
    }
    else {
      if (initObj.hasOwnProperty('camera_name')) {
        this.camera_name = initObj.camera_name
      }
      else {
        this.camera_name = new perception_interface_msgs.msg.CameraSourceEnum();
      }
      if (initObj.hasOwnProperty('camera_id')) {
        this.camera_id = initObj.camera_id
      }
      else {
        this.camera_id = 0;
      }
      if (initObj.hasOwnProperty('attach_camera_names')) {
        this.attach_camera_names = initObj.attach_camera_names
      }
      else {
        this.attach_camera_names = [];
      }
      if (initObj.hasOwnProperty('attach_camera_ids')) {
        this.attach_camera_ids = initObj.attach_camera_ids
      }
      else {
        this.attach_camera_ids = [];
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
    // Serializes a message object of type CameraOffcalibInfo
    // Serialize message field [camera_name]
    bufferOffset = perception_interface_msgs.msg.CameraSourceEnum.serialize(obj.camera_name, buffer, bufferOffset);
    // Serialize message field [camera_id]
    bufferOffset = _serializer.uint32(obj.camera_id, buffer, bufferOffset);
    // Serialize message field [attach_camera_names]
    // Serialize the length for message field [attach_camera_names]
    bufferOffset = _serializer.uint32(obj.attach_camera_names.length, buffer, bufferOffset);
    obj.attach_camera_names.forEach((val) => {
      bufferOffset = perception_interface_msgs.msg.CameraSourceEnum.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [attach_camera_ids]
    bufferOffset = _arraySerializer.uint32(obj.attach_camera_ids, buffer, bufferOffset, null);
    // Serialize message field [error_code]
    bufferOffset = CamOffcalibDetailedErrorCodeEnum.serialize(obj.error_code, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CameraOffcalibInfo
    let len;
    let data = new CameraOffcalibInfo(null);
    // Deserialize message field [camera_name]
    data.camera_name = perception_interface_msgs.msg.CameraSourceEnum.deserialize(buffer, bufferOffset);
    // Deserialize message field [camera_id]
    data.camera_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [attach_camera_names]
    // Deserialize array length for message field [attach_camera_names]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.attach_camera_names = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.attach_camera_names[i] = perception_interface_msgs.msg.CameraSourceEnum.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [attach_camera_ids]
    data.attach_camera_ids = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [error_code]
    data.error_code = CamOffcalibDetailedErrorCodeEnum.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.attach_camera_names.length;
    length += 4 * object.attach_camera_ids.length;
    return length + 15;
  }

  static datatype() {
    // Returns string type for a message object
    return 'calib_interface_msgs/CameraOffcalibInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '301d3cee4f8cdb9ef459bca0d04d9f3f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new CameraOffcalibInfo(null);
    if (msg.camera_name !== undefined) {
      resolved.camera_name = perception_interface_msgs.msg.CameraSourceEnum.Resolve(msg.camera_name)
    }
    else {
      resolved.camera_name = new perception_interface_msgs.msg.CameraSourceEnum()
    }

    if (msg.camera_id !== undefined) {
      resolved.camera_id = msg.camera_id;
    }
    else {
      resolved.camera_id = 0
    }

    if (msg.attach_camera_names !== undefined) {
      resolved.attach_camera_names = new Array(msg.attach_camera_names.length);
      for (let i = 0; i < resolved.attach_camera_names.length; ++i) {
        resolved.attach_camera_names[i] = perception_interface_msgs.msg.CameraSourceEnum.Resolve(msg.attach_camera_names[i]);
      }
    }
    else {
      resolved.attach_camera_names = []
    }

    if (msg.attach_camera_ids !== undefined) {
      resolved.attach_camera_ids = msg.attach_camera_ids;
    }
    else {
      resolved.attach_camera_ids = []
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

module.exports = CameraOffcalibInfo;
