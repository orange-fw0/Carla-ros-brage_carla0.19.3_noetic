// Auto-generated. Do not edit!

// (in-package sensor_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let UssObstaclePosture = require('./UssObstaclePosture.js');
let UltrasonicObstacleInfo = require('./UltrasonicObstacleInfo.js');

//-----------------------------------------------------------

class UssKeyPointObstacleData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.uss_obstacle_posture = null;
      this.uss_obstacle_info = null;
    }
    else {
      if (initObj.hasOwnProperty('uss_obstacle_posture')) {
        this.uss_obstacle_posture = initObj.uss_obstacle_posture
      }
      else {
        this.uss_obstacle_posture = new UssObstaclePosture();
      }
      if (initObj.hasOwnProperty('uss_obstacle_info')) {
        this.uss_obstacle_info = initObj.uss_obstacle_info
      }
      else {
        this.uss_obstacle_info = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UssKeyPointObstacleData
    // Serialize message field [uss_obstacle_posture]
    bufferOffset = UssObstaclePosture.serialize(obj.uss_obstacle_posture, buffer, bufferOffset);
    // Serialize message field [uss_obstacle_info]
    // Serialize the length for message field [uss_obstacle_info]
    bufferOffset = _serializer.uint32(obj.uss_obstacle_info.length, buffer, bufferOffset);
    obj.uss_obstacle_info.forEach((val) => {
      bufferOffset = UltrasonicObstacleInfo.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UssKeyPointObstacleData
    let len;
    let data = new UssKeyPointObstacleData(null);
    // Deserialize message field [uss_obstacle_posture]
    data.uss_obstacle_posture = UssObstaclePosture.deserialize(buffer, bufferOffset);
    // Deserialize message field [uss_obstacle_info]
    // Deserialize array length for message field [uss_obstacle_info]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.uss_obstacle_info = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.uss_obstacle_info[i] = UltrasonicObstacleInfo.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.uss_obstacle_info.forEach((val) => {
      length += UltrasonicObstacleInfo.getMessageSize(val);
    });
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sensor_interface_msgs/UssKeyPointObstacleData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6abde67b182ad1617177e02d47c4fbc7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    sensor_interface_msgs/UssObstaclePosture uss_obstacle_posture
    sensor_interface_msgs/UltrasonicObstacleInfo[] uss_obstacle_info
    
    ================================================================================
    MSG: sensor_interface_msgs/UssObstaclePosture
    uint64 timestamp
    float32 posture_x
    float32 posture_y
    float32 posture_theta
    
    ================================================================================
    MSG: sensor_interface_msgs/UltrasonicObstacleInfo
    uint64 timestamp
    float32 key_point_probability
    sensor_interface_msgs/ObstacleKeyPointData[] obstacle_key_point_data
    
    ================================================================================
    MSG: sensor_interface_msgs/ObstacleKeyPointData
    float32 point_x
    float32 point_y
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UssKeyPointObstacleData(null);
    if (msg.uss_obstacle_posture !== undefined) {
      resolved.uss_obstacle_posture = UssObstaclePosture.Resolve(msg.uss_obstacle_posture)
    }
    else {
      resolved.uss_obstacle_posture = new UssObstaclePosture()
    }

    if (msg.uss_obstacle_info !== undefined) {
      resolved.uss_obstacle_info = new Array(msg.uss_obstacle_info.length);
      for (let i = 0; i < resolved.uss_obstacle_info.length; ++i) {
        resolved.uss_obstacle_info[i] = UltrasonicObstacleInfo.Resolve(msg.uss_obstacle_info[i]);
      }
    }
    else {
      resolved.uss_obstacle_info = []
    }

    return resolved;
    }
};

module.exports = UssKeyPointObstacleData;
