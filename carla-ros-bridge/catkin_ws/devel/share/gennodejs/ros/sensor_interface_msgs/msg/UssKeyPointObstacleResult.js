// Auto-generated. Do not edit!

// (in-package sensor_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let UltrasonicResultMeta = require('./UltrasonicResultMeta.js');
let UssKeyPointObstacleData = require('./UssKeyPointObstacleData.js');
let UssRtObstaclePtsData = require('./UssRtObstaclePtsData.js');

//-----------------------------------------------------------

class UssKeyPointObstacleResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.meta = null;
      this.uss_obstacle_data = null;
      this.uss_rt_obstacle_pts = null;
    }
    else {
      if (initObj.hasOwnProperty('meta')) {
        this.meta = initObj.meta
      }
      else {
        this.meta = new UltrasonicResultMeta();
      }
      if (initObj.hasOwnProperty('uss_obstacle_data')) {
        this.uss_obstacle_data = initObj.uss_obstacle_data
      }
      else {
        this.uss_obstacle_data = new UssKeyPointObstacleData();
      }
      if (initObj.hasOwnProperty('uss_rt_obstacle_pts')) {
        this.uss_rt_obstacle_pts = initObj.uss_rt_obstacle_pts
      }
      else {
        this.uss_rt_obstacle_pts = new UssRtObstaclePtsData();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UssKeyPointObstacleResult
    // Serialize message field [meta]
    bufferOffset = UltrasonicResultMeta.serialize(obj.meta, buffer, bufferOffset);
    // Serialize message field [uss_obstacle_data]
    bufferOffset = UssKeyPointObstacleData.serialize(obj.uss_obstacle_data, buffer, bufferOffset);
    // Serialize message field [uss_rt_obstacle_pts]
    bufferOffset = UssRtObstaclePtsData.serialize(obj.uss_rt_obstacle_pts, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UssKeyPointObstacleResult
    let len;
    let data = new UssKeyPointObstacleResult(null);
    // Deserialize message field [meta]
    data.meta = UltrasonicResultMeta.deserialize(buffer, bufferOffset);
    // Deserialize message field [uss_obstacle_data]
    data.uss_obstacle_data = UssKeyPointObstacleData.deserialize(buffer, bufferOffset);
    // Deserialize message field [uss_rt_obstacle_pts]
    data.uss_rt_obstacle_pts = UssRtObstaclePtsData.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += UssKeyPointObstacleData.getMessageSize(object.uss_obstacle_data);
    length += UssRtObstaclePtsData.getMessageSize(object.uss_rt_obstacle_pts);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sensor_interface_msgs/UssKeyPointObstacleResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6dfc52429dd187995de32beb5bd29f07';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    sensor_interface_msgs/UltrasonicResultMeta meta
    sensor_interface_msgs/UssKeyPointObstacleData uss_obstacle_data
    sensor_interface_msgs/UssRtObstaclePtsData uss_rt_obstacle_pts
    
    ================================================================================
    MSG: sensor_interface_msgs/UltrasonicResultMeta
    uint64 timestamp_us
    uint64 seq
    
    ================================================================================
    MSG: sensor_interface_msgs/UssKeyPointObstacleData
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
    
    ================================================================================
    MSG: sensor_interface_msgs/UssRtObstaclePtsData
    sensor_interface_msgs/UssObstaclePosture uss_obstacle_pts_posture
    sensor_interface_msgs/ObstacleKeyPointData[] uss_rt_obstacle_pts_data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UssKeyPointObstacleResult(null);
    if (msg.meta !== undefined) {
      resolved.meta = UltrasonicResultMeta.Resolve(msg.meta)
    }
    else {
      resolved.meta = new UltrasonicResultMeta()
    }

    if (msg.uss_obstacle_data !== undefined) {
      resolved.uss_obstacle_data = UssKeyPointObstacleData.Resolve(msg.uss_obstacle_data)
    }
    else {
      resolved.uss_obstacle_data = new UssKeyPointObstacleData()
    }

    if (msg.uss_rt_obstacle_pts !== undefined) {
      resolved.uss_rt_obstacle_pts = UssRtObstaclePtsData.Resolve(msg.uss_rt_obstacle_pts)
    }
    else {
      resolved.uss_rt_obstacle_pts = new UssRtObstaclePtsData()
    }

    return resolved;
    }
};

module.exports = UssKeyPointObstacleResult;
