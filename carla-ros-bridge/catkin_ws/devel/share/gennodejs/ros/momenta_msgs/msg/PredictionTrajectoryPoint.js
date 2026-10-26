// Auto-generated. Do not edit!

// (in-package momenta_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class PredictionTrajectoryPoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x = null;
      this.y = null;
      this.yaw = null;
      this.theta = null;
      this.speed = null;
      this.prob = null;
      this.std_dev_x = null;
      this.std_dev_y = null;
      this.sigma_xy = null;
      this.std_dev_yaw = null;
      this.std_dev_speed = null;
      this.relative_ego_x = null;
      this.relative_ego_y = null;
      this.relative_ego_yaw = null;
      this.relative_ego_speed = null;
      this.relative_ego_std_dev_x = null;
      this.relative_ego_std_dev_y = null;
      this.relative_ego_std_dev_yaw = null;
      this.relative_ego_std_dev_speed = null;
    }
    else {
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
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
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0.0;
      }
      if (initObj.hasOwnProperty('prob')) {
        this.prob = initObj.prob
      }
      else {
        this.prob = 0.0;
      }
      if (initObj.hasOwnProperty('std_dev_x')) {
        this.std_dev_x = initObj.std_dev_x
      }
      else {
        this.std_dev_x = 0.0;
      }
      if (initObj.hasOwnProperty('std_dev_y')) {
        this.std_dev_y = initObj.std_dev_y
      }
      else {
        this.std_dev_y = 0.0;
      }
      if (initObj.hasOwnProperty('sigma_xy')) {
        this.sigma_xy = initObj.sigma_xy
      }
      else {
        this.sigma_xy = 0.0;
      }
      if (initObj.hasOwnProperty('std_dev_yaw')) {
        this.std_dev_yaw = initObj.std_dev_yaw
      }
      else {
        this.std_dev_yaw = 0.0;
      }
      if (initObj.hasOwnProperty('std_dev_speed')) {
        this.std_dev_speed = initObj.std_dev_speed
      }
      else {
        this.std_dev_speed = 0.0;
      }
      if (initObj.hasOwnProperty('relative_ego_x')) {
        this.relative_ego_x = initObj.relative_ego_x
      }
      else {
        this.relative_ego_x = 0.0;
      }
      if (initObj.hasOwnProperty('relative_ego_y')) {
        this.relative_ego_y = initObj.relative_ego_y
      }
      else {
        this.relative_ego_y = 0.0;
      }
      if (initObj.hasOwnProperty('relative_ego_yaw')) {
        this.relative_ego_yaw = initObj.relative_ego_yaw
      }
      else {
        this.relative_ego_yaw = 0.0;
      }
      if (initObj.hasOwnProperty('relative_ego_speed')) {
        this.relative_ego_speed = initObj.relative_ego_speed
      }
      else {
        this.relative_ego_speed = 0.0;
      }
      if (initObj.hasOwnProperty('relative_ego_std_dev_x')) {
        this.relative_ego_std_dev_x = initObj.relative_ego_std_dev_x
      }
      else {
        this.relative_ego_std_dev_x = 0.0;
      }
      if (initObj.hasOwnProperty('relative_ego_std_dev_y')) {
        this.relative_ego_std_dev_y = initObj.relative_ego_std_dev_y
      }
      else {
        this.relative_ego_std_dev_y = 0.0;
      }
      if (initObj.hasOwnProperty('relative_ego_std_dev_yaw')) {
        this.relative_ego_std_dev_yaw = initObj.relative_ego_std_dev_yaw
      }
      else {
        this.relative_ego_std_dev_yaw = 0.0;
      }
      if (initObj.hasOwnProperty('relative_ego_std_dev_speed')) {
        this.relative_ego_std_dev_speed = initObj.relative_ego_std_dev_speed
      }
      else {
        this.relative_ego_std_dev_speed = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PredictionTrajectoryPoint
    // Serialize message field [x]
    bufferOffset = _serializer.float32(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float32(obj.y, buffer, bufferOffset);
    // Serialize message field [yaw]
    bufferOffset = _serializer.float32(obj.yaw, buffer, bufferOffset);
    // Serialize message field [theta]
    bufferOffset = _serializer.float32(obj.theta, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.float32(obj.speed, buffer, bufferOffset);
    // Serialize message field [prob]
    bufferOffset = _serializer.float32(obj.prob, buffer, bufferOffset);
    // Serialize message field [std_dev_x]
    bufferOffset = _serializer.float32(obj.std_dev_x, buffer, bufferOffset);
    // Serialize message field [std_dev_y]
    bufferOffset = _serializer.float32(obj.std_dev_y, buffer, bufferOffset);
    // Serialize message field [sigma_xy]
    bufferOffset = _serializer.float32(obj.sigma_xy, buffer, bufferOffset);
    // Serialize message field [std_dev_yaw]
    bufferOffset = _serializer.float32(obj.std_dev_yaw, buffer, bufferOffset);
    // Serialize message field [std_dev_speed]
    bufferOffset = _serializer.float32(obj.std_dev_speed, buffer, bufferOffset);
    // Serialize message field [relative_ego_x]
    bufferOffset = _serializer.float32(obj.relative_ego_x, buffer, bufferOffset);
    // Serialize message field [relative_ego_y]
    bufferOffset = _serializer.float32(obj.relative_ego_y, buffer, bufferOffset);
    // Serialize message field [relative_ego_yaw]
    bufferOffset = _serializer.float32(obj.relative_ego_yaw, buffer, bufferOffset);
    // Serialize message field [relative_ego_speed]
    bufferOffset = _serializer.float32(obj.relative_ego_speed, buffer, bufferOffset);
    // Serialize message field [relative_ego_std_dev_x]
    bufferOffset = _serializer.float32(obj.relative_ego_std_dev_x, buffer, bufferOffset);
    // Serialize message field [relative_ego_std_dev_y]
    bufferOffset = _serializer.float32(obj.relative_ego_std_dev_y, buffer, bufferOffset);
    // Serialize message field [relative_ego_std_dev_yaw]
    bufferOffset = _serializer.float32(obj.relative_ego_std_dev_yaw, buffer, bufferOffset);
    // Serialize message field [relative_ego_std_dev_speed]
    bufferOffset = _serializer.float32(obj.relative_ego_std_dev_speed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PredictionTrajectoryPoint
    let len;
    let data = new PredictionTrajectoryPoint(null);
    // Deserialize message field [x]
    data.x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [yaw]
    data.yaw = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [theta]
    data.theta = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [prob]
    data.prob = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [std_dev_x]
    data.std_dev_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [std_dev_y]
    data.std_dev_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [sigma_xy]
    data.sigma_xy = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [std_dev_yaw]
    data.std_dev_yaw = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [std_dev_speed]
    data.std_dev_speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [relative_ego_x]
    data.relative_ego_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [relative_ego_y]
    data.relative_ego_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [relative_ego_yaw]
    data.relative_ego_yaw = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [relative_ego_speed]
    data.relative_ego_speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [relative_ego_std_dev_x]
    data.relative_ego_std_dev_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [relative_ego_std_dev_y]
    data.relative_ego_std_dev_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [relative_ego_std_dev_yaw]
    data.relative_ego_std_dev_yaw = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [relative_ego_std_dev_speed]
    data.relative_ego_std_dev_speed = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 76;
  }

  static datatype() {
    // Returns string type for a message object
    return 'momenta_msgs/PredictionTrajectoryPoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '23e1a168b285327e8067dea64564ddb9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 x
    float32 y
    float32 yaw
    float32 theta
    float32 speed
    float32 prob
    float32 std_dev_x
    float32 std_dev_y
    float32 sigma_xy
    float32 std_dev_yaw
    float32 std_dev_speed
    float32 relative_ego_x
    float32 relative_ego_y
    float32 relative_ego_yaw
    float32 relative_ego_speed
    float32 relative_ego_std_dev_x
    float32 relative_ego_std_dev_y
    float32 relative_ego_std_dev_yaw
    float32 relative_ego_std_dev_speed
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PredictionTrajectoryPoint(null);
    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
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

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0.0
    }

    if (msg.prob !== undefined) {
      resolved.prob = msg.prob;
    }
    else {
      resolved.prob = 0.0
    }

    if (msg.std_dev_x !== undefined) {
      resolved.std_dev_x = msg.std_dev_x;
    }
    else {
      resolved.std_dev_x = 0.0
    }

    if (msg.std_dev_y !== undefined) {
      resolved.std_dev_y = msg.std_dev_y;
    }
    else {
      resolved.std_dev_y = 0.0
    }

    if (msg.sigma_xy !== undefined) {
      resolved.sigma_xy = msg.sigma_xy;
    }
    else {
      resolved.sigma_xy = 0.0
    }

    if (msg.std_dev_yaw !== undefined) {
      resolved.std_dev_yaw = msg.std_dev_yaw;
    }
    else {
      resolved.std_dev_yaw = 0.0
    }

    if (msg.std_dev_speed !== undefined) {
      resolved.std_dev_speed = msg.std_dev_speed;
    }
    else {
      resolved.std_dev_speed = 0.0
    }

    if (msg.relative_ego_x !== undefined) {
      resolved.relative_ego_x = msg.relative_ego_x;
    }
    else {
      resolved.relative_ego_x = 0.0
    }

    if (msg.relative_ego_y !== undefined) {
      resolved.relative_ego_y = msg.relative_ego_y;
    }
    else {
      resolved.relative_ego_y = 0.0
    }

    if (msg.relative_ego_yaw !== undefined) {
      resolved.relative_ego_yaw = msg.relative_ego_yaw;
    }
    else {
      resolved.relative_ego_yaw = 0.0
    }

    if (msg.relative_ego_speed !== undefined) {
      resolved.relative_ego_speed = msg.relative_ego_speed;
    }
    else {
      resolved.relative_ego_speed = 0.0
    }

    if (msg.relative_ego_std_dev_x !== undefined) {
      resolved.relative_ego_std_dev_x = msg.relative_ego_std_dev_x;
    }
    else {
      resolved.relative_ego_std_dev_x = 0.0
    }

    if (msg.relative_ego_std_dev_y !== undefined) {
      resolved.relative_ego_std_dev_y = msg.relative_ego_std_dev_y;
    }
    else {
      resolved.relative_ego_std_dev_y = 0.0
    }

    if (msg.relative_ego_std_dev_yaw !== undefined) {
      resolved.relative_ego_std_dev_yaw = msg.relative_ego_std_dev_yaw;
    }
    else {
      resolved.relative_ego_std_dev_yaw = 0.0
    }

    if (msg.relative_ego_std_dev_speed !== undefined) {
      resolved.relative_ego_std_dev_speed = msg.relative_ego_std_dev_speed;
    }
    else {
      resolved.relative_ego_std_dev_speed = 0.0
    }

    return resolved;
    }
};

module.exports = PredictionTrajectoryPoint;
