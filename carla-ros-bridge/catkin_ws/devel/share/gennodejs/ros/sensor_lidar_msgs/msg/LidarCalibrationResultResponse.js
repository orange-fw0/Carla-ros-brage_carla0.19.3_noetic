// Auto-generated. Do not edit!

// (in-package sensor_lidar_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LidarCalibrationResult = require('./LidarCalibrationResult.js');

//-----------------------------------------------------------

class LidarCalibrationResultResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.calib_result_res = null;
    }
    else {
      if (initObj.hasOwnProperty('calib_result_res')) {
        this.calib_result_res = initObj.calib_result_res
      }
      else {
        this.calib_result_res = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LidarCalibrationResultResponse
    // Serialize message field [calib_result_res]
    // Serialize the length for message field [calib_result_res]
    bufferOffset = _serializer.uint32(obj.calib_result_res.length, buffer, bufferOffset);
    obj.calib_result_res.forEach((val) => {
      bufferOffset = LidarCalibrationResult.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LidarCalibrationResultResponse
    let len;
    let data = new LidarCalibrationResultResponse(null);
    // Deserialize message field [calib_result_res]
    // Deserialize array length for message field [calib_result_res]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.calib_result_res = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.calib_result_res[i] = LidarCalibrationResult.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.calib_result_res.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sensor_lidar_msgs/LidarCalibrationResultResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '375ba0c54636d5e0250c6155c66c3ad0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    sensor_lidar_msgs/LidarCalibrationResult[] calib_result_res
    
    ================================================================================
    MSG: sensor_lidar_msgs/LidarCalibrationResult
    sensor_lidar_msgs/LidarID id
    sensor_lidar_msgs/LidarCalibResult calib_result
    sensor_lidar_msgs/LidarHorizontResult horizont_result
    sensor_lidar_msgs/LidarRotationResult rotation_result
    uint8 canmsg_result
    
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
    MSG: sensor_lidar_msgs/LidarCalibResult
    uint8 value
    
    ================================================================================
    MSG: sensor_lidar_msgs/LidarHorizontResult
    uint8 value
    
    ================================================================================
    MSG: sensor_lidar_msgs/LidarRotationResult
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LidarCalibrationResultResponse(null);
    if (msg.calib_result_res !== undefined) {
      resolved.calib_result_res = new Array(msg.calib_result_res.length);
      for (let i = 0; i < resolved.calib_result_res.length; ++i) {
        resolved.calib_result_res[i] = LidarCalibrationResult.Resolve(msg.calib_result_res[i]);
      }
    }
    else {
      resolved.calib_result_res = []
    }

    return resolved;
    }
};

module.exports = LidarCalibrationResultResponse;
