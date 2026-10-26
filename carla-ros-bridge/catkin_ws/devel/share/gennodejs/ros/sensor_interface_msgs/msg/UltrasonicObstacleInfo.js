// Auto-generated. Do not edit!

// (in-package sensor_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ObstacleKeyPointData = require('./ObstacleKeyPointData.js');

//-----------------------------------------------------------

class UltrasonicObstacleInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timestamp = null;
      this.key_point_probability = null;
      this.obstacle_key_point_data = null;
    }
    else {
      if (initObj.hasOwnProperty('timestamp')) {
        this.timestamp = initObj.timestamp
      }
      else {
        this.timestamp = 0;
      }
      if (initObj.hasOwnProperty('key_point_probability')) {
        this.key_point_probability = initObj.key_point_probability
      }
      else {
        this.key_point_probability = 0.0;
      }
      if (initObj.hasOwnProperty('obstacle_key_point_data')) {
        this.obstacle_key_point_data = initObj.obstacle_key_point_data
      }
      else {
        this.obstacle_key_point_data = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UltrasonicObstacleInfo
    // Serialize message field [timestamp]
    bufferOffset = _serializer.uint64(obj.timestamp, buffer, bufferOffset);
    // Serialize message field [key_point_probability]
    bufferOffset = _serializer.float32(obj.key_point_probability, buffer, bufferOffset);
    // Serialize message field [obstacle_key_point_data]
    // Serialize the length for message field [obstacle_key_point_data]
    bufferOffset = _serializer.uint32(obj.obstacle_key_point_data.length, buffer, bufferOffset);
    obj.obstacle_key_point_data.forEach((val) => {
      bufferOffset = ObstacleKeyPointData.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UltrasonicObstacleInfo
    let len;
    let data = new UltrasonicObstacleInfo(null);
    // Deserialize message field [timestamp]
    data.timestamp = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [key_point_probability]
    data.key_point_probability = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [obstacle_key_point_data]
    // Deserialize array length for message field [obstacle_key_point_data]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.obstacle_key_point_data = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.obstacle_key_point_data[i] = ObstacleKeyPointData.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.obstacle_key_point_data.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sensor_interface_msgs/UltrasonicObstacleInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6e8b0d9d7e8e55821c1821c59296e611';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new UltrasonicObstacleInfo(null);
    if (msg.timestamp !== undefined) {
      resolved.timestamp = msg.timestamp;
    }
    else {
      resolved.timestamp = 0
    }

    if (msg.key_point_probability !== undefined) {
      resolved.key_point_probability = msg.key_point_probability;
    }
    else {
      resolved.key_point_probability = 0.0
    }

    if (msg.obstacle_key_point_data !== undefined) {
      resolved.obstacle_key_point_data = new Array(msg.obstacle_key_point_data.length);
      for (let i = 0; i < resolved.obstacle_key_point_data.length; ++i) {
        resolved.obstacle_key_point_data[i] = ObstacleKeyPointData.Resolve(msg.obstacle_key_point_data[i]);
      }
    }
    else {
      resolved.obstacle_key_point_data = []
    }

    return resolved;
    }
};

module.exports = UltrasonicObstacleInfo;
