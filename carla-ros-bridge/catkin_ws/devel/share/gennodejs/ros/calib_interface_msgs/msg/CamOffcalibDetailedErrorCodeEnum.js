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

class CamOffcalibDetailedErrorCodeEnum {
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
    // Serializes a message object of type CamOffcalibDetailedErrorCodeEnum
    // Serialize message field [value]
    bufferOffset = _serializer.uint16(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CamOffcalibDetailedErrorCodeEnum
    let len;
    let data = new CamOffcalibDetailedErrorCodeEnum(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'calib_interface_msgs/CamOffcalibDetailedErrorCodeEnum';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4b5556d863cfb070992d7616e29c644b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new CamOffcalibDetailedErrorCodeEnum(null);
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
CamOffcalibDetailedErrorCodeEnum.Constants = {
  NORMAL: 0,
  EGO_INIT_FAILED: 1,
  NEED_CHECKED_CAM_NUM_ZERO: 2,
  EGO_POSE_CAM_VALID_UNACCESSABLE: 10,
  EGO_POSE_CROSS_CAM_VALID_UNACCESSABLE: 11,
  EGO_STATE_CAM_VALID_FREQ_TOO_LOW: 12,
  EGO_STATE_CROSS_CAM_VALID_FREQ_TOO_LOW: 13,
  CAM_VALID_VISUAL_FEATURE_INFO_NULL: 50,
  CAM_VALID_LONG_TIME_VISUAL_FEATURE_NUM_TOO_FEW: 51,
  CAM_VALID_VTRACKFRAMEBUFFER_FILL: 52,
  CAM_VALID_STATEBUFFER_FILL: 53,
  CAM_VALID_VALID_FEATURE_NUM_TOO_FEW: 54,
  CROSS_CAM_VALID_VTRACKFRAMEBUFFER_FILL: 100,
  CROSS_CAM_VALID_STATEBUFFER_FILL: 101,
  UPDATE_CAM_ID_OUT_OF_RANGE: 150,
}

module.exports = CamOffcalibDetailedErrorCodeEnum;
