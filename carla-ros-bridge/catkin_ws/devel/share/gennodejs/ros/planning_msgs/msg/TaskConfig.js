// Auto-generated. Do not edit!

// (in-package planning_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ProblemConfig = require('./ProblemConfig.js');
let EnvironmentData = require('./EnvironmentData.js');
let Boundary = require('./Boundary.js');

//-----------------------------------------------------------

class TaskConfig {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.problem_config = null;
      this.environment_data = null;
      this.boundary = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('problem_config')) {
        this.problem_config = initObj.problem_config
      }
      else {
        this.problem_config = new ProblemConfig();
      }
      if (initObj.hasOwnProperty('environment_data')) {
        this.environment_data = initObj.environment_data
      }
      else {
        this.environment_data = new EnvironmentData();
      }
      if (initObj.hasOwnProperty('boundary')) {
        this.boundary = initObj.boundary
      }
      else {
        this.boundary = new Boundary();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TaskConfig
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [problem_config]
    bufferOffset = ProblemConfig.serialize(obj.problem_config, buffer, bufferOffset);
    // Serialize message field [environment_data]
    bufferOffset = EnvironmentData.serialize(obj.environment_data, buffer, bufferOffset);
    // Serialize message field [boundary]
    bufferOffset = Boundary.serialize(obj.boundary, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TaskConfig
    let len;
    let data = new TaskConfig(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [problem_config]
    data.problem_config = ProblemConfig.deserialize(buffer, bufferOffset);
    // Deserialize message field [environment_data]
    data.environment_data = EnvironmentData.deserialize(buffer, bufferOffset);
    // Deserialize message field [boundary]
    data.boundary = Boundary.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += ProblemConfig.getMessageSize(object.problem_config);
    length += EnvironmentData.getMessageSize(object.environment_data);
    length += Boundary.getMessageSize(object.boundary);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planning_msgs/TaskConfig';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '77e843b5a486a3fd847ea02506086c27';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 CONFIG = 1
    uint8 ENVIRONMENT_DATA = 2
    uint8 BOUNDARY = 4
    uint8 available
    planning_msgs/ProblemConfig problem_config
    planning_msgs/EnvironmentData environment_data
    planning_msgs/Boundary boundary
    
    ================================================================================
    MSG: planning_msgs/ProblemConfig
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
    
    ================================================================================
    MSG: planning_msgs/EnvironmentData
    uint8 OBSTACLES = 1
    uint8 OBSTACLE_BOXES = 2
    uint8 OBSTACLE_LINES = 4
    uint8 LINES = 8
    uint8 POINTS = 16
    uint8 STEP_POINTS = 32
    uint8 available
    planning_msgs/Obstacle[] obstacles
    planning_msgs/Box2d[] obstacle_boxes
    planning_msgs/Line[] obstacle_lines
    planning_msgs/Line[] lines
    geometry_msgs/Point[] points
    geometry_msgs/Point[] step_points
    
    ================================================================================
    MSG: planning_msgs/Obstacle
    uint8 BOX = 1
    uint8 POLYGON = 2
    uint8 POLYLINE = 4
    uint8 POINT = 8
    uint8 available
    planning_msgs/ObstacleTypeEnum obstacle_type
    planning_msgs/Box2f box
    planning_msgs/Polygon2f polygon
    planning_msgs/Polyline2f polyline
    geometry_msgs/Point32 point
    
    ================================================================================
    MSG: planning_msgs/ObstacleTypeEnum
    uint8 PHYSICAL = 1
    uint8 LOGICAL = 2
    uint8 PARKING_SLOT = 4
    uint8 value
    
    ================================================================================
    MSG: planning_msgs/Box2f
    geometry_msgs/Point32 center
    float32 heading
    float32 length
    float32 width
    
    ================================================================================
    MSG: geometry_msgs/Point32
    # This contains the position of a point in free space(with 32 bits of precision).
    # It is recommeded to use Point wherever possible instead of Point32.  
    # 
    # This recommendation is to promote interoperability.  
    #
    # This message is designed to take up less space when sending
    # lots of points at once, as in the case of a PointCloud.  
    
    float32 x
    float32 y
    float32 z
    ================================================================================
    MSG: planning_msgs/Polygon2f
    geometry_msgs/Point32[] points
    
    ================================================================================
    MSG: planning_msgs/Polyline2f
    geometry_msgs/Point32[] points
    
    ================================================================================
    MSG: planning_msgs/Box2d
    geometry_msgs/Point center
    float64 heading
    float64 length
    float64 width
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: planning_msgs/Line
    geometry_msgs/Point start
    geometry_msgs/Point end
    
    ================================================================================
    MSG: planning_msgs/Boundary
    uint8 BOX = 1
    uint8 POLYGON = 2
    uint8 available
    planning_msgs/Box2f box
    planning_msgs/Polygon2f polygon
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TaskConfig(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.problem_config !== undefined) {
      resolved.problem_config = ProblemConfig.Resolve(msg.problem_config)
    }
    else {
      resolved.problem_config = new ProblemConfig()
    }

    if (msg.environment_data !== undefined) {
      resolved.environment_data = EnvironmentData.Resolve(msg.environment_data)
    }
    else {
      resolved.environment_data = new EnvironmentData()
    }

    if (msg.boundary !== undefined) {
      resolved.boundary = Boundary.Resolve(msg.boundary)
    }
    else {
      resolved.boundary = new Boundary()
    }

    return resolved;
    }
};

// Constants for message
TaskConfig.Constants = {
  CONFIG: 1,
  ENVIRONMENT_DATA: 2,
  BOUNDARY: 4,
}

module.exports = TaskConfig;
