// Auto-generated. Do not edit!

// (in-package sensor_interface_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class UssObstaclePosture {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timestamp = null;
      this.posture_x = null;
      this.posture_y = null;
      this.posture_theta = null;
    }
    else {
      if (initObj.hasOwnProperty('timestamp')) {
        this.timestamp = initObj.timestamp
      }
      else {
        this.timestamp = 0;
      }
      if (initObj.hasOwnProperty('posture_x')) {
        this.posture_x = initObj.posture_x
      }
      else {
        this.posture_x = 0.0;
      }
      if (initObj.hasOwnProperty('posture_y')) {
        this.posture_y = initObj.posture_y
      }
      else {
        this.posture_y = 0.0;
      }
      if (initObj.hasOwnProperty('posture_theta')) {
        this.posture_theta = initObj.posture_theta
      }
      else {
        this.posture_theta = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UssObstaclePosture
    // Serialize message field [timestamp]
    bufferOffset = _serializer.uint64(obj.timestamp, buffer, bufferOffset);
    // Serialize message field [posture_x]
    bufferOffset = _serializer.float32(obj.posture_x, buffer, bufferOffset);
    // Serialize message field [posture_y]
    bufferOffset = _serializer.float32(obj.posture_y, buffer, bufferOffset);
    // Serialize message field [posture_theta]
    bufferOffset = _serializer.float32(obj.posture_theta, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UssObstaclePosture
    let len;
    let data = new UssObstaclePosture(null);
    // Deserialize message field [timestamp]
    data.timestamp = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [posture_x]
    data.posture_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [posture_y]
    data.posture_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [posture_theta]
    data.posture_theta = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sensor_interface_msgs/UssObstaclePosture';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a42b2261ec94328995ebab19d0158fc8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 timestamp
    float32 posture_x
    float32 posture_y
    float32 posture_theta
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UssObstaclePosture(null);
    if (msg.timestamp !== undefined) {
      resolved.timestamp = msg.timestamp;
    }
    else {
      resolved.timestamp = 0
    }

    if (msg.posture_x !== undefined) {
      resolved.posture_x = msg.posture_x;
    }
    else {
      resolved.posture_x = 0.0
    }

    if (msg.posture_y !== undefined) {
      resolved.posture_y = msg.posture_y;
    }
    else {
      resolved.posture_y = 0.0
    }

    if (msg.posture_theta !== undefined) {
      resolved.posture_theta = msg.posture_theta;
    }
    else {
      resolved.posture_theta = 0.0
    }

    return resolved;
    }
};

module.exports = UssObstaclePosture;
