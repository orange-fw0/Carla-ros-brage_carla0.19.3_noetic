// Auto-generated. Do not edit!

// (in-package sensor_lidar_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LidarID = require('./LidarID.js');
let LidarCalibrationProgressResult = require('./LidarCalibrationProgressResult.js');
let LidarError = require('./LidarError.js');

//-----------------------------------------------------------

class LidarStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.progress_result = null;
      this.calib_progress = null;
      this.error = null;
      this.calib_mode = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = new LidarID();
      }
      if (initObj.hasOwnProperty('progress_result')) {
        this.progress_result = initObj.progress_result
      }
      else {
        this.progress_result = new LidarCalibrationProgressResult();
      }
      if (initObj.hasOwnProperty('calib_progress')) {
        this.calib_progress = initObj.calib_progress
      }
      else {
        this.calib_progress = 0;
      }
      if (initObj.hasOwnProperty('error')) {
        this.error = initObj.error
      }
      else {
        this.error = new LidarError();
      }
      if (initObj.hasOwnProperty('calib_mode')) {
        this.calib_mode = initObj.calib_mode
      }
      else {
        this.calib_mode = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LidarStatus
    // Serialize message field [id]
    bufferOffset = LidarID.serialize(obj.id, buffer, bufferOffset);
    // Serialize message field [progress_result]
    bufferOffset = LidarCalibrationProgressResult.serialize(obj.progress_result, buffer, bufferOffset);
    // Serialize message field [calib_progress]
    bufferOffset = _serializer.uint8(obj.calib_progress, buffer, bufferOffset);
    // Serialize message field [error]
    bufferOffset = LidarError.serialize(obj.error, buffer, bufferOffset);
    // Serialize message field [calib_mode]
    bufferOffset = _serializer.uint32(obj.calib_mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LidarStatus
    let len;
    let data = new LidarStatus(null);
    // Deserialize message field [id]
    data.id = LidarID.deserialize(buffer, bufferOffset);
    // Deserialize message field [progress_result]
    data.progress_result = LidarCalibrationProgressResult.deserialize(buffer, bufferOffset);
    // Deserialize message field [calib_progress]
    data.calib_progress = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [error]
    data.error = LidarError.deserialize(buffer, bufferOffset);
    // Deserialize message field [calib_mode]
    data.calib_mode = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 29;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sensor_lidar_msgs/LidarStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '824d0217e9b2d6099bff37b24ed51e2c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 Normal = 0
    uint32 No_Calibration = 1
    uint32 On_Calibration = 2
    uint32 Calibration_Failed = 3
    uint32 None = 4
    sensor_lidar_msgs/LidarID id
    sensor_lidar_msgs/LidarCalibrationProgressResult progress_result
    uint8 calib_progress
    sensor_lidar_msgs/LidarError error
    uint32 calib_mode
    
    ================================================================================
    MSG: sensor_lidar_msgs/LidarID
    uint32 None = 0
    uint32 Front_Left = 1
    uint32 Front_Right = 2
    uint32 Middle_Left = 4
    uint32 Middle_Right = 8
    uint32 Rear_Left = 16
    uint32 Rear_Right = 32
    uint32 Front_Down = 64
    uint32 Front_Up = 128
    uint32 Rear_Down = 256
    uint32 Rear_Up = 512
    uint32 Centre = 1024
    uint32 value
    
    ================================================================================
    MSG: sensor_lidar_msgs/LidarCalibrationProgressResult
    uint8 None = 0
    uint8 Init = 1
    uint8 Ongoing = 2
    uint8 Complete_Successful = 3
    uint8 Complete_With_Error = 4
    uint8 value
    
    ================================================================================
    MSG: sensor_lidar_msgs/LidarError
    uint8 MemsIntialization_Err
    uint8 MemsOperating_Err
    uint8 LidarTransmitting_Err
    uint8 LidarReceiving_Err
    uint8 Lidar_Fusa_Err
    uint8 WindowContamination_Err
    uint8 SunBlind_Err
    uint8 WindowHeating_Err
    uint8 LidarInternal_Err
    uint8 LidarExternal_Err
    uint8 LidarInternal_Volt_Err
    uint32 Lidar_Temp_Err
    uint8 Clock_Err
    uint8 Sync_Err
    uint8 reserved1
    uint8 reserved2
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LidarStatus(null);
    if (msg.id !== undefined) {
      resolved.id = LidarID.Resolve(msg.id)
    }
    else {
      resolved.id = new LidarID()
    }

    if (msg.progress_result !== undefined) {
      resolved.progress_result = LidarCalibrationProgressResult.Resolve(msg.progress_result)
    }
    else {
      resolved.progress_result = new LidarCalibrationProgressResult()
    }

    if (msg.calib_progress !== undefined) {
      resolved.calib_progress = msg.calib_progress;
    }
    else {
      resolved.calib_progress = 0
    }

    if (msg.error !== undefined) {
      resolved.error = LidarError.Resolve(msg.error)
    }
    else {
      resolved.error = new LidarError()
    }

    if (msg.calib_mode !== undefined) {
      resolved.calib_mode = msg.calib_mode;
    }
    else {
      resolved.calib_mode = 0
    }

    return resolved;
    }
};

// Constants for message
LidarStatus.Constants = {
  NORMAL: 0,
  NO_CALIBRATION: 1,
  ON_CALIBRATION: 2,
  CALIBRATION_FAILED: 3,
  NONE: 4,
}

module.exports = LidarStatus;
