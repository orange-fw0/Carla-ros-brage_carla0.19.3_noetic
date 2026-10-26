// Auto-generated. Do not edit!

// (in-package planning_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MpcTrajectoryPoint = require('./MpcTrajectoryPoint.js');

//-----------------------------------------------------------

class MpcTrajectory {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.path_points = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('path_points')) {
        this.path_points = initObj.path_points
      }
      else {
        this.path_points = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MpcTrajectory
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [path_points]
    // Serialize the length for message field [path_points]
    bufferOffset = _serializer.uint32(obj.path_points.length, buffer, bufferOffset);
    obj.path_points.forEach((val) => {
      bufferOffset = MpcTrajectoryPoint.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MpcTrajectory
    let len;
    let data = new MpcTrajectory(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [path_points]
    // Deserialize array length for message field [path_points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.path_points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.path_points[i] = MpcTrajectoryPoint.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.path_points.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planning_msgs/MpcTrajectory';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7b8eefe241d56cb45b880a40fc4d7a0a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 PATH_POINTS = 1
    uint8 available
    planning_msgs/MpcTrajectoryPoint[] path_points
    
    ================================================================================
    MSG: planning_msgs/MpcTrajectoryPoint
    planning_msgs/Point2d position_enu
    float64 heading_yaw
    
    ================================================================================
    MSG: planning_msgs/Point2d
    float64 x
    float64 y
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MpcTrajectory(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.path_points !== undefined) {
      resolved.path_points = new Array(msg.path_points.length);
      for (let i = 0; i < resolved.path_points.length; ++i) {
        resolved.path_points[i] = MpcTrajectoryPoint.Resolve(msg.path_points[i]);
      }
    }
    else {
      resolved.path_points = []
    }

    return resolved;
    }
};

// Constants for message
MpcTrajectory.Constants = {
  PATH_POINTS: 1,
}

module.exports = MpcTrajectory;
