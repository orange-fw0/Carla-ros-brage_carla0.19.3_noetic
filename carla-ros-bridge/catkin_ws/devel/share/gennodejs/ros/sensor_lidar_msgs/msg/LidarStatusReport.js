// Auto-generated. Do not edit!

// (in-package sensor_lidar_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LidarMode = require('./LidarMode.js');
let LidarStatus = require('./LidarStatus.js');

//-----------------------------------------------------------

class LidarStatusReport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lidar_service_mode = null;
      this.status = null;
    }
    else {
      if (initObj.hasOwnProperty('lidar_service_mode')) {
        this.lidar_service_mode = initObj.lidar_service_mode
      }
      else {
        this.lidar_service_mode = new LidarMode();
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LidarStatusReport
    // Serialize message field [lidar_service_mode]
    bufferOffset = LidarMode.serialize(obj.lidar_service_mode, buffer, bufferOffset);
    // Serialize message field [status]
    // Serialize the length for message field [status]
    bufferOffset = _serializer.uint32(obj.status.length, buffer, bufferOffset);
    obj.status.forEach((val) => {
      bufferOffset = LidarStatus.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LidarStatusReport
    let len;
    let data = new LidarStatusReport(null);
    // Deserialize message field [lidar_service_mode]
    data.lidar_service_mode = LidarMode.deserialize(buffer, bufferOffset);
    // Deserialize message field [status]
    // Deserialize array length for message field [status]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.status = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.status[i] = LidarStatus.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 29 * object.status.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sensor_lidar_msgs/LidarStatusReport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '062867f8099d28209fbcb16d94267f6c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    sensor_lidar_msgs/LidarMode lidar_service_mode
    sensor_lidar_msgs/LidarStatus[] status
    
    ================================================================================
    MSG: sensor_lidar_msgs/LidarMode
    uint8 Normal_Mode = 0
    uint8 EOL_Calibration_Mode = 1
    uint8 AfterSale_Calibration_Mode = 2
    uint8 SuperEco = 3
    uint8 StandBy = 4
    uint8 PlayBack = 5
    uint8 Reserved = 6
    uint8 value
    
    ================================================================================
    MSG: sensor_lidar_msgs/LidarStatus
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
    const resolved = new LidarStatusReport(null);
    if (msg.lidar_service_mode !== undefined) {
      resolved.lidar_service_mode = LidarMode.Resolve(msg.lidar_service_mode)
    }
    else {
      resolved.lidar_service_mode = new LidarMode()
    }

    if (msg.status !== undefined) {
      resolved.status = new Array(msg.status.length);
      for (let i = 0; i < resolved.status.length; ++i) {
        resolved.status[i] = LidarStatus.Resolve(msg.status[i]);
      }
    }
    else {
      resolved.status = []
    }

    return resolved;
    }
};

module.exports = LidarStatusReport;
