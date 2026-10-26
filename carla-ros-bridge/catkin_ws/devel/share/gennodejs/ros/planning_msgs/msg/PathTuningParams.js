// Auto-generated. Do not edit!

// (in-package planning_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class PathTuningParams {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.max_num_iterations = null;
      this.soft_boundary_scale = null;
      this.hard_boundary_scale = null;
      this.init_curvature_scale = null;
      this.curvature_limit_scale = null;
      this.lat_accel_scale = null;
      this.lat_jerk_scale = null;
      this.heading_scale = null;
      this.ref_centering_scale = null;
      this.prev_plan_centering_scale = null;
    }
    else {
      if (initObj.hasOwnProperty('max_num_iterations')) {
        this.max_num_iterations = initObj.max_num_iterations
      }
      else {
        this.max_num_iterations = 0;
      }
      if (initObj.hasOwnProperty('soft_boundary_scale')) {
        this.soft_boundary_scale = initObj.soft_boundary_scale
      }
      else {
        this.soft_boundary_scale = 0.0;
      }
      if (initObj.hasOwnProperty('hard_boundary_scale')) {
        this.hard_boundary_scale = initObj.hard_boundary_scale
      }
      else {
        this.hard_boundary_scale = 0.0;
      }
      if (initObj.hasOwnProperty('init_curvature_scale')) {
        this.init_curvature_scale = initObj.init_curvature_scale
      }
      else {
        this.init_curvature_scale = 0.0;
      }
      if (initObj.hasOwnProperty('curvature_limit_scale')) {
        this.curvature_limit_scale = initObj.curvature_limit_scale
      }
      else {
        this.curvature_limit_scale = 0.0;
      }
      if (initObj.hasOwnProperty('lat_accel_scale')) {
        this.lat_accel_scale = initObj.lat_accel_scale
      }
      else {
        this.lat_accel_scale = 0.0;
      }
      if (initObj.hasOwnProperty('lat_jerk_scale')) {
        this.lat_jerk_scale = initObj.lat_jerk_scale
      }
      else {
        this.lat_jerk_scale = 0.0;
      }
      if (initObj.hasOwnProperty('heading_scale')) {
        this.heading_scale = initObj.heading_scale
      }
      else {
        this.heading_scale = 0.0;
      }
      if (initObj.hasOwnProperty('ref_centering_scale')) {
        this.ref_centering_scale = initObj.ref_centering_scale
      }
      else {
        this.ref_centering_scale = 0.0;
      }
      if (initObj.hasOwnProperty('prev_plan_centering_scale')) {
        this.prev_plan_centering_scale = initObj.prev_plan_centering_scale
      }
      else {
        this.prev_plan_centering_scale = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PathTuningParams
    // Serialize message field [max_num_iterations]
    bufferOffset = _serializer.int32(obj.max_num_iterations, buffer, bufferOffset);
    // Serialize message field [soft_boundary_scale]
    bufferOffset = _serializer.float64(obj.soft_boundary_scale, buffer, bufferOffset);
    // Serialize message field [hard_boundary_scale]
    bufferOffset = _serializer.float64(obj.hard_boundary_scale, buffer, bufferOffset);
    // Serialize message field [init_curvature_scale]
    bufferOffset = _serializer.float64(obj.init_curvature_scale, buffer, bufferOffset);
    // Serialize message field [curvature_limit_scale]
    bufferOffset = _serializer.float64(obj.curvature_limit_scale, buffer, bufferOffset);
    // Serialize message field [lat_accel_scale]
    bufferOffset = _serializer.float64(obj.lat_accel_scale, buffer, bufferOffset);
    // Serialize message field [lat_jerk_scale]
    bufferOffset = _serializer.float64(obj.lat_jerk_scale, buffer, bufferOffset);
    // Serialize message field [heading_scale]
    bufferOffset = _serializer.float64(obj.heading_scale, buffer, bufferOffset);
    // Serialize message field [ref_centering_scale]
    bufferOffset = _serializer.float64(obj.ref_centering_scale, buffer, bufferOffset);
    // Serialize message field [prev_plan_centering_scale]
    bufferOffset = _serializer.float64(obj.prev_plan_centering_scale, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PathTuningParams
    let len;
    let data = new PathTuningParams(null);
    // Deserialize message field [max_num_iterations]
    data.max_num_iterations = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [soft_boundary_scale]
    data.soft_boundary_scale = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [hard_boundary_scale]
    data.hard_boundary_scale = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [init_curvature_scale]
    data.init_curvature_scale = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [curvature_limit_scale]
    data.curvature_limit_scale = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lat_accel_scale]
    data.lat_accel_scale = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lat_jerk_scale]
    data.lat_jerk_scale = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [heading_scale]
    data.heading_scale = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ref_centering_scale]
    data.ref_centering_scale = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [prev_plan_centering_scale]
    data.prev_plan_centering_scale = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 76;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planning_msgs/PathTuningParams';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4cf25fa9dc37ad1ef3bea3f90eac2d2a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 max_num_iterations
    float64 soft_boundary_scale
    float64 hard_boundary_scale
    float64 init_curvature_scale
    float64 curvature_limit_scale
    float64 lat_accel_scale
    float64 lat_jerk_scale
    float64 heading_scale
    float64 ref_centering_scale
    float64 prev_plan_centering_scale
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PathTuningParams(null);
    if (msg.max_num_iterations !== undefined) {
      resolved.max_num_iterations = msg.max_num_iterations;
    }
    else {
      resolved.max_num_iterations = 0
    }

    if (msg.soft_boundary_scale !== undefined) {
      resolved.soft_boundary_scale = msg.soft_boundary_scale;
    }
    else {
      resolved.soft_boundary_scale = 0.0
    }

    if (msg.hard_boundary_scale !== undefined) {
      resolved.hard_boundary_scale = msg.hard_boundary_scale;
    }
    else {
      resolved.hard_boundary_scale = 0.0
    }

    if (msg.init_curvature_scale !== undefined) {
      resolved.init_curvature_scale = msg.init_curvature_scale;
    }
    else {
      resolved.init_curvature_scale = 0.0
    }

    if (msg.curvature_limit_scale !== undefined) {
      resolved.curvature_limit_scale = msg.curvature_limit_scale;
    }
    else {
      resolved.curvature_limit_scale = 0.0
    }

    if (msg.lat_accel_scale !== undefined) {
      resolved.lat_accel_scale = msg.lat_accel_scale;
    }
    else {
      resolved.lat_accel_scale = 0.0
    }

    if (msg.lat_jerk_scale !== undefined) {
      resolved.lat_jerk_scale = msg.lat_jerk_scale;
    }
    else {
      resolved.lat_jerk_scale = 0.0
    }

    if (msg.heading_scale !== undefined) {
      resolved.heading_scale = msg.heading_scale;
    }
    else {
      resolved.heading_scale = 0.0
    }

    if (msg.ref_centering_scale !== undefined) {
      resolved.ref_centering_scale = msg.ref_centering_scale;
    }
    else {
      resolved.ref_centering_scale = 0.0
    }

    if (msg.prev_plan_centering_scale !== undefined) {
      resolved.prev_plan_centering_scale = msg.prev_plan_centering_scale;
    }
    else {
      resolved.prev_plan_centering_scale = 0.0
    }

    return resolved;
    }
};

module.exports = PathTuningParams;
