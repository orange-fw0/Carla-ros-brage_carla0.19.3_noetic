// Auto-generated. Do not edit!

// (in-package planning_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TaskParams = require('./TaskParams.js');
let SBPVehicleState = require('./SBPVehicleState.js');

//-----------------------------------------------------------

class ProblemConfig {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.params = null;
      this.params_string = null;
      this.init_state = null;
      this.goal_state = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('params')) {
        this.params = initObj.params
      }
      else {
        this.params = new TaskParams();
      }
      if (initObj.hasOwnProperty('params_string')) {
        this.params_string = initObj.params_string
      }
      else {
        this.params_string = '';
      }
      if (initObj.hasOwnProperty('init_state')) {
        this.init_state = initObj.init_state
      }
      else {
        this.init_state = new SBPVehicleState();
      }
      if (initObj.hasOwnProperty('goal_state')) {
        this.goal_state = initObj.goal_state
      }
      else {
        this.goal_state = new SBPVehicleState();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ProblemConfig
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [params]
    bufferOffset = TaskParams.serialize(obj.params, buffer, bufferOffset);
    // Serialize message field [params_string]
    bufferOffset = _serializer.string(obj.params_string, buffer, bufferOffset);
    // Serialize message field [init_state]
    bufferOffset = SBPVehicleState.serialize(obj.init_state, buffer, bufferOffset);
    // Serialize message field [goal_state]
    bufferOffset = SBPVehicleState.serialize(obj.goal_state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ProblemConfig
    let len;
    let data = new ProblemConfig(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [params]
    data.params = TaskParams.deserialize(buffer, bufferOffset);
    // Deserialize message field [params_string]
    data.params_string = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [init_state]
    data.init_state = SBPVehicleState.deserialize(buffer, bufferOffset);
    // Deserialize message field [goal_state]
    data.goal_state = SBPVehicleState.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.params_string);
    return length + 157;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planning_msgs/ProblemConfig';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '383668c668a1b23920e681bf7ada99f5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 PARAMS = 1
    uint8 PARAMS_STRING = 2
    uint8 INIT_STATE = 4
    uint8 TARGET_STATE = 8
    uint8 available
    planning_msgs/TaskParams params
    string params_string
    planning_msgs/SBPVehicleState init_state
    planning_msgs/SBPVehicleState goal_state
    
    ================================================================================
    MSG: planning_msgs/TaskParams
    uint8 verbose
    uint8 planning_core
    uint8 footprint_model
    uint8 footprint_model_precise
    float32 lon_inflation
    float32 lat_inflation
    float32 inflation_rearview_mirror
    float32 shrink_ratio_for_lines
    float32 max_steer_angle
    float32 max_steer_angle_rate
    float32 max_steer_angle_rear
    float32 max_steer_angle_rate_rear
    bool enable_analytic_expansion
    float32 analytic_expansion_end_size_threshold
    int8 force_analytic_expansion_end_direction
    bool enable_multiple_steer_modes
    float32 xy_grid_resolution
    float32 phi_grid_resolution
    float32 grid_dijkstra_xy_resolution
    float32 traj_forward_penalty
    float32 traj_back_penalty
    float32 traj_gear_switch_penalty
    float32 traj_steer_penalty
    float32 traj_steer_change_penalty
    float32 step_size
    uint8 next_node_num
    float32 max_iteration
    float32 holonomic_with_obs_heuristic
    float32 non_holonomic_without_obs_heuristic
    
    ================================================================================
    MSG: planning_msgs/SBPVehicleState
    geometry_msgs/Pose2D pose
    float32 steer
    planning_msgs/SteerModeEnum steer_mode
    int8 gear
    
    ================================================================================
    MSG: geometry_msgs/Pose2D
    # Deprecated
    # Please use the full 3D pose.
    
    # In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.
    
    # If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.
    
    
    # This expresses a position and orientation on a 2D manifold.
    
    float64 x
    float64 y
    float64 theta
    
    ================================================================================
    MSG: planning_msgs/SteerModeEnum
    uint8 NORMAL = 0
    uint8 TWIST = 1
    uint8 TRANSLATION = 2
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ProblemConfig(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.params !== undefined) {
      resolved.params = TaskParams.Resolve(msg.params)
    }
    else {
      resolved.params = new TaskParams()
    }

    if (msg.params_string !== undefined) {
      resolved.params_string = msg.params_string;
    }
    else {
      resolved.params_string = ''
    }

    if (msg.init_state !== undefined) {
      resolved.init_state = SBPVehicleState.Resolve(msg.init_state)
    }
    else {
      resolved.init_state = new SBPVehicleState()
    }

    if (msg.goal_state !== undefined) {
      resolved.goal_state = SBPVehicleState.Resolve(msg.goal_state)
    }
    else {
      resolved.goal_state = new SBPVehicleState()
    }

    return resolved;
    }
};

// Constants for message
ProblemConfig.Constants = {
  PARAMS: 1,
  PARAMS_STRING: 2,
  INIT_STATE: 4,
  TARGET_STATE: 8,
}

module.exports = ProblemConfig;
