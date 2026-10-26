// Auto-generated. Do not edit!

// (in-package planning_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SBPVehicleState = require('./SBPVehicleState.js');
let FailureReasonEnum = require('./FailureReasonEnum.js');

//-----------------------------------------------------------

class Result {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.iteration_times = null;
      this.trajectory = null;
      this.num_segments = null;
      this.failure_reason = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = 0;
      }
      if (initObj.hasOwnProperty('iteration_times')) {
        this.iteration_times = initObj.iteration_times
      }
      else {
        this.iteration_times = 0;
      }
      if (initObj.hasOwnProperty('trajectory')) {
        this.trajectory = initObj.trajectory
      }
      else {
        this.trajectory = [];
      }
      if (initObj.hasOwnProperty('num_segments')) {
        this.num_segments = initObj.num_segments
      }
      else {
        this.num_segments = 0;
      }
      if (initObj.hasOwnProperty('failure_reason')) {
        this.failure_reason = initObj.failure_reason
      }
      else {
        this.failure_reason = new FailureReasonEnum();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Result
    // Serialize message field [available]
    bufferOffset = _serializer.uint8(obj.available, buffer, bufferOffset);
    // Serialize message field [iteration_times]
    bufferOffset = _serializer.int64(obj.iteration_times, buffer, bufferOffset);
    // Serialize message field [trajectory]
    // Serialize the length for message field [trajectory]
    bufferOffset = _serializer.uint32(obj.trajectory.length, buffer, bufferOffset);
    obj.trajectory.forEach((val) => {
      bufferOffset = SBPVehicleState.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [num_segments]
    bufferOffset = _serializer.uint8(obj.num_segments, buffer, bufferOffset);
    // Serialize message field [failure_reason]
    bufferOffset = FailureReasonEnum.serialize(obj.failure_reason, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Result
    let len;
    let data = new Result(null);
    // Deserialize message field [available]
    data.available = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [iteration_times]
    data.iteration_times = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [trajectory]
    // Deserialize array length for message field [trajectory]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.trajectory = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.trajectory[i] = SBPVehicleState.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [num_segments]
    data.num_segments = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [failure_reason]
    data.failure_reason = FailureReasonEnum.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 30 * object.trajectory.length;
    return length + 15;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planning_msgs/Result';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '15596995cf3716cea00fa41baf53c382';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new Result(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = 0
    }

    if (msg.iteration_times !== undefined) {
      resolved.iteration_times = msg.iteration_times;
    }
    else {
      resolved.iteration_times = 0
    }

    if (msg.trajectory !== undefined) {
      resolved.trajectory = new Array(msg.trajectory.length);
      for (let i = 0; i < resolved.trajectory.length; ++i) {
        resolved.trajectory[i] = SBPVehicleState.Resolve(msg.trajectory[i]);
      }
    }
    else {
      resolved.trajectory = []
    }

    if (msg.num_segments !== undefined) {
      resolved.num_segments = msg.num_segments;
    }
    else {
      resolved.num_segments = 0
    }

    if (msg.failure_reason !== undefined) {
      resolved.failure_reason = FailureReasonEnum.Resolve(msg.failure_reason)
    }
    else {
      resolved.failure_reason = new FailureReasonEnum()
    }

    return resolved;
    }
};

// Constants for message
Result.Constants = {
  ITERATION_TIMES: 1,
  TRAJECTORY: 2,
  NUM_SEGMENTS: 4,
  FAILURE_REASON: 8,
}

module.exports = Result;
