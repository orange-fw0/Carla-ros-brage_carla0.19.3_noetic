// Auto-generated. Do not edit!

// (in-package planning_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SBPRequestMeta = require('./SBPRequestMeta.js');
let TaskInfo = require('./TaskInfo.js');
let TaskConfig = require('./TaskConfig.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class SBPRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.meta = null;
      this.task_info = null;
      this.task_config = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('meta')) {
        this.meta = initObj.meta
      }
      else {
        this.meta = new SBPRequestMeta();
      }
      if (initObj.hasOwnProperty('task_info')) {
        this.task_info = initObj.task_info
      }
      else {
        this.task_info = new TaskInfo();
      }
      if (initObj.hasOwnProperty('task_config')) {
        this.task_config = initObj.task_config
      }
      else {
        this.task_config = new TaskConfig();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SBPRequest
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [meta]
    bufferOffset = SBPRequestMeta.serialize(obj.meta, buffer, bufferOffset);
    // Serialize message field [task_info]
    bufferOffset = TaskInfo.serialize(obj.task_info, buffer, bufferOffset);
    // Serialize message field [task_config]
    bufferOffset = TaskConfig.serialize(obj.task_config, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SBPRequest
    let len;
    let data = new SBPRequest(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [meta]
    data.meta = SBPRequestMeta.deserialize(buffer, bufferOffset);
    // Deserialize message field [task_info]
    data.task_info = TaskInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [task_config]
    data.task_config = TaskConfig.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += TaskInfo.getMessageSize(object.task_info);
    length += TaskConfig.getMessageSize(object.task_config);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planning_msgs/SBPRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '913807cc43a2266128d9dca40995d277';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    planning_msgs/SBPRequestMeta meta
    planning_msgs/TaskInfo task_info
    planning_msgs/TaskConfig task_config
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: planning_msgs/SBPRequestMeta
    uint64 timestamp_us
    
    ================================================================================
    MSG: planning_msgs/TaskInfo
    uint8 REQUEST = 1
    uint8 GOAL_ID = 2
    uint8 available
    planning_msgs/RequestEnum request
    actionlib_msgs/GoalID goal_id
    
    ================================================================================
    MSG: planning_msgs/RequestEnum
    uint8 START_TASK = 1
    uint8 ABORT_TASK = 2
    uint8 value
    
    ================================================================================
    MSG: actionlib_msgs/GoalID
    uint64 stamp
    string id
    
    ================================================================================
    MSG: planning_msgs/TaskConfig
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
    const resolved = new SBPRequest(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.meta !== undefined) {
      resolved.meta = SBPRequestMeta.Resolve(msg.meta)
    }
    else {
      resolved.meta = new SBPRequestMeta()
    }

    if (msg.task_info !== undefined) {
      resolved.task_info = TaskInfo.Resolve(msg.task_info)
    }
    else {
      resolved.task_info = new TaskInfo()
    }

    if (msg.task_config !== undefined) {
      resolved.task_config = TaskConfig.Resolve(msg.task_config)
    }
    else {
      resolved.task_config = new TaskConfig()
    }

    return resolved;
    }
};

module.exports = SBPRequest;
