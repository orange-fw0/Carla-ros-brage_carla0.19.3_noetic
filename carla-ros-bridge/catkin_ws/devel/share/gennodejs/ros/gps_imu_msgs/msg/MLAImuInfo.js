// Auto-generated. Do not edit!

// (in-package gps_imu_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MLAImuBasic = require('./MLAImuBasic.js');

//-----------------------------------------------------------

class MLAImuInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.imu_data_basic = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('imu_data_basic')) {
        this.imu_data_basic = initObj.imu_data_basic
      }
      else {
        this.imu_data_basic = new MLAImuBasic();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MLAImuInfo
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [imu_data_basic]
    bufferOffset = MLAImuBasic.serialize(obj.imu_data_basic, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MLAImuInfo
    let len;
    let data = new MLAImuInfo(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [imu_data_basic]
    data.imu_data_basic = MLAImuBasic.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 57;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gps_imu_msgs/MLAImuInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c958b67182ad72d78e12f405ff7a90a0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 MLA_IMU_BASIC = 1
    uint8 available
    gps_imu_msgs/MLAImuBasic imu_data_basic
    
    ================================================================================
    MSG: gps_imu_msgs/MLAImuBasic
    float64 accx
    float64 accy
    float64 accz
    float64 gyrox
    float64 gyroy
    float64 gyroz
    float64 temperature
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MLAImuInfo(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.imu_data_basic !== undefined) {
      resolved.imu_data_basic = MLAImuBasic.Resolve(msg.imu_data_basic)
    }
    else {
      resolved.imu_data_basic = new MLAImuBasic()
    }

    return resolved;
    }
};

// Constants for message
MLAImuInfo.Constants = {
  MLA_IMU_BASIC: 1,
}

module.exports = MLAImuInfo;
