// Auto-generated. Do not edit!

// (in-package worldmodel_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Matrix2f = require('./Matrix2f.js');
let perception_interface_msgs = _finder('perception_interface_msgs');

//-----------------------------------------------------------

class PredictionTrajectoryPoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.position = null;
      this.yaw = null;
      this.theta = null;
      this.velocity = null;
      this.confidence = null;
      this.covariance_xy = null;
    }
    else {
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new perception_interface_msgs.msg.Point2f();
      }
      if (initObj.hasOwnProperty('yaw')) {
        this.yaw = initObj.yaw
      }
      else {
        this.yaw = 0.0;
      }
      if (initObj.hasOwnProperty('theta')) {
        this.theta = initObj.theta
      }
      else {
        this.theta = 0.0;
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = 0.0;
      }
      if (initObj.hasOwnProperty('confidence')) {
        this.confidence = initObj.confidence
      }
      else {
        this.confidence = 0.0;
      }
      if (initObj.hasOwnProperty('covariance_xy')) {
        this.covariance_xy = initObj.covariance_xy
      }
      else {
        this.covariance_xy = new Matrix2f();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PredictionTrajectoryPoint
    // Serialize message field [position]
    bufferOffset = perception_interface_msgs.msg.Point2f.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [yaw]
    bufferOffset = _serializer.float32(obj.yaw, buffer, bufferOffset);
    // Serialize message field [theta]
    bufferOffset = _serializer.float32(obj.theta, buffer, bufferOffset);
    // Serialize message field [velocity]
    bufferOffset = _serializer.float32(obj.velocity, buffer, bufferOffset);
    // Serialize message field [confidence]
    bufferOffset = _serializer.float32(obj.confidence, buffer, bufferOffset);
    // Serialize message field [covariance_xy]
    bufferOffset = Matrix2f.serialize(obj.covariance_xy, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PredictionTrajectoryPoint
    let len;
    let data = new PredictionTrajectoryPoint(null);
    // Deserialize message field [position]
    data.position = perception_interface_msgs.msg.Point2f.deserialize(buffer, bufferOffset);
    // Deserialize message field [yaw]
    data.yaw = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [theta]
    data.theta = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [velocity]
    data.velocity = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [confidence]
    data.confidence = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [covariance_xy]
    data.covariance_xy = Matrix2f.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'worldmodel_msgs/PredictionTrajectoryPoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6b02495f1700065fded003076080d160';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    perception_interface_msgs/Point2f position
    float32 yaw
    float32 theta
    float32 velocity
    float32 confidence
    worldmodel_msgs/Matrix2f covariance_xy
    
    ================================================================================
    MSG: perception_interface_msgs/Point2f
    float32 x
    float32 y
    
    ================================================================================
    MSG: worldmodel_msgs/Matrix2f
    float32 x00
    float32 x01
    float32 x10
    float32 x11
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PredictionTrajectoryPoint(null);
    if (msg.position !== undefined) {
      resolved.position = perception_interface_msgs.msg.Point2f.Resolve(msg.position)
    }
    else {
      resolved.position = new perception_interface_msgs.msg.Point2f()
    }

    if (msg.yaw !== undefined) {
      resolved.yaw = msg.yaw;
    }
    else {
      resolved.yaw = 0.0
    }

    if (msg.theta !== undefined) {
      resolved.theta = msg.theta;
    }
    else {
      resolved.theta = 0.0
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = msg.velocity;
    }
    else {
      resolved.velocity = 0.0
    }

    if (msg.confidence !== undefined) {
      resolved.confidence = msg.confidence;
    }
    else {
      resolved.confidence = 0.0
    }

    if (msg.covariance_xy !== undefined) {
      resolved.covariance_xy = Matrix2f.Resolve(msg.covariance_xy)
    }
    else {
      resolved.covariance_xy = new Matrix2f()
    }

    return resolved;
    }
};

module.exports = PredictionTrajectoryPoint;
