// Auto-generated. Do not edit!

// (in-package planning_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PlanMeta = require('./PlanMeta.js');
let Trajectory = require('./Trajectory.js');
let SafetyEvaluator = require('./SafetyEvaluator.js');

//-----------------------------------------------------------

class TrajectorySafetyInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.meta = null;
      this.trajectory = null;
      this.safety_score = null;
      this.ttc = null;
      this.safety_evaluators = null;
      this.risk_info = null;
      this.risk_extended_info = null;
      this.reserved_info = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('meta')) {
        this.meta = initObj.meta
      }
      else {
        this.meta = new PlanMeta();
      }
      if (initObj.hasOwnProperty('trajectory')) {
        this.trajectory = initObj.trajectory
      }
      else {
        this.trajectory = new Trajectory();
      }
      if (initObj.hasOwnProperty('safety_score')) {
        this.safety_score = initObj.safety_score
      }
      else {
        this.safety_score = [];
      }
      if (initObj.hasOwnProperty('ttc')) {
        this.ttc = initObj.ttc
      }
      else {
        this.ttc = 0.0;
      }
      if (initObj.hasOwnProperty('safety_evaluators')) {
        this.safety_evaluators = initObj.safety_evaluators
      }
      else {
        this.safety_evaluators = [];
      }
      if (initObj.hasOwnProperty('risk_info')) {
        this.risk_info = initObj.risk_info
      }
      else {
        this.risk_info = 0;
      }
      if (initObj.hasOwnProperty('risk_extended_info')) {
        this.risk_extended_info = initObj.risk_extended_info
      }
      else {
        this.risk_extended_info = 0;
      }
      if (initObj.hasOwnProperty('reserved_info')) {
        this.reserved_info = initObj.reserved_info
      }
      else {
        this.reserved_info = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrajectorySafetyInfo
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [meta]
    bufferOffset = PlanMeta.serialize(obj.meta, buffer, bufferOffset);
    // Serialize message field [trajectory]
    bufferOffset = Trajectory.serialize(obj.trajectory, buffer, bufferOffset);
    // Serialize message field [safety_score]
    bufferOffset = _arraySerializer.float64(obj.safety_score, buffer, bufferOffset, null);
    // Serialize message field [ttc]
    bufferOffset = _serializer.float64(obj.ttc, buffer, bufferOffset);
    // Serialize message field [safety_evaluators]
    // Serialize the length for message field [safety_evaluators]
    bufferOffset = _serializer.uint32(obj.safety_evaluators.length, buffer, bufferOffset);
    obj.safety_evaluators.forEach((val) => {
      bufferOffset = SafetyEvaluator.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [risk_info]
    bufferOffset = _serializer.uint8(obj.risk_info, buffer, bufferOffset);
    // Serialize message field [risk_extended_info]
    bufferOffset = _serializer.uint8(obj.risk_extended_info, buffer, bufferOffset);
    // Serialize message field [reserved_info]
    bufferOffset = _serializer.string(obj.reserved_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrajectorySafetyInfo
    let len;
    let data = new TrajectorySafetyInfo(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [meta]
    data.meta = PlanMeta.deserialize(buffer, bufferOffset);
    // Deserialize message field [trajectory]
    data.trajectory = Trajectory.deserialize(buffer, bufferOffset);
    // Deserialize message field [safety_score]
    data.safety_score = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [ttc]
    data.ttc = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [safety_evaluators]
    // Deserialize array length for message field [safety_evaluators]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.safety_evaluators = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.safety_evaluators[i] = SafetyEvaluator.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [risk_info]
    data.risk_info = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [risk_extended_info]
    data.risk_extended_info = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reserved_info]
    data.reserved_info = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += PlanMeta.getMessageSize(object.meta);
    length += Trajectory.getMessageSize(object.trajectory);
    length += 8 * object.safety_score.length;
    object.safety_evaluators.forEach((val) => {
      length += SafetyEvaluator.getMessageSize(val);
    });
    length += _getByteLength(object.reserved_info);
    return length + 23;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planning_msgs/TrajectorySafetyInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b4561828eb5e985e506894754e07780b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new TrajectorySafetyInfo(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.meta !== undefined) {
      resolved.meta = PlanMeta.Resolve(msg.meta)
    }
    else {
      resolved.meta = new PlanMeta()
    }

    if (msg.trajectory !== undefined) {
      resolved.trajectory = Trajectory.Resolve(msg.trajectory)
    }
    else {
      resolved.trajectory = new Trajectory()
    }

    if (msg.safety_score !== undefined) {
      resolved.safety_score = msg.safety_score;
    }
    else {
      resolved.safety_score = []
    }

    if (msg.ttc !== undefined) {
      resolved.ttc = msg.ttc;
    }
    else {
      resolved.ttc = 0.0
    }

    if (msg.safety_evaluators !== undefined) {
      resolved.safety_evaluators = new Array(msg.safety_evaluators.length);
      for (let i = 0; i < resolved.safety_evaluators.length; ++i) {
        resolved.safety_evaluators[i] = SafetyEvaluator.Resolve(msg.safety_evaluators[i]);
      }
    }
    else {
      resolved.safety_evaluators = []
    }

    if (msg.risk_info !== undefined) {
      resolved.risk_info = msg.risk_info;
    }
    else {
      resolved.risk_info = 0
    }

    if (msg.risk_extended_info !== undefined) {
      resolved.risk_extended_info = msg.risk_extended_info;
    }
    else {
      resolved.risk_extended_info = 0
    }

    if (msg.reserved_info !== undefined) {
      resolved.reserved_info = msg.reserved_info;
    }
    else {
      resolved.reserved_info = ''
    }

    return resolved;
    }
};

// Constants for message
TrajectorySafetyInfo.Constants = {
  NO_RISK: 1,
  RISK_STATIC_OBSTACLE_COLLISION: 2,
  RISK_STATIC_VRU_COLLISION: 3,
  RISK_STATIC_NON_VRU_COLLISION: 4,
  RISK_STATIC_UNKNOWN_OBJECT_COLLISION: 5,
  RISK_DYNAMIC_VRU_COLLISION: 6,
  RISK_DYNAMIC_NON_VRU_COLLISION: 7,
  RISK_DYNAMIC_UNKNOWN_OBJECT_COLLISION: 8,
  RISK_RB_COLLISION: 9,
  RISK_UNSAFE_CONTROL: 10,
  UNKNOWN: 21,
  IN_LANE: 22,
  FREE_SPACE: 23,
  ADJACENT_LANE: 24,
  CROSSING: 25,
}

module.exports = TrajectorySafetyInfo;
