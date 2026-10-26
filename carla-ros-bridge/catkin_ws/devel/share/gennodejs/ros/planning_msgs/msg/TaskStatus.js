// Auto-generated. Do not edit!

// (in-package planning_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Result = require('./Result.js');
let actionlib_msgs = _finder('actionlib_msgs');

//-----------------------------------------------------------

class TaskStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.plan_timestamp_us = null;
      this.goal_id = null;
      this.goal_status = null;
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('plan_timestamp_us')) {
        this.plan_timestamp_us = initObj.plan_timestamp_us
      }
      else {
        this.plan_timestamp_us = 0;
      }
      if (initObj.hasOwnProperty('goal_id')) {
        this.goal_id = initObj.goal_id
      }
      else {
        this.goal_id = new actionlib_msgs.msg.GoalID();
      }
      if (initObj.hasOwnProperty('goal_status')) {
        this.goal_status = initObj.goal_status
      }
      else {
        this.goal_status = new actionlib_msgs.msg.GoalStatus();
      }
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = new Result();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TaskStatus
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [plan_timestamp_us]
    bufferOffset = _serializer.uint64(obj.plan_timestamp_us, buffer, bufferOffset);
    // Serialize message field [goal_id]
    bufferOffset = actionlib_msgs.msg.GoalID.serialize(obj.goal_id, buffer, bufferOffset);
    // Serialize message field [goal_status]
    bufferOffset = actionlib_msgs.msg.GoalStatus.serialize(obj.goal_status, buffer, bufferOffset);
    // Serialize message field [result]
    bufferOffset = Result.serialize(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TaskStatus
    let len;
    let data = new TaskStatus(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [plan_timestamp_us]
    data.plan_timestamp_us = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [goal_id]
    data.goal_id = actionlib_msgs.msg.GoalID.deserialize(buffer, bufferOffset);
    // Deserialize message field [goal_status]
    data.goal_status = actionlib_msgs.msg.GoalStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [result]
    data.result = Result.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += actionlib_msgs.msg.GoalID.getMessageSize(object.goal_id);
    length += actionlib_msgs.msg.GoalStatus.getMessageSize(object.goal_status);
    length += Result.getMessageSize(object.result);
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planning_msgs/TaskStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd0a51c8f0dec1bf45410f1d2fea68a5e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 PLAN_TIMESTAMP_US = 1
    uint8 GOAL_ID = 2
    uint8 GOAL_STATUS = 4
    uint8 RESULT = 8
    uint8 available
    uint64 plan_timestamp_us
    actionlib_msgs/GoalID goal_id
    actionlib_msgs/GoalStatus goal_status
    planning_msgs/Result result
    
    ================================================================================
    MSG: actionlib_msgs/GoalID
    uint64 stamp
    string id
    
    ================================================================================
    MSG: actionlib_msgs/GoalStatus
    uint8 PENDING = 0
    uint8 ACTIVE = 1
    uint8 PREEMPTED = 2
    uint8 SUCCEEDED = 3
    uint8 ABORTED = 4
    uint8 REJECTED = 5
    uint8 PREEMPTING = 6
    uint8 RECALLING = 7
    uint8 RECALLED = 8
    uint8 LOST = 9
    actionlib_msgs/GoalID goal_id
    uint8 status
    string text
    
    ================================================================================
    MSG: planning_msgs/Result
    uint8 ITERATION_TIMES = 1
    uint8 TRAJECTORY = 2
    uint8 NUM_SEGMENTS = 4
    uint8 FAILURE_REASON = 8
    uint8 available
    int64 iteration_times
    planning_msgs/SBPVehicleState[] trajectory
    uint8 num_segments
    planning_msgs/FailureReasonEnum failure_reason
    
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
    MSG: planning_msgs/FailureReasonEnum
    uint8 INFEASIBLE = 1
    uint8 TIMEOUT = 2
    uint8 EXCEPTION = 4
    uint8 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TaskStatus(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.plan_timestamp_us !== undefined) {
      resolved.plan_timestamp_us = msg.plan_timestamp_us;
    }
    else {
      resolved.plan_timestamp_us = 0
    }

    if (msg.goal_id !== undefined) {
      resolved.goal_id = actionlib_msgs.msg.GoalID.Resolve(msg.goal_id)
    }
    else {
      resolved.goal_id = new actionlib_msgs.msg.GoalID()
    }

    if (msg.goal_status !== undefined) {
      resolved.goal_status = actionlib_msgs.msg.GoalStatus.Resolve(msg.goal_status)
    }
    else {
      resolved.goal_status = new actionlib_msgs.msg.GoalStatus()
    }

    if (msg.result !== undefined) {
      resolved.result = Result.Resolve(msg.result)
    }
    else {
      resolved.result = new Result()
    }

    return resolved;
    }
};

// Constants for message
TaskStatus.Constants = {
  PLAN_TIMESTAMP_US: 1,
  GOAL_ID: 2,
  GOAL_STATUS: 4,
  RESULT: 8,
}

module.exports = TaskStatus;
