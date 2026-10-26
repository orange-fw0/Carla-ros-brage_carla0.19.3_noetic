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
let ObstacleKeyPointData = require('./ObstacleKeyPointData.js');

//-----------------------------------------------------------

class UssRtObstaclePtsData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.uss_obstacle_pts_posture = null;
      this.uss_rt_obstacle_pts_data = null;
    }
    else {
      if (initObj.hasOwnProperty('uss_obstacle_pts_posture')) {
        this.uss_obstacle_pts_posture = initObj.uss_obstacle_pts_posture
      }
      else {
        this.uss_obstacle_pts_posture = new UssObstaclePosture();
      }
      if (initObj.hasOwnProperty('uss_rt_obstacle_pts_data')) {
        this.uss_rt_obstacle_pts_data = initObj.uss_rt_obstacle_pts_data
      }
      else {
        this.uss_rt_obstacle_pts_data = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UssRtObstaclePtsData
    // Serialize message field [uss_obstacle_pts_posture]
    bufferOffset = UssObstaclePosture.serialize(obj.uss_obstacle_pts_posture, buffer, bufferOffset);
    // Serialize message field [uss_rt_obstacle_pts_data]
    // Serialize the length for message field [uss_rt_obstacle_pts_data]
    bufferOffset = _serializer.uint32(obj.uss_rt_obstacle_pts_data.length, buffer, bufferOffset);
    obj.uss_rt_obstacle_pts_data.forEach((val) => {
      bufferOffset = ObstacleKeyPointData.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UssRtObstaclePtsData
    let len;
    let data = new UssRtObstaclePtsData(null);
    // Deserialize message field [uss_obstacle_pts_posture]
    data.uss_obstacle_pts_posture = UssObstaclePosture.deserialize(buffer, bufferOffset);
    // Deserialize message field [uss_rt_obstacle_pts_data]
    // Deserialize array length for message field [uss_rt_obstacle_pts_data]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.uss_rt_obstacle_pts_data = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.uss_rt_obstacle_pts_data[i] = ObstacleKeyPointData.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.uss_rt_obstacle_pts_data.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sensor_interface_msgs/UssRtObstaclePtsData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b762c1c7a7f39a8ffe865a5830d0adf1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    sensor_interface_msgs/UssObstaclePosture uss_obstacle_pts_posture
    sensor_interface_msgs/ObstacleKeyPointData[] uss_rt_obstacle_pts_data
    
    ================================================================================
    MSG: sensor_interface_msgs/UssObstaclePosture
    uint64 timestamp
    float32 posture_x
    float32 posture_y
    float32 posture_theta
    
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
    const resolved = new UssRtObstaclePtsData(null);
    if (msg.uss_obstacle_pts_posture !== undefined) {
      resolved.uss_obstacle_pts_posture = UssObstaclePosture.Resolve(msg.uss_obstacle_pts_posture)
    }
    else {
      resolved.uss_obstacle_pts_posture = new UssObstaclePosture()
    }

    if (msg.uss_rt_obstacle_pts_data !== undefined) {
      resolved.uss_rt_obstacle_pts_data = new Array(msg.uss_rt_obstacle_pts_data.length);
      for (let i = 0; i < resolved.uss_rt_obstacle_pts_data.length; ++i) {
        resolved.uss_rt_obstacle_pts_data[i] = ObstacleKeyPointData.Resolve(msg.uss_rt_obstacle_pts_data[i]);
      }
    }
    else {
      resolved.uss_rt_obstacle_pts_data = []
    }

    return resolved;
    }
};

module.exports = UssRtObstaclePtsData;
