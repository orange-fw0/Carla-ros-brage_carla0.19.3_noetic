// Auto-generated. Do not edit!

// (in-package planning_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Point2d = require('./Point2d.js');

//-----------------------------------------------------------

class PathPoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.position_enu = null;
      this.heading_yaw = null;
      this.curvature = null;
      this.path_follow_strength = null;
    }
    else {
      if (initObj.hasOwnProperty('position_enu')) {
        this.position_enu = initObj.position_enu
      }
      else {
        this.position_enu = new Point2d();
      }
      if (initObj.hasOwnProperty('heading_yaw')) {
        this.heading_yaw = initObj.heading_yaw
      }
      else {
        this.heading_yaw = 0.0;
      }
      if (initObj.hasOwnProperty('curvature')) {
        this.curvature = initObj.curvature
      }
      else {
        this.curvature = 0.0;
      }
      if (initObj.hasOwnProperty('path_follow_strength')) {
        this.path_follow_strength = initObj.path_follow_strength
      }
      else {
        this.path_follow_strength = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PathPoint
    // Serialize message field [position_enu]
    bufferOffset = Point2d.serialize(obj.position_enu, buffer, bufferOffset);
    // Serialize message field [heading_yaw]
    bufferOffset = _serializer.float64(obj.heading_yaw, buffer, bufferOffset);
    // Serialize message field [curvature]
    bufferOffset = _serializer.float64(obj.curvature, buffer, bufferOffset);
    // Serialize message field [path_follow_strength]
    bufferOffset = _serializer.float64(obj.path_follow_strength, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PathPoint
    let len;
    let data = new PathPoint(null);
    // Deserialize message field [position_enu]
    data.position_enu = Point2d.deserialize(buffer, bufferOffset);
    // Deserialize message field [heading_yaw]
    data.heading_yaw = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [curvature]
    data.curvature = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [path_follow_strength]
    data.path_follow_strength = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planning_msgs/PathPoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6db278a9384888fcf5c39bb98cd14930';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    planning_msgs/Point2d position_enu
    float64 heading_yaw
    float64 curvature
    float64 path_follow_strength
    
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
    const resolved = new PathPoint(null);
    if (msg.position_enu !== undefined) {
      resolved.position_enu = Point2d.Resolve(msg.position_enu)
    }
    else {
      resolved.position_enu = new Point2d()
    }

    if (msg.heading_yaw !== undefined) {
      resolved.heading_yaw = msg.heading_yaw;
    }
    else {
      resolved.heading_yaw = 0.0
    }

    if (msg.curvature !== undefined) {
      resolved.curvature = msg.curvature;
    }
    else {
      resolved.curvature = 0.0
    }

    if (msg.path_follow_strength !== undefined) {
      resolved.path_follow_strength = msg.path_follow_strength;
    }
    else {
      resolved.path_follow_strength = 0.0
    }

    return resolved;
    }
};

module.exports = PathPoint;
