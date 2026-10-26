// Auto-generated. Do not edit!

// (in-package planning_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SBPResultMeta = require('./SBPResultMeta.js');
let TaskStatus = require('./TaskStatus.js');
let SBPResultExtra = require('./SBPResultExtra.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class SBPResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.meta = null;
      this.task_status = null;
      this.extra = null;
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
        this.meta = new SBPResultMeta();
      }
      if (initObj.hasOwnProperty('task_status')) {
        this.task_status = initObj.task_status
      }
      else {
        this.task_status = [];
      }
      if (initObj.hasOwnProperty('extra')) {
        this.extra = initObj.extra
      }
      else {
        this.extra = new SBPResultExtra();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SBPResult
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [meta]
    bufferOffset = SBPResultMeta.serialize(obj.meta, buffer, bufferOffset);
    // Serialize message field [task_status]
    // Serialize the length for message field [task_status]
    bufferOffset = _serializer.uint32(obj.task_status.length, buffer, bufferOffset);
    obj.task_status.forEach((val) => {
      bufferOffset = TaskStatus.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [extra]
    bufferOffset = SBPResultExtra.serialize(obj.extra, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SBPResult
    let len;
    let data = new SBPResult(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [meta]
    data.meta = SBPResultMeta.deserialize(buffer, bufferOffset);
    // Deserialize message field [task_status]
    // Deserialize array length for message field [task_status]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.task_status = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.task_status[i] = TaskStatus.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [extra]
    data.extra = SBPResultExtra.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.task_status.forEach((val) => {
      length += TaskStatus.getMessageSize(val);
    });
    length += SBPResultExtra.getMessageSize(object.extra);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planning_msgs/SBPResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ede74308ea98b0eafa17a557f4668b3e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    planning_msgs/SBPResultMeta meta
    planning_msgs/TaskStatus[] task_status
    planning_msgs/SBPResultExtra extra
    
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
    MSG: planning_msgs/SBPResultMeta
    uint64 timestamp_us
    
    ================================================================================
    MSG: planning_msgs/TaskStatus
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
    
    ================================================================================
    MSG: planning_msgs/SBPResultExtra
    uint8 JSON = 1
    uint8 available
    string json
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SBPResult(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.meta !== undefined) {
      resolved.meta = SBPResultMeta.Resolve(msg.meta)
    }
    else {
      resolved.meta = new SBPResultMeta()
    }

    if (msg.task_status !== undefined) {
      resolved.task_status = new Array(msg.task_status.length);
      for (let i = 0; i < resolved.task_status.length; ++i) {
        resolved.task_status[i] = TaskStatus.Resolve(msg.task_status[i]);
      }
    }
    else {
      resolved.task_status = []
    }

    if (msg.extra !== undefined) {
      resolved.extra = SBPResultExtra.Resolve(msg.extra)
    }
    else {
      resolved.extra = new SBPResultExtra()
    }

    return resolved;
    }
};

module.exports = SBPResult;
