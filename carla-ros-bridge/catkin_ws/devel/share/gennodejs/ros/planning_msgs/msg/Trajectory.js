// Auto-generated. Do not edit!

// (in-package planning_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Curve = require('./Curve.js');
let PathPoint = require('./PathPoint.js');
let Velocity = require('./Velocity.js');
let Acceleration = require('./Acceleration.js');
let FrenetState = require('./FrenetState.js');

//-----------------------------------------------------------

class Trajectory {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.polynomial_curve = null;
      this.path = null;
      this.velocity = null;
      this.acceleration = null;
      this.frenet_state = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('polynomial_curve')) {
        this.polynomial_curve = initObj.polynomial_curve
      }
      else {
        this.polynomial_curve = new Curve();
      }
      if (initObj.hasOwnProperty('path')) {
        this.path = initObj.path
      }
      else {
        this.path = [];
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = new Velocity();
      }
      if (initObj.hasOwnProperty('acceleration')) {
        this.acceleration = initObj.acceleration
      }
      else {
        this.acceleration = new Acceleration();
      }
      if (initObj.hasOwnProperty('frenet_state')) {
        this.frenet_state = initObj.frenet_state
      }
      else {
        this.frenet_state = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Trajectory
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [polynomial_curve]
    bufferOffset = Curve.serialize(obj.polynomial_curve, buffer, bufferOffset);
    // Serialize message field [path]
    // Serialize the length for message field [path]
    bufferOffset = _serializer.uint32(obj.path.length, buffer, bufferOffset);
    obj.path.forEach((val) => {
      bufferOffset = PathPoint.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [velocity]
    bufferOffset = Velocity.serialize(obj.velocity, buffer, bufferOffset);
    // Serialize message field [acceleration]
    bufferOffset = Acceleration.serialize(obj.acceleration, buffer, bufferOffset);
    // Serialize message field [frenet_state]
    // Serialize the length for message field [frenet_state]
    bufferOffset = _serializer.uint32(obj.frenet_state.length, buffer, bufferOffset);
    obj.frenet_state.forEach((val) => {
      bufferOffset = FrenetState.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Trajectory
    let len;
    let data = new Trajectory(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [polynomial_curve]
    data.polynomial_curve = Curve.deserialize(buffer, bufferOffset);
    // Deserialize message field [path]
    // Deserialize array length for message field [path]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.path = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.path[i] = PathPoint.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [velocity]
    data.velocity = Velocity.deserialize(buffer, bufferOffset);
    // Deserialize message field [acceleration]
    data.acceleration = Acceleration.deserialize(buffer, bufferOffset);
    // Deserialize message field [frenet_state]
    // Deserialize array length for message field [frenet_state]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.frenet_state = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.frenet_state[i] = FrenetState.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Curve.getMessageSize(object.polynomial_curve);
    length += 40 * object.path.length;
    length += Velocity.getMessageSize(object.velocity);
    length += Acceleration.getMessageSize(object.acceleration);
    length += 32 * object.frenet_state.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planning_msgs/Trajectory';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4709d14119face393301256d616e8ba3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 POLYNOMIAL_CURVE = 1
    uint8 PATH = 2
    uint8 VELOCITY = 4
    uint8 ACCELERATION = 8
    uint8 FRENET_STATE = 16
    uint8 available
    planning_msgs/Curve polynomial_curve
    planning_msgs/PathPoint[] path
    planning_msgs/Velocity velocity
    planning_msgs/Acceleration acceleration
    planning_msgs/FrenetState[] frenet_state
    
    ================================================================================
    MSG: planning_msgs/Curve
    float64[] polynomial
    float64 start_x
    float64 end_x
    
    ================================================================================
    MSG: planning_msgs/PathPoint
    planning_msgs/Point2d position_enu
    float64 heading_yaw
    float64 curvature
    float64 path_follow_strength
    
    ================================================================================
    MSG: planning_msgs/Point2d
    float64 x
    float64 y
    
    ================================================================================
    MSG: planning_msgs/Velocity
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
    
    ================================================================================
    MSG: planning_msgs/Acceleration
    uint8 RANGE_LIMIT = 1
    uint8 ACC_POINTS = 2
    uint8 available
    planning_msgs/AccelerationRange range_limit
    planning_msgs/AccelerationPoint[] acc_points
    
    ================================================================================
    MSG: planning_msgs/AccelerationRange
    float64 max
    float64 min
    
    ================================================================================
    MSG: planning_msgs/AccelerationPoint
    float64 acc
    float64 jerk
    
    ================================================================================
    MSG: planning_msgs/FrenetState
    planning_msgs/Point2d position_frenet
    float64 dl
    float64 ddl
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Trajectory(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.polynomial_curve !== undefined) {
      resolved.polynomial_curve = Curve.Resolve(msg.polynomial_curve)
    }
    else {
      resolved.polynomial_curve = new Curve()
    }

    if (msg.path !== undefined) {
      resolved.path = new Array(msg.path.length);
      for (let i = 0; i < resolved.path.length; ++i) {
        resolved.path[i] = PathPoint.Resolve(msg.path[i]);
      }
    }
    else {
      resolved.path = []
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = Velocity.Resolve(msg.velocity)
    }
    else {
      resolved.velocity = new Velocity()
    }

    if (msg.acceleration !== undefined) {
      resolved.acceleration = Acceleration.Resolve(msg.acceleration)
    }
    else {
      resolved.acceleration = new Acceleration()
    }

    if (msg.frenet_state !== undefined) {
      resolved.frenet_state = new Array(msg.frenet_state.length);
      for (let i = 0; i < resolved.frenet_state.length; ++i) {
        resolved.frenet_state[i] = FrenetState.Resolve(msg.frenet_state[i]);
      }
    }
    else {
      resolved.frenet_state = []
    }

    return resolved;
    }
};

// Constants for message
Trajectory.Constants = {
  POLYNOMIAL_CURVE: 1,
  PATH: 2,
  VELOCITY: 4,
  ACCELERATION: 8,
  FRENET_STATE: 16,
}

module.exports = Trajectory;
