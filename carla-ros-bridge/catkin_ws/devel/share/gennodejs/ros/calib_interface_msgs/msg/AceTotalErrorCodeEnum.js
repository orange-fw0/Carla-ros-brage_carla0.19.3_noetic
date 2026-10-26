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

class AceTotalErrorCodeEnum {
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
    // Serializes a message object of type AceTotalErrorCodeEnum
    // Serialize message field [value]
    bufferOffset = _serializer.uint8(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AceTotalErrorCodeEnum
    let len;
    let data = new AceTotalErrorCodeEnum(null);
    // Deserialize message field [value]
    data.value = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'calib_interface_msgs/AceTotalErrorCodeEnum';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c4aaca6981ae03a7f2695eceadd38b6d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 ACE_OK = 0
    uint8 CAMERA_CALIB_FAILED = 1
    uint8 CAMERA_OFFCALIB_FAILED = 2
    uint8 IMU_CALIB_FAILED = 3
    uint8 LIDAR_CALIB_FAILED = 4
    uint8 LIDAR_OFFCALIB_FAILED = 5
    uint8 ACE_INIT_FAILED = 9
    uint8 TRIGGER_SAVE_DATA = 10
    uint8 ACE_OK_NO_ACTION = 11
    uint8 ACE_OK_NEED_TO_UPDATE_PARAM_WITHOUT_SUPRESS = 12
    uint8 ACE_OK_NEED_TO_UPDATE_PARAM_WITH_SUPRESS = 13
    uint8 ACE_OK_NEED_TO_UPDATE_PARAM_FORCE_AFTERSALE = 14
    uint8 READ_CONFIG_FAILED = 20
    uint8 READ_CALIBRATION_FAILED = 21
    uint8 OUTPUT_FAILED = 22
    uint8 IMU_ACC_ERROR = 23
    uint8 IMU_ACC_LOSS_FRAME = 24
    uint8 IMU_ACC_DISORDER = 25
    uint8 IMU_GYRO_ERROR = 26
    uint8 IMU_GYRO_LOSS_FRAME = 27
    uint8 IMU_GYRO_DISORDER = 28
    uint8 GNSS_DATA_ERROR = 29
    uint8 GNSS_DATA_LOSS_FRAME = 30
    uint8 GNSS_DATA_DISORDER = 31
    uint8 IMAGE_DATA_ERROR = 32
    uint8 IMAGE_DATA_LOSS_FRAME = 33
    uint8 IMAGE_DATA_DISORDER = 34
    uint8 VISTA_DATA_ERROR = 35
    uint8 VISTA_DATA_LOSS_FRAME = 36
    uint8 VISTA_DATA_DISORDER = 37
    uint8 WHEEL_SPEED_ERROR = 38
    uint8 WHEEL_SPEED_LOSS_FRAME = 39
    uint8 WHEEL_SPEED_DISORDER = 40
    uint8 WHEEL_ANGLE_ERROR = 41
    uint8 WHEEL_ANGLE_LOSS_FRAME = 42
    uint8 WHEEL_ANGLE_DISORDER = 43
    uint8 LIDAR_DATA_ERROR = 44
    uint8 LIDAR_DATA_LOSS_FRAME = 45
    uint8 LIDAR_DATA_DISORDER = 46
    uint8 WHEEL_PULSE_ERROR = 47
    uint8 WHEEL_PULSE_LOSS_FRAME = 48
    uint8 WHEEL_PULSE_DISORDER = 49
    uint8 SUSPENSION_DATA_ERROR = 50
    uint8 SUSPENSION_CHANGED = 51
    uint8 EGOPOSE_DATA_ERROR = 52
    uint8 EGOPOSE_DATA_LOSS_FRAME = 53
    uint8 EGOPOSE_DATA_DISORDER = 54
    uint8 FILE_ACCESS_FAILED = 55
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AceTotalErrorCodeEnum(null);
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
AceTotalErrorCodeEnum.Constants = {
  ACE_OK: 0,
  CAMERA_CALIB_FAILED: 1,
  CAMERA_OFFCALIB_FAILED: 2,
  IMU_CALIB_FAILED: 3,
  LIDAR_CALIB_FAILED: 4,
  LIDAR_OFFCALIB_FAILED: 5,
  ACE_INIT_FAILED: 9,
  TRIGGER_SAVE_DATA: 10,
  ACE_OK_NO_ACTION: 11,
  ACE_OK_NEED_TO_UPDATE_PARAM_WITHOUT_SUPRESS: 12,
  ACE_OK_NEED_TO_UPDATE_PARAM_WITH_SUPRESS: 13,
  ACE_OK_NEED_TO_UPDATE_PARAM_FORCE_AFTERSALE: 14,
  READ_CONFIG_FAILED: 20,
  READ_CALIBRATION_FAILED: 21,
  OUTPUT_FAILED: 22,
  IMU_ACC_ERROR: 23,
  IMU_ACC_LOSS_FRAME: 24,
  IMU_ACC_DISORDER: 25,
  IMU_GYRO_ERROR: 26,
  IMU_GYRO_LOSS_FRAME: 27,
  IMU_GYRO_DISORDER: 28,
  GNSS_DATA_ERROR: 29,
  GNSS_DATA_LOSS_FRAME: 30,
  GNSS_DATA_DISORDER: 31,
  IMAGE_DATA_ERROR: 32,
  IMAGE_DATA_LOSS_FRAME: 33,
  IMAGE_DATA_DISORDER: 34,
  VISTA_DATA_ERROR: 35,
  VISTA_DATA_LOSS_FRAME: 36,
  VISTA_DATA_DISORDER: 37,
  WHEEL_SPEED_ERROR: 38,
  WHEEL_SPEED_LOSS_FRAME: 39,
  WHEEL_SPEED_DISORDER: 40,
  WHEEL_ANGLE_ERROR: 41,
  WHEEL_ANGLE_LOSS_FRAME: 42,
  WHEEL_ANGLE_DISORDER: 43,
  LIDAR_DATA_ERROR: 44,
  LIDAR_DATA_LOSS_FRAME: 45,
  LIDAR_DATA_DISORDER: 46,
  WHEEL_PULSE_ERROR: 47,
  WHEEL_PULSE_LOSS_FRAME: 48,
  WHEEL_PULSE_DISORDER: 49,
  SUSPENSION_DATA_ERROR: 50,
  SUSPENSION_CHANGED: 51,
  EGOPOSE_DATA_ERROR: 52,
  EGOPOSE_DATA_LOSS_FRAME: 53,
  EGOPOSE_DATA_DISORDER: 54,
  FILE_ACCESS_FAILED: 55,
}

module.exports = AceTotalErrorCodeEnum;
