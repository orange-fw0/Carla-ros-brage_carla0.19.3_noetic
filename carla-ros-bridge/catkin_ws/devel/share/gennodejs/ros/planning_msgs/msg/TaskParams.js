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

class TaskParams {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.verbose = null;
      this.planning_core = null;
      this.footprint_model = null;
      this.footprint_model_precise = null;
      this.lon_inflation = null;
      this.lat_inflation = null;
      this.inflation_rearview_mirror = null;
      this.shrink_ratio_for_lines = null;
      this.max_steer_angle = null;
      this.max_steer_angle_rate = null;
      this.max_steer_angle_rear = null;
      this.max_steer_angle_rate_rear = null;
      this.enable_analytic_expansion = null;
      this.analytic_expansion_end_size_threshold = null;
      this.force_analytic_expansion_end_direction = null;
      this.enable_multiple_steer_modes = null;
      this.xy_grid_resolution = null;
      this.phi_grid_resolution = null;
      this.grid_dijkstra_xy_resolution = null;
      this.traj_forward_penalty = null;
      this.traj_back_penalty = null;
      this.traj_gear_switch_penalty = null;
      this.traj_steer_penalty = null;
      this.traj_steer_change_penalty = null;
      this.step_size = null;
      this.next_node_num = null;
      this.max_iteration = null;
      this.holonomic_with_obs_heuristic = null;
      this.non_holonomic_without_obs_heuristic = null;
    }
    else {
      if (initObj.hasOwnProperty('verbose')) {
        this.verbose = initObj.verbose
      }
      else {
        this.verbose = 0;
      }
      if (initObj.hasOwnProperty('planning_core')) {
        this.planning_core = initObj.planning_core
      }
      else {
        this.planning_core = 0;
      }
      if (initObj.hasOwnProperty('footprint_model')) {
        this.footprint_model = initObj.footprint_model
      }
      else {
        this.footprint_model = 0;
      }
      if (initObj.hasOwnProperty('footprint_model_precise')) {
        this.footprint_model_precise = initObj.footprint_model_precise
      }
      else {
        this.footprint_model_precise = 0;
      }
      if (initObj.hasOwnProperty('lon_inflation')) {
        this.lon_inflation = initObj.lon_inflation
      }
      else {
        this.lon_inflation = 0.0;
      }
      if (initObj.hasOwnProperty('lat_inflation')) {
        this.lat_inflation = initObj.lat_inflation
      }
      else {
        this.lat_inflation = 0.0;
      }
      if (initObj.hasOwnProperty('inflation_rearview_mirror')) {
        this.inflation_rearview_mirror = initObj.inflation_rearview_mirror
      }
      else {
        this.inflation_rearview_mirror = 0.0;
      }
      if (initObj.hasOwnProperty('shrink_ratio_for_lines')) {
        this.shrink_ratio_for_lines = initObj.shrink_ratio_for_lines
      }
      else {
        this.shrink_ratio_for_lines = 0.0;
      }
      if (initObj.hasOwnProperty('max_steer_angle')) {
        this.max_steer_angle = initObj.max_steer_angle
      }
      else {
        this.max_steer_angle = 0.0;
      }
      if (initObj.hasOwnProperty('max_steer_angle_rate')) {
        this.max_steer_angle_rate = initObj.max_steer_angle_rate
      }
      else {
        this.max_steer_angle_rate = 0.0;
      }
      if (initObj.hasOwnProperty('max_steer_angle_rear')) {
        this.max_steer_angle_rear = initObj.max_steer_angle_rear
      }
      else {
        this.max_steer_angle_rear = 0.0;
      }
      if (initObj.hasOwnProperty('max_steer_angle_rate_rear')) {
        this.max_steer_angle_rate_rear = initObj.max_steer_angle_rate_rear
      }
      else {
        this.max_steer_angle_rate_rear = 0.0;
      }
      if (initObj.hasOwnProperty('enable_analytic_expansion')) {
        this.enable_analytic_expansion = initObj.enable_analytic_expansion
      }
      else {
        this.enable_analytic_expansion = false;
      }
      if (initObj.hasOwnProperty('analytic_expansion_end_size_threshold')) {
        this.analytic_expansion_end_size_threshold = initObj.analytic_expansion_end_size_threshold
      }
      else {
        this.analytic_expansion_end_size_threshold = 0.0;
      }
      if (initObj.hasOwnProperty('force_analytic_expansion_end_direction')) {
        this.force_analytic_expansion_end_direction = initObj.force_analytic_expansion_end_direction
      }
      else {
        this.force_analytic_expansion_end_direction = 0;
      }
      if (initObj.hasOwnProperty('enable_multiple_steer_modes')) {
        this.enable_multiple_steer_modes = initObj.enable_multiple_steer_modes
      }
      else {
        this.enable_multiple_steer_modes = false;
      }
      if (initObj.hasOwnProperty('xy_grid_resolution')) {
        this.xy_grid_resolution = initObj.xy_grid_resolution
      }
      else {
        this.xy_grid_resolution = 0.0;
      }
      if (initObj.hasOwnProperty('phi_grid_resolution')) {
        this.phi_grid_resolution = initObj.phi_grid_resolution
      }
      else {
        this.phi_grid_resolution = 0.0;
      }
      if (initObj.hasOwnProperty('grid_dijkstra_xy_resolution')) {
        this.grid_dijkstra_xy_resolution = initObj.grid_dijkstra_xy_resolution
      }
      else {
        this.grid_dijkstra_xy_resolution = 0.0;
      }
      if (initObj.hasOwnProperty('traj_forward_penalty')) {
        this.traj_forward_penalty = initObj.traj_forward_penalty
      }
      else {
        this.traj_forward_penalty = 0.0;
      }
      if (initObj.hasOwnProperty('traj_back_penalty')) {
        this.traj_back_penalty = initObj.traj_back_penalty
      }
      else {
        this.traj_back_penalty = 0.0;
      }
      if (initObj.hasOwnProperty('traj_gear_switch_penalty')) {
        this.traj_gear_switch_penalty = initObj.traj_gear_switch_penalty
      }
      else {
        this.traj_gear_switch_penalty = 0.0;
      }
      if (initObj.hasOwnProperty('traj_steer_penalty')) {
        this.traj_steer_penalty = initObj.traj_steer_penalty
      }
      else {
        this.traj_steer_penalty = 0.0;
      }
      if (initObj.hasOwnProperty('traj_steer_change_penalty')) {
        this.traj_steer_change_penalty = initObj.traj_steer_change_penalty
      }
      else {
        this.traj_steer_change_penalty = 0.0;
      }
      if (initObj.hasOwnProperty('step_size')) {
        this.step_size = initObj.step_size
      }
      else {
        this.step_size = 0.0;
      }
      if (initObj.hasOwnProperty('next_node_num')) {
        this.next_node_num = initObj.next_node_num
      }
      else {
        this.next_node_num = 0;
      }
      if (initObj.hasOwnProperty('max_iteration')) {
        this.max_iteration = initObj.max_iteration
      }
      else {
        this.max_iteration = 0.0;
      }
      if (initObj.hasOwnProperty('holonomic_with_obs_heuristic')) {
        this.holonomic_with_obs_heuristic = initObj.holonomic_with_obs_heuristic
      }
      else {
        this.holonomic_with_obs_heuristic = 0.0;
      }
      if (initObj.hasOwnProperty('non_holonomic_without_obs_heuristic')) {
        this.non_holonomic_without_obs_heuristic = initObj.non_holonomic_without_obs_heuristic
      }
      else {
        this.non_holonomic_without_obs_heuristic = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TaskParams
    // Serialize message field [verbose]
    bufferOffset = _serializer.uint8(obj.verbose, buffer, bufferOffset);
    // Serialize message field [planning_core]
    bufferOffset = _serializer.uint8(obj.planning_core, buffer, bufferOffset);
    // Serialize message field [footprint_model]
    bufferOffset = _serializer.uint8(obj.footprint_model, buffer, bufferOffset);
    // Serialize message field [footprint_model_precise]
    bufferOffset = _serializer.uint8(obj.footprint_model_precise, buffer, bufferOffset);
    // Serialize message field [lon_inflation]
    bufferOffset = _serializer.float32(obj.lon_inflation, buffer, bufferOffset);
    // Serialize message field [lat_inflation]
    bufferOffset = _serializer.float32(obj.lat_inflation, buffer, bufferOffset);
    // Serialize message field [inflation_rearview_mirror]
    bufferOffset = _serializer.float32(obj.inflation_rearview_mirror, buffer, bufferOffset);
    // Serialize message field [shrink_ratio_for_lines]
    bufferOffset = _serializer.float32(obj.shrink_ratio_for_lines, buffer, bufferOffset);
    // Serialize message field [max_steer_angle]
    bufferOffset = _serializer.float32(obj.max_steer_angle, buffer, bufferOffset);
    // Serialize message field [max_steer_angle_rate]
    bufferOffset = _serializer.float32(obj.max_steer_angle_rate, buffer, bufferOffset);
    // Serialize message field [max_steer_angle_rear]
    bufferOffset = _serializer.float32(obj.max_steer_angle_rear, buffer, bufferOffset);
    // Serialize message field [max_steer_angle_rate_rear]
    bufferOffset = _serializer.float32(obj.max_steer_angle_rate_rear, buffer, bufferOffset);
    // Serialize message field [enable_analytic_expansion]
    bufferOffset = _serializer.bool(obj.enable_analytic_expansion, buffer, bufferOffset);
    // Serialize message field [analytic_expansion_end_size_threshold]
    bufferOffset = _serializer.float32(obj.analytic_expansion_end_size_threshold, buffer, bufferOffset);
    // Serialize message field [force_analytic_expansion_end_direction]
    bufferOffset = _serializer.int8(obj.force_analytic_expansion_end_direction, buffer, bufferOffset);
    // Serialize message field [enable_multiple_steer_modes]
    bufferOffset = _serializer.bool(obj.enable_multiple_steer_modes, buffer, bufferOffset);
    // Serialize message field [xy_grid_resolution]
    bufferOffset = _serializer.float32(obj.xy_grid_resolution, buffer, bufferOffset);
    // Serialize message field [phi_grid_resolution]
    bufferOffset = _serializer.float32(obj.phi_grid_resolution, buffer, bufferOffset);
    // Serialize message field [grid_dijkstra_xy_resolution]
    bufferOffset = _serializer.float32(obj.grid_dijkstra_xy_resolution, buffer, bufferOffset);
    // Serialize message field [traj_forward_penalty]
    bufferOffset = _serializer.float32(obj.traj_forward_penalty, buffer, bufferOffset);
    // Serialize message field [traj_back_penalty]
    bufferOffset = _serializer.float32(obj.traj_back_penalty, buffer, bufferOffset);
    // Serialize message field [traj_gear_switch_penalty]
    bufferOffset = _serializer.float32(obj.traj_gear_switch_penalty, buffer, bufferOffset);
    // Serialize message field [traj_steer_penalty]
    bufferOffset = _serializer.float32(obj.traj_steer_penalty, buffer, bufferOffset);
    // Serialize message field [traj_steer_change_penalty]
    bufferOffset = _serializer.float32(obj.traj_steer_change_penalty, buffer, bufferOffset);
    // Serialize message field [step_size]
    bufferOffset = _serializer.float32(obj.step_size, buffer, bufferOffset);
    // Serialize message field [next_node_num]
    bufferOffset = _serializer.uint8(obj.next_node_num, buffer, bufferOffset);
    // Serialize message field [max_iteration]
    bufferOffset = _serializer.float32(obj.max_iteration, buffer, bufferOffset);
    // Serialize message field [holonomic_with_obs_heuristic]
    bufferOffset = _serializer.float32(obj.holonomic_with_obs_heuristic, buffer, bufferOffset);
    // Serialize message field [non_holonomic_without_obs_heuristic]
    bufferOffset = _serializer.float32(obj.non_holonomic_without_obs_heuristic, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TaskParams
    let len;
    let data = new TaskParams(null);
    // Deserialize message field [verbose]
    data.verbose = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [planning_core]
    data.planning_core = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [footprint_model]
    data.footprint_model = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [footprint_model_precise]
    data.footprint_model_precise = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [lon_inflation]
    data.lon_inflation = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [lat_inflation]
    data.lat_inflation = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [inflation_rearview_mirror]
    data.inflation_rearview_mirror = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [shrink_ratio_for_lines]
    data.shrink_ratio_for_lines = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [max_steer_angle]
    data.max_steer_angle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [max_steer_angle_rate]
    data.max_steer_angle_rate = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [max_steer_angle_rear]
    data.max_steer_angle_rear = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [max_steer_angle_rate_rear]
    data.max_steer_angle_rate_rear = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [enable_analytic_expansion]
    data.enable_analytic_expansion = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [analytic_expansion_end_size_threshold]
    data.analytic_expansion_end_size_threshold = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [force_analytic_expansion_end_direction]
    data.force_analytic_expansion_end_direction = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [enable_multiple_steer_modes]
    data.enable_multiple_steer_modes = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [xy_grid_resolution]
    data.xy_grid_resolution = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [phi_grid_resolution]
    data.phi_grid_resolution = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [grid_dijkstra_xy_resolution]
    data.grid_dijkstra_xy_resolution = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [traj_forward_penalty]
    data.traj_forward_penalty = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [traj_back_penalty]
    data.traj_back_penalty = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [traj_gear_switch_penalty]
    data.traj_gear_switch_penalty = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [traj_steer_penalty]
    data.traj_steer_penalty = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [traj_steer_change_penalty]
    data.traj_steer_change_penalty = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [step_size]
    data.step_size = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [next_node_num]
    data.next_node_num = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [max_iteration]
    data.max_iteration = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [holonomic_with_obs_heuristic]
    data.holonomic_with_obs_heuristic = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [non_holonomic_without_obs_heuristic]
    data.non_holonomic_without_obs_heuristic = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 92;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planning_msgs/TaskParams';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '78b4cb56a3be2e336865863627a57df7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TaskParams(null);
    if (msg.verbose !== undefined) {
      resolved.verbose = msg.verbose;
    }
    else {
      resolved.verbose = 0
    }

    if (msg.planning_core !== undefined) {
      resolved.planning_core = msg.planning_core;
    }
    else {
      resolved.planning_core = 0
    }

    if (msg.footprint_model !== undefined) {
      resolved.footprint_model = msg.footprint_model;
    }
    else {
      resolved.footprint_model = 0
    }

    if (msg.footprint_model_precise !== undefined) {
      resolved.footprint_model_precise = msg.footprint_model_precise;
    }
    else {
      resolved.footprint_model_precise = 0
    }

    if (msg.lon_inflation !== undefined) {
      resolved.lon_inflation = msg.lon_inflation;
    }
    else {
      resolved.lon_inflation = 0.0
    }

    if (msg.lat_inflation !== undefined) {
      resolved.lat_inflation = msg.lat_inflation;
    }
    else {
      resolved.lat_inflation = 0.0
    }

    if (msg.inflation_rearview_mirror !== undefined) {
      resolved.inflation_rearview_mirror = msg.inflation_rearview_mirror;
    }
    else {
      resolved.inflation_rearview_mirror = 0.0
    }

    if (msg.shrink_ratio_for_lines !== undefined) {
      resolved.shrink_ratio_for_lines = msg.shrink_ratio_for_lines;
    }
    else {
      resolved.shrink_ratio_for_lines = 0.0
    }

    if (msg.max_steer_angle !== undefined) {
      resolved.max_steer_angle = msg.max_steer_angle;
    }
    else {
      resolved.max_steer_angle = 0.0
    }

    if (msg.max_steer_angle_rate !== undefined) {
      resolved.max_steer_angle_rate = msg.max_steer_angle_rate;
    }
    else {
      resolved.max_steer_angle_rate = 0.0
    }

    if (msg.max_steer_angle_rear !== undefined) {
      resolved.max_steer_angle_rear = msg.max_steer_angle_rear;
    }
    else {
      resolved.max_steer_angle_rear = 0.0
    }

    if (msg.max_steer_angle_rate_rear !== undefined) {
      resolved.max_steer_angle_rate_rear = msg.max_steer_angle_rate_rear;
    }
    else {
      resolved.max_steer_angle_rate_rear = 0.0
    }

    if (msg.enable_analytic_expansion !== undefined) {
      resolved.enable_analytic_expansion = msg.enable_analytic_expansion;
    }
    else {
      resolved.enable_analytic_expansion = false
    }

    if (msg.analytic_expansion_end_size_threshold !== undefined) {
      resolved.analytic_expansion_end_size_threshold = msg.analytic_expansion_end_size_threshold;
    }
    else {
      resolved.analytic_expansion_end_size_threshold = 0.0
    }

    if (msg.force_analytic_expansion_end_direction !== undefined) {
      resolved.force_analytic_expansion_end_direction = msg.force_analytic_expansion_end_direction;
    }
    else {
      resolved.force_analytic_expansion_end_direction = 0
    }

    if (msg.enable_multiple_steer_modes !== undefined) {
      resolved.enable_multiple_steer_modes = msg.enable_multiple_steer_modes;
    }
    else {
      resolved.enable_multiple_steer_modes = false
    }

    if (msg.xy_grid_resolution !== undefined) {
      resolved.xy_grid_resolution = msg.xy_grid_resolution;
    }
    else {
      resolved.xy_grid_resolution = 0.0
    }

    if (msg.phi_grid_resolution !== undefined) {
      resolved.phi_grid_resolution = msg.phi_grid_resolution;
    }
    else {
      resolved.phi_grid_resolution = 0.0
    }

    if (msg.grid_dijkstra_xy_resolution !== undefined) {
      resolved.grid_dijkstra_xy_resolution = msg.grid_dijkstra_xy_resolution;
    }
    else {
      resolved.grid_dijkstra_xy_resolution = 0.0
    }

    if (msg.traj_forward_penalty !== undefined) {
      resolved.traj_forward_penalty = msg.traj_forward_penalty;
    }
    else {
      resolved.traj_forward_penalty = 0.0
    }

    if (msg.traj_back_penalty !== undefined) {
      resolved.traj_back_penalty = msg.traj_back_penalty;
    }
    else {
      resolved.traj_back_penalty = 0.0
    }

    if (msg.traj_gear_switch_penalty !== undefined) {
      resolved.traj_gear_switch_penalty = msg.traj_gear_switch_penalty;
    }
    else {
      resolved.traj_gear_switch_penalty = 0.0
    }

    if (msg.traj_steer_penalty !== undefined) {
      resolved.traj_steer_penalty = msg.traj_steer_penalty;
    }
    else {
      resolved.traj_steer_penalty = 0.0
    }

    if (msg.traj_steer_change_penalty !== undefined) {
      resolved.traj_steer_change_penalty = msg.traj_steer_change_penalty;
    }
    else {
      resolved.traj_steer_change_penalty = 0.0
    }

    if (msg.step_size !== undefined) {
      resolved.step_size = msg.step_size;
    }
    else {
      resolved.step_size = 0.0
    }

    if (msg.next_node_num !== undefined) {
      resolved.next_node_num = msg.next_node_num;
    }
    else {
      resolved.next_node_num = 0
    }

    if (msg.max_iteration !== undefined) {
      resolved.max_iteration = msg.max_iteration;
    }
    else {
      resolved.max_iteration = 0.0
    }

    if (msg.holonomic_with_obs_heuristic !== undefined) {
      resolved.holonomic_with_obs_heuristic = msg.holonomic_with_obs_heuristic;
    }
    else {
      resolved.holonomic_with_obs_heuristic = 0.0
    }

    if (msg.non_holonomic_without_obs_heuristic !== undefined) {
      resolved.non_holonomic_without_obs_heuristic = msg.non_holonomic_without_obs_heuristic;
    }
    else {
      resolved.non_holonomic_without_obs_heuristic = 0.0
    }

    return resolved;
    }
};

module.exports = TaskParams;
