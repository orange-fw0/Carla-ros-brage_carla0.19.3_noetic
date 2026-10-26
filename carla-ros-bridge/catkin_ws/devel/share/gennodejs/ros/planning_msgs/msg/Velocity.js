// Auto-generated. Do not edit!

// (in-package planning_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let VelocityPoint = require('./VelocityPoint.js');

//-----------------------------------------------------------

class Velocity {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.target_value = null;
      this.vel_points = null;
      this.cruise_velocity = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('target_value')) {
        this.target_value = initObj.target_value
      }
      else {
        this.target_value = 0.0;
      }
      if (initObj.hasOwnProperty('vel_points')) {
        this.vel_points = initObj.vel_points
      }
      else {
        this.vel_points = [];
      }
      if (initObj.hasOwnProperty('cruise_velocity')) {
        this.cruise_velocity = initObj.cruise_velocity
      }
      else {
        this.cruise_velocity = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Velocity
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [target_value]
    bufferOffset = _serializer.float64(obj.target_value, buffer, bufferOffset);
    // Serialize message field [vel_points]
    // Serialize the length for message field [vel_points]
    bufferOffset = _serializer.uint32(obj.vel_points.length, buffer, bufferOffset);
    obj.vel_points.forEach((val) => {
      bufferOffset = VelocityPoint.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [cruise_velocity]
    bufferOffset = _serializer.float64(obj.cruise_velocity, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Velocity
    let len;
    let data = new Velocity(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [target_value]
    data.target_value = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vel_points]
    // Deserialize array length for message field [vel_points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.vel_points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.vel_points[i] = VelocityPoint.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [cruise_velocity]
    data.cruise_velocity = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.vel_points.length;
    return length + 21;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planning_msgs/Velocity';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5398aa30721f6b627106914fa0b80c03';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 TARGET_VALUE = 1
    uint8 VEL_POINTS = 2
    uint8 CRUISE_VELOCITY = 4
    uint8 available
    float64 target_value
    planning_msgs/VelocityPoint[] vel_points
    float64 cruise_velocity
    
    ================================================================================
    MSG: planning_msgs/VelocityPoint
    float64 target_velocity
    float64 relative_time
    float64 distance
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Velocity(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.target_value !== undefined) {
      resolved.target_value = msg.target_value;
    }
    else {
      resolved.target_value = 0.0
    }

    if (msg.vel_points !== undefined) {
      resolved.vel_points = new Array(msg.vel_points.length);
      for (let i = 0; i < resolved.vel_points.length; ++i) {
        resolved.vel_points[i] = VelocityPoint.Resolve(msg.vel_points[i]);
      }
    }
    else {
      resolved.vel_points = []
    }

    if (msg.cruise_velocity !== undefined) {
      resolved.cruise_velocity = msg.cruise_velocity;
    }
    else {
      resolved.cruise_velocity = 0.0
    }

    return resolved;
    }
};

// Constants for message
Velocity.Constants = {
  TARGET_VALUE: 1,
  VEL_POINTS: 2,
  CRUISE_VELOCITY: 4,
}

module.exports = Velocity;
