// Auto-generated. Do not edit!

// (in-package planning_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TrajectorySafetyInfo = require('./TrajectorySafetyInfo.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class DynamicSafetyCheckResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.trajectory_main = null;
      this.trajectory_slave = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('trajectory_main')) {
        this.trajectory_main = initObj.trajectory_main
      }
      else {
        this.trajectory_main = new TrajectorySafetyInfo();
      }
      if (initObj.hasOwnProperty('trajectory_slave')) {
        this.trajectory_slave = initObj.trajectory_slave
      }
      else {
        this.trajectory_slave = new TrajectorySafetyInfo();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DynamicSafetyCheckResult
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [trajectory_main]
    bufferOffset = TrajectorySafetyInfo.serialize(obj.trajectory_main, buffer, bufferOffset);
    // Serialize message field [trajectory_slave]
    bufferOffset = TrajectorySafetyInfo.serialize(obj.trajectory_slave, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DynamicSafetyCheckResult
    let len;
    let data = new DynamicSafetyCheckResult(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [trajectory_main]
    data.trajectory_main = TrajectorySafetyInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [trajectory_slave]
    data.trajectory_slave = TrajectorySafetyInfo.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += TrajectorySafetyInfo.getMessageSize(object.trajectory_main);
    length += TrajectorySafetyInfo.getMessageSize(object.trajectory_slave);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planning_msgs/DynamicSafetyCheckResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c4170daad7ae698f585166ef802d7ae2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    planning_msgs/TrajectorySafetyInfo trajectory_main
    planning_msgs/TrajectorySafetyInfo trajectory_slave
    
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
    MSG: planning_msgs/TrajectorySafetyInfo
    uint8 NO_RISK = 1
    uint8 RISK_STATIC_OBSTACLE_COLLISION = 2
    uint8 RISK_STATIC_VRU_COLLISION = 3
    uint8 RISK_STATIC_NON_VRU_COLLISION = 4
    uint8 RISK_STATIC_UNKNOWN_OBJECT_COLLISION = 5
    uint8 RISK_DYNAMIC_VRU_COLLISION = 6
    uint8 RISK_DYNAMIC_NON_VRU_COLLISION = 7
    uint8 RISK_DYNAMIC_UNKNOWN_OBJECT_COLLISION = 8
    uint8 RISK_RB_COLLISION = 9
    uint8 RISK_UNSAFE_CONTROL = 10
    uint8 UNKNOWN = 21
    uint8 IN_LANE = 22
    uint8 FREE_SPACE = 23
    uint8 ADJACENT_LANE = 24
    uint8 CROSSING = 25
    uint8 available
    planning_msgs/PlanMeta meta
    planning_msgs/Trajectory trajectory
    float64[] safety_score
    float64 ttc
    planning_msgs/SafetyEvaluator[] safety_evaluators
    uint8 risk_info
    uint8 risk_extended_info
    string reserved_info
    
    ================================================================================
    MSG: planning_msgs/PlanMeta
    uint64 timestamp_us
    uint64 plan_timestamp_us
    string plan_strategy_name
    
    ================================================================================
    MSG: planning_msgs/Trajectory
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
    
    ================================================================================
    MSG: planning_msgs/SafetyEvaluator
    uint8 id
    string name
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DynamicSafetyCheckResult(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.trajectory_main !== undefined) {
      resolved.trajectory_main = TrajectorySafetyInfo.Resolve(msg.trajectory_main)
    }
    else {
      resolved.trajectory_main = new TrajectorySafetyInfo()
    }

    if (msg.trajectory_slave !== undefined) {
      resolved.trajectory_slave = TrajectorySafetyInfo.Resolve(msg.trajectory_slave)
    }
    else {
      resolved.trajectory_slave = new TrajectorySafetyInfo()
    }

    return resolved;
    }
};

module.exports = DynamicSafetyCheckResult;
